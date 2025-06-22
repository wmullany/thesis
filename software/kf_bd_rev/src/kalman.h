/******************************************************************************
 * @file        kalman.c
 * @author      Will Mullany
 * @date        04/02/2025
 *
 ******************************************************************************/

/***************************** Include Files *********************************/
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <math.h>

/************************** Constant Definitions *****************************/
#define SIZE 1000
#define NOISE 40

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

/************************** Variable Definitions *****************************/

/* Constants */
extern const float dt;
extern const float sigma_p;
extern const float sigma_a;
extern const float sigma_j;

/* Helper powers of dt */
extern const float dt2;
extern const float dt3;
extern const float dt4;
extern const float dt5;
extern const float dt6;

/* Matrices */
extern const float A[36];
extern const float H[24];
extern const float R[16];
extern const float Q[36];

/* Intermediate Q terms */
extern const float q11;
extern const float q12;
extern const float q13;
extern const float q22;
extern const float q23;
extern const float q33;

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
void add_6x1_vec(const float A[6], const float B[6], float C[6]);

/*****************************************************************************/
/**
 * @brief Adds two 6×6 matrices element-wise.
 *
 * @param[in]  A  First input matrix (size 6x6, flat array of 36 elements)
 * @param[in]  B  Second input matrix (size 6x6)
 * @param[out] C  Output matrix (C = A + B, size 6x6)
 *
 *****************************************************************************/
void mat_add6(const float A[36], const float B[36], float C[36]);

/*****************************************************************************/
/**
 * @brief Adds two 4×4 matrices element-wise.
 *
 * @param[in]  A  First input matrix (size 4x4, flat array of 16 elements)
 * @param[in]  B  Second input matrix (size 4x4)
 * @param[out] C  Output matrix (C = A + B, size 4x4)
 *
 *****************************************************************************/
void mat_add4(const float A[16], const float B[16], float C[16]);

/*****************************************************************************/
/**
 * @brief Subtracts two 6×6 matrices element-wise.
 *
 * @param[in]  A  Minuend matrix (size 6x6)
 * @param[in]  B  Subtrahend matrix (size 6x6)
 * @param[out] C  Output matrix (C = A  B, size 6x6)
 *
 *****************************************************************************/
void mat_sub6(const float A[36], const float B[36], float C[36]);

/*****************************************************************************/
/**
 * @brief Subtracts two 4-element vectors element-wise.
 *
 * @param[in]  a  Minuend vector (size 4)
 * @param[in]  b  Subtrahend vector (size 4)
 * @param[out] c  Output vector (c = a  b, size 4)
 *
 *****************************************************************************/
void vec_sub4(const float a[4], const float b[4], float c[4]);

/*****************************************************************************/
/**
 * @brief Transposes a 6×6 matrix.
 *
 * @param[in]  A  Input matrix (size 6x6)
 * @param[out] B  Transposed matrix (B = , size 6x6)
 *
 *****************************************************************************/
void mat_trans6(const float A[36], float B[36]);

/*****************************************************************************/
/**
 * @brief Transposes a 4×6 matrix to a 6×4 matrix.
 *
 * @param[in]  A  Input matrix (size 4x6)
 * @param[out] B  Transposed matrix (B = , size 6x4)
 *
 *****************************************************************************/
void mat_trans4x6(const float A[24], float B[24]);

/*****************************************************************************/
/**
 * @brief Multiplies a 6×6 matrix with a 6×1 vector.
 *
 * @param[in]  A  Input matrix (size 6x6)
 * @param[in]  B  Input vector (size 6)
 * @param[out] C  Output vector (C = A × B, size 6)
 *
 *****************************************************************************/
void mm_6x6_6x1(const float A[36], const float B[6], float C[6]);

/*****************************************************************************/
/**
 * @brief Multiplies a 4×6 matrix with a 6×4 matrix.
 *
 * @param[in]  A  Input matrix (size 4x6)
 * @param[in]  B  Input matrix (size 6x4)
 * @param[out] C  Output matrix (C = A × B, size 4x4)
 *
 *****************************************************************************/
void mm_4x6_6x4(const float A[24], const float B[24], float C[16]);

/*****************************************************************************/
/**
 * @brief Multiplies two 6×6 matrices.
 *
 * @param[in]  A  Input matrix (size 6x6)
 * @param[in]  B  Input matrix (size 6x6)
 * @param[out] C  Output matrix (C = A × B, size 6x6)
 *
 *****************************************************************************/
void mm_6x6_6x6(const float A[36], const float B[36], float C[36]);

/*****************************************************************************/
/**
 * @brief Multiplies a 6×4 matrix with a 4×6 matrix.
 *
 * @param[in]  A  Input matrix (size 6x4)
 * @param[in]  B  Input matrix (size 4x6)
 * @param[out] C  Output matrix (C = A × B, size 6x6)
 *
 *****************************************************************************/
void mm_6x4_4x6(const float A[24], const float B[24], float C[36]);

/*****************************************************************************/
/**
 * @brief Multiplies a 6×6 matrix with a 6×4 matrix.
 *
 * @param[in]  A  Input matrix (size 6x6)
 * @param[in]  B  Input matrix (size 6x4)
 * @param[out] C  Output matrix (C = A × B, size 6x4)
 *
 *****************************************************************************/
void mm_6x6_6x4(const float A[36], const float B[24], float C[24]);

/*****************************************************************************/
/**
 * @brief Multiplies a 6×4 matrix with a 4×4 matrix.
 *
 * @param[in]  A  Input matrix (size 6x4)
 * @param[in]  B  Input matrix (size 4x4)
 * @param[out] C  Output matrix (C = A × B, size 6x4)
 *
 *****************************************************************************/
void mm_6x4_4x4(const float A[24], const float B[16], float C[24]);

/*****************************************************************************/
/**
 * @brief Multiplies a 4×6 matrix with a 6×6 matrix.
 *
 * @param[in]  A  Input matrix (size 4x6)
 * @param[in]  B  Input matrix (size 6x6)
 * @param[out] C  Output matrix (C = A × B, size 4x6)
 *
 *****************************************************************************/
void mm_4x6_6x6(const float A[24], const float B[36], float C[24]);

/*****************************************************************************/
/**
 * @brief Multiplies a 4×6 matrix with a 6×1 vector.
 *
 * @param[in]  A  Input matrix (size 4x6)
 * @param[in]  B  Input vector (size 6)
 * @param[out] C  Output vector (C = A × B, size 4)
 *
 *****************************************************************************/
void mm_4x6_6x1(const float A[24], const float B[6], float C[4]);

/*****************************************************************************/
/**
 * @brief Multiplies a 6×4 matrix with a 4×1 vector.
 *
 * @param[in]  A  Input matrix (size 6x4)
 * @param[in]  B  Input vector (size 4)
 * @param[out] C  Output vector (C = A  B, size 6)
 *
 *****************************************************************************/
void mm_6x4_4x1(const float A[24], const float B[4], float C[6]);

/*****************************************************************************/
/**
 * Computes the inverse of a 4x4 matrix using the adjoint method.
 * computing the adjoint, transposing it, and dividing by the determinant.
 *
 * If the matrix is not invertible we're in trouble
 *
 * @param       A is a row-major flattened 4x4
 * @param       B is a row-major flattened 4x4 to store the inverse of A
 *
 * @return	    None.
 *
 * @note		This function assumes row-major order matrices.
 *
 ******************************************************************************/
void mm_inv_4x4(const float A[16], float B[16]);

/*****************************************************************************/
/**
 * Step 1. State prediction
 *
 * @param       A is the state transition matrix
 * @param       x is the current state
 * @param       result is the state prediction A *
 *
 * @return	    None.
 *
 * @note		None.
 *
 ******************************************************************************/
void state_predict(const float A[36], const float x[6], float result[6]);

/*****************************************************************************/
/**
 * Step 2. State covariance prediction
 *
 * @param       A is the state transition matrix
 * @param       P is the state covariance matrix
 * @param       Q is the process noise matrix
 * @param       Phat is the state covariance estimate
 *
 * @return      None.
 *
 * @note		None.
 *
 ******************************************************************************/
void covariance_predict(const float A[36], const float P[36], const float Q[36],
                        float Phat[36]);

/*****************************************************************************/
/**
 * Step 3. Kalman Gain
 *
 * @param Phat   The 6x6 predicted error covariance matrix.
 * @param H      The 4x6 measurement matrix.
 * @param R      The 4x4 measurement noise covariance matrix.
 * @param K      Output 6x4 Kalman gain matrix.
 *
 * @return       None.
 *
 * @note         All matrices are passed as flattened 1D arrays in row-major
 *order.
 *
 ******************************************************************************/
void kalman_gain(const float Phat[36], const float H[24], const float R[16],
                 float K[24]);

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
                  const float z[4], float result[6]);

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
                       const float H[24], float result[36]);

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
            float P_out[36], float x_out[6]);




