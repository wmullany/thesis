// ============================================================================
// Title       : Kalman Gain Module (Variable Size, Q20.12 Fixed-Point)
// Description : Computes the Kalman Gain matrix K for the Kalman Filter prediction step.
//               Formula: K = Phat * Hᵀ * (H * Phat * Hᵀ + R)^-1
//
//               Inputs:
//                 - Phat_flat : Predicted covariance matrix (6x6), packed Q20.12 fixed-point
//                 - H_flat    : Measurement matrix (4x6), packed Q20.12 fixed-point
//                 - R_flat    : Measurement noise covariance matrix (4x4), packed Q20.12 fixed-point
//
//               Outputs:
//                 - K_flat    : Kalman Gain matrix (6x4), packed Q20.12 fixed-point
// 
// Author: Will Mullany
//
// Dependencies:
//                 - matrix_transpose   : Transposes input matrix (supports variable size)
//                 - matrix_multiplication: Multiplies matrices (variable size)
//                 - matrix_add         : Adds matrices
//                 - matrix_inverse     : Inverts 4x4 matrices
//
// Notes:
//                 - All matrices are packed row-major in fixed-point Q20.12 format.
//                 - The module is fully sequential, handshaking with start/done signals.
//                 - Designed specifically for the 6x4 Kalman gain computation in a 6-state, 4-measurement system.
// ============================================================================ 
module kalman_gain (
    input clk,
    input rst,
    input start,

    input signed [1151:0] Phat_flat,  // 6x6 (36 elements)
    //input signed [767:0]  H_flat,     // 4x6 (24 elements)
    //input signed [511:0]  R_flat,     // 4x4 (16 elements)

    output reg signed [767:0] K_flat, // 6x4 (24 elements)
    output reg done
);

    // States
    reg [3:0] state;
    localparam IDLE = 4'd0;
    localparam MM1 = 4'd2;
    localparam MM2 = 4'd3;
    localparam MM3 = 4'd4;
    localparam ADD = 4'd5;
    localparam INV = 4'd6;
    localparam MM4 = 4'd7;
    localparam DONE = 4'd8;

    // Control signals
    reg start_mm1, start_mm2, start_mm3, start_add, start_inv, start_mm4;

    wire done_mm1, done_mm2, done_mm3, done_add, done_inv, done_mm4;
    wire [767:0] K_flat_wire;

    // Intermediate wires for outputs
    localparam signed [767:0] HT_flat = {
        32'sd4096, 32'sd0,    32'sd0,    32'sd0,    // Row 0
        32'sd0,    32'sd4096, 32'sd0,    32'sd0,    // Row 1
        32'sd0,    32'sd0,    32'sd0,    32'sd0,    // Row 2
        32'sd0,    32'sd0,    32'sd0,    32'sd0,    // Row 3
        32'sd0,    32'sd0,    32'sd4096, 32'sd0,    // Row 4
        32'sd0,    32'sd0,    32'sd0,    32'sd4096  // Row 5
    };      // 6x4 (transpose of H)

    localparam signed [767:0] H_flat = {
        32'sd4096, 32'sd0, 32'sd0, 32'sd0, 32'sd0, 32'sd0,
        32'sd0, 32'sd4096, 32'sd0, 32'sd0, 32'sd0, 32'sd0,
        32'sd0, 32'sd0, 32'sd0, 32'sd0, 32'sd4096, 32'sd0,
        32'sd0, 32'sd0, 32'sd0, 32'sd0, 32'sd0, 32'sd4096
    };

    localparam signed [511:0] R_flat = {
        32'sd142643, 32'sd0,      32'sd0,      32'sd0,
        32'sd0,      32'sd142643, 32'sd0,      32'sd0,
        32'sd0,      32'sd0,      32'sd142643, 32'sd0,
        32'sd0,      32'sd0,      32'sd0,      32'sd142643
    };


    wire signed [767:0] temp1_flat;   // 6x4 (Phat * HT)
    wire signed [767:0] temp2_flat;   // 4x6 (H * Phat)
    wire signed [511:0] temp3_flat;   // 4x4 (H * Phat * HT)
    wire signed [511:0] temp4_flat;   // 4x4 (temp3 + R)
    wire signed [511:0] inv_flat;     // 4x4 inverse of temp4

    // Instantiate transpose: HT = transpose(H)
    /*
    matrix_transpose transpose_inst (
        .clk(clk), .rst(rst), .start(start_trans),
        .rows(3'd4), .cols(3'd6),  // transpose 4x6 -> 6x4
        .Ain(H_flat),
        .Aout(HT_flat),
        .done(done_trans)
    );
    */

    // MM1: temp1 = Phat * HT  (6x6 * 6x4 = 6x4)
    matrix_multiplication mm1 (
        .clk(clk), .rst(rst), .start(start_mm1),
        .rowsA(3'd6), .colsA(3'd6), .colsB(3'd4),
        .Ain(Phat_flat), .Bin(HT_flat),
        .Cout(temp1_flat), .done(done_mm1)
    );

    // MM2: temp2 = H * Phat   (4x6 * 6x6 = 4x6)
    matrix_multiplication mm2 (
        .clk(clk), .rst(rst), .start(start_mm2),
        .rowsA(3'd4), .colsA(3'd6), .colsB(3'd6),
        .Ain(H_flat), .Bin(Phat_flat),
        .Cout(temp2_flat), .done(done_mm2)
    );

    // MM3: temp3 = temp2 * HT (4x6 * 6x4 = 4x4)
    matrix_multiplication mm3 (
        .clk(clk), .rst(rst), .start(start_mm3),
        .rowsA(3'd4), .colsA(3'd6), .colsB(3'd4),
        .Ain(temp2_flat), .Bin(HT_flat),
        .Cout(temp3_flat), .done(done_mm3)
    );

    // ADD: temp4 = temp3 + R (4x4)
    matrix_add #(.MAX_ELEMS(16)) add_inst (
        .clk(clk), .rst(rst), .start(start_add),
        .rows(3'd4), .cols(3'd4),
        .Ain(temp3_flat), .Bin(R_flat),
        .Cout(temp4_flat),
        .done(done_add)
    );

    // INV: inv_flat = inverse(temp4) (4x4)
    matrix_inverse inv_inst (
        .clk(clk), .rst(rst), .start(start_inv),
        .Ain(temp4_flat),
        .Bout(inv_flat),
        .done(done_inv)
    );

    // MM4: K = temp1 * inv_flat (6x4 * 4x4 = 6x4)
    matrix_multiplication mm4 (
        .clk(clk), .rst(rst), .start(start_mm4),
        .rowsA(3'd6), .colsA(3'd4), .colsB(3'd4),
        .Ain(temp1_flat), .Bin(inv_flat),
        .Cout(K_flat_wire), .done(done_mm4)
    );

    // FSM control
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            done <= 0;
            start_mm1 <= 0; start_mm2 <= 0; start_mm3 <= 0; start_add <= 0; start_inv <= 0; start_mm4 <= 0;
        end else begin
            case (state)
                IDLE: begin
                    done <= 0;
                    if (start) begin
                        start_mm1 <= 1;
                        state <= MM1;
                    end
                end
/*
                TRANSPOSE: begin
                    start_trans <= 0;
                    if (done_trans) begin
                        start_mm1 <= 1;
                        state <= MM1;
                    end
                end
*/
                MM1: begin
                    start_mm1 <= 0;
                    if (done_mm1) begin
                        start_mm2 <= 1;
                        state <= MM2;
                    end
                end

                MM2: begin
                    start_mm2 <= 0;
                    if (done_mm2) begin
                        start_mm3 <= 1;
                        state <= MM3;
                    end
                end

                MM3: begin
                    start_mm3 <= 0;
                    if (done_mm3) begin
                        start_add <= 1;
                        state <= ADD;
                    end
                end

                ADD: begin
                    start_add <= 0;
                    if (done_add) begin
                        start_inv <= 1;
                        state <= INV;
                    end
                end

                INV: begin
                    start_inv <= 0;
                    if (done_inv) begin
                        start_mm4 <= 1;
                        state <= MM4;
                    end
                end

                MM4: begin
                    start_mm4 <= 0;
                    if (done_mm4) begin
                        K_flat <= K_flat_wire;
                        done <= 1;
                        state <= DONE;
                    end
                end

                DONE: begin
                    if (!start) begin
                        done <= 0;
                        state <= IDLE;
                    end
                end

                default: state <= IDLE;
            endcase
        end
    end

endmodule
