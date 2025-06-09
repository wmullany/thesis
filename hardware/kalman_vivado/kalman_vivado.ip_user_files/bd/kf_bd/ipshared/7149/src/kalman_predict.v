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
    input [2:0] size, // Matrix dimension (e.g., 6 for 6x6)

    input signed [1151:0] A_flat,   // A: [size x size]
    input signed [191:0]  x_flat,   // x: [size x 1] (max 6x1)
    input signed [1151:0] P_flat,   // P: [size x size]
    input signed [1151:0] Q_flat,   // Q: [size x size]

    output reg signed [191:0] xhat_flat,  // Predicted state
    output reg signed [1151:0] Phat_flat, // Predicted covariance
    output reg done
);

    /********* State Machine *********/
    reg [3:0] state;
    localparam IDLE     = 4'd0,
               STATE_MM = 4'd1,
               PRED_T   = 4'd2,
               COV_MM1  = 4'd3,
               COV_MM2  = 4'd4,
               COV_ADD  = 4'd5,
               DONE     = 4'd6;

    /********* Control Signals *********/
    reg start_mm1, start_mm2, start_mm3;
    reg start_trans, start_add;

    wire mm1_done, mm2_done, mm3_done;
    wire trans_done, add_done;

    /********* Intermediate Wires *********/
    wire signed [1151:0] At_flat;
    wire signed [1151:0] temp1_flat;
    wire signed [1151:0] temp2_flat;
    wire signed [1151:0] Phat_wire;
    wire signed [191:0] xhat_wire;

    /********* Instantiate Modules *********/

    // xhat = A * x
    matrix_multiplication mm1 (
        .clk(clk), .rst(rst), .start(start_mm1),
        .rowsA(size), .colsA(size), .colsB(8'd1),
        .Ain(A_flat), .Bin(x_flat),
        .Cout(xhat_wire), .done(mm1_done)
    );

    // At = transpose(A)
    matrix_transpose trans (
        .clk(clk), .rst(rst), .start(start_trans),
        .rows(size), .cols(size),
        .Ain(A_flat), .Aout(At_flat),
        .done(trans_done)
    );

    // temp1 = A * P
    matrix_multiplication mm2 (
        .clk(clk), .rst(rst), .start(start_mm2),
        .rowsA(size), .colsA(size), .colsB(size),
        .Ain(A_flat), .Bin(P_flat),
        .Cout(temp1_flat), .done(mm2_done)
    );

    // temp2 = temp1 * At
    matrix_multiplication mm3 (
        .clk(clk), .rst(rst), .start(start_mm3),
        .rowsA(size), .colsA(size), .colsB(size),
        .Ain(temp1_flat), .Bin(At_flat),
        .Cout(temp2_flat), .done(mm3_done)
    );

    // Phat = temp2 + Q
    matrix_add #(.MAX_ELEMS(36)) add (
        .clk(clk), .rst(rst), .start(start_add),
        .rows(size), .cols(size),
        .Ain(temp2_flat), .Bin(Q_flat),
        .Cout(Phat_wire), .done(add_done)
    );

    /********* State Logic *********/
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            done <= 0;
        end else begin
            case (state)
                IDLE: begin
                    done <= 0;
                    if (start) begin
                        start_mm1 <= 1;
                        state <= STATE_MM;
                    end
                end

                STATE_MM: begin
                    start_mm1 <= 0;
                    if (mm1_done) begin
                        xhat_flat <= xhat_wire;
                        start_trans <= 1;
                        state <= PRED_T;
                    end
                end

                PRED_T: begin
                    start_trans <= 0;
                    if (trans_done) begin
                        start_mm2 <= 1;
                        state <= COV_MM1;
                    end
                end

                COV_MM1: begin
                    start_mm2 <= 0;
                    if (mm2_done) begin
                        start_mm3 <= 1;
                        state <= COV_MM2;
                    end
                end

                COV_MM2: begin
                    start_mm3 <= 0;
                    if (mm3_done) begin
                        start_add <= 1;
                        state <= COV_ADD;
                    end
                end

                COV_ADD: begin
                    start_add <= 0;
                    if (add_done) begin
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
