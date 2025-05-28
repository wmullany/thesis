#include "kalman.h"

int main(void) { 
    /* ----------  Initialise State  ---------- */
    float state[6] = {0.1, 0.1, 0.1, 0.1, 0.1, 0.1};
    float state_est[6]; 

    /* ----------  Initialise State Covariance  ---------- */
    float P[36] = {
        1000.0f,  0,      0,      0,      0,      0,      // x
        0,    1000.0f,  0,      0,      0,      0,      // y
        0,      0,   25.0f,    0,      0,      0,      // vx
        0,      0,      0,   25.0f,    0,      0,      // vy
        0,      0,      0,      0,    10.0f,    0,      // ax
        0,      0,      0,      0,      0,    10.0f     // ay
    };

    FILE *file = fopen("results.csv", "w");
    if (file == NULL) {
        fprintf(stderr, "Error: Failed to open file for writing.\n");
        return 1;
    }

    fprintf(file, "Sample, Meas X, Meas Y, Meas AX, Meas AY, X, Y, VX, VY, AX, AY, CovX, CovY\n");

    float Phat[36];

    float K[24];

    float a = 0; 

    for (int i = 0; i < SIZE; i++) {  

        srand(rand()); 

        float z[4] = {a, a, a/100, a/100};

        a += (rand() % NOISE) - NOISE/2;

        state_predict(A, state, state_est);

        if (i % 1    == 0) { 

            fprintf(file, "%d,", i);

            for (int j = 0; j < 4; j++) { 

                fprintf(file, "%.2f,", z[j]);
            }

            for (int j = 0; j < 6; j++) { 

                fprintf(file, "%.2f,", state_est[j]);
            }

            fprintf(file, "%.2f,", P[0]);

            fprintf(file, "%.2f,", P[14]);

            fprintf(file, "\n");

        }

        covariance_predict(A, P, Q, Phat);

        kalman_gain(Phat, H, R, K); 

        state_update(state_est, K, H, z, state); 

        covariance_update(Phat, K, H, P); 

    }

    for (int i = 0; i < 36; i++) { 
        if (i%6 == 0) { 
            printf("\n"); 
        }
        printf("%.10f    ", P[i]); 
        
    }

    fclose(file); 
    return 0; 
}
