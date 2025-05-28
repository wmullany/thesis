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
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

/************************** Constant Definitions *****************************/
#define SIZE 1000
#define NOISE 40

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

/************************** Variable Definitions *****************************/

/* ----------  Tunable parameters  ---------- */
const float dt       = 0.01f;   /* sample period   (s)        */
const float sigma_p  = 0.02f;   /* pos-sensor 1-σ  (m)        */
const float sigma_a  = 0.05f;   /* accel 1-σ       (m/s²)     */
const float sigma_j  = 0.20f;   /* jerk  1-σ       (m/s³)     */

/* ----------  Helper powers of dt ---------- */
const float dt2 = dt*dt;
const float dt3 = dt2*dt;
const float dt4 = dt2*dt2;
const float dt5 = dt4*dt;
const float dt6 = dt3*dt3;

/* ----------  State-transition matrix A (6×6)  ---------- *
 * Row-major flattening: A[i*6 + j] == element (i , j)
 */
float A[36] = {
    /* row 0 */ 1.0f, 0.0f,      dt, 0.0f, 0.5f*dt2,      0.0f,
    /* row 1 */ 0.0f, 1.0f,    0.0f,   dt,      0.0f, 0.5f*dt2,
    /* row 2 */ 0.0f, 0.0f,    1.0f, 0.0f,       dt,      0.0f,
    /* row 3 */ 0.0f, 0.0f,    0.0f, 1.0f,      0.0f,       dt,
    /* row 4 */ 0.0f, 0.0f,    0.0f, 0.0f,      1.0f,      0.0f,
    /* row 5 */ 0.0f, 0.0f,    0.0f, 0.0f,      0.0f,      1.0f
};

/* ----------  Measurement matrix H (4×6)  ---------- */
float H[24] = {
    /* row 0 */ 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f,
    /* row 1 */ 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f,
    /* row 2 */ 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f,
    /* row 3 */ 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f
};

/* ----------  Measurement-noise covariance R (4×4)  ---------- */
float R[16] = {
    sigma_p*sigma_p, 0.0f,              0.0f,              0.0f,
    0.0f,            sigma_p*sigma_p,   0.0f,              0.0f,
    0.0f,            0.0f,   sigma_a*sigma_a,              0.0f,
    0.0f,            0.0f,              0.0f,   sigma_a*sigma_a
};

/* ----------  Process-noise covariance Q (6×6)  ---------- */
const float q11 = dt6 / 36.0f;
const float q12 = dt5 / 12.0f;
const float q13 = dt4 /  6.0f;
const float q22 = dt4 /  4.0f;
const float q23 = dt3 /  2.0f;
const float q33 = dt2;

#define QVAL(x) (sigma_j*sigma_j*(x))

float Q[36] = {
    /* row 0 */ QVAL(q11), QVAL(q12),        0.0f,        0.0f, QVAL(q13),        0.0f,
    /* row 1 */ QVAL(q12), QVAL(q11),        0.0f,        0.0f, QVAL(q12),        0.0f,
    /* row 2 */      0.0f,      0.0f, QVAL(q22),        0.0f,       0.0f, QVAL(q23),
    /* row 3 */      0.0f,      0.0f,        0.0f, QVAL(q22),       0.0f, QVAL(q23),
    /* row 4 */ QVAL(q13), QVAL(q12),        0.0f,        0.0f, QVAL(q33),        0.0f,
    /* row 5 */      0.0f,      0.0f, QVAL(q23), QVAL(q23),       0.0f, QVAL(q33)
};

#undef QVAL

/************************** Function Definitions *****************************/
 
void add_6x1_vec(const float A[6], const float B[6], float C[6]);

/*****************************************************************************/
/**
 * Performs a 6×6 Matrix add  C = A + B 
 * 
 * @param       A   
 * @param       B 
 * @param       C
 * 
 * @return	None.
 *
 * @note		None.
 *
******************************************************************************/      
void mat_add6(const float A[36], const float B[36], float C[36]);

   
/*****************************************************************************/
/**
 * Performs a 4×4 Matrix add   C = A + B   
 *
******************************************************************************/
void mat_add4(const float A[16], const float B[16], float C[16]);

/*****************************************************************************/
/**
 * Performs a 6×6 Matrix subtract   C = A − B   
 *
******************************************************************************/
void mat_sub6(const float A[36], const float B[36], float C[36]);

/*****************************************************************************/
/**
 * Performs a 4-element Vector subtract   c = a − b    
 *
******************************************************************************/
void vec_sub4(const float a[4], const float b[4], float c[4]);

/*****************************************************************************/
/**
 * Transposes a 6x6 matrix   
 *
******************************************************************************/
void mat_trans6(const float A[36], float B[36]);

/*****************************************************************************/
/**
 * Transposes a 4x6 matrix (to a 6x4 matrix)
 *                       
 * @param       A has 4 rows × 6 cols  (length 24)                       
 * @param       B has 6 rows × 4 cols  (length 24)   
 *
******************************************************************************/
void mat_trans4x6(const float A[24], float B[24]);

void mm_6x6_6x1(const float A[36], const float B[6], float C[6]);

void mm_4x6_6x4(const float A[24], const float B[24], float C[16]);

void mm_6x6_6x6(const float A[36], const float B[36], float C[36]);

void mm_6x4_4x6(const float A[24], const float B[24], float C[36]);

void mm_6x6_6x4(const float A[36], const float B[24], float C[24]);

void mm_6x4_4x4(const float A[24], const float B[16], float C[24]);

void mm_4x6_6x6(const float A[24], const float B[36], float C[24]);

void mm_4x6_6x1(const float A[24], const float B[6], float C[4]);

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
void mm_inv_4x4(float A[16], float B[16]);


/*****************************************************************************/
/**
 * Step 1. State prediction 
 *   
 * @param       A is the state transition matrix 
 * @param       x is the current state 
 * @param       result is the state prediction A * x
 *
 * @return	    None.
 *
 * @note		None.
 *
******************************************************************************/
void state_predict(float A[36], float x[6], float result[6]);

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
void covariance_predict(float A[36], float P[36], float Q[36], float Phat[36]);

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
 * @note         All matrices are passed as flattened 1D arrays in row-major order.
 *               
 ******************************************************************************/
void kalman_gain(float Phat[36], float H[24], float R[16], float K[24]);

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
void state_update(float xhat[6], float K[24], float H[24], float z[4], float result[6]); 

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
void covariance_update(float Phat[36], float K[24], float H[24], float result[36]); 
