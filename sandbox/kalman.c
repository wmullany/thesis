/******************************************************************************
 * @file        kalman.c
 * @author      Will Mullany
 * @date        04/02/2025
 *
 * @brief none
 *
 ******************************************************************************/

/***************************** Include Files *********************************/

#include "kalman.h"

/************************** Variable Definitions *****************************/

// General Notes
// Increasing sigma_p/a/j will make the filter trust itself more rather 
// than sensors - do this to increase stability 

/* ----------  Tunable parameters  ---------- */
const float dt = 0.05f;      /* sample period   (s)        */
const float sigma_p = 2.2f;  /* pos-sensor 1-σ  (m)        */
const float sigma_a = 2.05f; /* accel 1-σ       (m/s²)     */
const float sigma_j = 2.90f; /* jerk  1-σ       (m/s³)     */

/* ----------  Helper powers of dt ---------- */
const float dt2 = dt * dt;
const float dt3 = dt2 * dt;
const float dt4 = dt2 * dt2;
const float dt5 = dt4 * dt;
const float dt6 = dt3 * dt3;

/* ----------  State-transition matrix A (6×6)  ---------- *
 * Row-major flattening: A[i*6 + j] == element (i , j)
 */
const float A[36] = {
    /* row 0 */ 1.0f, 0.0f, dt, 0.0f, 0.5f * dt2, 0.0f,
    /* row 1 */ 0.0f, 1.0f, 0.0f, dt, 0.0f, 0.5f * dt2,
    /* row 2 */ 0.0f, 0.0f, 1.0f, 0.0f, dt, 0.0f,
    /* row 3 */ 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, dt,
    /* row 4 */ 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f,
    /* row 5 */ 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};

/* ----------  Measurement matrix H (4×6)  ---------- */
const float H[24] = {
    /* row 0 */ 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f,
    /* row 1 */ 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f,
    /* row 2 */ 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f,
    /* row 3 */ 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};

/* ----------  Measurement-noise covariance R (4×4)  ---------- */
const float R[16] = {sigma_p * sigma_p, 0.0f, 0.0f, 0.0f, 0.0f,
                     sigma_p *sigma_p, 0.0f, 0.0f, 0.0f, 0.0f,
                     sigma_a *sigma_a, 0.0f, 0.0f, 0.0f, 0.0f,
                     sigma_a *sigma_a};

/* ----------  Process-noise covariance Q (6×6)  ---------- */
const float q11 = dt6 / 36.0f;
const float q12 = dt5 / 12.0f;
const float q13 = dt4 / 6.0f;
const float q22 = dt4 / 4.0f;
const float q23 = dt3 / 2.0f;
const float q33 = dt2;

#define QVAL(x) (sigma_j * sigma_j * (x))

const float Q[36] = {
    /* row 0 */ QVAL(q11),
    QVAL(q12),
    0.0f,
    0.0f,
    QVAL(q13),
    0.0f,
    /* row 1 */ QVAL(q12),
    QVAL(q11),
    0.0f,
    0.0f,
    QVAL(q12),
    0.0f,
    /* row 2 */ 0.0f,
    0.0f,
    QVAL(q22),
    0.0f,
    0.0f,
    QVAL(q23),
    /* row 3 */ 0.0f,
    0.0f,
    0.0f,
    QVAL(q22),
    0.0f,
    QVAL(q23),
    /* row 4 */ QVAL(q13),
    QVAL(q12),
    0.0f,
    0.0f,
    QVAL(q33),
    0.0f,
    /* row 5 */ 0.0f,
    0.0f,
    QVAL(q23),
    QVAL(q23),
    0.0f,
    QVAL(q33)};

#undef QVAL

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
void add_6x1_vec(const float A[6], const float B[6], float C[6])
{
    for (int i = 0; i < 6; ++i)
    {
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
void mat_add6(const float A[36], const float B[36], float C[36])
{
    for (int i = 0; i < 36; ++i)
    {
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
void mat_add4(const float A[16], const float B[16], float C[16])
{
    for (int i = 0; i < 16; ++i)
    {
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
void mat_sub6(const float A[36], const float B[36], float C[36])
{
    for (int i = 0; i < 36; ++i)
    {
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
void vec_sub4(const float a[4], const float b[4], float c[4])
{
    for (int i = 0; i < 4; ++i)
    {
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
void mat_trans6(const float A[36], float B[36])
{
    for (int r = 0; r < 6; ++r)
    {
        for (int c = 0; c < 6; ++c)
        {
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
void mat_trans4x6(const float A[24], float B[24])
{
    for (int r = 0; r < 4; ++r)
    {
        for (int c = 0; c < 6; ++c)
        {
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
void mm_6x6_6x1(const float A[36], const float B[6], float C[6])
{
    for (int i = 0; i < 6; ++i)
    {
        float sum = 0.0f;
        for (int k = 0; k < 6; ++k)
        {
            sum += A[i * 6 + k] * B[k];
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
void mm_4x6_6x4(const float A[24], const float B[24], float C[16])
{
    for (int i = 0; i < 4; ++i)
    {
        for (int j = 0; j < 4; ++j)
        {
            float sum = 0.0f;

            for (int k = 0; k < 6; ++k)
            {
                sum += A[i * 6 + k] * B[k * 4 + j];
            }
            C[i * 4 + j] = sum;
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
void mm_6x6_6x6(const float A[36], const float B[36], float C[36])
{
    for (int i = 0; i < 6; ++i)
    {
        for (int j = 0; j < 6; ++j)
        {
            float sum = 0.0f;

            for (int k = 0; k < 6; ++k)
            {
                sum += A[i * 6 + k] * B[k * 6 + j];
            }
            C[i * 6 + j] = sum;
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
void mm_6x4_4x6(const float A[24], const float B[24], float C[36])
{
    for (int i = 0; i < 6; ++i)
    {
        for (int j = 0; j < 6; ++j)
        {
            float sum = 0.0f;

            for (int k = 0; k < 4; ++k)
            {
                sum += A[i * 4 + k] * B[k * 6 + j];
            }
            C[i * 6 + j] = sum;
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
void mm_6x6_6x4(const float A[36], const float B[24], float C[24])
{
    for (int i = 0; i < 6; ++i)
    {
        for (int j = 0; j < 4; ++j)
        {
            float sum = 0.0f;

            for (int k = 0; k < 6; ++k)
            {
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
void mm_6x4_4x4(const float A[24], const float B[16], float C[24])
{
    for (int i = 0; i < 6; ++i)
    {
        for (int j = 0; j < 4; ++j)
        {
            float sum = 0.0f;

            for (int k = 0; k < 4; ++k)
            {
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
void mm_4x6_6x6(const float A[24], const float B[36], float C[24])
{
    for (int i = 0; i < 4; ++i)
    {
        for (int j = 0; j < 6; ++j)
        {
            float sum = 0.0f;

            for (int k = 0; k < 6; ++k)
            {
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
void mm_4x6_6x1(const float A[24], const float B[6], float C[4])
{
    for (int i = 0; i < 4; ++i)
    {
        float sum = 0.0f;

        for (int k = 0; k < 6; ++k)
        {
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
void mm_6x4_4x1(const float A[24], const float B[4], float C[6])
{
    for (int i = 0; i < 6; ++i)
    {
        float sum = 0.0f;

        for (int k = 0; k < 4; ++k)
        {
            sum += A[i * 4 + k] * B[k];
        }
        C[i] = sum;
    }
}

float det3x3_flat(const float m[9])
{
    float t0 = m[4] * m[8];
    float t1 = m[5] * m[7];
    float t2 = t0 - t1;
    float a = m[0] * t2;

    float t3 = m[3] * m[8];
    float t4 = m[5] * m[6];
    float t5 = t3 - t4;
    float b = m[1] * t5;

    float t6 = m[3] * m[7];
    float t7 = m[4] * m[6];
    float t8 = t6 - t7;
    float c = m[2] * t8;

    float res = a - b + c;
    return res;
}

void mm_inv_4x4(const float A[16], float B[16])
{

    float cofactors[16];

    for (int row = 0; row < 4; row++)
    {
        for (int col = 0; col < 4; col++)
        {
            float minor[9];
            int mi = 0;

            for (int i = 0; i < 4; i++)
            {
                if (i == row)
                    continue;

                for (int j = 0; j < 4; j++)
                {
                    if (j == col)
                        continue;
                    minor[mi++] = A[i * 4 + j];
                }
            }
            float det = det3x3_flat(minor);
            cofactors[row * 4 + col] = ((row + col) % 2 == 0 ? 1.0f : -1.0f) * det;
        }
    }

    // Calculate determinant
    float det = 0.0f;

    for (int j = 0; j < 4; j++)
    {
        det += A[j] * cofactors[j];
    }
    printf("First Det: %.10f\n", det);
    // det = det * 4;

    // Assuming det != 0, compute inverse as adjugate / det

    det = 1.0f / det;
    printf("Second Det: %.10f\n", det);
    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            B[i * 4 + j] = cofactors[j * 4 + i] * det;
            if (B[i * 4 + j])
                printf("%.10f  ", cofactors[j * 4 + i]);
            printf("%.10f  ", B[i * 4 + j]);
        }
        printf("\n");
    }
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
void state_predict(const float A[36], const float x[6], float result[6])
{
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
void covariance_predict(const float A[36], const float P[36], const float Q[36],
                        float Phat[36])
{
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
 * @note         All matrices are passed as flattened 1D arrays in row-major
 *order.
 *
 ******************************************************************************/
void kalman_gain(const float Phat[36], const float H[24], const float R[16],
                 float K[24])
{
    // K = Phat * HT * (H * Phat * HT    +    R)^1

    float HT[24], temp1[24], temp2[24], temp3[16], temp4[16];

    mat_trans4x6(H, HT); // Transpose H and store in HT

    mm_6x6_6x4(Phat, HT, temp1); // Phat * HT (6x4)

    mm_4x6_6x6(H, Phat, temp2); // H * Phat (4x6)

    mm_4x6_6x4(temp2, HT, temp3); // H * Phat * HT

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
 * @note         All matrices are passed as flattened 1D arrays in row-major
 *order.
 *
 ******************************************************************************/
void state_update(const float xhat[6], const float K[24], const float H[24],
                  const float z[4], float result[6])
{
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
 * @note         All matrices are passed as flattened 1D arrays in row-major
 *order.
 *
 ******************************************************************************/
void covariance_update(const float Phat[36], const float K[24],
                       const float H[24], float result[36])
{
    float KH[36], KHPhat[36];

    mm_6x4_4x6(K, H, KH);

    mm_6x6_6x6(KH, Phat, KHPhat);

    mat_sub6(Phat, KHPhat, result);
}
/*****************************************************************************/
/**
 * Performs one iteration of the Kalman filter for a 6-state, 4-measurement
 *system. Updates the state estimate and covariance matrix using a
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
void kalman(const float P[36], const float x[6], const float z[4],
            float P_out[36], float x_out[6])
{
    // Temporary internal variables
    float xhat[6];
    float Phat[36];
    float K[24];

    state_predict(A, x, xhat);

    covariance_predict(A, P, Q, Phat);

    kalman_gain(Phat, H, R, K);

    state_update(xhat, K, H, z, x_out);

    covariance_update(Phat, K, H, P_out);
}


// Main implemented in Vitis - Todo: Copy over to this file