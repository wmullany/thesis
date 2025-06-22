/**
 * @module matrix_subtract
 * @brief Performs element-wise subtraction of two input matrices (A - B).
 *
 * This module subtracts two signed matrices `Ain` and `Bin` of configurable size (up to 6x6)
 * and outputs the result in `Cout`. The operation is controlled via a `start` signal and runs
 * over multiple clock cycles using a simple FSM.
 *
 * The matrices are provided as flat 1D packed vectors, with each element being 32 bits wide.
 * Internally, the vectors are unpacked, element-wise subtraction is performed, and the result
 * is repacked for output.
 */
module matrix_subtract #(
    parameter MAX_ELEMS = 36   // Max 6x6 = 36
)(
    input clk,
    input rst,
    input start,
    input [2:0] rows,          // Max value 6
    input [2:0] cols,          // Max value 6

    input  signed [MAX_ELEMS*32-1:0] Ain,
    input  signed [MAX_ELEMS*32-1:0] Bin,
    output reg signed [MAX_ELEMS*32-1:0] Cout,
    output reg done
);

    /********* Internal Registers *********/
    reg [5:0] i;                // Up to 36 elements
    reg [3:0] state;

    reg signed [31:0] A_mem [0:MAX_ELEMS-1];
    reg signed [31:0] B_mem [0:MAX_ELEMS-1];
    reg signed [31:0] C_mem [0:MAX_ELEMS-1];

    reg [5:0] total_elems;

    /********* States *********/
    localparam IDLE  = 4'd0;
    localparam UNPACK = 4'd1;
    localparam SUB    = 4'd2;
    localparam PACK   = 4'd3;
    localparam DONE   = 4'd4;

    /********* State Machine *********/
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            done <= 0;
        end else begin
            case (state)
                IDLE: begin
                    done <= 0;
                    if (start) begin
                        total_elems <= rows * cols;
                        i <= 0;
                        state <= UNPACK;
                    end
                end

                UNPACK: begin
                    A_mem[i] <= Ain[i*32 +: 32];
                    B_mem[i] <= Bin[i*32 +: 32];
                    i <= i + 1;
                    if (i + 1 == total_elems)
                        state <= SUB;
                end

                SUB: begin
                    i <= 0;
                    state <= PACK;
                end

                PACK: begin
                    //C[i] <= A[i] - B[i];
                    Cout[i*32 +: 32] <= A_mem[i] - B_mem[i];
                    i <= i + 1;
                    if (i + 1 == total_elems)
                        state <= DONE;
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
