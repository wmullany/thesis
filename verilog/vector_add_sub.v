// ============================================================================
// element-wise addition or subtraction on a vector
// signed 32-bit fixed-point numbers packed into a 192-bit input. 
// 
//
// REMEMBER to Pack and Unpack
// ============================================================================

module vector_add_sub (
    input clk, 
    input rst, 
    input start, 
    input length, // vector of 4 or 6
    input operation // 0 for add, 1 for subtract
    input signed [191:0] Ain, 
    input signed [191:0] Bin, // Where this code should go
    output reg signed [191:0] Cout

)
    /*********** Variable Def **********/
    reg [1:0] state; 
    reg signed [31:0] A [length:0], 
    reg signed [31:0] B [length:0],
    reg signed [31:0] C [length:0],

    /*********** Constant Def **********/
    localparam IDLE = 2'd0;
    localparam ADD = 2'd0;
    localparam SUB = 2'd2;
    localparam DONE = 2'd3;

    // Main control logic: triggered on clock edge or reset
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            done <= 0;
        end else begin
            case (state)
                IDLE: begin
                    done <= 0;
                    if (start) begin
                        // Unpack Ain and Bin into arrays
                        for (i = 0; i < 6; i = i + 1) begin
                            A[i] <= Ain[i*32 +: 32];
                            B[i] <= Bin[i*32 +: 32];
                        end
                        state <= COMPUTE;
                    end
                end

                COMPUTE: begin
                    for (i = 0; i < 6; i = i + 1) begin
                        if (i < length) begin
                            C[i] <= operation ? (A[i] - B[i]) : (A[i] + B[i]);
                        end else begin
                            C[i] <= 32'sd0; // Zero out unused elements
                        end
                    end
                    state <= PACK;
                end

                PACK: begin
                    for (i = 0; i < 6; i = i + 1) begin
                        Cout[i*32 +: 32] <= C[i];
                    end
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