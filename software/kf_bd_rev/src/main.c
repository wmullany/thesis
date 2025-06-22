/***************************** Include Files *********************************/
#include <stdio.h>
#include <stdint.h>
#include "platform.h"
#include "xil_printf.h"
#include "xiic.h"
#include "xaxidma.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "xil_types.h"
#include "sleep.h"
#include "kalman.h"
#include "xtime_l.h"

/************************** Constant Definitions *****************************/

/**********IMU Parameters*************/
#define IIC_DEVICE_ID XPAR_AXI_IIC_0_DEVICE_ID	// I2C Device ID
#define MPU_DEF_ADDR 			0x68			// MPU6050 Default Address
#define MPU_PWR 				0x6B			// Address to wake up MPU
#define ACCEL_OUT 				0x3B			// Address for acceleration
#define GYRO_OUT 				0x43			// Address for gyro
#define MPU_ACCEL_X_REG 		0x3B			// Acceleration X register
#define MPU_ACCEL_Y_REG 		0x3D			// Acceleration Y register
#define MPU_ACCEL_Z_REG 		0x3F			// Acceleration Z register
#define MPU_GYRO_X_REG 			0x43			// Gyro X register
#define MPU_GYRO_Y_REG 			0x45			// Gyro Y register
#define MPU_GYRO_Z_REG 			0x47			// Gyro Z register
#define MPU_TEMP_REG 			0x41			// Temperature register
#define MPU_GYRO_CONFIG_REG		0x1B			// Config address
#define WAKE_UP 				0x00			// Writen to MPU_PWR register
#define MPU_BUFFER_LEN 			6				// size of read buffer

/*******Ultrasonic Parameters*********/
#define USR_ADDR_X				0x09
#define USR_ADDR_Y				0x35
#define USR_DEVICE_ID       	578
#define USR_status      		0x08
#define USR_FIRM_MAJ    		0x02
#define USR_FIRM_MIN    		0x03
#define USR_I2C_ADDRESS  		0x04
#define USR_RAW          		0x05
#define USR_PERIOD       		0x06
#define USR_LED          		0x07
#define USR_SELF_TEST    		0x09
#define USR_WHOAMI       		0x01

/***********DMA Parameters***********/
#define DMA_DEV_ID        	XPAR_AXIDMA_0_DEVICE_ID
#define DDR_BASE_ADDR		0x00100000
#define TX_BUFFER_BASE    	(DDR_BASE_ADDR + 0x00000000)  // Adjust if needed
#define RX_BUFFER_BASE    	(DDR_BASE_ADDR + 0x03000000)
#define TX_BUF_LEN 			184
#define RX_BUF_LEN 			168


/************************** Variable Definitions *****************************/
XIic Iic; 	// IIC Device instance
XIic_Config *ConfigPtr; // config
XTime time1;
XTime time2;

/********************************Prototypes***********************************/

/**
 * @brief Initializes the MPU sensor at a low level via I2C.
 *
 * This function initializes the I2C interface using the Xilinx IIC driver and
 * sends a wake-up command to the MPU device by writing to its power management register.
 *
 * @return XST_SUCCESS if initialization and command transmission are successful,
 *         otherwise returns the corresponding error code from XIic_Initialize or XST_FAILURE.
 */
int MPU_init(void) {
    int status;

    status = XIic_Initialize(&Iic, IIC_DEVICE_ID);
    if (status != XST_SUCCESS) {
        return status;
    }
    //print("status read MPU...\n\r");

    u8 data[] = { MPU_PWR, WAKE_UP };

    status = XIic_Send(Iic.BaseAddress, MPU_DEF_ADDR, data, sizeof(data), XIIC_STOP);
    if (status != sizeof(data)) {
        return XST_FAILURE;
    }
    //print("Wake up MPU...\n\r");

    return XST_SUCCESS;
}


/**
 * @brief Reads a chunk of data from the MPU via I2C.
 *
 * This function performs a multi-byte read from the MPU by first sending the register address
 * and then reading the specified number of bytes into the provided buffer.
 *
 * @param reg_addr The register address to start reading from.
 * @param data     Pointer to the buffer where the read data will be stored.
 * @param len      Number of bytes to read.
 *
 * @return XST_SUCCESS if the read operation is successful and all bytes are received,
 *         otherwise returns an error code or XST_FAILURE.
 */
s32 MPU_read(u8 reg_addr, u8 *data, s32 len) {
    int status;

    status = XIic_Start(&Iic);
    if (status != XST_SUCCESS) {
        return status;
    }

    // Send the register address with a repeated start
    status = XIic_Send(Iic.BaseAddress, MPU_DEF_ADDR, &reg_addr, 1, XIIC_REPEATED_START);
    if (status != 1) {
        XIic_Stop(&Iic);
        return XST_FAILURE;
    }

    // Read the requested number of bytes from the MPU
    status = XIic_Recv(Iic.BaseAddress, MPU_DEF_ADDR, data, len, XIIC_STOP);
    XIic_Stop(&Iic);

    return (status == len) ? XST_SUCCESS : XST_FAILURE;
}

/**
 * @brief Reads a chunk of data from the X-axis ultrasonic sensor via I2C.
 *
 * This function starts the I2C bus, sends the register address, then reads `len` bytes 
 * from the X-axis sensor into the provided buffer.
 *
 * @param reg_addr The register address to start reading from.
 * @param data     Pointer to the buffer where the read data will be stored.
 * @param len      Number of bytes to read.
 *
 * @return XST_SUCCESS if the read operation is successful and all bytes are received,
 *         otherwise returns an error code or XST_FAILURE.
 */
s32 USR_xread(u8 reg_addr, u8 *data, s32 len) {
    int status;

    // Initialize I2C communication
    status = XIic_Start(&Iic);
    if (status != XST_SUCCESS) {
        return status;
    }

    // Send the register address with a repeated start condition
    status = XIic_Send(Iic.BaseAddress, USR_ADDR_X, &reg_addr, 1, XIIC_REPEATED_START);
    if (status != 1) {
        XIic_Stop(&Iic);
        return XST_FAILURE;
    }

    // Read `len` bytes of data from the X-axis ultrasonic sensor
    status = XIic_Recv(Iic.BaseAddress, USR_ADDR_X, data, len, XIIC_STOP);

    // Terminate I2C communication
    XIic_Stop(&Iic);

    return (status == len) ? XST_SUCCESS : XST_FAILURE;
}

/**
 * @brief Reads a chunk of data from the Y-axis ultrasonic sensor via I2C.
 *
 * This function performs a multi-byte read from the Y sensor by sending the register address
 * followed by reading `len` bytes into the provided buffer.
 *
 * @param reg_addr The register address to start reading from.
 * @param data     Pointer to the buffer where the read data will be stored.
 * @param len      Number of bytes to read.
 *
 * @return XST_SUCCESS if the read operation is successful and all bytes are received,
 *         otherwise returns an error code or XST_FAILURE.
 */
s32 USR_yread(u8 reg_addr, u8 *data, s32 len) {
    int status;

    // Start I2C interface
    status = XIic_Start(&Iic);
    if (status != XST_SUCCESS) {
        return status;
    }

    // Send the register address with a repeated start condition
    status = XIic_Send(Iic.BaseAddress, USR_ADDR_Y, &reg_addr, 1, XIIC_REPEATED_START);
    if (status != 1) {
        XIic_Stop(&Iic);
        print("First send Failed...\n\r");
        return XST_FAILURE;
    }

    // Read `len` bytes of data from the Y-axis ultrasonic sensor
    status = XIic_Recv(Iic.BaseAddress, USR_ADDR_Y, data, len, XIIC_STOP);

    // Terminate I2C interface
    XIic_Stop(&Iic);

    return (status == len) ? XST_SUCCESS : XST_FAILURE;
}

/**
 * @brief Computes distance in millimeters from the X-axis ultrasonic sensor.
 *
 * Uses time-of-flight data read from the X sensor and multiplies it by the speed of sound
 * (0.344 mm/µs). Returns the calculated distance.
 *
 * @return Distance in mm if successful; XST_FAILURE on read error.
 */
float get_dist_x(void) {
    int status_usr;
    u8 usr_xbuf[2] = {0};

    // Read time-of-flight data from sensor
    status_usr = USR_xread(USR_RAW, usr_xbuf, 2);
    if (status_usr != XST_SUCCESS) {
        xil_printf("Failed to read Ultrasonic x status %d\n\r", status_usr);
        return XST_FAILURE;
    }

    // Convert the 2-byte response to time in microseconds
    float timex = (float)((usr_xbuf[0] << 8) | usr_xbuf[1]) / 2.0;

    // Convert time to distance using speed of sound
    return timex * 0.344f;
}

/**
 * @brief Computes distance in millimeters from the Y-axis ultrasonic sensor.
 *
 * Uses time-of-flight data read from the Y sensor and multiplies it by the speed of sound
 * (0.343 mm/µs). Returns the calculated distance.
 *
 * @return Distance in mm if successful; XST_FAILURE on read error.
 */
float get_dist_y(void) {
    int status_usr;
    u8 usr_ybuf[2] = {0};

    // Read time-of-flight data from sensor
    status_usr = USR_yread(USR_RAW, usr_ybuf, 2);
    if (status_usr != XST_SUCCESS) {
        xil_printf("Failed to read Ultrasonic y status %d\n\r", status_usr);
        return XST_FAILURE;
    }

    // Convert the 2-byte response to time in microseconds
    float timex = (float)((usr_ybuf[0] << 8) | usr_ybuf[1]) / 2.0;

    // Convert time to distance using speed of sound
    return timex * 0.343f;
}

/**
 * @brief Computes the standard deviations from a flattened 6x6 covariance matrix.
 *
 * Extracts the diagonal elements from the flattened matrix (row-major order), computes 
 * the square root of each (i.e., standard deviation), and stores the results.
 *
 * @param P_flat   Pointer to the 36-element flattened covariance matrix (row-major).
 * @param stddevs  Output array of 6 floats where the standard deviations will be stored.
 */
void compute_stddevs(const float *P_flat, float *stddevs) {
    for (int i = 0; i < 6; ++i) {
        int index = i * 6 + i; // Index of diagonal element
        float variance = P_flat[index];
        stddevs[i] = sqrt(variance); // Standard deviation
    }
}

int main()
{
		init_platform();
	    //int status;
	   // int status_usr;
	    u8 gyro_buf[14] = {0};
	   // u8 usr_xbuf[2] = {0};
	    //u8 usr_ybuf[2] = {0};


	    MPU_init();

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

		float stddevs[6];

		// Output buffers
		float x_out[6];
		float P_out[36];


		int i = 0;
		int size = 1002;
		printf("Measured Position X,Measured Position Y,Measured Acceleration X,Measured Acceleration Y,");
		printf("Est. Position X,Est. Position Y,Est. Velocity X,Est. Velocity Y,Est. Acceleration X,Est. Acceleration Y,I2C Bus Read 1,I2C Bus Read 2,");
		printf("Standard Deviation X1,Standard Deviation X2,Standard Deviation X3,Standard Deviation X4,Standard Deviation X5,Standard Deviation X6\n");
		while (i < size) {

			i++;

			XTime_GetTime(&time1);

			MPU_read(ACCEL_OUT, gyro_buf, 14);

			float usr_x = get_dist_x();
			float usr_y = get_dist_y();

			// Convert raw data to floats
			int16_t gyroX = (gyro_buf[0] << 8 | gyro_buf[1]);
			int16_t gyroY = (gyro_buf[2] << 8 | gyro_buf[3]);
			int16_t gyroZ = (gyro_buf[4] << 8 | gyro_buf[5]);

			float gyroX_cal = (float)gyroX / 16384.0f;
			float gyroY_cal = (float)gyroY / 16384.0f;
			//float gyroZ_cal = (float)gyroZ / 16384.0f;

			float z[4] = {usr_x/1000, usr_y/1000, gyroX_cal, gyroY_cal};

			XTime_GetTime(&time2);

			kalman(P, x, z, P_out, x_out);


			for (int i = 0; i < 4; i++)
			{
				printf("%.5f,", z[i]);
			}

			for (int i = 0; i < 6; i++)
			{
				if (i == 5) {
					printf("%.5f,", x_out[i]);
				} else {
					printf("%.5f,", x_out[i]);
				}


			}
			printf("%15.5Lf,",(long double)(time1 *2)/(long double)XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ);
			printf("%15.5Lf,",(long double)(time2 *2)/(long double)XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ);

			compute_stddevs(P_out, stddevs);

			for (int i = 0; i < 6; ++i) {
				if (i < 5) {
					printf("%.5f,", stddevs[i]);
				} else {
					printf("%.5f", stddevs[i]);
				}
			}

			printf("\n");

			memcpy(P, P_out, sizeof(P_out));

			memcpy(x, x_out, sizeof(x_out));


		}


	    cleanup_platform();
	    return 0;
}



