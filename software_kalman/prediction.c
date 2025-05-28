/**
 * Prediction part of the Kalman Filter 
 * 
 *  x_hat_k = A * x_k-1
 * 
 *  P_hat_k = A * P_k-1 * A' + Q
 * 
 */

#include "prediction.h"

float A[N][N] = {
    {1, 0, 1, 0, 0.5, 0}, 
    {0, 1, 0, 1, 0, 0.5}, 
    {0, 0, 1, 0, 1, 0}, 
    {0, 0, 0, 1, 0, 1}, 
    {0, 0, 0, 0, 1, 0}, 
    {0, 0, 0, 0, 0, 1}
    };



int main(void) { 

    float arr[] = {5.0, 5.0, 2.0, 3.0, 4.0, 1.0};
    float* state = arr;

    state = state_predict(A, state); 

}

float* state_predict(float A_matrix[N][N], float state_matrix[N]){ 

    static float state_pred[N] = {0, 0, 0, 0, 0, 0}; 

    for (int i = 0; i < N; i++) { 
        for (int j = 0; j < N; j++) { 
            state_pred[i] += A_matrix[i][j] * state_matrix[j]; 
        }
        printf("%f\n", state_pred[i]); 
    }

    return state_pred; 
}

float* covariance_predict(float A_matrix[N][N], float P_matrix[N][N], float Q_matrix[N][N]){ 

    // Phat_k = A * P_k-1 * A^T + Q

    static float state_pred[N] = {0, 0, 0, 0, 0, 0}; 

    for (int i = 0; i < N; i++) { 
        for (int j = 0; j < N; j++) { 
            state_pred[i] += A_matrix[i][j]; 
        } 
    }

    return state_pred; 
}




