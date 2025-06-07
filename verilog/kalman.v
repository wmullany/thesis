/******************************************************************************
 * kalman.v
 * 
 * Top-level Kalman filter module.
 * Performs predict → gain → update using fixed-point (Q20.12) submodules.
 * 
 * Modules instantiated:
 * - kalman_predict
 * - kalman_gain
 * - kalman_update
 * 
 * Assumes max state size = 6 and measurement size = 4.
 ******************************************************************************/

module kalman (
    input clk,
    input rst,
    input start,

    input [2:0] size_state,     // Typically 6
    input [2:0] size_meas,      // Typically 4

    // Input matrices
    input signed [1151:0] A_flat,
    input signed [191:0]  x_flat,
    input signed [1151:0] P_flat,
    input signed [1151:0] Q_flat,
    input signed [767:0]  H_flat,
    input signed [511:0]  R_flat,
    input signed [127:0]  z_flat,

    // Outputs
    output signed [191:0] x_out,
    output signed [1151:0] P_out,
    output reg done
);

    /********** Internal Wires **********/
    wire predict_done, gain_done, update_done;

    wire signed [191:0]  xhat_flat;
    wire signed [1151:0] Phat_flat;

    wire signed [767:0] K_flat;
    wire signed [191:0] x_update_flat;
    wire signed [1151:0] P_update_flat;

    /********** FSM State Definitions **********/
    reg [1:0] state;
    localparam IDLE    = 2'd0,
               PREDICT = 2'd1,
               GAIN    = 2'd2,
               UPDATE  = 2'd3;

    /********** Submodule Instantiations **********/
    kalman_predict u_predict (
        .clk(clk),
        .rst(rst),
        .start(state == PREDICT),
        .size(size_state),
        .A_flat(A_flat),
        .x_flat(x_flat),
        .P_flat(P_flat),
        .Q_flat(Q_flat),
        .xhat_flat(xhat_flat),
        .Phat_flat(Phat_flat),
        .done(predict_done)
    );

    kalman_gain u_gain (
        .clk(clk),
        .rst(rst),
        .start(state == GAIN),
        .Phat_flat(Phat_flat),
        .H_flat(H_flat),
        .R_flat(R_flat),
        .K_flat(K_flat),
        .done(gain_done)
    );

    kalman_update u_update (
        .clk(clk),
        .rst(rst),
        .start(state == UPDATE),
        .size_state(size_state),
        .size_meas(size_meas),
        .xhat_flat(xhat_flat),
        .K_flat(K_flat),
        .H_flat(H_flat),
        .z_flat(z_flat),
        .Phat_flat(Phat_flat),
        .x_update_flat(x_update_flat),
        .P_update_flat(P_update_flat),
        .done(update_done)
    );

    /********** FSM Sequencer **********/
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            done <= 0;
        end else begin
            case (state)
                IDLE: begin
                    done <= 0;
                    if (start)
                        state <= PREDICT;
                end

                PREDICT: begin
                    if (predict_done)
                        state <= GAIN;
                end

                GAIN: begin
                    if (gain_done)
                        state <= UPDATE;
                end

                UPDATE: begin
                    if (update_done) begin
                        state <= IDLE;
                        done <= 1;
                    end
                end
            endcase
        end
    end

    /********** Output Assignments **********/
    assign x_out = x_update_flat;
    assign P_out = P_update_flat;

endmodule
