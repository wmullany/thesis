/* ============================================================================

******************** C Code for structure reference ***************************

void state_predict(float A[36], float x[6], float result[6]) { 

    mm_6x6_6x1(A, x, result); // xhat = A * x

}

void covariance_predict(float A[36], float P[36], float Q[36], float Phat[36]) { 

    float temp1[36], temp2[36], a_trans[36]; 

    mat_trans6(A, a_trans); // Transpose A for later

    mm_6x6_6x6(A, P, temp1); // A * P

    mm_6x6_6x6(temp1, a_trans, temp2); // A * P * AT

    mat_add6(temp2, Q, Phat); // A * P * AT + Q

}
 ============================================================================ */

 // ============================================================================
// Title       : Kalman State and Covariance Predict
// ============================================================================
// ============================================================================
// Title       : Kalman Predict Module (Variable Size, Q20.12)
// Description : Implements the prediction step of the Kalman Filter
//               x̂ = A * x
//               P̂ = A * P * Aᵀ + Q
//               All matrices packed row-major, Q20.12 fixed-point
// Dependencies: matrix_multiplication, matrix_add, matrix_transpose
// ============================================================================

module kalman_predict (
    input clk,
    input rst,
    input start,
    //input [2:0] size, // Matrix dimension (e.g., 6 for 6x6)

    //input signed [1151:0] A_flat,   // A: [size x size]
    input signed [191:0]  x_flat,   // x: [size x 1] (max 6x1)
    input signed [1151:0] P_flat,   // P: [size x size]
    //input signed [1151:0] Q_flat,   // Q: [size x size]

    output reg signed [191:0] xhat_flat,  // Predicted state
    output reg signed [1151:0] Phat_flat, // Predicted covariance
    output reg done
);

    /********* State Machine *********/
    reg [3:0] state;
    localparam IDLE     = 4'd0,
               STATE_MM = 4'd1,
               COV_MM1  = 4'd3,
               COV_MM2  = 4'd4,
               COV_ADD  = 4'd5,
               DONE     = 4'd6;

    /********* Control Signals *********/
    reg start_mm1;
    reg start_add;

    wire mm1_done;
    wire add_done;

    //reg [1:0] mm_stage;
    reg start_mm;
    wire mm_done;

    wire signed [1151:0] mm_out;  // 6x6 = 36 x 32-bit

    /********* Intermediate Wires *********/

    localparam signed [1151:0] At_flat = {
        32'sd4096, 32'sd0,    32'sd0,    32'sd0,    32'sd0,    32'sd0,
        32'sd0,    32'sd4096, 32'sd0,    32'sd0,    32'sd0,    32'sd0,
        32'sd410,  32'sd0,    32'sd4096, 32'sd0,    32'sd0,    32'sd0,
        32'sd0,    32'sd410,  32'sd0,    32'sd4096, 32'sd0,    32'sd0,
        32'sd20,   32'sd0,    32'sd410,  32'sd0,    32'sd4096, 32'sd0,
        32'sd0,    32'sd20,   32'sd0,    32'sd410,  32'sd0,    32'sd4096
    };

    localparam signed [1151:0] A_flat = {
        32'sd4096,  32'sd0,    32'sd410,  32'sd0,   32'sd20,   32'sd0,
        32'sd0,     32'sd4096, 32'sd0,    32'sd410, 32'sd0,    32'sd20,
        32'sd0,     32'sd0,    32'sd4096, 32'sd0,   32'sd410,  32'sd0,
        32'sd0,     32'sd0,    32'sd0,    32'sd4096,32'sd0,    32'sd410,
        32'sd0,     32'sd0,    32'sd0,    32'sd0,   32'sd4096, 32'sd0,
        32'sd0,     32'sd0,    32'sd0,    32'sd0,   32'sd0,    32'sd4096
    };

    localparam signed [1151:0] Q_flat = {
        32'sd39336, 32'sd1180083, 32'sd0, 32'sd0, 32'sd23601667, 32'sd0,
        32'sd1180083, 32'sd39336, 32'sd0, 32'sd0, 32'sd1180083, 32'sd0,
        32'sd0, 32'sd0, 32'sd35402500, 32'sd0, 32'sd0, 32'sd708049983,
        32'sd0, 32'sd0, 32'sd0, 32'sd35402500, 32'sd0, 32'sd708049983,
        32'sd23601667, 32'sd1180083, 32'sd0, 32'sd0, 32'sd5800000, 32'sd0,
        32'sd0, 32'sd0, 32'sd708049983, 32'sd708049983, 32'sd0, 32'sd5800000
    };

    localparam mm_rowsA = 3'd6, 
               mm_colsA = 3'd6,
               mm_colsB = 3'd6;

    reg signed [1151:0] temp1_flat;
    reg signed [1151:0] temp2_flat;
    wire signed [1151:0] Phat_wire;
    wire signed [191:0] xhat_wire;

      // Muxed matrix inputs
    reg signed [1151:0] mm_Ain;
    reg signed [1151:0] mm_Bin;

    /********* Instantiate Modules *********/

      // xhat = A * x
    (* keep_hierarchy = "yes" *)matrix_multiplication #(
        .rowsA(3'b110), .colsA(3'b110), .colsB(8'd1)
    ) mm1 (
        .clk(clk), .rst(rst), .start(start_mm1),
        .Ain(A_flat), .Bin(x_flat),
        .Cout(xhat_wire), .done(mm1_done)
    );
    

    // A * P
    (* keep_hierarchy = "yes" *) matrix_multiplication #(
    .rowsA(mm_rowsA), .colsA(mm_colsA), .colsB(mm_colsB)  // max size
    ) mm (
        .clk(clk), .rst(rst), .start(start_mm),
        .Ain(mm_Ain), .Bin(mm_Bin),
        .Cout(mm_out), .done(mm_done)
    );

    // Phat = temp2 + Q
    (* keep_hierarchy = "yes" *)matrix_add #(.MAX_ELEMS(36)) add (
        .clk(clk), .rst(rst), .start(start_add),
        .rows(3'b110), .cols(3'b110),
        .Ain(temp2_flat), .Bin(Q_flat),
        .Cout(Phat_wire), .done(add_done)
    );
    


    /********* State Logic *********/
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            done <= 0;
            start_mm <= 0;
            start_add <= 0;
            //mm_stage <= 0;
        end else begin
            case (state)
                IDLE: begin
                    done <= 0;
                    if (start) begin
                        // mm1: A * x
                        start_mm1 <= 1;
                        //mm_stage <= 0;
                        state <= STATE_MM;
                    end
                end

                STATE_MM: begin
                    start_mm <= 0;
                    if (mm1_done) begin
                        //xhat_flat <= xhat_wire;  // Only bottom 6x1 part
                        // Next: mm2 = A * P
                        mm_Ain <= A_flat;
                        mm_Bin <= P_flat;
                       
                        start_mm <= 1;
                        //mm_stage <= 1;
                        state <= COV_MM1;
                    end
                end

                COV_MM1: begin
                    start_mm <= 0;
                    if (mm_done) begin
                        temp1_flat <= mm_out;
                        // Next: mm3 = temp1 * Aᵀ
                        mm_Ain <= mm_out;
                        mm_Bin <= At_flat;
                        //mm_rowsA <= 3'd6; mm_colsA <= 3'd6; mm_colsB <= 3'd6;
                        start_mm <= 1;
                        //mm_stage <= 2;
                        state <= COV_MM2;
                    end
                end

                COV_MM2: begin
                    start_mm <= 0;
                    if (mm_done) begin
                        temp2_flat <= mm_out;
                        start_add <= 1;
                        state <= COV_ADD;
                    end
                end

                COV_ADD: begin
                    start_add <= 0;
                    if (add_done) begin
                        xhat_flat <= xhat_wire;
                        Phat_flat <= Phat_wire;
                        state <= DONE;
                    end
                end

                DONE: begin
                    done <= 1;
                    if (!start)
                        state <= IDLE;
                end
            endcase
        end
    end
endmodule