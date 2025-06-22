module vector_add_sub (
    input clk, 
    input rst, 
    input start, 
    input [2:0] length,     // vector length: 4 or 6
    input operation,        // 0 = add, 1 = subtract
    input signed [191:0] Ain, 
    input signed [191:0] Bin,
    output reg signed [191:0] Cout,
    output reg done  
);

    reg [1:0] state;
    reg [2:0] i;   // for loop index, max 6

    localparam IDLE    = 2'd0;
    localparam COMPUTE = 2'd1;
    localparam DONE    = 2'd2;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            done <= 0;
            Cout <= 0;
            i <= 0;
        end else begin
            case(state)
                IDLE: begin
                    done <= 0;
                    if (start) begin
                        Cout <= 0; // clear output initially
                        i <= 0;
                        state <= COMPUTE;
                    end
                end

                COMPUTE: begin
                    if (i < length) begin
                        // Extract 32-bit slices, do operation, and assign back to Cout
                        Cout[i*32 +: 32] <= operation ? 
                            (Ain[i*32 +: 32] - Bin[i*32 +: 32]) : 
                            (Ain[i*32 +: 32] + Bin[i*32 +: 32]);
                        i <= i + 1;
                    end else begin
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
