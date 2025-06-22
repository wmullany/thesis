// ============================================================================
// Matrix multiplication Module 
// 
// Performs 6x6 matrix multiplication on Q1.15s.
// - A, B: Input matrices 
// - C: Output matrix for result
// - rowsA, colsA, colsB: Define matrix dimensions
// 
// Iterates through the matrix and computes, then the partial sum is 
// accumulated in 32-bit reg 
// and shifted to keep the fixed point happy then the 'done' 
// is set when the calculation is done.
//
// REMEMBER to Pack and Unpack
// ============================================================================

module matrix_multiplication #(
    parameter rowsA = 36,
    parameter colsA = 36,
    parameter colsB = 36
)(
    input clk,
    input rst,
    input start,

    input signed [32*rowsA*colsA-1:0] Ain,   // Packed 36 elements, each 32-bit Q20.12 fixed-point
    input signed [32*colsA*colsB-1:0] Bin,   // Same deal for B
    output reg signed [32*rowsA*colsB-1:0] Cout,  // Result matrix packed same way, 36 elements * 32 bits
    output reg done        
);

    integer i, j, k, l;       // Loop counters everywhere

    reg signed [63:0] sum;    // 64-bit accumulator to avoid overflow madness during multiply-add

    reg [1:0] state;          // FSM state register, 3 states only, because we keep it simple

    reg signed [31:0] A [0:rowsA*colsA-1];  // Local storage for A matrix elements, 32-bit Q20.12 fixed-point
    reg signed [31:0] B [0:colsA*colsB-1];  // Same for B
    reg signed [31:0] C [0:rowsA*colsB-1];  // Output matrix, same format

    // State machine states, just look it up next time you forget
    localparam IDLE    = 2'd0;  // Waiting for start signal
    localparam COMPUTE = 2'd1;  
    localparam DONE    = 2'd2;  

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // Reset all counters, accumulators and flags
            i <= 0; j <= 0; k <= 0;
            state <= IDLE;
        end else begin
            case(state)
                IDLE: begin
                    done <= 0;  // Not done yet, no way Jose
                    if (start) begin
                        // Load all inputs into local arrays to speed up processing
                        i <= 0; j <= 0; k <= 0;
                        sum <= 0;
                        for (l = 0; l < rowsA * colsA; l = l + 1)
                            A[l] <= Ain[32*l +: 32];
                        for (l = 0; l < colsA * colsB; l = l + 1)
                            B[l] <= Bin[32*l +: 32];
                        state <= COMPUTE;  
                    end
                end

                COMPUTE: begin
                    if (k < colsA) begin
                        // Multiply A[i,k] by B[k,j], both Q20.12 fixed point
                        // Right shift by 12 to keep Q20.12 scaling after multiply
                        sum <= sum + (($signed(A[i*colsA + k]) * $signed(B[k*colsB + j])) >>> 12);
                        k <= k + 1;  // Move to next column in A / row in B
                    end else begin
                        // Done with this element, store result in C
                        // sum fits in Q20.12 already
                        C[i*colsB + j] <= sum[31:0];
                        sum <= 0;   // Reset sum for next element
                        k <= 0;     // Reset inner loop counter

                        // Move to next column in output matrix
                        if (j < colsB - 1) begin
                            j <= j + 1;
                        end else begin
                            // End of row, move to next row
                            j <= 0;
                            if (i < rowsA - 1) begin
                                i <= i + 1;
                            end else begin
                                state <= DONE;
                            end
                        end
                    end
                end

                DONE: begin
                    done <= 1;  
                    // Pack all the computed results back into the output bus
                    for (l = 0; l < rowsA*colsB; l = l + 1) begin
                        Cout[32*l +: 32] <= C[l];
                    end
                    if (!start) 
                        state <= IDLE;  // Wait for start to deassert before resetting FSM
                end
            endcase
        end
    end
endmodule



