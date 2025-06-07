// ============================================================================
// Title       : Transpose a matrix with rows and cols input
// Transposes a matrix of 32-bit Q20.12 fixed-point numbers.
// The matrix is packed row-major into a 1D array (Ain).
// The dimensions (rows, cols) are inputs.
// The output matrix (Aout) is packed row-major as well.
// Result: Aout[j][i] = Ain[i][j]
//
//
// ============================================================================
module matrix_transpose (
    input clk,
    input rst,
    input start,
    input [2:0] rows,        // Max 6
    input [2:0] cols,        // Max 6
    input signed [1151:0] Ain,  // 36x Q20.12 packed row-major (6x6 max)
    output reg signed [1151:0] Aout,
    output reg done
);

    /*********** Variable Def **********/
    integer i, j;
    reg signed [31:0] A [0:35];
    reg signed [31:0] T [0:35];
    reg [1:0] state;

    /*********** Constant Def **********/
    localparam IDLE = 2'd0;
    localparam UNPACK = 2'd1;
    localparam TRANSPOSE = 2'd2;
    localparam PACK = 2'd3;

    /*********** FSM Logic **********/
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            done <= 0;
            state <= IDLE;
        end else begin
            case (state)
                IDLE: begin
                    done <= 0;
                    if (start) begin
                        state <= UNPACK;
                    end
                end
                UNPACK: begin
                    for (i = 0; i < 36; i = i + 1) begin
                        A[i] <= Ain[i*32 +: 32];
                    end
                    state <= TRANSPOSE;
                end
                TRANSPOSE: begin
                    // transpose: T[j*rows + i] = A[i*cols + j]
                    for (i = 0; i < 6; i = i + 1) begin
                        for (j = 0; j < 6; j = j + 1) begin
                            if (i < rows && j < cols)
                                T[j*rows + i] <= A[i*cols + j];
                            else
                                T[j*rows + i] <= 32'sd0; // pad with 0s
                        end
                    end
                    state <= PACK;
                end
                PACK: begin
                    for (i = 0; i < 36; i = i + 1) begin
                        Aout[i*32 +: 32] <= T[i];
                    end
                    done <= 1;
                    if (!start)
                        state <= IDLE;
                end

            endcase
        end
    end
endmodule