**Supervisor**: Dr. Matt D’Souza 

## 👨‍🔬 Author

**Will Mullany**  
Thesis Project for METR4912 – School of ITEE  
The University of Queensland  
 


# 🚀 FPGA-Based Kalman Filter for Sensor Fusion on Coraz7

This project implements a real-time **Kalman Filter** system on the **Coraz7 Zynq-7000 FPGA board**. It fuses measurements from two **ultrasonic sensors** and one **IMU** to estimate position and velocity using a combination of hardware-accelerated matrix operations (in Verilog) and software control logic (in Vitis).

---

## 🧩 Project Structure
├── verilog/ # Verilog source files (Kalman filter, matrix operations)
├── hardware/ # Vivado project (block design, constraints, .xpr)
├── software/ # Vitis C application for interfacing with hardware IPs and sensors
├── sandbox/ # Standalone C-based Kalman filter for testing/debugging
├── README.md # Project documentation
├── .gitignore # Ignores Vivado/Vitis-generated binaries and logs

Custom Verilog AXI interface for kalman filter is in hardware/ip_repo/KF_1_0


---

## 📦 Features

- ✅ Real-time Kalman filtering in hardware
- ✅ Sensor fusion using two ultrasonic sensors and one IMU
- ✅ Modular Verilog matrix operation cores (subtract, multiply, transpose)
- ✅ Vivado hardware design with AXI interfaces
- ✅ Vitis software application for sensor input and control
- ✅ Sandbox environment for debugging the Kalman filter in pure C

---

## 🔧 Hardware Overview

- **Board**: Coraz7 Zynq-7000 SoC FPGA
- **Sensors**:
  - 2× Ultrasonic rangefinders (e.g. PiicoDev or HC-SR04 via I2C/UART)
  - 1× IMU (e.g. MPU6050)
- **Interfaces**:
  - I2C or UART for sensors
  - AXI Lite and BRAM for connecting hardware Kalman IP

---

## 🛠️ Build & Run Instructions

### 🔨 Vivado (FPGA Bitstream)

1. Open Vivado and run the `build.tcl` or open the `.xpr` manually:
    ```bash
    cd hardware/
    vivado -source build.tcl
    ```
2. Export hardware (including bitstream) to be used in Vitis.

### 💻 Vitis (Software Application)

1. Open Vitis and import the workspace:
    ```bash
    cd software/
    vitis -workspace ./
    ```
2. Build the application and program the FPGA.
3. The software will initialize sensors, collect data, and communicate with the Kalman IP.

### 🧪 Sandbox (C Kalman Filter Simulation)

1. Used for debugging/tuning the Kalman logic in isolation:
    ```bash
    cd sandbox/
    make
    ./kalman_test
    ```

---

## 🧠 Kalman Filter Overview

The filter fuses position data from ultrasonic sensors and velocity/orientation from the IMU to estimate the state:

- **State vector**: Position and velocity in 2D (e.g., `[x, y, vx, vy, ax, ay]`)
- **Prediction step**: Uses IMU measurements (acceleration/orientation)
- **Update step**: Uses ultrasonic measurements (position)

All matrix operations required for the Kalman filter (e.g., `A * P * A'`, `P - K * H * P`) are implemented in **hardware** to meet real-time constraints.

---

## ⚙️ Verilog Modules (in `verilog/`)

- `matrix_subtract.v`: Subtracts two matrices
- `matrix_multiply.v`: Multiplies two matrices
- `matrix_transpose.v`: Transposes a matrix
- `kalman_filter.v`: Top-level Kalman FSM (connects all matrix ops)
- AXI Lite wrappers and control logic

Each module is pipelined and tested with simulation and sandbox C equivalents.

---

## 🧪 Testing Strategy

- Hardware tests via Vitis terminal using UART output
- Software testbench for Kalman logic (sandbox)
- Matching C and Verilog results for traceability
- Logging internal matrices (`P`, `K`, etc.) via UART for debugging

---

## 📈 Future Work

- [ ] Add support for SPI IMU (higher bandwidth)
- [ ] UART-to-PC Python visualizer for live state plots
- [ ] Extend to 3D position tracking
- [ ] FPGA-side logging buffer to store recent state history
- [ ] Integrate a feedback controller (e.g., PID) on FPGA

---

## 📄 License

This project is licensed under the MIT License. Feel free to use, adapt, and share with attribution.

---


