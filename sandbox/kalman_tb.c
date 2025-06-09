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

/************************** Variable Declarations ****************************/

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

int run_sim(void)
{
    /* ----------------  Initialise State  --------------- */
    float x[6] = {0.1, 0.1, 0.1, 0.1, 0.1, 0.1};

    /* ----------  Initialise State Covariance  ---------- */
    float P[36] = {
        1000.0f, 0, 0, 0, 0, 0, // x
        0, 1000.0f, 0, 0, 0, 0, // y
        0, 0, 25.0f, 0, 0, 0,   // vx
        0, 0, 0, 25.0f, 0, 0,   // vy
        0, 0, 0, 0, 10.0f, 0,   // ax
        0, 0, 0, 0, 0, 10.0f    // ay
    };

    // Output buffers
    float x_out[6];
    float P_out[36];

    int size = 1000;
    float r = 5;
    float r2 = 5;
    float r3 = 0;
    float r4 = 0;

    FILE *file = fopen("results.csv", "w");
    if (file == NULL)
    {
        fprintf(stderr, "Error: Failed to open file for writing.\n");
        return 1;
    }

    fprintf(file,
            "Sample, Meas X, Meas Y, Meas AX, Meas AY, X, Y, VX, VY, AX, AY, "
            "CovX, CovY\n");

    // srand(time(NULL));
    for (int i = 0; i < size; i++)
    {
        r += (float)(rand() % 5) - (rand() % 5);
        r2 += (float)(rand() % 5) - (rand() % 5);
        r3 += (float)(rand() % 2) - (rand() % 2);
        r4 += (float)(rand() % 2) - (rand() % 2);

        float z[4] = {r, r2, r3, r4};

        kalman(P, x, z, P_out, x_out);

        fprintf(file, "%d,", i);

        printf("Meas:                  ");
        for (int i = 0; i < 4; i++)
        {
            fprintf(file, "%.2f,", z[i]);
            printf("%.3f    ", z[i]);
        }
        printf("\n");

        printf("Updated State x_out:   ");
        for (int i = 0; i < 6; i++)
        {
            printf("%.3f    ", x_out[i]);
            fprintf(file, "%.2f,", x_out[i]);
        }
        printf("\n");
        printf("\n");

        fprintf(file, "%.2f,", P[0]);

        fprintf(file, "%.2f,", P[14]);

        fprintf(file, "\n");

        memcpy(P, P_out, sizeof(P_out));

        memcpy(x, x_out, sizeof(x_out));
    }
    printf("Updated State x_out:   ");
    for (int i = 0; i < 6; i++)
    {
        printf("%.1f    ", x_out[i]);
    }
    printf("\n");
    //Print A
    for (int i = 0; i < 6; i++) { 
        for (int j = 0; j < 6; j++) { 
            printf("%.10f ", Q[i * 6 + j]); 
        }
        printf("\n"); 
    }
    return 0;
}

int main(void)
{
    run_sim();

    return 0;
}