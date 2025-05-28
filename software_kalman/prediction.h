
#ifndef PREDICTION_H
#define PREDICTION_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define M 4
#define N 6

// Need to define A and Q 

 

float Q[N][N] = {
    {1, 0, 0, 0, 0, 0}, 
    {0, 1, 0, 0, 0, 0}, 
    {0, 0, 1, 0, 0, 0}, 
    {0, 0, 0, 1, 0, 1}, 
    {0, 0, 0, 0, 1, 0}, 
    {0, 0, 0, 0, 0, 1}
    };

float P[N][N] = {
    {0.01, 0.01, 0, 0, 0, 0}, 
    {0.01, 0.01, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0.01, 0.01}, 
    {0, 0, 0, 0, 0.01, 0.01}
    };

float* state_predict(float A_matrix[N][N], float state_matrix[N]); 

#endif 

