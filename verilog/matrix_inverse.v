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
    input clk,
    input rst,
    input start,
    input signed [511:0] Ain,        // 16x Q20.12 = 16*32 = 512 bits
    output reg signed [511:0] Bout,  // Inverse matrix
    output reg done
);

    // Internal state
    reg [3:0] state;
    reg [3:0] i, j, k;

    // Matrix A and inverse I, flattened
    reg signed [31:0] A[0:15];  // A[4*i + j] instead of A[i][j]
    reg signed [31:0] I[0:15];

    // Temporary variables
    reg signed [31:0] factor, pivot, temp;

    localparam IDLE   = 4'd0;
    localparam LOAD   = 4'd1;
    localparam PIVOT  = 4'd2;
    localparam ELIM   = 4'd3;
    localparam NORM   = 4'd4;
    localparam STORE  = 4'd5;
    localparam DONE   = 4'd6;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            done <= 0;
        end else begin
            case (state)
                IDLE: begin
                    done <= 0;
                    if (start) begin
                        // Unpack Ain into A
                        for (i = 0; i < 16; i = i + 1) begin
                            A[i] <= Ain[i*32 +: 32];
                            I[i] <= 32'sd0;
                        end
                        // Set up identity matrix
                        I[ 0] <= 4096; I[ 5] <= 4096; I[10] <= 4096; I[15] <= 4096;
                        i <= 0;
                        state <= PIVOT;
                    end
                end

                PIVOT: begin
                    if (A[4*i + i] == 0) begin
                        for (k = i+1; k < 4; k = k + 1) begin
                            if (A[4*k + i] != 0) begin
                                for (j = 0; j < 4; j = j + 1) begin
                                    // Swap rows i and k
                                    temp <= A[4*i + j]; A[4*i + j] <= A[4*k + j]; A[4*k + j] <= temp;
                                    temp <= I[4*i + j]; I[4*i + j] <= I[4*k + j]; I[4*k + j] <= temp;
                                end
                                break;
                            end
                        end
                    end
                    j <= 0;
                    state <= ELIM;
                end

                ELIM: begin
                    if (j < 4) begin
                        if (j != i) begin
                            factor <= (A[4*j + i] <<< 12) / A[4*i + i];  // Q20.12 divide
                            for (k = 0; k < 4; k = k + 1) begin
                                A[4*j + k] <= A[4*j + k] - ((A[4*i + k] * factor) >>> 12);
                                I[4*j + k] <= I[4*j + k] - ((I[4*i + k] * factor) >>> 12);
                            end
                        end
                        j <= j + 1;
                    end else begin
                        k <= 0;
                        state <= NORM;
                    end
                end

                NORM: begin
                    pivot <= A[4*i + i];
                    if (k < 4) begin
                        A[4*i + k] <= (A[4*i + k] <<< 12) / pivot;
                        I[4*i + k] <= (I[4*i + k] <<< 12) / pivot;
                        k <= k + 1;
                    end else begin
                        i <= i + 1;
                        if (i == 3)
                            state <= STORE;
                        else
                            state <= PIVOT;
                    end
                end

                STORE: begin
                    for (i = 0; i < 16; i = i + 1)
                        Bout[i*32 +: 32] <= I[i];
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


/*
module matrix_inverse (
    input clk, 
    input rst, 
    input start,    
    input signed [511:0] Ain,        // Packed Q20.12 (16 elements)
    output reg signed [511:0] Bout,  // Packed Q20.12
    output reg done 
); 
    
    reg [5:0] i;
    reg [3:0] state;
    reg [5:0] fixed_width = 32;

    reg signed [31:0] A [0:15];       // Q20.12 input matrix
    reg signed [31:0] B [0:15];       // Q20.12 adjugate matrix

    reg signed [63:0] r2d2 [0:15];    // Intermediate adjugate values (Q40.24)
    reg signed [63:0] c3po [0:89];    // Temp partial products

    reg signed [63:0] det64;          // Determinant in Q40.24
    reg signed [31:0] detinv;         // Reciprocal of determinant in Q20.12

    reg signed [63:0] tempB [0:15];   // Temp products before rescaling


    
    localparam IDLE = 4'd0;
    localparam ADJNT = 4'd1; 
    localparam DETMT = 4'd2; 
    localparam INV = 4'd3;
    localparam SUM = 4'd4;
    localparam SCALE = 4'd5;
    localparam DETSCALE = 4'd6;
    localparam INVSCALE = 4'd7;
    localparam DONE = 4'd8;


    // Main control logic: triggered on clock edge or reset
    always @(posedge clk or posedge rst) begin 
        if (rst) begin
            det64 <= 0; 
            detinv <= 0; 
            state <= IDLE;
            done <= 0; 

        end else begin
            case(state)
                IDLE: begin
                    done <= 0; 
                    if (start) begin
                        // Unpack Ain into A[0..15]
                        for s(i = 0; i < 16; i = i + 1)
                            A[i] <= Ain[i*32 +: 32];
                        det64 <= 0;
                        detinv <= 0;
                        state <= ADJNT;
                    end
                end

                ADJNT: begin
                    // Computing partial products for adjugate matrix

                    c3po[0]  <= (A[5] *  A[10]) * A[15];
                    c3po[1]  <= (A[5]  * A[11]) * A[14]; 
                    c3po[2]  <= (A[9]  * A[6])  * A[15]; 
                    c3po[3]  <= (A[9]  * A[7])  * A[14]; 
                    c3po[4]  <= (A[13] * A[6])  * A[11]; 
                    c3po[5]  <= (A[13] * A[7])  * A[10]; 
                    
                    c3po[6]  <= (A[1]  * A[10]) * A[15];
                    c3po[7]  <= (A[1]  * A[11]) * A[14];
                    c3po[8]  <= (A[9]  * A[2])  * A[15];
                    c3po[9]  <= (A[9]  * A[3])  * A[14];
                    c3po[10] <= (A[13] * A[2])  * A[11];
                    c3po[11] <= (A[13] * A[3])  * A[10];
                    
                    c3po[12] <= (A[1]  * A[6])  * A[11];
                    c3po[13] <= (A[1]  * A[7])  * A[10];
                    c3po[14] <= (A[5]  * A[2])  * A[11];
                    c3po[15] <= (A[5]  * A[3])  * A[10];
                    c3po[16] <= (A[9]  * A[2])  * A[7];
                    c3po[17] <= (A[9]  * A[3])  * A[6];

                    c3po[18] <= (A[4]  * A[10]) * A[15];
                    c3po[19] <= (A[4]  * A[11]) * A[14];
                    c3po[20] <= (A[8]  * A[6])  * A[15];
                    c3po[21] <= (A[8]  * A[7])  * A[14];
                    c3po[22] <= (A[12] * A[6])  * A[11];
                    c3po[23] <= (A[12] * A[7])  * A[10];
                  
                    c3po[24] <= (A[0]  * A[10]) * A[15];
                    c3po[25] <= (A[0]  * A[11]) * A[14];
                    c3po[26] <= (A[8]  * A[2])  * A[15];
                    c3po[27] <= (A[8]  * A[3])  * A[14];
                    c3po[28] <= (A[12] * A[2])  * A[11];
                    c3po[29] <= (A[12] * A[3])  * A[10];
                    
                    c3po[30] <= (A[0]  * A[6])  * A[15];
                    c3po[31] <= (A[0]  * A[7])  * A[14];
                    c3po[32] <= (A[4]  * A[2])  * A[15];
                    c3po[33] <= (A[4]  * A[3])  * A[14];
                    c3po[34] <= (A[12] * A[2])  * A[7];
                    c3po[35] <= (A[12] * A[3])  * A[6];

                    c3po[36] <= (A[0]  * A[6])  * A[11];
                    c3po[37] <= (A[0]  * A[7])  * A[10];
                    c3po[38] <= (A[4]  * A[2])  * A[11];
                    c3po[39] <= (A[4]  * A[3])  * A[10];
                    c3po[40] <= (A[8]  * A[2])  * A[7];
                    c3po[41] <= (A[8]  * A[3])  * A[6];

                    c3po[42] <= (A[4]  * A[9])  * A[15];
                    c3po[43] <= (A[4]  * A[11]) * A[13];
                    c3po[44] <= (A[8]  * A[5])  * A[15];
                    c3po[45] <= (A[8]  * A[7])  * A[13];
                    c3po[46] <= (A[12] * A[5])  * A[11];
                    c3po[47] <= (A[12] * A[7])  * A[9];
    
                    c3po[48] <= (A[0]  * A[9])  * A[15];
                    c3po[49] <= (A[0]  * A[11]) * A[13];
                    c3po[50] <= (A[8]  * A[1])  * A[15];
                    c3po[51] <= (A[8]  * A[3])  * A[13];
                    c3po[52] <= (A[12] * A[1])  * A[11];
                    c3po[53] <= (A[12] * A[3])  * A[9];
                  
                    c3po[54] <= (A[0]  * A[5])  * A[15];
                    c3po[55] <= (A[0]  * A[7])  * A[13];
                    c3po[56] <= (A[4]  * A[1])  * A[15];
                    c3po[57] <= (A[4]  * A[3])  * A[13];
                    c3po[58] <= (A[12] * A[1])  * A[7];
                    c3po[59] <= (A[12] * A[3])  * A[5];
                      
                    c3po[60] <= (A[0]  * A[5])  * A[11];
                    c3po[61] <= (A[0]  * A[7])  * A[9];
                    c3po[62] <= (A[4]  * A[1])  * A[11];
                    c3po[63] <= (A[4]  * A[3])  * A[9];
                    c3po[64] <= (A[8]  * A[1])  * A[7];
                    c3po[65] <= (A[8]  * A[3])  * A[5];
                    
                    c3po[66] <= (A[4]  * A[9])  * A[14];
                    c3po[67] <= (A[4]  * A[10]) * A[13];
                    c3po[68] <= (A[8]  * A[5])  * A[14];
                    c3po[69] <= (A[8]  * A[6])  * A[13];
                    c3po[70] <= (A[12] * A[5])  * A[10];
                    c3po[71] <= (A[12] * A[6])  * A[9];
                    
                    c3po[72] <= (A[0]  * A[9])  * A[14];
                    c3po[73] <= (A[0]  * A[10]) * A[13];
                    c3po[74] <= (A[8]  * A[1])  * A[14];
                    c3po[75] <= (A[8]  * A[2])  * A[13];
                    c3po[76] <= (A[12] * A[1])  * A[10];
                    c3po[77] <= (A[12] * A[2])  * A[9];
                    
                    c3po[78] <= (A[0]  * A[5])  * A[14];
                    c3po[79] <= (A[0]  * A[6])  * A[13];
                    c3po[80] <= (A[4]  * A[1])  * A[14];
                    c3po[81] <= (A[4]  * A[2])  * A[13];
                    c3po[82] <= (A[12] * A[1])  * A[6];
                    c3po[83] <= (A[12] * A[2])  * A[5];
                    
                    c3po[84] <= (A[0]  * A[5])  * A[10];
                    c3po[85] <= (A[0]  * A[6])  * A[9];
                    c3po[86] <= (A[4]  * A[1])  * A[10];
                    c3po[87] <= (A[4]  * A[2])  * A[9];
                    c3po[88] <= (A[8]  * A[1])  * A[6];
                    c3po[89] <= (A[8]  * A[2])  * A[5];
                    
                    state <= SUM; 

                end
                SUM: begin

                    // Summing partial products to calculate cofactors matrix
                    // This builds the adjugate matrix (still in Q40.24)

                    r2d2[0] <=   c3po[0]  -  c3po[1] -  c3po[2] +  c3po[3] +  c3po[4] -  c3po[5];
                    r2d2[1] <=  -c3po[6]  +  c3po[7] +  c3po[8] -  c3po[9] -  c3po[10] + c3po[11];
                    r2d2[3] <=  -c3po[12] + c3po[13] + c3po[14] - c3po[15] - c3po[16] + c3po[17];
                    r2d2[4] <=  -c3po[18] + c3po[19] + c3po[20] - c3po[21] - c3po[22] + c3po[23];
                    r2d2[5] <=   c3po[24] - c3po[25] - c3po[26] + c3po[27] + c3po[28] - c3po[29];
                    r2d2[6] <=  -c3po[30] + c3po[31] + c3po[32] - c3po[33] - c3po[34] + c3po[35];
                    
                    r2d2[7] <=   c3po[36] - c3po[37] - c3po[38] + c3po[39] + c3po[40] - c3po[41];
                    r2d2[8] <=   c3po[42] - c3po[43] - c3po[44] + c3po[45] + c3po[46] - c3po[47];
                    r2d2[9] <=  -c3po[48] + c3po[49] + c3po[50] - c3po[51] - c3po[52] + c3po[53];
                    r2d2[10] <=  c3po[54] - c3po[55] - c3po[56] + c3po[57] + c3po[58] - c3po[59];
                    r2d2[11] <= -c3po[60] + c3po[61] + c3po[62] - c3po[63] - c3po[64] + c3po[65];
                    r2d2[12] <= -c3po[66] + c3po[67] + c3po[68] - c3po[69] - c3po[70] + c3po[71];
                    r2d2[13] <=  c3po[72] - c3po[73] - c3po[74] + c3po[75] + c3po[76] - c3po[77];
                    r2d2[14] <= -c3po[78] + c3po[79] + c3po[80] - c3po[81] - c3po[82] + c3po[83];
                    r2d2[15] <=  c3po[84] - c3po[85] - c3po[86] + c3po[87] + c3po[88] - c3po[89];

                    state <= SCALE;

                end
                SCALE: begin

                    // Rescaling cofactors matrix from Q40.24 down to Q20.12 fixed-point

                    B[0]  <= (r2d2[0]  >>> 24);
                    B[1]  <= (r2d2[1]  >>> 24);
                    B[2]  <= (r2d2[2]  >>> 24);
                    B[3]  <= (r2d2[3]  >>> 24);
                    B[4]  <= (r2d2[4]  >>> 24);
                    B[5]  <= (r2d2[5]  >>> 24);
                    B[6]  <= (r2d2[6]  >>> 24);
                    B[7]  <= (r2d2[7]  >>> 24);
                    B[8]  <= (r2d2[8]  >>> 24);
                    B[9]  <= (r2d2[9]  >>> 24);
                    B[10] <= (r2d2[10] >>> 24);
                    B[11] <= (r2d2[11] >>> 24);
                    B[12] <= (r2d2[12] >>> 24);
                    B[13] <= (r2d2[13] >>> 24);
                    B[14] <= (r2d2[14] >>> 24);
                    B[15] <= (r2d2[15] >>> 24);

                    state <= DETMT;
                    
                end
                DETMT: begin
                    // Calculating determinant from original matrix and adjugate
                    det64 <= (A[0] * B[0]) + (A[1] * B[4]) + (A[2] * B[8]) + (A[3] * B[12]);

                    state <= DETSCALE;

                end
                DETSCALE: begin
                    
                    // Calculating reciprocal of determinant in Q20.12 format
                    // Prevent divide by zero by checking det64
                    if (det64 != 0) 
                        detinv <= (32'sd268435456) / (det64 >>> 12); // 2^28 scaled reciprocal (Q20.12)
                    else
                        detinv <= 32'sd0;
                    state <= INV;

                end
                INV: begin
                    // Multiply adjugate matrix by determinant reciprocal (division)

                    B[0]  <= B[0]  * detinv;  
                    B[1]  <= B[1]  * detinv;  
                    B[2]  <= B[2]  * detinv;  
                    B[3]  <= B[3]  * detinv;  

                    B[4]  <= B[4]  * detinv;  
                    B[5]  <= B[5]  * detinv;  
                    B[6]  <= B[6]  * detinv;  
                    B[7]  <= B[7]  * detinv;  

                    B[8]  <= B[8]  * detinv;  
                    B[9]  <= B[9]  * detinv;  
                    B[10] <= B[10] * detinv;  
                    B[11] <= B[11] * detinv;  

                    B[12] <= B[12] * detinv;  
                    B[13] <= B[13] * detinv;  
                    B[14] <= B[14] * detinv;  
                    B[15] <= B[15] * detinv;  

                    state <= INVSCALE;

                end
                INVSCALE: begin
                    // Rescale final inverse matrix values down to Q20.12
                    B[0]  <= B[0]  >>> 12;
                    B[1]  <= B[1]  >>> 12;
                    B[2]  <= B[2]  >>> 12;
                    B[3]  <= B[3]  >>> 12;

                    B[4]  <= B[4]  >>> 12;
                    B[5]  <= B[5]  >>> 12;
                    B[6]  <= B[6]  >>> 12;
                    B[7]  <= B[7]  >>> 12;

                    B[8]  <= B[8]  >>> 12;
                    B[9]  <= B[9]  >>> 12;
                    B[10] <= B[10] >>> 12;
                    B[11] <= B[11] >>> 12;

                    B[12] <= B[12] >>> 12;
                    B[13] <= B[13] >>> 12;
                    B[14] <= B[14] >>> 12;
                    B[15] <= B[15] >>> 12;

                    state <= DONE;

                end
                DONE: begin
                    done <= 1;    // Assert done
                    // make sure done flag is set after output is latched
                    // Pack B[0..15] into Bout
                    for (i = 0; i < 16; i = i + 1) begin
                        Bout[i*32 +: 32] <= B[i];
                    end
                    if (!start)
                        state <= IDLE; // Wait for start to deassert before resetting
                end
            endcase
        end
    end 
endmodule
*/

