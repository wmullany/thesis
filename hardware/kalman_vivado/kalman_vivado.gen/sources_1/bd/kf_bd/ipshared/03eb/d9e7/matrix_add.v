// ============================================================================
// Title       : Matrix Addition Module (Packed, No Unpacking)
// Description : Adds two packed matrices Ain and Bin (row-major order)
//               Each element is 32-bit Q20.12 fixed-point
// 
// Author: Will Mullany
// ============================================================================
module matrix_add #(
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

    reg [5:0] i;  // Index: supports up to 36 elements
    reg [5:0] total_elems;
    reg [1:0] state;

    localparam IDLE  = 2'd0;
    localparam ADD   = 2'd1;
    localparam DONE  = 2'd2;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            done <= 0;
            i <= 0;
        end else begin
            case (state)
                IDLE: begin
                    done <= 0;
                    i <= 0;
                    if (start) begin
                        total_elems <= rows * cols;
                        state <= ADD;
                    end
                end

                ADD: begin
                    // Directly access packed 32-bit slices and compute sum
                    Cout[i*32 +: 32] <= $signed(Ain[i*32 +: 32]) + $signed(Bin[i*32 +: 32]);
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
