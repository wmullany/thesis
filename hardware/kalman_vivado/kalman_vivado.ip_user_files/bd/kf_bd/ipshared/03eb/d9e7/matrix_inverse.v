// ============================================================================
// Title       : 4x4 Matrix Inversion Module
// Description : Computes the inverse of a 4x4 matrix with 16-bit signed elements.
//               Input matrix is passed as a packed 256-bit vector (16 elements).
//               Output inverse is returned as a packed 256-bit vector.
//
// when i wrote this code, only God and i knew how it worked
// now only God knows
//
// total hours wasted on this file = 192 
// archaeologists confirm the indentation layers. 
// if something breaks, rotate the monitor 90° and read it as modern art
//
// ============================================================================

module matrix_inverse (
    input  wire        clk,
    input  wire        rst,
    input  wire        start,
    input  wire [511:0] Ain,   // Packed Q20.12 input matrix
    output reg  [511:0] Bout,  // Packed Q20.12 output inverse
    output reg         done
);

    localparam IDLE  = 3'd0;
    localparam LOAD  = 3'd1;
    localparam PIVOT = 3'd2;
    localparam NORM  = 3'd3;
    localparam ELIM  = 3'd4;
    localparam NEXT  = 3'd5;
    localparam DONE  = 3'd6;
    localparam ELIM_LOOP = 3'd7;

    reg [2:0] state = IDLE;

    reg signed [31:0] A[0:15];  // 4x4 input matrix
    reg signed [31:0] I[0:15];  // 4x4 inverse (identity to start)

    reg [3:0] row;
    reg [3:0] col;
    integer k, j;

    reg signed [31:0] pivot;
    reg signed [31:0] factor;
    reg signed [31:0] a_temp, i_temp;
    reg signed [31:0] recip;  // reciprocal of pivot

    // --- Fixed-point reciprocal (Q20.12)
    function signed [31:0] reciprocal(input signed [31:0] x);
        begin
            // Use a constant shift-based reciprocal approximation
            // Avoid divide by zero
            if (x > 0)
                reciprocal = (32'sd1 <<< 24) / x; // Extra bits to preserve Q format
            else if (x < 0)
                reciprocal = -((32'sd1 <<< 24) / -x);
            else
                reciprocal = 32'sd0;
        end
    endfunction

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            done <= 0;
        end else begin
            case (state)
                IDLE: begin
                    done <= 0;
                    if (start) begin
                        row <= 0;
                        for (k = 0; k < 16; k = k + 1) begin
                            A[k] <= Ain[k*32 +: 32];
                            I[k] <= (k % 5 == 0) ? 32'sd4096 : 32'sd0;  // Identity matrix
                        end
                        state <= PIVOT;
                    end
                end

                PIVOT: begin
                    pivot <= A[row*4 + row];
                    recip <= reciprocal(A[row*4 + row]);
                    col <= 0;
                    state <= NORM;
                end

                NORM: begin
                    if (col < 4) begin
                        A[row*4 + col] <= (A[row*4 + col] * recip) >>> 12;
                        I[row*4 + col] <= (I[row*4 + col] * recip) >>> 12;
                        col <= col + 1;
                    end else begin
                        j <= 0;
                        state <= ELIM;
                    end
                end

                ELIM: begin
                    if (j < 4) begin
                        if (j != row) begin
                            factor <= A[j*4 + row];
                            k <= 0;
                            state <= ELIM_LOOP;
                        end else begin
                            j <= j + 1;
                        end
                    end else begin
                        state <= NEXT;
                    end
                end

                ELIM_LOOP: begin
                    if (k < 4) begin
                        a_temp = (A[row*4 + k] * factor) >>> 12;
                        i_temp = (I[row*4 + k] * factor) >>> 12;

                        A[j*4 + k] <= A[j*4 + k] - a_temp;
                        I[j*4 + k] <= I[j*4 + k] - i_temp;
                        k <= k + 1;
                    end else begin
                        j <= j + 1;
                        state <= ELIM;
                    end
                end

                NEXT: begin
                    if (row == 3) begin
                        state <= DONE;
                    end else begin
                        row <= row + 1;
                        state <= PIVOT;
                    end
                end

                DONE: begin
                    k <= 0;
                    for (k = 0; k < 16; k = k + 1) begin
                        Bout[k*32 +: 32] <= I[k];
                    end
                    done <= 1;
                    if (!start)
                        state <= IDLE;
                end
            endcase
        end
    end
endmodule
