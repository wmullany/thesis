/******************************************************************************
 * @file        kalman.c
 * @author      Will Mullany
 * @date        04/02/2025
 * 
 * @brief 
 * when i wrote this code, only God and i knew how it worked
 * now only God knows
 * 
 * total hours wasted on this file = 192 
 * archaeologists confirm the indentation layers. 
 * if something breaks, rotate the monitor 90° and read it as modern art
 * 
 * @details 
 * Kalman filter designed with reference to METR6203 - Control Engineering 2 
 * Lecturer: Dr. Jasmin Martin 
 * Workshop 11: Optimal Estimation
 * The University of Queensland, Sem 2 2024
 *
******************************************************************************/

/***************************** Include Files *********************************/

#include "kalman.h"

/*****************************************************************************/
/**
 *
 * Insert description here
 *   
 * @param        
 * @param        
 * @param       
 *
 * @return	    
 *
 * @note		
 *
******************************************************************************/



/************************** Function Definitions *****************************/
/*****************************************************************************/
/**
 * @brief Adds two 6×1 vectors element-wise.
 *
 * @param[in]  A  First input vector (size 6)
 * @param[in]  B  Second input vector (size 6)
 * @param[out] C  Output vector (C = A + B, size 6)
 *
 *****************************************************************************/
void add_6x1_vec(const float A[6], const float B[6], float C[6]) {
    #pragma HLS INLINE off
    #pragma HLS PIPELINE II=1
    #pragma HLS ARRAY_PARTITION variable=A complete dim=1
    #pragma HLS ARRAY_PARTITION variable=B complete dim=1
    #pragma HLS ARRAY_PARTITION variable=C complete dim=1

    vec_add: for (int i = 0; i < 6; ++i) {
        #pragma HLS UNROLL
        C[i] = A[i] + B[i];
    }
}

/*****************************************************************************/
/**
 * @brief Adds two 6×6 matrices element-wise.
 *
 * @param[in]  A  First input matrix (size 6x6, flat array of 36 elements)
 * @param[in]  B  Second input matrix (size 6x6)
 * @param[out] C  Output matrix (C = A + B, size 6x6)
 *
 *****************************************************************************/     
void mat_add6(const float A[36], const float B[36], float C[36]) {
    #pragma HLS INLINE off
    add6_loop: for (int i = 0; i < 36; ++i) {
        #pragma HLS PIPELINE II=1
        C[i] = A[i] + B[i];
    }
}

/*****************************************************************************/
/**
 * @brief Adds two 4×4 matrices element-wise.
 *
 * @param[in]  A  First input matrix (size 4x4, flat array of 16 elements)
 * @param[in]  B  Second input matrix (size 4x4)
 * @param[out] C  Output matrix (C = A + B, size 4x4)
 *
 *****************************************************************************/
void mat_add4(const float A[16], const float B[16], float C[16]) {
    #pragma HLS INLINE off
    add4_loop: for (int i = 0; i < 16; ++i) {
        #pragma HLS PIPELINE II=1
        C[i] = A[i] + B[i];
    }
}

/*****************************************************************************/
/**
 * @brief Subtracts two 6×6 matrices element-wise.
 *
 * @param[in]  A  Minuend matrix (size 6x6)
 * @param[in]  B  Subtrahend matrix (size 6x6)
 * @param[out] C  Output matrix (C = A − B, size 6x6)
 *
 *****************************************************************************/
void mat_sub6(const float A[36], const float B[36], float C[36]) {
    #pragma HLS INLINE off
    sub6_loop: for (int i = 0; i < 36; ++i) {
        #pragma HLS PIPELINE II=1
        C[i] = A[i] - B[i];
    }
}

/*****************************************************************************/
/**
 * @brief Subtracts two 4-element vectors element-wise.
 *
 * @param[in]  a  Minuend vector (size 4)
 * @param[in]  b  Subtrahend vector (size 4)
 * @param[out] c  Output vector (c = a − b, size 4)
 *
 *****************************************************************************/
void vec_sub4(const float a[4], const float b[4], float c[4]){
    #pragma HLS INLINE off
    vec4_loop: for (int i = 0; i < 4; ++i) {
        #pragma HLS PIPELINE II=1
        c[i] = a[i] - b[i];
    }
}

/*****************************************************************************/
/**
 * @brief Transposes a 6×6 matrix.
 *
 * @param[in]  A  Input matrix (size 6x6)
 * @param[out] B  Transposed matrix (B = Aᵀ, size 6x6)
 *
 *****************************************************************************/
void mat_trans6(const float A[36], float B[36]) {
    #pragma HLS INLINE off
    trans6_row: for (int r = 0; r < 6; ++r) {
        trans6_col: for (int c = 0; c < 6; ++c) {
            #pragma HLS PIPELINE II=1
            B[c * 6 + r] = A[r * 6 + c];
        }
    }
}

/*****************************************************************************/
/**
 * @brief Transposes a 4×6 matrix to a 6×4 matrix.
 *
 * @param[in]  A  Input matrix (size 4x6)
 * @param[out] B  Transposed matrix (B = Aᵀ, size 6x4)
 *
 *****************************************************************************/
void mat_trans4x6(const float A[24], float B[24]) {
    #pragma HLS INLINE off
    trans46_row: for (int r = 0; r < 4; ++r) {
        trans46_col: for (int c = 0; c < 6; ++c) {
            #pragma HLS PIPELINE II=1
            /* dest index = c * 4 + r   (6×4 layout)          */
            B[c * 4 + r] = A[r * 6 + c];
        }
    }
}

/*****************************************************************************/
/**
 * @brief Multiplies a 6×6 matrix with a 6×1 vector.
 *
 * @param[in]  A  Input matrix (size 6x6)
 * @param[in]  B  Input vector (size 6)
 * @param[out] C  Output vector (C = A × B, size 6)
 *
 *****************************************************************************/
void mm_6x6_6x1(const float A[36], const float B[6], float C[6]){
    #pragma HLS INLINE off
    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=6 dim=2
    #pragma HLS PIPELINE II=1
    mm61_row: for (int i = 0; i < 6; ++i) {
        float sum = 0.0f;
        mm61_col: for (int k = 0; k < 6; ++k) {
            #pragma HLS UNROLL
            sum += A[i*6 + k] * B[k];
        }
        C[i] = sum;
    }
}

/*****************************************************************************/
/**
 * @brief Multiplies a 4×6 matrix with a 6×4 matrix.
 *
 * @param[in]  A  Input matrix (size 4x6)
 * @param[in]  B  Input matrix (size 6x4)
 * @param[out] C  Output matrix (C = A × B, size 4x4)
 *
 *****************************************************************************/
void mm_4x6_6x4(const float A[24], const float B[24], float C[16]) {
    #pragma HLS INLINE off
    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=6 dim=2
    #pragma HLS ARRAY_PARTITION variable=B cyclic factor=6 dim=1
    mm44_row: for (int i = 0; i < 4; ++i) {
        for (int j = 0; j < 4; ++j) {
            #pragma HLS PIPELINE II=1
            float sum = 0.0f;
            mm44_col: for (int k = 0; k < 6; ++k) {
                #pragma HLS UNROLL
                sum += A[i*6 + k] * B[k*4 + j];
            }
            C[i*4 + j] = sum;
        }
    }
}

/*****************************************************************************/
/**
 * @brief Multiplies two 6×6 matrices.
 *
 * @param[in]  A  Input matrix (size 6x6)
 * @param[in]  B  Input matrix (size 6x6)
 * @param[out] C  Output matrix (C = A × B, size 6x6)
 *
 *****************************************************************************/
void mm_6x6_6x6(const float A[36], const float B[36], float C[36]) {
    #pragma HLS INLINE off
    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=6 dim=2
    #pragma HLS ARRAY_PARTITION variable=B cyclic factor=6 dim=1
    mm66_row:for (int i = 0; i < 6; ++i) {
        mm66_col: for (int j = 0; j < 6; ++j) {
            #pragma HLS PIPELINE II=1
            float sum = 0.0f;
            mm66_res: for (int k = 0; k < 6; ++k) {
                #pragma HLS UNROLL
                sum += A[i*6 + k] * B[k*6 + j];
            }
            C[i*6 + j] = sum;
        }
    }
}

/*****************************************************************************/
/**
 * @brief Multiplies a 6×4 matrix with a 4×6 matrix.
 *
 * @param[in]  A  Input matrix (size 6x4)
 * @param[in]  B  Input matrix (size 4x6)
 * @param[out] C  Output matrix (C = A × B, size 6x6)
 *
 *****************************************************************************/
void mm_6x4_4x6(const float A[24], const float B[24], float C[36]) {
    #pragma HLS INLINE off
    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=6 dim=2
    #pragma HLS ARRAY_PARTITION variable=B cyclic factor=6 dim=1
    mm6446_row: for (int i = 0; i < 6; ++i) {
        mm6446_col: for (int j = 0; j < 6; ++j) {
            #pragma HLS PIPELINE II=1
            float sum = 0.0f;
            mm6446_res: for (int k = 0; k < 4; ++k) {
                #pragma HLS UNROLL
                sum += A[i*4 + k] * B[k*6 + j];
            }
            C[i*6 + j] = sum;
        }
    }
}

/*****************************************************************************/
/**
 * @brief Multiplies a 6×6 matrix with a 6×4 matrix.
 *
 * @param[in]  A  Input matrix (size 6x6)
 * @param[in]  B  Input matrix (size 6x4)
 * @param[out] C  Output matrix (C = A × B, size 6x4)
 *
 *****************************************************************************/
void mm_6x6_6x4(const float A[36], const float B[24], float C[24]) {
    #pragma HLS INLINE off
    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=6 dim=2
    #pragma HLS ARRAY_PARTITION variable=B cyclic factor=4 dim=2
    mm6646_row: for (int i = 0; i < 6; ++i) {
        mm6646_col: for (int j = 0; j < 4; ++j) {
            #pragma HLS PIPELINE II=1
            float sum = 0.0f;
            mm6646_res: for (int k = 0; k < 6; ++k) {
                #pragma HLS UNROLL
                sum += A[i * 6 + k] * B[k * 4 + j];
            }
            C[i * 4 + j] = sum;
        }
    }
}

/*****************************************************************************/
/**
 * @brief Multiplies a 6×4 matrix with a 4×4 matrix.
 *
 * @param[in]  A  Input matrix (size 6x4)
 * @param[in]  B  Input matrix (size 4x4)
 * @param[out] C  Output matrix (C = A × B, size 6x4)
 *
 *****************************************************************************/
void mm_6x4_4x4(const float A[24], const float B[16], float C[24]) {
    #pragma HLS INLINE off
    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=4 dim=2
    #pragma HLS ARRAY_PARTITION variable=B cyclic factor=4 dim=2
    mm6444_row: for (int i = 0; i < 6; ++i) {
        mm6444_col: for (int j = 0; j < 4; ++j) {
            #pragma HLS PIPELINE II=1
            float sum = 0.0f;
            mm6444_res: for (int k = 0; k < 4; ++k) {
                #pragma HLS UNROLL
                sum += A[i * 4 + k] * B[k * 4 + j];
            }
            C[i * 4 + j] = sum;
        }
    }
}

/*****************************************************************************/
/**
 * @brief Multiplies a 4×6 matrix with a 6×6 matrix.
 *
 * @param[in]  A  Input matrix (size 4x6)
 * @param[in]  B  Input matrix (size 6x6)
 * @param[out] C  Output matrix (C = A × B, size 4x6)
 *
 *****************************************************************************/
void mm_4x6_6x6(const float A[24], const float B[36], float C[24]) {
    #pragma HLS INLINE off
    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=6 dim=2
    #pragma HLS ARRAY_PARTITION variable=B cyclic factor=6 dim=1
    mm4666_row: for (int i = 0; i < 4; ++i) {
        mm4666_col: for (int j = 0; j < 6; ++j) {
            #pragma HLS PIPELINE II=1
            float sum = 0.0f;
            mm4666_res: for (int k = 0; k < 6; ++k) {
                #pragma HLS UNROLL
                sum += A[i * 6 + k] * B[k * 6 + j];
            }
            C[i * 6 + j] = sum;
        }
    }
}

/*****************************************************************************/
/**
 * @brief Multiplies a 4×6 matrix with a 6×1 vector.
 *
 * @param[in]  A  Input matrix (size 4x6)
 * @param[in]  B  Input vector (size 6)
 * @param[out] C  Output vector (C = A × B, size 4)
 *
 *****************************************************************************/
void mm_4x6_6x1(const float A[24], const float B[6], float C[4]) {
    #pragma HLS INLINE off
    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=6 dim=2
    #pragma HLS ARRAY_PARTITION variable=B complete dim=1

    mm4661_row: for (int i = 0; i < 4; ++i) {
        #pragma HLS PIPELINE II=1
        float sum = 0.0f;
        mm4661_col: for (int k = 0; k < 6; ++k) {
            #pragma HLS UNROLL
            sum += A[i * 6 + k] * B[k];
        }
        C[i] = sum;
    }
}

/*****************************************************************************/
/**
 * @brief Multiplies a 6×4 matrix with a 4×1 vector.
 *
 * @param[in]  A  Input matrix (size 6x4)
 * @param[in]  B  Input vector (size 4)
 * @param[out] C  Output vector (C = A × B, size 6)
 *
 *****************************************************************************/
void mm_6x4_4x1(const float A[24], const float B[4], float C[6]) {
    #pragma HLS INLINE off
    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=4 dim=2
    #pragma HLS ARRAY_PARTITION variable=B complete dim=1

    mm4641_row: for (int i = 0; i < 6; ++i) {
        #pragma HLS PIPELINE II=1
        float sum = 0.0f;
        mm4641_col: for (int k = 0; k < 4; ++k) {
            #pragma HLS UNROLL
            sum += A[i * 4 + k] * B[k];
        }
        C[i] = sum;
    }
}


/*****************************************************************************/
/**
 * Computes the inverse of a 4x4 matrix using the adjoint method.
 * computing the adjoint, transposing it, and dividing by the determinant. 
 * 
 * If the matrix is not invertible we're in trouble
 *   
 * @param[in]   A is a row-major flattened 4x4
 * @param[out]  B is a row-major flattened 4x4 to store the inverse of A
 *
 * @return	    None.
 *
 * @note		This function assumes row-major order matrices.
 *
******************************************************************************/
void mm_inv_4x4(float A[16], float B[16]) { 

    #pragma HLS INLINE

    float det;

    /* Compute adjoint: */

    B[0] =
        + A[ 5] * A[10] * A[15]
        - A[ 5] * A[11] * A[14]
        - A[ 9] * A[ 6] * A[15]
        + A[ 9] * A[ 7] * A[14]
        + A[13] * A[ 6] * A[11]
        - A[13] * A[ 7] * A[10];

    B[1] =
        - A[ 1] * A[10] * A[15]
        + A[ 1] * A[11] * A[14]
        + A[ 9] * A[ 2] * A[15]
        - A[ 9] * A[ 3] * A[14]
        - A[13] * A[ 2] * A[11]
        + A[13] * A[ 3] * A[10];

    B[2] =
        + A[ 1] * A[ 6] * A[15]
        - A[ 1] * A[ 7] * A[14]
        - A[ 5] * A[ 2] * A[15]
        + A[ 5] * A[ 3] * A[14]
        + A[13] * A[ 2] * A[ 7]
        - A[13] * A[ 3] * A[ 6];

    B[3] =
        - A[ 1] * A[ 6] * A[11]
        + A[ 1] * A[ 7] * A[10]
        + A[ 5] * A[ 2] * A[11]
        - A[ 5] * A[ 3] * A[10]
        - A[ 9] * A[ 2] * A[ 7]
        + A[ 9] * A[ 3] * A[ 6];

    B[4] =
        - A[ 4] * A[10] * A[15]
        + A[ 4] * A[11] * A[14]
        + A[ 8] * A[ 6] * A[15]
        - A[ 8] * A[ 7] * A[14]
        - A[12] * A[ 6] * A[11]
        + A[12] * A[ 7] * A[10];

    B[5] =
        + A[ 0] * A[10] * A[15]
        - A[ 0] * A[11] * A[14]
        - A[ 8] * A[ 2] * A[15]
        + A[ 8] * A[ 3] * A[14]
        + A[12] * A[ 2] * A[11]
        - A[12] * A[ 3] * A[10];

    B[6] =
        - A[ 0] * A[ 6] * A[15]
        + A[ 0] * A[ 7] * A[14]
        + A[ 4] * A[ 2] * A[15]
        - A[ 4] * A[ 3] * A[14]
        - A[12] * A[ 2] * A[ 7]
        + A[12] * A[ 3] * A[ 6];

    B[7] =
        + A[ 0] * A[ 6] * A[11]
        - A[ 0] * A[ 7] * A[10]
        - A[ 4] * A[ 2] * A[11]
        + A[ 4] * A[ 3] * A[10]
        + A[ 8] * A[ 2] * A[ 7]
        - A[ 8] * A[ 3] * A[ 6];

    B[8] =
        + A[ 4] * A[ 9] * A[15]
        - A[ 4] * A[11] * A[13]
        - A[ 8] * A[ 5] * A[15]
        + A[ 8] * A[ 7] * A[13]
        + A[12] * A[ 5] * A[11]
        - A[12] * A[ 7] * A[ 9];

    B[9] =
        - A[ 0] * A[ 9] * A[15]
        + A[ 0] * A[11] * A[13]
        + A[ 8] * A[ 1] * A[15]
        - A[ 8] * A[ 3] * A[13]
        - A[12] * A[ 1] * A[11]
        + A[12] * A[ 3] * A[ 9];

    B[10] =
        + A[ 0] * A[ 5] * A[15]
        - A[ 0] * A[ 7] * A[13]
        - A[ 4] * A[ 1] * A[15]
        + A[ 4] * A[ 3] * A[13]
        + A[12] * A[ 1] * A[ 7]
        - A[12] * A[ 3] * A[ 5];

    B[11] =
        - A[ 0] * A[ 5] * A[11]
        + A[ 0] * A[ 7] * A[ 9]
        + A[ 4] * A[ 1] * A[11]
        - A[ 4] * A[ 3] * A[ 9]
        - A[ 8] * A[ 1] * A[ 7]
        + A[ 8] * A[ 3] * A[ 5];

    B[12] =
        - A[ 4] * A[ 9] * A[14]
        + A[ 4] * A[10] * A[13]
        + A[ 8] * A[ 5] * A[14]
        - A[ 8] * A[ 6] * A[13]
        - A[12] * A[ 5] * A[10]
        + A[12] * A[ 6] * A[ 9];

    B[13] =
        + A[ 0] * A[ 9] * A[14]
        - A[ 0] * A[10] * A[13]
        - A[ 8] * A[ 1] * A[14]
        + A[ 8] * A[ 2] * A[13]
        + A[12] * A[ 1] * A[10]
        - A[12] * A[ 2] * A[ 9];

    B[14] =
        - A[ 0] * A[ 5] * A[14]
        + A[ 0] * A[ 6] * A[13]
        + A[ 4] * A[ 1] * A[14]
        - A[ 4] * A[ 2] * A[13]
        - A[12] * A[ 1] * A[ 6]
        + A[12] * A[ 2] * A[ 5];

    B[15] =
        + A[ 0] * A[ 5] * A[10]
        - A[ 0] * A[ 6] * A[ 9]
        - A[ 4] * A[ 1] * A[10]
        + A[ 4] * A[ 2] * A[ 9]
        + A[ 8] * A[ 1] * A[ 6]
        - A[ 8] * A[ 2] * A[ 5];

    /* Compute determinant: */

    det = + A[0] * B[0] + A[1] * B[4] + A[2] * B[8] + A[3] * B[12];

    /* Multiply adjoint with reciprocal of determinant: */

    det = 1.0f / det;

    B[ 0] *= det;
    B[ 1] *= det;
    B[ 2] *= det;
    B[ 3] *= det;
    B[ 4] *= det;
    B[ 5] *= det;
    B[ 6] *= det;
    B[ 7] *= det;
    B[ 8] *= det;
    B[ 9] *= det;
    B[10] *= det;
    B[11] *= det;
    B[12] *= det;
    B[13] *= det;
    B[14] *= det;
    B[15] *= det;

}

/*****************************************************************************/
/**
 * Step 1. State prediction 
 *   
 * @param[in]   A is the state transition matrix 
 * @param[in]   x is the current state 
 * @param[out]  result is the state prediction A * x
 *
 * @return	    None.
 *
 * @note		None.
 *
******************************************************************************/
void state_predict(float A[36], float x[6], float result[6]) { 

    mm_6x6_6x1(A, x, result); // xhat = A * x

}

/*****************************************************************************/
/**
 * Step 2. State covariance prediction 
 *   
 * @param[in]   A is the state transition matrix 
 * @param[in]   P is the state covariance matrix
 * @param[in]   Q is the process noise matrix 
 * @param[out]  Phat is the state covariance estimate
 *
 * @return      None.
 *
 * @note		None.
 *
******************************************************************************/
void covariance_predict(float A[36], float P[36], float Q[36], float Phat[36]) { 

    float temp1[36], temp2[36], a_trans[36]; 

    mat_trans6(A, a_trans); // Transpose A for later

    mm_6x6_6x6(A, P, temp1); // A * P

    mm_6x6_6x6(temp1, a_trans, temp2); // A * P * AT

    mat_add6(temp2, Q, Phat); // A * P * AT + Q

}
/*****************************************************************************/
/**
 * Step 3. Kalman Gain
 *
 * @param[in]   Phat The 6x6 predicted error covariance matrix.
 * @param[in]   H The 4x6 measurement matrix.
 * @param[in]   R The 4x4 measurement noise covariance matrix.
 * @param[out]  K Output 6x4 Kalman gain matrix.
 *
 * @return       None.
 *
 * @note         All matrices are passed as flattened 1D arrays in row-major order.
 *               
 ******************************************************************************/
void kalman_gain(float Phat[36], float H[24], float R[16], float K[24]) { 

    // K = Phat * HT * (H * Phat * HT    +    R)^1

    float HT[24], temp1[24], temp2[24], temp3[16], temp4[16]; 

    mat_trans4x6(H, HT);  // Transpose H and store in HT

    mm_6x6_6x4(Phat, HT, temp1);  // Phat * HT (6x4)

    mm_4x6_6x6(H, Phat, temp2); // H * Phat (4x6)

    mm_4x6_6x4(temp2, HT, temp3);  // H * Phat * HT

    mat_add4(temp3, R, temp4); // (H * Phat * HT  + R)

    mm_inv_4x4(temp4, temp3); // (H * Phat * HT  + R)^-1

    mm_6x4_4x4(temp1, temp3, K); // Phat * HT * (H * Phat * HT  + R)^-1

}

/*****************************************************************************/
/**
 * Step 4. State Update
 *
 *
 * @return       None.
 *
 * @note         All matrices are passed as flattened 1D arrays in row-major order.
 *               
 ******************************************************************************/
void state_update(float xhat[6], float K[24], float H[24], float z[4], float result[6]) { 

    float Hxhat[4], temp1[4], Ktemp1[6]; 

    mm_4x6_6x1(H, xhat, Hxhat);  

    vec_sub4(z, Hxhat, temp1); 

    mm_6x4_4x1(K, temp1, Ktemp1);

    add_6x1_vec(xhat, Ktemp1, result); 

}

/*****************************************************************************/
/**
 * Step 5. Covariance Update
 *
 *
 * @return       None.
 *
 * @note         All matrices are passed as flattened 1D arrays in row-major order.
 *               
 ******************************************************************************/
void covariance_update(float Phat[36], float K[24], float H[24], float result[36]) { 

    float KH[36], KHPhat[36]; 

    mm_6x4_4x6(K, H, KH); 

    mm_6x6_6x6(KH, Phat, KHPhat); 

    mat_sub6(Phat, KHPhat, result); 

}
/*****************************************************************************/
/**
 * Performs one iteration of the Kalman filter for a 6-state, 4-measurement system.
 * Updates the state estimate and covariance matrix using a 
 * predict-update cycle. Assumes that global matrices A, H, Q, and R 
 * are accessible within the scope.
 * 
 * Designed for hardware implementation with HLS, and all ports are
 * mapped to AXI-Lite interfaces for integration with an FPGA.
 * 
 * @param[in]   P Current state covariance matrix 
 * @param[in]   x Current state estimate vector (6 elements)
 * @param[in]   z Measurement vector (4 elements)
 * @param[out]  P_out Updated state covariance matrix 
 * @param[out]  x_out Updated state estimate vector (6 elements)
 *
 * @return	        void
 *
 * @note		    Requires functions:
 *                  - state_predict()
 *                  - covariance_predict()
 *                  - kalman_gain()
 *                  - state_update()
 *                  - covariance_update()
 *
******************************************************************************/
void kalman(float P[36], float x[6], float z[4], float P_out[36], float x_out[6]) { 

    #pragma HLS INTERFACE s_axilite port=return bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=P bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=x bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=z bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=P_out bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=x_out bundle=CTRL

    //Temporary internal variables
    float xhat[6];      
    float Phat[36];     
    float K[24];     
    
    state_predict(A, x, xhat);

    covariance_predict(A, P, Q, Phat);

    kalman_gain(Phat, H, R, K); 

    state_update(xhat, K, H, z, x_out); 

    covariance_update(Phat, K, H, P_out);

}

int run_sim(void) { 

    /* ----------------  Initialise State  --------------- */
    float x[6] = {0.1, 0.1, 0.1, 0.1, 0.1, 0.1}; 

    /* ----------  Initialise State Covariance  ---------- */
    float P[36] = {
        1000.0f,  0,      0,      0,      0,      0,      // x
        0,    1000.0f,  0,      0,      0,      0,      // y
        0,      0,   25.0f,    0,      0,      0,      // vx
        0,      0,      0,   25.0f,    0,      0,      // vy
        0,      0,      0,      0,    10.0f,    0,      // ax
        0,      0,      0,      0,      0,    10.0f     // ay
    };

     // Output buffers
    float x_out[6];
    float P_out[36];

    int size = 1000;
    float r = 50;
    float r2 = 50;  
    float r3 = 50;
    float r4 = 50;

    FILE *file = fopen("results.csv", "w");
    if (file == NULL) {
        fprintf(stderr, "Error: Failed to open file for writing.\n");
        return 1;
    }

    fprintf(file, "Sample, Meas X, Meas Y, Meas AX, Meas AY, X, Y, VX, VY, AX, AY, CovX, CovY\n");
    srand(time(NULL)); 
    for (int i = 0; i < size; i++) { 
             
        r += (float)(rand() % 50) - (rand() % 50);
        r2 += (float)(rand() % 50) - (rand() % 50);
        r3 += (float)(rand() % 5)- (rand() % 5);
        r4 += (float)(rand() % 5) - (rand() % 5);

        float z[4] = {r, r2, r3, r4}; 

        kalman(P, x, z, P_out, x_out); 

        // Print measurement
        printf("Measurement:           ");
        fprintf(file, "%d,", i);
        for (int i = 0; i < 4; i++) {
            printf("%.1f    ", z[i]);
            fprintf(file, "%.2f,", z[i]);
        }
        printf("\n");
        

        // Print updated state
        printf("Updated State x_out:   ");
        for (int i = 0; i < 6; i++) {
            printf("%.1f    ", x_out[i]);
            fprintf(file, "%.2f,", x_out[i]);
        }
        printf("\n");
        fprintf(file, "\n");

        memcpy(P, P_out, sizeof(P_out)); 

        memcpy(x, x_out, sizeof(x_out)); 

    }

}

int main(void) { 

    run_sim(); 

}
