/*
 * KalmanSensorFusion.h
 *
 *  Created on: Oct 19, 2024
 *      Author: ponwalai
 */

#ifndef INC_KALMANSENSORFUSION_H_
#define INC_KALMANSENSORFUSION_H_

#include "main.h"
#define MAX_ROWS 4
#define MAX_COLS 4

// Matrix structure
typedef struct {
    float data[MAX_ROWS][MAX_COLS];
    int numRows;
    int numCols;
} matrix_instance;

// Sensor Fusion structure
typedef struct {
    matrix_instance A;  // State transition matrix
    matrix_instance B;  // Control input matrix
    matrix_instance C;  // Measurement matrix
    matrix_instance I;  // Identity matrix
    matrix_instance Q;  // Process noise covariance
    matrix_instance R;  // Measurement noise covariance
    matrix_instance K;  // Kalman gain
    matrix_instance Xp; // Predicted state
    matrix_instance Xc; // Corrected state
    matrix_instance Pp; // Predicted covariance
    matrix_instance Pc; // Corrected covariance
    matrix_instance Yp; // Predicted measurement
    matrix_instance e;  // Error

    // Temporary matrix for calculations
    matrix_instance temp4x1A;
	matrix_instance temp4x1B;
	matrix_instance temp2x4;
	matrix_instance temp4x2A;
	matrix_instance temp4x2B;
	matrix_instance temp2x2A;
	matrix_instance temp2x2B;
	matrix_instance temp2x2C;
	matrix_instance temp4x4A;
	matrix_instance temp4x4B;
	matrix_instance temp4x4C;
} SensorFusion;

// Function prototypes
void init_matrix(matrix_instance* mat, int rows, int cols, float* values);
void matrix_add(matrix_instance* a, matrix_instance* b, matrix_instance* result);
void matrix_subtract(matrix_instance* a, matrix_instance* b, matrix_instance* result);
void matrix_multiply(matrix_instance* a, matrix_instance* b, matrix_instance* result);
void matrix_transpose(matrix_instance* mat, matrix_instance* result);
void matrix_inverse_2x2(matrix_instance* mat, matrix_instance* inv);
void InitSensorFusion(SensorFusion* SF, double q[9], double r[9], float dt);
void sensor_fusion(SensorFusion* SF, matrix_instance* u, matrix_instance* y);

#endif /* INC_KALMANSENSORFUSION_H_ */
