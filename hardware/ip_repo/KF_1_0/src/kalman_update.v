// ============================================================================
// Title: kalman_update
// Description:
//   Performs the Kalman Filter update step for state and covariance matrices.
//   Implements:
//     - State update: x = x̂ + K * (z - H * x̂)
//     - Covariance update: P = P̂ - K * H * P̂
//   Uses Q20.12 fixed-point arithmetic and leverages matrix operations modules.
// ============================================================================
module kalman_update (
    input clk,
    input rst,
    input start,

    input [2:0] size_state,      // 6 for state vector length
    input [2:0] size_meas,       // 4 for measurement vector length

    input signed [191:0] xhat_flat,   // xhat [6x1]
    input signed [767:0] K_flat,       // K [6x4] = 
    input signed [383:0] H_flat,       // H [4x6]
    input signed [127:0] z_flat,       // z [4x1]

    input signed [1151:0] Phat_flat,   // Phat [6x6]

    output reg signed [191:0] x_update_flat,  // Updated x (6x1)
    output reg signed [1151:0] P_update_flat, // Updated covariance (6x6)

    output reg done
);

    // State machine states
    localparam IDLE       = 3'd0;
    localparam COMPUTE_HX = 3'd1;
    localparam SUB_VEC    = 3'd2;
    localparam MULT_K     = 3'd3;
    localparam ADD_VEC    = 3'd4;
    localparam MULT_KH    = 3'd5;
    localparam MULT_KH_P  = 3'd6;
    localparam SUB_MAT    = 3'd7;
    localparam DONE       = 3'd8;

    reg [3:0] state = IDLE;

    // Control signals for submodules
    reg start_mm1, start_vec_sub, start_vec_add, start_mm2, start_mm3, start_mm4, start_sub_mat;
    wire done_mm1, done_vec_sub, done_vec_add, done_mm2, done_mm3, done_mm4, done_sub_mat;

    // Intermediate wires for results
    wire signed [127:0] Hxhat_flat;      // 4x1 (4 elements * 32 bits)
    wire signed [127:0] z_minus_Hxhat;   // 4x1
    wire signed [191:0] K_times_vec;     // 6x1
    wire signed [575:0] KH_flat;          // 6x6
    wire signed [1151:0] KHPhat_flat;     // 6x6
    wire signed [1151:0] P_update_wire;   // 6x6
    wire signed [191:0] x_update_wire;

    // 1) H * xhat --> 4x6 * 6x1 = 4x1
    matrix_multiplication mm1 (
        .clk(clk), .rst(rst), .start(start_mm1),
        .rowsA(size_meas), .colsA(size_state), .colsB(1),
        .Ain(H_flat), .Bin(xhat_flat),
        .Cout(Hxhat_flat), .done(done_mm1)
    );

    // 2) z - Hxhat (vector subtract 4x1)
    vector_add_sub vec_sub (
        .clk(clk), .rst(rst), .start(start_vec_sub),
        .length(size_meas),
        .operation(1'b1), // 1 = subtract
        .Ain(z_flat), .Bin(Hxhat_flat),
        .Cout(z_minus_Hxhat),
        .done(done_vec_sub)
    );

    // 3) K * (z - Hxhat) (6x4 * 4x1 = 6x1)
    matrix_multiplication mm2 (
        .clk(clk), .rst(rst), .start(start_mm2),
        .rowsA(size_state), .colsA(size_meas), .colsB(1),
        .Ain(K_flat), .Bin(z_minus_Hxhat),
        .Cout(K_times_vec), .done(done_mm2)
    );

    // 4) xhat + K * (z - Hxhat) (vector add 6x1)
    vector_add_sub vec_add (
        .clk(clk), .rst(rst), .start(start_vec_add),
        .length(size_state),
        .operation(1'b0), // 0 = add
        .Ain(xhat_flat), .Bin(K_times_vec),
        .Cout(x_update_wire),
        .done(done_vec_add)
    );

    // 5) K * H (6x4 * 4x6 = 6x6)
    matrix_multiplication mm3 (
        .clk(clk), .rst(rst), .start(start_mm3),
        .rowsA(size_state), .colsA(size_meas), .colsB(size_state),
        .Ain(K_flat), .Bin(H_flat),
        .Cout(KH_flat), .done(done_mm3)
    );

    // 6) (K * H) * Phat (6x6 * 6x6 = 6x6)
    matrix_multiplication mm4 (
        .clk(clk), .rst(rst), .start(start_mm4),
        .rowsA(size_state), .colsA(size_state), .colsB(size_state),
        .Ain(KH_flat), .Bin(Phat_flat),
        .Cout(KHPhat_flat), .done(done_mm4)
    );

    // 7) Phat - (KHPhat) (6x6 matrix subtract)
    matrix_subtract #(.MAX_ELEMS(36)) sub_mat (
        .clk(clk), .rst(rst), .start(start_sub_mat),
        .rows(size_state), .cols(size_state),
        .Ain(Phat_flat), .Bin(KHPhat_flat),
        .Cout(P_update_wire),
        .done(done_sub_mat)
    );

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            done <= 0;
            start_mm1 <= 0;
            start_vec_sub <= 0;
            start_mm2 <= 0;
            start_vec_add <= 0;
            start_mm3 <= 0;
            start_mm4 <= 0;
            start_sub_mat <= 0;
        end else begin
            case (state)
                IDLE: begin
                    done <= 0;
                    if (start) begin
                        start_mm1 <= 1;
                        state <= COMPUTE_HX;
                    end
                end

                COMPUTE_HX: begin
                    start_mm1 <= 0;
                    if (done_mm1) begin
                        start_vec_sub <= 1;
                        state <= SUB_VEC;
                    end
                end

                SUB_VEC: begin
                    start_vec_sub <= 0;
                    if (done_vec_sub) begin
                        start_mm2 <= 1;
                        state <= MULT_K;
                    end
                end

                MULT_K: begin
                    start_mm2 <= 0;
                    if (done_mm2) begin
                        start_vec_add <= 1;
                        state <= ADD_VEC;
                    end
                end

                ADD_VEC: begin
                    start_vec_add <= 0;
                    if (done_vec_add) begin
			x_update_flat <= x_update_wire;
                        start_mm3 <= 1;
                        state <= MULT_KH;
                    end
                end

                MULT_KH: begin
                    start_mm3 <= 0;
                    if (done_mm3) begin
                        start_mm4 <= 1;
                        state <= MULT_KH_P;
                    end
                end

                MULT_KH_P: begin
                    start_mm4 <= 0;
                    if (done_mm4) begin
                        start_sub_mat <= 1;
                        state <= SUB_MAT;
                    end
                end

                SUB_MAT: begin
                    start_sub_mat <= 0;
                    if (done_sub_mat) begin
                        P_update_flat <= P_update_wire;
                        done <= 1;
                        state <= DONE;
                    end
                end

                DONE: begin
                    if (!start)
                        state <= IDLE;
                end
            endcase
        end
    end

endmodule
