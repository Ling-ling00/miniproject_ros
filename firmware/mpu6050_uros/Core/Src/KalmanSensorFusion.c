/*
 * KalmanSensorFusion.c
 *
 *  Created on: Oct 19, 2024
 *      Author: ponwalai
 */

#include "KalmanSensorFusion.h"
#include <math.h>

void init_matrix(matrix_instance* mat, int rows, int cols, float* values) {
    mat->numRows = rows;
    mat->numCols = cols;
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            mat->data[i][j] = values[i * cols + j];
        }
    }
}

void matrix_add(matrix_instance* a, matrix_instance* b, matrix_instance* result) {
    for (int i = 0; i < a->numRows; i++) {
        for (int j = 0; j < a->numCols; j++) {
            result->data[i][j] = a->data[i][j] + b->data[i][j];
        }
    }
}

void matrix_subtract(matrix_instance* a, matrix_instance* b, matrix_instance* result) {
    for (int i = 0; i < a->numRows; i++) {
        for (int j = 0; j < a->numCols; j++) {
            result->data[i][j] = a->data[i][j] - b->data[i][j];
        }
    }
}

void matrix_multiply(matrix_instance* a, matrix_instance* b, matrix_instance* result) {
    for (int i = 0; i < a->numRows; i++) {
        for (int j = 0; j < b->numCols; j++) {
            result->data[i][j] = 0; // Initialize to zero
            for (int k = 0; k < a->numCols; k++) {
                result->data[i][j] += a->data[i][k] * b->data[k][j];
            }
        }
    }
}

void matrix_transpose(matrix_instance* mat, matrix_instance* result) {
    for (int i = 0; i < mat->numRows; i++) {
        for (int j = 0; j < mat->numCols; j++) {
            result->data[j][i] = mat->data[i][j];
        }
    }
}

void matrix_inverse_2x2(matrix_instance* mat, matrix_instance* inv) {
    float det = mat->data[0][0] * mat->data[1][1] - mat->data[0][1] * mat->data[1][0];
    if (det != 0) {
        inv->data[0][0] = mat->data[1][1] / det;
        inv->data[0][1] = -mat->data[0][1] / det;
        inv->data[1][0] = -mat->data[1][0] / det;
        inv->data[1][1] = mat->data[0][0] / det;
    }
}

void InitSensorFusion(SensorFusion* SF, double q[9], double r[9], float dt) {
    SF->Yp.numRows = 2;
    SF->Yp.numCols = 1;

    SF->Xp.numRows = 4;
    SF->Xp.numCols = 1;

    SF->Xc.numRows = 4;
    SF->Xc.numCols = 1;

    SF->Pp.numRows = 4;
    SF->Pp.numCols = 4;

    SF->Pc.numRows = 4;
    SF->Pc.numCols = 4;

    SF->K.numRows = 4;
    SF->K.numCols = 2;

    SF->e.numRows = 2;
    SF->e.numCols = 1;

    float A[16] = {
        1, 0, -dt, 0,
        0, 1, 0, -dt,
        0, 0, 1, 0,
        0, 0, 0, 1
    };

    float B[8] = {
        dt, 0,
        0, dt,
        0, 0,
        0, 0
    };

    float C[8] = {
        1, 0, 0, 0,
        0, 1, 0, 0
    };

    float I[16] = {
        1, 0, 0, 0,
        0, 1, 0, 0,
        0, 0, 1, 0,
        0, 0, 0, 1
    };

    float Q[16] = {
        0.01, 0, 0, 0,
        0, 0.01, 0, 0,
        0, 0, q[0], q[1],
        0, 0, q[3], q[4]
    };

    float R[4] = {
        (pow(r[4], 2) + pow(r[8], 2)) / 2, 0,
        0, (pow(r[0], 2) + pow(r[4], 2) + pow(r[8], 2)) / 3
    };

    init_matrix(&SF->A, 4, 4, A);
    init_matrix(&SF->B, 4, 2, B);
    init_matrix(&SF->C, 2, 4, C);
    init_matrix(&SF->I, 4, 4, I);
    init_matrix(&SF->Q, 4, 4, Q);
    init_matrix(&SF->R, 2, 2, R);

	SF->temp4x1A.numRows = 4;
	SF->temp4x1A.numCols = 1;
	SF->temp4x1B.numRows = 4;
	SF->temp4x1B.numCols = 1;

	SF->temp2x4.numRows = 2;
	SF->temp2x4.numCols = 4;

	SF->temp4x2A.numRows = 4;
	SF->temp4x2A.numCols = 2;
	SF->temp4x2B.numRows = 4;
	SF->temp4x2B.numCols = 2;

	SF->temp2x2A.numRows = 2;
	SF->temp2x2A.numCols = 2;
	SF->temp2x2B.numRows = 2;
	SF->temp2x2B.numCols = 2;
	SF->temp2x2C.numRows = 2;
	SF->temp2x2C.numCols = 2;

	SF->temp4x4A.numRows = 4;
	SF->temp4x4A.numCols = 4;
	SF->temp4x4B.numRows = 4;
	SF->temp4x4B.numCols = 4;
	SF->temp4x4C.numRows = 4;
	SF->temp4x4C.numCols = 4;
}

void sensor_fusion(SensorFusion* SF, matrix_instance* u, matrix_instance* y) {

    // Calculate Kalman gain
    matrix_transpose(&SF->C, &SF->temp4x2A);
    matrix_multiply(&SF->C, &SF->Pp, &SF->temp2x4);
    matrix_multiply(&SF->temp2x4, &SF->temp4x2A, &SF->temp2x2A);
    matrix_add(&SF->temp2x2A, &SF->R, &SF->temp2x2B);
    matrix_inverse_2x2(&SF->temp2x2B, &SF->temp2x2C);
    matrix_multiply(&SF->Pp, &SF->temp4x2A, &SF->temp4x2B);
    matrix_multiply(&SF->temp4x2B, &SF->temp2x2C, &SF->K);

    // Predict the measurement
    matrix_multiply(&SF->C, &SF->Xp, &SF->Yp);

    // Calculate error
    matrix_subtract(y, &SF->Yp, &SF->e);

    // Corrected state
    matrix_multiply(&SF->K, &SF->e, &SF->temp4x1A);
    matrix_add(&SF->Xp, &SF->temp4x1A, &SF->Xc);

    // Update covariance P
    matrix_multiply(&SF->K, &SF->C, &SF->temp4x4A);
    matrix_subtract(&SF->I, &SF->temp4x4A, &SF->temp4x4B);
    matrix_multiply(&SF->temp4x4B, &SF->Pp, &SF->Pc);

    // Prediction step
    matrix_multiply(&SF->A, &SF->Xc, &SF->temp4x1A);
    matrix_multiply(&SF->B, u, &SF->temp4x1B);
    matrix_add(&SF->temp4x1A, &SF->temp4x1B, &SF->Xp);

    // Update covariance Pp
    matrix_transpose(&SF->A, &SF->temp4x4A);
    matrix_multiply(&SF->A, &SF->Pc, &SF->temp4x4B);
    matrix_multiply(&SF->temp4x4B, &SF->temp4x4A, &SF->temp4x4C);
    matrix_add(&SF->temp4x4C, &SF->Q, &SF->Pp);
}
