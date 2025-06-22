// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Jun 12 20:45:36 2025
// Host        : Laptop45877481 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top kf_bd_axi_iic_0_0 -prefix
//               kf_bd_axi_iic_0_0_ kf_bd_axi_iic_0_0_sim_netlist.v
// Design      : kf_bd_axi_iic_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_DATA_BITS = "8" *) (* C_DEPTH = "4" *) (* C_XON = "FALSE" *) 
module kf_bd_axi_iic_0_0_SRL_FIFO
   (Clk,
    Reset,
    FIFO_Write,
    Data_In,
    FIFO_Read,
    Data_Out,
    FIFO_Full,
    Data_Exists,
    Addr);
  input Clk;
  input Reset;
  input FIFO_Write;
  input [0:7]Data_In;
  input FIFO_Read;
  output [0:7]Data_Out;
  output FIFO_Full;
  output Data_Exists;
  output [0:3]Addr;

  wire [0:3]Addr;
  wire \Addr_Counters[3].XORCY_I_i_1_n_0 ;
  wire CI;
  wire Clk;
  wire D;
  wire Data_Exists;
  wire [0:7]Data_In;
  wire [0:7]Data_Out;
  wire FIFO_Full;
  wire FIFO_Read;
  wire FIFO_Write;
  wire Reset;
  wire S;
  wire S0_out;
  wire S1_out;
  wire addr_cy_1;
  wire addr_cy_2;
  wire addr_cy_3;
  wire buffer_Empty;
  wire sum_A_0;
  wire sum_A_1;
  wire sum_A_2;
  wire sum_A_3;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(Clk),
        .CE(Data_Exists),
        .D(sum_A_3),
        .Q(Addr[0]),
        .R(Reset));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3],addr_cy_1,addr_cy_2,addr_cy_3}),
        .CYINIT(CI),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],Addr[2],Addr[1],Addr[0]}),
        .O({sum_A_0,sum_A_1,sum_A_2,sum_A_3}),
        .S({\Addr_Counters[3].XORCY_I_i_1_n_0 ,S0_out,S1_out,S}));
  LUT4 #(
    .INIT(16'h6606)) 
    \Addr_Counters[0].MUXCY_L_I_i_1 
       (.I0(FIFO_Read),
        .I1(Addr[0]),
        .I2(buffer_Empty),
        .I3(FIFO_Write),
        .O(S));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(Clk),
        .CE(Data_Exists),
        .D(sum_A_2),
        .Q(Addr[1]),
        .R(Reset));
  LUT4 #(
    .INIT(16'h6606)) 
    \Addr_Counters[1].MUXCY_L_I_i_1 
       (.I0(FIFO_Read),
        .I1(Addr[1]),
        .I2(buffer_Empty),
        .I3(FIFO_Write),
        .O(S1_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(Clk),
        .CE(Data_Exists),
        .D(sum_A_1),
        .Q(Addr[2]),
        .R(Reset));
  LUT4 #(
    .INIT(16'h6606)) 
    \Addr_Counters[2].MUXCY_L_I_i_1 
       (.I0(FIFO_Read),
        .I1(Addr[2]),
        .I2(buffer_Empty),
        .I3(FIFO_Write),
        .O(S0_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(Clk),
        .CE(Data_Exists),
        .D(sum_A_0),
        .Q(Addr[3]),
        .R(Reset));
  LUT4 #(
    .INIT(16'h6606)) 
    \Addr_Counters[3].XORCY_I_i_1 
       (.I0(FIFO_Read),
        .I1(Addr[3]),
        .I2(buffer_Empty),
        .I3(FIFO_Write),
        .O(\Addr_Counters[3].XORCY_I_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    Data_Exists_DFF
       (.C(Clk),
        .CE(1'b1),
        .D(D),
        .Q(Data_Exists),
        .R(Reset));
  LUT4 #(
    .INIT(16'hD8F8)) 
    Data_Exists_DFF_i_1
       (.I0(buffer_Empty),
        .I1(FIFO_Write),
        .I2(Data_Exists),
        .I3(FIFO_Read),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    Data_Exists_DFF_i_2
       (.I0(Addr[0]),
        .I1(Addr[2]),
        .I2(Addr[3]),
        .I3(Addr[1]),
        .O(buffer_Empty));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    FIFO_Full_INST_0
       (.I0(Addr[0]),
        .I1(Addr[2]),
        .I2(Addr[3]),
        .I3(Addr[1]),
        .O(FIFO_Full));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/X_IIC/READ_FIFO_I/\\FIFO_RAM " *) 
  (* srl_name = "U0/X_IIC/READ_FIFO_I/\\FIFO_RAM[0].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[0].SRL16E_I 
       (.A0(Addr[0]),
        .A1(Addr[1]),
        .A2(Addr[2]),
        .A3(Addr[3]),
        .CE(CI),
        .CLK(Clk),
        .D(Data_In[0]),
        .Q(Data_Out[0]));
  LUT6 #(
    .INIT(64'hFFFF00007FFF0000)) 
    \FIFO_RAM[0].SRL16E_I_i_1 
       (.I0(Addr[0]),
        .I1(Addr[2]),
        .I2(Addr[3]),
        .I3(Addr[1]),
        .I4(FIFO_Write),
        .I5(FIFO_Read),
        .O(CI));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/X_IIC/READ_FIFO_I/\\FIFO_RAM " *) 
  (* srl_name = "U0/X_IIC/READ_FIFO_I/\\FIFO_RAM[1].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[1].SRL16E_I 
       (.A0(Addr[0]),
        .A1(Addr[1]),
        .A2(Addr[2]),
        .A3(Addr[3]),
        .CE(CI),
        .CLK(Clk),
        .D(Data_In[1]),
        .Q(Data_Out[1]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/X_IIC/READ_FIFO_I/\\FIFO_RAM " *) 
  (* srl_name = "U0/X_IIC/READ_FIFO_I/\\FIFO_RAM[2].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[2].SRL16E_I 
       (.A0(Addr[0]),
        .A1(Addr[1]),
        .A2(Addr[2]),
        .A3(Addr[3]),
        .CE(CI),
        .CLK(Clk),
        .D(Data_In[2]),
        .Q(Data_Out[2]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/X_IIC/READ_FIFO_I/\\FIFO_RAM " *) 
  (* srl_name = "U0/X_IIC/READ_FIFO_I/\\FIFO_RAM[3].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[3].SRL16E_I 
       (.A0(Addr[0]),
        .A1(Addr[1]),
        .A2(Addr[2]),
        .A3(Addr[3]),
        .CE(CI),
        .CLK(Clk),
        .D(Data_In[3]),
        .Q(Data_Out[3]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/X_IIC/READ_FIFO_I/\\FIFO_RAM " *) 
  (* srl_name = "U0/X_IIC/READ_FIFO_I/\\FIFO_RAM[4].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[4].SRL16E_I 
       (.A0(Addr[0]),
        .A1(Addr[1]),
        .A2(Addr[2]),
        .A3(Addr[3]),
        .CE(CI),
        .CLK(Clk),
        .D(Data_In[4]),
        .Q(Data_Out[4]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/X_IIC/READ_FIFO_I/\\FIFO_RAM " *) 
  (* srl_name = "U0/X_IIC/READ_FIFO_I/\\FIFO_RAM[5].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[5].SRL16E_I 
       (.A0(Addr[0]),
        .A1(Addr[1]),
        .A2(Addr[2]),
        .A3(Addr[3]),
        .CE(CI),
        .CLK(Clk),
        .D(Data_In[5]),
        .Q(Data_Out[5]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/X_IIC/READ_FIFO_I/\\FIFO_RAM " *) 
  (* srl_name = "U0/X_IIC/READ_FIFO_I/\\FIFO_RAM[6].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[6].SRL16E_I 
       (.A0(Addr[0]),
        .A1(Addr[1]),
        .A2(Addr[2]),
        .A3(Addr[3]),
        .CE(CI),
        .CLK(Clk),
        .D(Data_In[6]),
        .Q(Data_Out[6]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/X_IIC/READ_FIFO_I/\\FIFO_RAM " *) 
  (* srl_name = "U0/X_IIC/READ_FIFO_I/\\FIFO_RAM[7].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[7].SRL16E_I 
       (.A0(Addr[0]),
        .A1(Addr[1]),
        .A2(Addr[2]),
        .A3(Addr[3]),
        .CE(CI),
        .CLK(Clk),
        .D(Data_In[7]),
        .Q(Data_Out[7]));
endmodule

(* C_DATA_BITS = "8" *) (* C_DEPTH = "4" *) (* C_XON = "FALSE" *) 
(* ORIG_REF_NAME = "SRL_FIFO" *) 
module kf_bd_axi_iic_0_0_SRL_FIFO__1
   (Clk,
    Reset,
    FIFO_Write,
    Data_In,
    FIFO_Read,
    Data_Out,
    FIFO_Full,
    Data_Exists,
    Addr);
  input Clk;
  input Reset;
  input FIFO_Write;
  input [0:7]Data_In;
  input FIFO_Read;
  output [0:7]Data_Out;
  output FIFO_Full;
  output Data_Exists;
  output [0:3]Addr;

  wire [0:3]Addr;
  wire \Addr_Counters[3].XORCY_I_i_1_n_0 ;
  wire CI;
  wire Clk;
  wire D;
  wire Data_Exists;
  wire [0:7]Data_In;
  wire [0:7]Data_Out;
  wire FIFO_Full;
  wire FIFO_Read;
  wire FIFO_Write;
  wire Reset;
  wire S;
  wire S0_out;
  wire S1_out;
  wire addr_cy_1;
  wire addr_cy_2;
  wire addr_cy_3;
  wire buffer_Empty;
  wire sum_A_0;
  wire sum_A_1;
  wire sum_A_2;
  wire sum_A_3;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(Clk),
        .CE(Data_Exists),
        .D(sum_A_3),
        .Q(Addr[0]),
        .R(Reset));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3],addr_cy_1,addr_cy_2,addr_cy_3}),
        .CYINIT(CI),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],Addr[2],Addr[1],Addr[0]}),
        .O({sum_A_0,sum_A_1,sum_A_2,sum_A_3}),
        .S({\Addr_Counters[3].XORCY_I_i_1_n_0 ,S0_out,S1_out,S}));
  LUT4 #(
    .INIT(16'h6606)) 
    \Addr_Counters[0].MUXCY_L_I_i_1 
       (.I0(FIFO_Read),
        .I1(Addr[0]),
        .I2(buffer_Empty),
        .I3(FIFO_Write),
        .O(S));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(Clk),
        .CE(Data_Exists),
        .D(sum_A_2),
        .Q(Addr[1]),
        .R(Reset));
  LUT4 #(
    .INIT(16'h6606)) 
    \Addr_Counters[1].MUXCY_L_I_i_1 
       (.I0(FIFO_Read),
        .I1(Addr[1]),
        .I2(buffer_Empty),
        .I3(FIFO_Write),
        .O(S1_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(Clk),
        .CE(Data_Exists),
        .D(sum_A_1),
        .Q(Addr[2]),
        .R(Reset));
  LUT4 #(
    .INIT(16'h6606)) 
    \Addr_Counters[2].MUXCY_L_I_i_1 
       (.I0(FIFO_Read),
        .I1(Addr[2]),
        .I2(buffer_Empty),
        .I3(FIFO_Write),
        .O(S0_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(Clk),
        .CE(Data_Exists),
        .D(sum_A_0),
        .Q(Addr[3]),
        .R(Reset));
  LUT4 #(
    .INIT(16'h6606)) 
    \Addr_Counters[3].XORCY_I_i_1 
       (.I0(FIFO_Read),
        .I1(Addr[3]),
        .I2(buffer_Empty),
        .I3(FIFO_Write),
        .O(\Addr_Counters[3].XORCY_I_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    Data_Exists_DFF
       (.C(Clk),
        .CE(1'b1),
        .D(D),
        .Q(Data_Exists),
        .R(Reset));
  LUT4 #(
    .INIT(16'hD8F8)) 
    Data_Exists_DFF_i_1
       (.I0(buffer_Empty),
        .I1(FIFO_Write),
        .I2(Data_Exists),
        .I3(FIFO_Read),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    Data_Exists_DFF_i_2
       (.I0(Addr[0]),
        .I1(Addr[2]),
        .I2(Addr[3]),
        .I3(Addr[1]),
        .O(buffer_Empty));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    FIFO_Full_INST_0
       (.I0(Addr[0]),
        .I1(Addr[2]),
        .I2(Addr[3]),
        .I3(Addr[1]),
        .O(FIFO_Full));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/X_IIC/WRITE_FIFO_I/\\FIFO_RAM " *) 
  (* srl_name = "U0/X_IIC/WRITE_FIFO_I/\\FIFO_RAM[0].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[0].SRL16E_I 
       (.A0(Addr[0]),
        .A1(Addr[1]),
        .A2(Addr[2]),
        .A3(Addr[3]),
        .CE(CI),
        .CLK(Clk),
        .D(Data_In[0]),
        .Q(Data_Out[0]));
  LUT6 #(
    .INIT(64'hFFFF00007FFF0000)) 
    \FIFO_RAM[0].SRL16E_I_i_1 
       (.I0(Addr[0]),
        .I1(Addr[2]),
        .I2(Addr[3]),
        .I3(Addr[1]),
        .I4(FIFO_Write),
        .I5(FIFO_Read),
        .O(CI));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/X_IIC/WRITE_FIFO_I/\\FIFO_RAM " *) 
  (* srl_name = "U0/X_IIC/WRITE_FIFO_I/\\FIFO_RAM[1].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[1].SRL16E_I 
       (.A0(Addr[0]),
        .A1(Addr[1]),
        .A2(Addr[2]),
        .A3(Addr[3]),
        .CE(CI),
        .CLK(Clk),
        .D(Data_In[1]),
        .Q(Data_Out[1]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/X_IIC/WRITE_FIFO_I/\\FIFO_RAM " *) 
  (* srl_name = "U0/X_IIC/WRITE_FIFO_I/\\FIFO_RAM[2].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[2].SRL16E_I 
       (.A0(Addr[0]),
        .A1(Addr[1]),
        .A2(Addr[2]),
        .A3(Addr[3]),
        .CE(CI),
        .CLK(Clk),
        .D(Data_In[2]),
        .Q(Data_Out[2]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/X_IIC/WRITE_FIFO_I/\\FIFO_RAM " *) 
  (* srl_name = "U0/X_IIC/WRITE_FIFO_I/\\FIFO_RAM[3].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[3].SRL16E_I 
       (.A0(Addr[0]),
        .A1(Addr[1]),
        .A2(Addr[2]),
        .A3(Addr[3]),
        .CE(CI),
        .CLK(Clk),
        .D(Data_In[3]),
        .Q(Data_Out[3]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/X_IIC/WRITE_FIFO_I/\\FIFO_RAM " *) 
  (* srl_name = "U0/X_IIC/WRITE_FIFO_I/\\FIFO_RAM[4].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[4].SRL16E_I 
       (.A0(Addr[0]),
        .A1(Addr[1]),
        .A2(Addr[2]),
        .A3(Addr[3]),
        .CE(CI),
        .CLK(Clk),
        .D(Data_In[4]),
        .Q(Data_Out[4]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/X_IIC/WRITE_FIFO_I/\\FIFO_RAM " *) 
  (* srl_name = "U0/X_IIC/WRITE_FIFO_I/\\FIFO_RAM[5].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[5].SRL16E_I 
       (.A0(Addr[0]),
        .A1(Addr[1]),
        .A2(Addr[2]),
        .A3(Addr[3]),
        .CE(CI),
        .CLK(Clk),
        .D(Data_In[5]),
        .Q(Data_Out[5]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/X_IIC/WRITE_FIFO_I/\\FIFO_RAM " *) 
  (* srl_name = "U0/X_IIC/WRITE_FIFO_I/\\FIFO_RAM[6].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[6].SRL16E_I 
       (.A0(Addr[0]),
        .A1(Addr[1]),
        .A2(Addr[2]),
        .A3(Addr[3]),
        .CE(CI),
        .CLK(Clk),
        .D(Data_In[6]),
        .Q(Data_Out[6]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/X_IIC/WRITE_FIFO_I/\\FIFO_RAM " *) 
  (* srl_name = "U0/X_IIC/WRITE_FIFO_I/\\FIFO_RAM[7].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[7].SRL16E_I 
       (.A0(Addr[0]),
        .A1(Addr[1]),
        .A2(Addr[2]),
        .A3(Addr[3]),
        .CE(CI),
        .CLK(Clk),
        .D(Data_In[7]),
        .Q(Data_Out[7]));
endmodule

(* C_DATA_BITS = "2" *) (* C_DEPTH = "4" *) (* C_XON = "FALSE" *) 
(* ORIG_REF_NAME = "SRL_FIFO" *) 
module kf_bd_axi_iic_0_0_SRL_FIFO__parameterized0
   (Clk,
    Reset,
    FIFO_Write,
    Data_In,
    FIFO_Read,
    Data_Out,
    FIFO_Full,
    Data_Exists,
    Addr);
  input Clk;
  input Reset;
  input FIFO_Write;
  input [0:1]Data_In;
  input FIFO_Read;
  output [0:1]Data_Out;
  output FIFO_Full;
  output Data_Exists;
  output [0:3]Addr;

  wire \<const0> ;
  wire \Addr_Counters[0].FDRE_I_n_0 ;
  wire \Addr_Counters[1].FDRE_I_n_0 ;
  wire \Addr_Counters[2].FDRE_I_n_0 ;
  wire \Addr_Counters[3].FDRE_I_n_0 ;
  wire \Addr_Counters[3].XORCY_I_i_1_n_0 ;
  wire CI;
  wire Clk;
  wire D;
  wire Data_Exists_DFF_n_0;
  wire [0:1]Data_In;
  wire [0:1]Data_Out;
  wire FIFO_Read;
  wire FIFO_Write;
  wire Reset;
  wire S;
  wire S0_out;
  wire S1_out;
  wire addr_cy_1;
  wire addr_cy_2;
  wire addr_cy_3;
  wire buffer_Empty;
  wire sum_A_0;
  wire sum_A_1;
  wire sum_A_2;
  wire sum_A_3;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

  assign Addr[0] = \<const0> ;
  assign Addr[1] = \<const0> ;
  assign Addr[2] = \<const0> ;
  assign Addr[3] = \<const0> ;
  assign Data_Exists = \<const0> ;
  assign FIFO_Full = \<const0> ;
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(Clk),
        .CE(Data_Exists_DFF_n_0),
        .D(sum_A_3),
        .Q(\Addr_Counters[0].FDRE_I_n_0 ),
        .R(Reset));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3],addr_cy_1,addr_cy_2,addr_cy_3}),
        .CYINIT(CI),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],\Addr_Counters[2].FDRE_I_n_0 ,\Addr_Counters[1].FDRE_I_n_0 ,\Addr_Counters[0].FDRE_I_n_0 }),
        .O({sum_A_0,sum_A_1,sum_A_2,sum_A_3}),
        .S({\Addr_Counters[3].XORCY_I_i_1_n_0 ,S0_out,S1_out,S}));
  LUT4 #(
    .INIT(16'h6606)) 
    \Addr_Counters[0].MUXCY_L_I_i_1 
       (.I0(FIFO_Read),
        .I1(\Addr_Counters[0].FDRE_I_n_0 ),
        .I2(buffer_Empty),
        .I3(FIFO_Write),
        .O(S));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(Clk),
        .CE(Data_Exists_DFF_n_0),
        .D(sum_A_2),
        .Q(\Addr_Counters[1].FDRE_I_n_0 ),
        .R(Reset));
  LUT4 #(
    .INIT(16'h6606)) 
    \Addr_Counters[1].MUXCY_L_I_i_1 
       (.I0(FIFO_Read),
        .I1(\Addr_Counters[1].FDRE_I_n_0 ),
        .I2(buffer_Empty),
        .I3(FIFO_Write),
        .O(S1_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(Clk),
        .CE(Data_Exists_DFF_n_0),
        .D(sum_A_1),
        .Q(\Addr_Counters[2].FDRE_I_n_0 ),
        .R(Reset));
  LUT4 #(
    .INIT(16'h6606)) 
    \Addr_Counters[2].MUXCY_L_I_i_1 
       (.I0(FIFO_Read),
        .I1(\Addr_Counters[2].FDRE_I_n_0 ),
        .I2(buffer_Empty),
        .I3(FIFO_Write),
        .O(S0_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(Clk),
        .CE(Data_Exists_DFF_n_0),
        .D(sum_A_0),
        .Q(\Addr_Counters[3].FDRE_I_n_0 ),
        .R(Reset));
  LUT4 #(
    .INIT(16'h6606)) 
    \Addr_Counters[3].XORCY_I_i_1 
       (.I0(FIFO_Read),
        .I1(\Addr_Counters[3].FDRE_I_n_0 ),
        .I2(buffer_Empty),
        .I3(FIFO_Write),
        .O(\Addr_Counters[3].XORCY_I_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    Data_Exists_DFF
       (.C(Clk),
        .CE(1'b1),
        .D(D),
        .Q(Data_Exists_DFF_n_0),
        .R(Reset));
  LUT4 #(
    .INIT(16'hD8F8)) 
    Data_Exists_DFF_i_1
       (.I0(buffer_Empty),
        .I1(FIFO_Write),
        .I2(Data_Exists_DFF_n_0),
        .I3(FIFO_Read),
        .O(D));
  LUT4 #(
    .INIT(16'h0001)) 
    Data_Exists_DFF_i_2
       (.I0(\Addr_Counters[0].FDRE_I_n_0 ),
        .I1(\Addr_Counters[2].FDRE_I_n_0 ),
        .I2(\Addr_Counters[3].FDRE_I_n_0 ),
        .I3(\Addr_Counters[1].FDRE_I_n_0 ),
        .O(buffer_Empty));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/X_IIC/WRITE_FIFO_CTRL_I/\\FIFO_RAM " *) 
  (* srl_name = "U0/X_IIC/WRITE_FIFO_CTRL_I/\\FIFO_RAM[0].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[0].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(Clk),
        .D(Data_In[0]),
        .Q(Data_Out[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
    \FIFO_RAM[0].SRL16E_I_i_1 
       (.I0(FIFO_Write),
        .I1(\Addr_Counters[0].FDRE_I_n_0 ),
        .I2(\Addr_Counters[2].FDRE_I_n_0 ),
        .I3(\Addr_Counters[3].FDRE_I_n_0 ),
        .I4(\Addr_Counters[1].FDRE_I_n_0 ),
        .I5(FIFO_Read),
        .O(CI));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/X_IIC/WRITE_FIFO_CTRL_I/\\FIFO_RAM " *) 
  (* srl_name = "U0/X_IIC/WRITE_FIFO_CTRL_I/\\FIFO_RAM[1].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[1].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(Clk),
        .D(Data_In[1]),
        .Q(Data_Out[1]));
  GND GND
       (.G(\<const0> ));
endmodule

(* C_ARD_ADDR_RANGE_ARRAY = "384'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111110000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000100001100000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000111111111" *) (* C_ARD_NUM_CE_ARRAY = "96'b000000000000000000000000000100000000000000000000000000000000000100000000000000000000000000010010" *) (* C_BUS_AWIDTH = "9" *) 
(* C_FAMILY = "nofamily" *) (* C_S_AXI_MIN_SIZE = "32'b00000000000000000000000111111111" *) (* downgradeipidentifiedwarnings = "yes" *) 
module kf_bd_axi_iic_0_0_address_decoder
   (Bus_clk,
    Bus_rst,
    Address_In_Erly,
    Address_Valid_Erly,
    Bus_RNW,
    Bus_RNW_Erly,
    CS_CE_ld_enable,
    Clear_CS_CE_Reg,
    RW_CE_ld_enable,
    CS_for_gaps,
    CS_Out,
    RdCE_Out,
    WrCE_Out);
  input Bus_clk;
  input Bus_rst;
  input [0:8]Address_In_Erly;
  input Address_Valid_Erly;
  input Bus_RNW;
  input Bus_RNW_Erly;
  input CS_CE_ld_enable;
  input Clear_CS_CE_Reg;
  input RW_CE_ld_enable;
  output CS_for_gaps;
  output [0:2]CS_Out;
  output [0:34]RdCE_Out;
  output [0:34]WrCE_Out;

  wire \<const0> ;
  wire [0:8]Address_In_Erly;
  wire Bus_RNW_Erly;
  wire Bus_RNW_reg;
  wire Bus_clk;
  wire Bus_rst;
  wire [0:2]CS_Out;
  wire Clear_CS_CE_Reg;
  wire \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34] ;
  wire RW_CE_ld_enable;
  wire [7:34]\^RdCE_Out ;
  wire [7:34]\^WrCE_Out ;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_10;
  wire ce_expnd_i_11;
  wire ce_expnd_i_12;
  wire ce_expnd_i_13;
  wire ce_expnd_i_14;
  wire ce_expnd_i_15;
  wire ce_expnd_i_16;
  wire ce_expnd_i_17;
  wire ce_expnd_i_2;
  wire ce_expnd_i_24;
  wire ce_expnd_i_26;
  wire ce_expnd_i_27;
  wire ce_expnd_i_3;
  wire ce_expnd_i_4;
  wire ce_expnd_i_5;
  wire ce_expnd_i_6;
  wire ce_expnd_i_7;
  wire ce_expnd_i_8;
  wire ce_expnd_i_9;
  wire cs_ce_clr;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in;
  wire p_16_in;
  wire p_17_in;
  wire p_1_in;
  wire p_24_in;
  wire p_26_in;
  wire p_27_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire p_9_in;
  wire pselect_hit_i_0;
  wire pselect_hit_i_1;
  wire pselect_hit_i_2;

  assign CS_for_gaps = \<const0> ;
  assign RdCE_Out[0] = \<const0> ;
  assign RdCE_Out[1] = \<const0> ;
  assign RdCE_Out[2] = \<const0> ;
  assign RdCE_Out[3] = \<const0> ;
  assign RdCE_Out[4] = \<const0> ;
  assign RdCE_Out[5] = \<const0> ;
  assign RdCE_Out[6] = \<const0> ;
  assign RdCE_Out[7:8] = \^RdCE_Out [7:8];
  assign RdCE_Out[9] = \<const0> ;
  assign RdCE_Out[10] = \^RdCE_Out [10];
  assign RdCE_Out[11] = \<const0> ;
  assign RdCE_Out[12] = \<const0> ;
  assign RdCE_Out[13] = \<const0> ;
  assign RdCE_Out[14] = \<const0> ;
  assign RdCE_Out[15] = \<const0> ;
  assign RdCE_Out[16] = \<const0> ;
  assign RdCE_Out[17:34] = \^RdCE_Out [17:34];
  assign WrCE_Out[0] = \<const0> ;
  assign WrCE_Out[1] = \<const0> ;
  assign WrCE_Out[2] = \<const0> ;
  assign WrCE_Out[3] = \<const0> ;
  assign WrCE_Out[4] = \<const0> ;
  assign WrCE_Out[5] = \<const0> ;
  assign WrCE_Out[6] = \<const0> ;
  assign WrCE_Out[7:8] = \^WrCE_Out [7:8];
  assign WrCE_Out[9] = \<const0> ;
  assign WrCE_Out[10] = \^WrCE_Out [10];
  assign WrCE_Out[11] = \<const0> ;
  assign WrCE_Out[12] = \<const0> ;
  assign WrCE_Out[13] = \<const0> ;
  assign WrCE_Out[14] = \<const0> ;
  assign WrCE_Out[15] = \<const0> ;
  assign WrCE_Out[16:17] = \^WrCE_Out [16:17];
  assign WrCE_Out[18] = \<const0> ;
  assign WrCE_Out[19] = \^WrCE_Out [19];
  assign WrCE_Out[20] = \<const0> ;
  assign WrCE_Out[21] = \^WrCE_Out [21];
  assign WrCE_Out[22] = \<const0> ;
  assign WrCE_Out[23] = \<const0> ;
  assign WrCE_Out[24] = \<const0> ;
  assign WrCE_Out[25:34] = \^WrCE_Out [25:34];
  FDRE Bus_RNW_reg_reg
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(Bus_RNW_Erly),
        .Q(Bus_RNW_reg),
        .R(1'b0));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_24),
        .Q(p_24_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_17),
        .Q(p_17_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_16),
        .Q(p_16_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_15),
        .Q(p_15_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_14),
        .Q(p_14_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_13),
        .Q(p_13_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_12),
        .Q(p_12_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_11),
        .Q(p_11_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_10),
        .Q(p_10_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_9),
        .Q(p_9_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_8),
        .Q(p_8_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_7),
        .Q(p_7_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_6),
        .Q(p_6_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_5),
        .Q(p_5_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_4),
        .Q(p_4_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_3),
        .Q(p_3_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_2),
        .Q(p_2_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_1),
        .Q(p_1_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34] ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_27),
        .Q(p_27_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(ce_expnd_i_26),
        .Q(p_26_in),
        .R(cs_ce_clr));
  GND GND
       (.G(\<const0> ));
  (* C_AB = "3" *) 
  (* C_AW = "9" *) 
  (* C_BAR = "9'b000000000" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f \MEM_DECODE_GEN[0].GEN_FOR_MULTI_CS.MEM_SELECT_I 
       (.A({Address_In_Erly[0:2],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AValid(RW_CE_ld_enable),
        .CS(pselect_hit_i_2));
  (* C_AB = "4" *) 
  (* C_AW = "4" *) 
  (* C_BAR = "4'b1010" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized10 \MEM_DECODE_GEN[0].PER_CE_GEN[10].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[3:6]),
        .AValid(pselect_hit_i_2),
        .CS(ce_expnd_i_24));
  (* C_AB = "4" *) 
  (* C_AW = "4" *) 
  (* C_BAR = "4'b0111" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized7 \MEM_DECODE_GEN[0].PER_CE_GEN[7].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[3:6]),
        .AValid(pselect_hit_i_2),
        .CS(ce_expnd_i_27));
  (* C_AB = "4" *) 
  (* C_AW = "4" *) 
  (* C_BAR = "4'b1000" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized8 \MEM_DECODE_GEN[0].PER_CE_GEN[8].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[3:6]),
        .AValid(pselect_hit_i_2),
        .CS(ce_expnd_i_26));
  LUT2 #(
    .INIT(4'hB)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(Clear_CS_CE_Reg),
        .I1(Bus_rst),
        .O(cs_ce_clr));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(pselect_hit_i_2),
        .Q(CS_Out[0]),
        .R(cs_ce_clr));
  (* C_AB = "7" *) 
  (* C_AW = "9" *) 
  (* C_BAR = "9'b001000000" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized16 \MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I 
       (.A({Address_In_Erly[0:6],1'b0,1'b0}),
        .AValid(RW_CE_ld_enable),
        .CS(pselect_hit_i_1));
  FDRE \MEM_DECODE_GEN[1].cs_out_i_reg[1] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(pselect_hit_i_1),
        .Q(CS_Out[1]),
        .R(cs_ce_clr));
  (* C_AB = "1" *) 
  (* C_AW = "9" *) 
  (* C_BAR = "9'b100000000" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized17 \MEM_DECODE_GEN[2].GEN_FOR_MULTI_CS.MEM_SELECT_I 
       (.A({Address_In_Erly[0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AValid(RW_CE_ld_enable),
        .CS(pselect_hit_i_0));
  (* C_AB = "5" *) 
  (* C_AW = "5" *) 
  (* C_BAR = "5'b00000" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized18 \MEM_DECODE_GEN[2].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[2:6]),
        .AValid(pselect_hit_i_0),
        .CS(ce_expnd_i_17));
  (* C_AB = "5" *) 
  (* C_AW = "5" *) 
  (* C_BAR = "5'b01010" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized28 \MEM_DECODE_GEN[2].PER_CE_GEN[10].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[2:6]),
        .AValid(pselect_hit_i_0),
        .CS(ce_expnd_i_7));
  (* C_AB = "5" *) 
  (* C_AW = "5" *) 
  (* C_BAR = "5'b01011" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized29 \MEM_DECODE_GEN[2].PER_CE_GEN[11].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[2:6]),
        .AValid(pselect_hit_i_0),
        .CS(ce_expnd_i_6));
  (* C_AB = "5" *) 
  (* C_AW = "5" *) 
  (* C_BAR = "5'b01100" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized30 \MEM_DECODE_GEN[2].PER_CE_GEN[12].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[2:6]),
        .AValid(pselect_hit_i_0),
        .CS(ce_expnd_i_5));
  (* C_AB = "5" *) 
  (* C_AW = "5" *) 
  (* C_BAR = "5'b01101" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized31 \MEM_DECODE_GEN[2].PER_CE_GEN[13].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[2:6]),
        .AValid(pselect_hit_i_0),
        .CS(ce_expnd_i_4));
  (* C_AB = "5" *) 
  (* C_AW = "5" *) 
  (* C_BAR = "5'b01110" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized32 \MEM_DECODE_GEN[2].PER_CE_GEN[14].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[2:6]),
        .AValid(pselect_hit_i_0),
        .CS(ce_expnd_i_3));
  (* C_AB = "5" *) 
  (* C_AW = "5" *) 
  (* C_BAR = "5'b01111" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized33 \MEM_DECODE_GEN[2].PER_CE_GEN[15].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[2:6]),
        .AValid(pselect_hit_i_0),
        .CS(ce_expnd_i_2));
  (* C_AB = "5" *) 
  (* C_AW = "5" *) 
  (* C_BAR = "5'b10000" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized34 \MEM_DECODE_GEN[2].PER_CE_GEN[16].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[2:6]),
        .AValid(pselect_hit_i_0),
        .CS(ce_expnd_i_1));
  (* C_AB = "5" *) 
  (* C_AW = "5" *) 
  (* C_BAR = "5'b10001" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized35 \MEM_DECODE_GEN[2].PER_CE_GEN[17].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[2:6]),
        .AValid(pselect_hit_i_0),
        .CS(ce_expnd_i_0));
  (* C_AB = "5" *) 
  (* C_AW = "5" *) 
  (* C_BAR = "5'b00001" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized19 \MEM_DECODE_GEN[2].PER_CE_GEN[1].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[2:6]),
        .AValid(pselect_hit_i_0),
        .CS(ce_expnd_i_16));
  (* C_AB = "5" *) 
  (* C_AW = "5" *) 
  (* C_BAR = "5'b00010" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized20 \MEM_DECODE_GEN[2].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[2:6]),
        .AValid(pselect_hit_i_0),
        .CS(ce_expnd_i_15));
  (* C_AB = "5" *) 
  (* C_AW = "5" *) 
  (* C_BAR = "5'b00011" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized21 \MEM_DECODE_GEN[2].PER_CE_GEN[3].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[2:6]),
        .AValid(pselect_hit_i_0),
        .CS(ce_expnd_i_14));
  (* C_AB = "5" *) 
  (* C_AW = "5" *) 
  (* C_BAR = "5'b00100" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized22 \MEM_DECODE_GEN[2].PER_CE_GEN[4].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[2:6]),
        .AValid(pselect_hit_i_0),
        .CS(ce_expnd_i_13));
  (* C_AB = "5" *) 
  (* C_AW = "5" *) 
  (* C_BAR = "5'b00101" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized23 \MEM_DECODE_GEN[2].PER_CE_GEN[5].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[2:6]),
        .AValid(pselect_hit_i_0),
        .CS(ce_expnd_i_12));
  (* C_AB = "5" *) 
  (* C_AW = "5" *) 
  (* C_BAR = "5'b00110" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized24 \MEM_DECODE_GEN[2].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[2:6]),
        .AValid(pselect_hit_i_0),
        .CS(ce_expnd_i_11));
  (* C_AB = "5" *) 
  (* C_AW = "5" *) 
  (* C_BAR = "5'b00111" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized25 \MEM_DECODE_GEN[2].PER_CE_GEN[7].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[2:6]),
        .AValid(pselect_hit_i_0),
        .CS(ce_expnd_i_10));
  (* C_AB = "5" *) 
  (* C_AW = "5" *) 
  (* C_BAR = "5'b01000" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized26 \MEM_DECODE_GEN[2].PER_CE_GEN[8].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[2:6]),
        .AValid(pselect_hit_i_0),
        .CS(ce_expnd_i_9));
  (* C_AB = "5" *) 
  (* C_AW = "5" *) 
  (* C_BAR = "5'b01001" *) 
  (* C_FAMILY = "nofamily" *) 
  kf_bd_axi_iic_0_0_pselect_f__parameterized27 \MEM_DECODE_GEN[2].PER_CE_GEN[9].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.A(Address_In_Erly[2:6]),
        .AValid(pselect_hit_i_0),
        .CS(ce_expnd_i_8));
  FDRE \MEM_DECODE_GEN[2].cs_out_i_reg[2] 
       (.C(Bus_clk),
        .CE(RW_CE_ld_enable),
        .D(pselect_hit_i_0),
        .Q(CS_Out[2]),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[10]_INST_0 
       (.I0(p_24_in),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[17]_INST_0 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [17]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[18]_INST_0 
       (.I0(p_16_in),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [18]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[19]_INST_0 
       (.I0(p_15_in),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [19]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[20]_INST_0 
       (.I0(p_14_in),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [20]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[21]_INST_0 
       (.I0(p_13_in),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [21]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[22]_INST_0 
       (.I0(p_12_in),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [22]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[23]_INST_0 
       (.I0(p_11_in),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[24]_INST_0 
       (.I0(p_10_in),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [24]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[25]_INST_0 
       (.I0(p_9_in),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [25]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[26]_INST_0 
       (.I0(p_8_in),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [26]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[27]_INST_0 
       (.I0(p_7_in),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [27]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[28]_INST_0 
       (.I0(p_6_in),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [28]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[29]_INST_0 
       (.I0(p_5_in),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [29]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[30]_INST_0 
       (.I0(p_4_in),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [30]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[31]_INST_0 
       (.I0(p_3_in),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [31]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[32]_INST_0 
       (.I0(p_2_in),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [32]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[33]_INST_0 
       (.I0(p_1_in),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [33]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[34]_INST_0 
       (.I0(\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34] ),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [34]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[7]_INST_0 
       (.I0(p_27_in),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RdCE_Out[8]_INST_0 
       (.I0(p_26_in),
        .I1(Bus_RNW_reg),
        .O(\^RdCE_Out [8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \WrCE_Out[10]_INST_0 
       (.I0(p_24_in),
        .I1(Bus_RNW_reg),
        .O(\^WrCE_Out [10]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \WrCE_Out[16]_INST_0 
       (.I0(CS_Out[1]),
        .I1(Bus_RNW_reg),
        .O(\^WrCE_Out [16]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \WrCE_Out[17]_INST_0 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .O(\^WrCE_Out [17]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \WrCE_Out[19]_INST_0 
       (.I0(p_15_in),
        .I1(Bus_RNW_reg),
        .O(\^WrCE_Out [19]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \WrCE_Out[21]_INST_0 
       (.I0(p_13_in),
        .I1(Bus_RNW_reg),
        .O(\^WrCE_Out [21]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \WrCE_Out[25]_INST_0 
       (.I0(p_9_in),
        .I1(Bus_RNW_reg),
        .O(\^WrCE_Out [25]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \WrCE_Out[26]_INST_0 
       (.I0(p_8_in),
        .I1(Bus_RNW_reg),
        .O(\^WrCE_Out [26]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \WrCE_Out[27]_INST_0 
       (.I0(p_7_in),
        .I1(Bus_RNW_reg),
        .O(\^WrCE_Out [27]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \WrCE_Out[28]_INST_0 
       (.I0(p_6_in),
        .I1(Bus_RNW_reg),
        .O(\^WrCE_Out [28]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \WrCE_Out[29]_INST_0 
       (.I0(p_5_in),
        .I1(Bus_RNW_reg),
        .O(\^WrCE_Out [29]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \WrCE_Out[30]_INST_0 
       (.I0(p_4_in),
        .I1(Bus_RNW_reg),
        .O(\^WrCE_Out [30]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \WrCE_Out[31]_INST_0 
       (.I0(p_3_in),
        .I1(Bus_RNW_reg),
        .O(\^WrCE_Out [31]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \WrCE_Out[32]_INST_0 
       (.I0(p_2_in),
        .I1(Bus_RNW_reg),
        .O(\^WrCE_Out [32]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \WrCE_Out[33]_INST_0 
       (.I0(p_1_in),
        .I1(Bus_RNW_reg),
        .O(\^WrCE_Out [33]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \WrCE_Out[34]_INST_0 
       (.I0(\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34] ),
        .I1(Bus_RNW_reg),
        .O(\^WrCE_Out [34]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \WrCE_Out[7]_INST_0 
       (.I0(p_27_in),
        .I1(Bus_RNW_reg),
        .O(\^WrCE_Out [7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \WrCE_Out[8]_INST_0 
       (.I0(p_26_in),
        .I1(Bus_RNW_reg),
        .O(\^WrCE_Out [8]));
endmodule

(* C_DEFAULT_VALUE = "8'b00000000" *) (* C_DISABLE_SETUP_VIOLATION_CHECK = "0" *) (* C_FAMILY = "zynq" *) 
(* C_GPO_WIDTH = "1" *) (* C_IIC_FREQ = "400000" *) (* C_SCL_INERTIAL_DELAY = "0" *) 
(* C_SDA_INERTIAL_DELAY = "0" *) (* C_SDA_LEVEL = "1" *) (* C_SMBUS_PMBUS_HOST = "0" *) 
(* C_STATIC_TIMING_REG_WIDTH = "0" *) (* C_S_AXI_ACLK_FREQ_HZ = "50000000" *) (* C_S_AXI_ADDR_WIDTH = "9" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_TEN_BIT_ADR = "0" *) (* C_TIMING_REG_WIDTH = "32" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module kf_bd_axi_iic_0_0_axi_iic
   (s_axi_aclk,
    s_axi_aresetn,
    iic2intc_irpt,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    sda_i,
    sda_o,
    sda_t,
    scl_i,
    scl_o,
    scl_t,
    gpo);
  input s_axi_aclk;
  input s_axi_aresetn;
  output iic2intc_irpt;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input sda_i;
  output sda_o;
  output sda_t;
  input scl_i;
  output scl_o;
  output scl_t;
  output [0:0]gpo;

  wire \<const0> ;
  wire [0:0]gpo;
  wire iic2intc_irpt;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire scl_i;
  wire scl_t;
  wire sda_i;
  wire sda_t;
  wire NLW_X_IIC_S_AXI_WREADY_UNCONNECTED;
  wire NLW_X_IIC_Scl_O_UNCONNECTED;
  wire NLW_X_IIC_Sda_O_UNCONNECTED;
  wire [0:0]NLW_X_IIC_S_AXI_BRESP_UNCONNECTED;
  wire [30:8]NLW_X_IIC_S_AXI_RDATA_UNCONNECTED;
  wire [0:0]NLW_X_IIC_S_AXI_RRESP_UNCONNECTED;

  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [31];
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7:0] = \^s_axi_rdata [7:0];
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  assign scl_o = \<const0> ;
  assign sda_o = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_DEFAULT_VALUE = "8'b00000000" *) 
  (* C_DISABLE_SETUP_VIOLATION_CHECK = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_GPO_WIDTH = "1" *) 
  (* C_IIC_FREQ = "400000" *) 
  (* C_NUM_IIC_REGS = "18" *) 
  (* C_RC_FIFO_EXIST = "TRUE" *) 
  (* C_SCL_INERTIAL_DELAY = "0" *) 
  (* C_SDA_INERTIAL_DELAY = "0" *) 
  (* C_SDA_LEVEL = "1" *) 
  (* C_SMBUS_PMBUS_HOST = "0" *) 
  (* C_STATIC_TIMING_REG_WIDTH = "0" *) 
  (* C_S_AXI_ACLK_FREQ_HZ = "50000000" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TEN_BIT_ADR = "0" *) 
  (* C_TIMING_REG_WIDTH = "32" *) 
  (* C_TX_FIFO_EXIST = "TRUE" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  kf_bd_axi_iic_0_0_iic X_IIC
       (.Gpo(gpo),
        .IIC2INTC_Irpt(iic2intc_irpt),
        .S_AXI_ACLK(s_axi_aclk),
        .S_AXI_ARADDR(s_axi_araddr),
        .S_AXI_ARESETN(s_axi_aresetn),
        .S_AXI_ARREADY(s_axi_arready),
        .S_AXI_ARVALID(s_axi_arvalid),
        .S_AXI_AWADDR(s_axi_awaddr),
        .S_AXI_AWREADY(s_axi_wready),
        .S_AXI_AWVALID(s_axi_awvalid),
        .S_AXI_BREADY(s_axi_bready),
        .S_AXI_BRESP({\^s_axi_bresp ,NLW_X_IIC_S_AXI_BRESP_UNCONNECTED[0]}),
        .S_AXI_BVALID(s_axi_bvalid),
        .S_AXI_RDATA(\^s_axi_rdata ),
        .S_AXI_RREADY(s_axi_rready),
        .S_AXI_RRESP({\^s_axi_rresp ,NLW_X_IIC_S_AXI_RRESP_UNCONNECTED[0]}),
        .S_AXI_RVALID(s_axi_rvalid),
        .S_AXI_WDATA({s_axi_wdata[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[9:0]}),
        .S_AXI_WREADY(NLW_X_IIC_S_AXI_WREADY_UNCONNECTED),
        .S_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_WVALID(s_axi_wvalid),
        .Scl_I(scl_i),
        .Scl_O(NLW_X_IIC_Scl_O_UNCONNECTED),
        .Scl_T(scl_t),
        .Sda_I(sda_i),
        .Sda_O(NLW_X_IIC_Sda_O_UNCONNECTED),
        .Sda_T(sda_t));
endmodule

(* C_FAMILY = "zynq" *) (* C_NUM_IIC_REGS = "18" *) (* C_S_AXI_ADDR_WIDTH = "9" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* downgradeipidentifiedwarnings = "yes" *) 
module kf_bd_axi_iic_0_0_axi_ipif_ssp1
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    IIC2Bus_IntrEvent,
    IIC2INTC_Irpt,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    Bus2IIC_Clk,
    Bus2IIC_Reset,
    Bus2IIC_Addr,
    Bus2IIC_Data,
    Bus2IIC_RNW,
    Bus2IIC_RdCE,
    Bus2IIC_WrCE,
    IIC2Bus_Data);
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [0:7]IIC2Bus_IntrEvent;
  output IIC2INTC_Irpt;
  input [8:0]S_AXI_AWADDR;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [8:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
  output Bus2IIC_Clk;
  output Bus2IIC_Reset;
  output [0:8]Bus2IIC_Addr;
  output [0:31]Bus2IIC_Data;
  output Bus2IIC_RNW;
  output [0:17]Bus2IIC_RdCE;
  output [0:17]Bus2IIC_WrCE;
  input [0:31]IIC2Bus_Data;

  wire \<const0> ;
  wire [0:2]AXI_Bus2IP_CS;
  wire [27:24]AXI_Bus2IP_RdCE;
  wire AXI_Bus2IP_Reset;
  wire [7:16]AXI_Bus2IP_WrCE;
  wire [24:31]AXI_IP2Bus_Data;
  wire AXI_IP2Bus_Error;
  wire AXI_IP2Bus_RdAck;
  wire AXI_IP2Bus_RdAck1;
  wire AXI_IP2Bus_RdAck2;
  wire AXI_IP2Bus_RdAck20;
  wire AXI_IP2Bus_WrAck;
  wire AXI_IP2Bus_WrAck1;
  wire AXI_IP2Bus_WrAck2;
  wire AXI_IP2Bus_WrAck20;
  wire AXI_LITE_IPIF_I_n_52;
  wire [1:8]\^Bus2IIC_Addr ;
  wire [0:17]Bus2IIC_RdCE;
  wire Bus2IIC_Reset;
  wire [0:17]\^Bus2IIC_WrCE ;
  wire [0:31]IIC2Bus_Data;
  wire [0:7]IIC2Bus_IntrEvent;
  wire IIC2INTC_Irpt;
  wire [0:31]Intr2Bus_DBus;
  wire S_AXI_ACLK;
  wire [8:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [8:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [1:1]\^S_AXI_BRESP ;
  wire S_AXI_BVALID;
  wire [31:0]\^S_AXI_RDATA ;
  wire S_AXI_RREADY;
  wire [1:1]\^S_AXI_RRESP ;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WVALID;
  wire NLW_AXI_LITE_IPIF_I_Bus2IP_Clk_UNCONNECTED;
  wire NLW_AXI_LITE_IPIF_I_Bus2IP_Resetn_UNCONNECTED;
  wire NLW_AXI_LITE_IPIF_I_S_AXI_WREADY_UNCONNECTED;
  wire [8:8]NLW_AXI_LITE_IPIF_I_Bus2IP_Addr_UNCONNECTED;
  wire [3:0]NLW_AXI_LITE_IPIF_I_Bus2IP_BE_UNCONNECTED;
  wire [31:0]NLW_AXI_LITE_IPIF_I_Bus2IP_Data_UNCONNECTED;
  wire [34:18]NLW_AXI_LITE_IPIF_I_Bus2IP_RdCE_UNCONNECTED;
  wire [34:10]NLW_AXI_LITE_IPIF_I_Bus2IP_WrCE_UNCONNECTED;
  wire [0:0]NLW_AXI_LITE_IPIF_I_S_AXI_BRESP_UNCONNECTED;
  wire [30:8]NLW_AXI_LITE_IPIF_I_S_AXI_RDATA_UNCONNECTED;
  wire [0:0]NLW_AXI_LITE_IPIF_I_S_AXI_RRESP_UNCONNECTED;
  wire NLW_X_INTERRUPT_CONTROL_intr2bus_error_UNCONNECTED;
  wire NLW_X_INTERRUPT_CONTROL_intr2bus_rdack_UNCONNECTED;
  wire NLW_X_INTERRUPT_CONTROL_intr2bus_retry_UNCONNECTED;
  wire NLW_X_INTERRUPT_CONTROL_intr2bus_toutsup_UNCONNECTED;
  wire NLW_X_INTERRUPT_CONTROL_intr2bus_wrack_UNCONNECTED;
  wire [1:23]NLW_X_INTERRUPT_CONTROL_intr2bus_dbus_UNCONNECTED;
  wire NLW_X_SOFT_RESET_Reset2Bus_ToutSup_UNCONNECTED;
  wire NLW_X_SOFT_RESET_Reset2Bus_WrAck_UNCONNECTED;

  assign Bus2IIC_Addr[0] = \<const0> ;
  assign Bus2IIC_Addr[1:8] = \^Bus2IIC_Addr [1:8];
  assign Bus2IIC_Clk = \<const0> ;
  assign Bus2IIC_Data[0] = \<const0> ;
  assign Bus2IIC_Data[1] = \<const0> ;
  assign Bus2IIC_Data[2] = \<const0> ;
  assign Bus2IIC_Data[3] = \<const0> ;
  assign Bus2IIC_Data[4] = \<const0> ;
  assign Bus2IIC_Data[5] = \<const0> ;
  assign Bus2IIC_Data[6] = \<const0> ;
  assign Bus2IIC_Data[7] = \<const0> ;
  assign Bus2IIC_Data[8] = \<const0> ;
  assign Bus2IIC_Data[9] = \<const0> ;
  assign Bus2IIC_Data[10] = \<const0> ;
  assign Bus2IIC_Data[11] = \<const0> ;
  assign Bus2IIC_Data[12] = \<const0> ;
  assign Bus2IIC_Data[13] = \<const0> ;
  assign Bus2IIC_Data[14] = \<const0> ;
  assign Bus2IIC_Data[15] = \<const0> ;
  assign Bus2IIC_Data[16] = \<const0> ;
  assign Bus2IIC_Data[17] = \<const0> ;
  assign Bus2IIC_Data[18] = \<const0> ;
  assign Bus2IIC_Data[19] = \<const0> ;
  assign Bus2IIC_Data[20] = \<const0> ;
  assign Bus2IIC_Data[21] = \<const0> ;
  assign Bus2IIC_Data[22] = \<const0> ;
  assign Bus2IIC_Data[23] = \<const0> ;
  assign Bus2IIC_Data[24] = \<const0> ;
  assign Bus2IIC_Data[25] = \<const0> ;
  assign Bus2IIC_Data[26] = \<const0> ;
  assign Bus2IIC_Data[27] = \<const0> ;
  assign Bus2IIC_Data[28] = \<const0> ;
  assign Bus2IIC_Data[29] = \<const0> ;
  assign Bus2IIC_Data[30] = \<const0> ;
  assign Bus2IIC_Data[31] = \<const0> ;
  assign Bus2IIC_RNW = \<const0> ;
  assign Bus2IIC_WrCE[0] = \^Bus2IIC_WrCE [0];
  assign Bus2IIC_WrCE[1] = \<const0> ;
  assign Bus2IIC_WrCE[2] = \^Bus2IIC_WrCE [2];
  assign Bus2IIC_WrCE[3] = \<const0> ;
  assign Bus2IIC_WrCE[4] = \^Bus2IIC_WrCE [4];
  assign Bus2IIC_WrCE[5] = \<const0> ;
  assign Bus2IIC_WrCE[6] = \<const0> ;
  assign Bus2IIC_WrCE[7] = \<const0> ;
  assign Bus2IIC_WrCE[8:17] = \^Bus2IIC_WrCE [8:17];
  assign S_AXI_BRESP[1] = \^S_AXI_BRESP [1];
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \^S_AXI_RDATA [31];
  assign S_AXI_RDATA[30] = \<const0> ;
  assign S_AXI_RDATA[29] = \<const0> ;
  assign S_AXI_RDATA[28] = \<const0> ;
  assign S_AXI_RDATA[27] = \<const0> ;
  assign S_AXI_RDATA[26] = \<const0> ;
  assign S_AXI_RDATA[25] = \<const0> ;
  assign S_AXI_RDATA[24] = \<const0> ;
  assign S_AXI_RDATA[23] = \<const0> ;
  assign S_AXI_RDATA[22] = \<const0> ;
  assign S_AXI_RDATA[21] = \<const0> ;
  assign S_AXI_RDATA[20] = \<const0> ;
  assign S_AXI_RDATA[19] = \<const0> ;
  assign S_AXI_RDATA[18] = \<const0> ;
  assign S_AXI_RDATA[17] = \<const0> ;
  assign S_AXI_RDATA[16] = \<const0> ;
  assign S_AXI_RDATA[15] = \<const0> ;
  assign S_AXI_RDATA[14] = \<const0> ;
  assign S_AXI_RDATA[13] = \<const0> ;
  assign S_AXI_RDATA[12] = \<const0> ;
  assign S_AXI_RDATA[11] = \<const0> ;
  assign S_AXI_RDATA[10] = \<const0> ;
  assign S_AXI_RDATA[9] = \<const0> ;
  assign S_AXI_RDATA[8] = \<const0> ;
  assign S_AXI_RDATA[7:0] = \^S_AXI_RDATA [7:0];
  assign S_AXI_RRESP[1] = \^S_AXI_RRESP [1];
  assign S_AXI_RRESP[0] = \<const0> ;
  assign S_AXI_WREADY = \<const0> ;
  FDRE AXI_IP2Bus_RdAck1_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(AXI_IP2Bus_RdAck2),
        .Q(AXI_IP2Bus_RdAck1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    AXI_IP2Bus_RdAck2_i_1
       (.I0(AXI_Bus2IP_CS[1]),
        .I1(AXI_Bus2IP_CS[0]),
        .I2(AXI_Bus2IP_CS[2]),
        .I3(AXI_LITE_IPIF_I_n_52),
        .O(AXI_IP2Bus_RdAck20));
  FDRE AXI_IP2Bus_RdAck2_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(AXI_IP2Bus_RdAck20),
        .Q(AXI_IP2Bus_RdAck2),
        .R(1'b0));
  FDRE AXI_IP2Bus_WrAck1_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(AXI_IP2Bus_WrAck2),
        .Q(AXI_IP2Bus_WrAck1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    AXI_IP2Bus_WrAck2_i_1
       (.I0(AXI_Bus2IP_CS[1]),
        .I1(AXI_Bus2IP_CS[0]),
        .I2(AXI_Bus2IP_CS[2]),
        .I3(AXI_LITE_IPIF_I_n_52),
        .O(AXI_IP2Bus_WrAck20));
  FDRE AXI_IP2Bus_WrAck2_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(AXI_IP2Bus_WrAck20),
        .Q(AXI_IP2Bus_WrAck2),
        .R(1'b0));
  (* C_ARD_ADDR_RANGE_ARRAY = "384'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111110000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000100001100000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000111111111" *) 
  (* C_ARD_NUM_CE_ARRAY = "96'b000000000000000000000000000100000000000000000000000000000000000100000000000000000000000000010010" *) 
  (* C_DPHASE_TIMEOUT = "8" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_MIN_SIZE = "32'b00000000000000000000000111111111" *) 
  (* C_USE_WSTRB = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  kf_bd_axi_iic_0_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.Bus2IP_Addr({NLW_AXI_LITE_IPIF_I_Bus2IP_Addr_UNCONNECTED[8],\^Bus2IIC_Addr [1],\^Bus2IIC_Addr [2],\^Bus2IIC_Addr [3],\^Bus2IIC_Addr [4],\^Bus2IIC_Addr [5],\^Bus2IIC_Addr [6],\^Bus2IIC_Addr [7],\^Bus2IIC_Addr [8]}),
        .Bus2IP_BE(NLW_AXI_LITE_IPIF_I_Bus2IP_BE_UNCONNECTED[3:0]),
        .Bus2IP_CS({AXI_Bus2IP_CS[0],AXI_Bus2IP_CS[1],AXI_Bus2IP_CS[2]}),
        .Bus2IP_Clk(NLW_AXI_LITE_IPIF_I_Bus2IP_Clk_UNCONNECTED),
        .Bus2IP_Data(NLW_AXI_LITE_IPIF_I_Bus2IP_Data_UNCONNECTED[31:0]),
        .Bus2IP_RNW(AXI_LITE_IPIF_I_n_52),
        .Bus2IP_RdCE({NLW_AXI_LITE_IPIF_I_Bus2IP_RdCE_UNCONNECTED[34:28],AXI_Bus2IP_RdCE,NLW_AXI_LITE_IPIF_I_Bus2IP_RdCE_UNCONNECTED[23:18],Bus2IIC_RdCE[0],Bus2IIC_RdCE[1],Bus2IIC_RdCE[2],Bus2IIC_RdCE[3],Bus2IIC_RdCE[4],Bus2IIC_RdCE[5],Bus2IIC_RdCE[6],Bus2IIC_RdCE[7],Bus2IIC_RdCE[8],Bus2IIC_RdCE[9],Bus2IIC_RdCE[10],Bus2IIC_RdCE[11],Bus2IIC_RdCE[12],Bus2IIC_RdCE[13],Bus2IIC_RdCE[14],Bus2IIC_RdCE[15],Bus2IIC_RdCE[16],Bus2IIC_RdCE[17]}),
        .Bus2IP_Resetn(NLW_AXI_LITE_IPIF_I_Bus2IP_Resetn_UNCONNECTED),
        .Bus2IP_WrCE({NLW_AXI_LITE_IPIF_I_Bus2IP_WrCE_UNCONNECTED[34:28],AXI_Bus2IP_WrCE[7],AXI_Bus2IP_WrCE[8],AXI_Bus2IP_WrCE[9],AXI_Bus2IP_WrCE[10],AXI_Bus2IP_WrCE[11],AXI_Bus2IP_WrCE[12],AXI_Bus2IP_WrCE[13],AXI_Bus2IP_WrCE[14],AXI_Bus2IP_WrCE[15],AXI_Bus2IP_WrCE[16],\^Bus2IIC_WrCE [0],\^Bus2IIC_WrCE [1],\^Bus2IIC_WrCE [2],\^Bus2IIC_WrCE [3],\^Bus2IIC_WrCE [4],\^Bus2IIC_WrCE [5],\^Bus2IIC_WrCE [6],\^Bus2IIC_WrCE [7],\^Bus2IIC_WrCE [8],\^Bus2IIC_WrCE [9],\^Bus2IIC_WrCE [10],\^Bus2IIC_WrCE [11],\^Bus2IIC_WrCE [12],\^Bus2IIC_WrCE [13],\^Bus2IIC_WrCE [14],\^Bus2IIC_WrCE [15],\^Bus2IIC_WrCE [16],\^Bus2IIC_WrCE [17]}),
        .IP2Bus_Data({Intr2Bus_DBus[0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,AXI_IP2Bus_Data[24],AXI_IP2Bus_Data[25],AXI_IP2Bus_Data[26],AXI_IP2Bus_Data[27],AXI_IP2Bus_Data[28],AXI_IP2Bus_Data[29],AXI_IP2Bus_Data[30],AXI_IP2Bus_Data[31]}),
        .IP2Bus_Error(AXI_IP2Bus_Error),
        .IP2Bus_RdAck(AXI_IP2Bus_RdAck),
        .IP2Bus_WrAck(AXI_IP2Bus_WrAck),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BRESP({\^S_AXI_BRESP ,NLW_AXI_LITE_IPIF_I_S_AXI_BRESP_UNCONNECTED[0]}),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(\^S_AXI_RDATA ),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RRESP({\^S_AXI_RRESP ,NLW_AXI_LITE_IPIF_I_S_AXI_RRESP_UNCONNECTED[0]}),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_WREADY(NLW_AXI_LITE_IPIF_I_S_AXI_WREADY_UNCONNECTED),
        .S_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_WVALID(S_AXI_WVALID));
  LUT2 #(
    .INIT(4'hE)) 
    AXI_LITE_IPIF_I_i_1
       (.I0(Intr2Bus_DBus[24]),
        .I1(IIC2Bus_Data[24]),
        .O(AXI_IP2Bus_Data[24]));
  LUT2 #(
    .INIT(4'h2)) 
    AXI_LITE_IPIF_I_i_10
       (.I0(AXI_IP2Bus_RdAck2),
        .I1(AXI_IP2Bus_RdAck1),
        .O(AXI_IP2Bus_RdAck));
  LUT2 #(
    .INIT(4'hE)) 
    AXI_LITE_IPIF_I_i_2
       (.I0(Intr2Bus_DBus[25]),
        .I1(IIC2Bus_Data[25]),
        .O(AXI_IP2Bus_Data[25]));
  LUT2 #(
    .INIT(4'hE)) 
    AXI_LITE_IPIF_I_i_3
       (.I0(Intr2Bus_DBus[26]),
        .I1(IIC2Bus_Data[26]),
        .O(AXI_IP2Bus_Data[26]));
  LUT2 #(
    .INIT(4'hE)) 
    AXI_LITE_IPIF_I_i_4
       (.I0(Intr2Bus_DBus[27]),
        .I1(IIC2Bus_Data[27]),
        .O(AXI_IP2Bus_Data[27]));
  LUT2 #(
    .INIT(4'hE)) 
    AXI_LITE_IPIF_I_i_5
       (.I0(Intr2Bus_DBus[28]),
        .I1(IIC2Bus_Data[28]),
        .O(AXI_IP2Bus_Data[28]));
  LUT2 #(
    .INIT(4'hE)) 
    AXI_LITE_IPIF_I_i_6
       (.I0(Intr2Bus_DBus[29]),
        .I1(IIC2Bus_Data[29]),
        .O(AXI_IP2Bus_Data[29]));
  LUT2 #(
    .INIT(4'hE)) 
    AXI_LITE_IPIF_I_i_7
       (.I0(Intr2Bus_DBus[30]),
        .I1(IIC2Bus_Data[30]),
        .O(AXI_IP2Bus_Data[30]));
  LUT2 #(
    .INIT(4'hE)) 
    AXI_LITE_IPIF_I_i_8
       (.I0(Intr2Bus_DBus[31]),
        .I1(IIC2Bus_Data[31]),
        .O(AXI_IP2Bus_Data[31]));
  LUT2 #(
    .INIT(4'h2)) 
    AXI_LITE_IPIF_I_i_9
       (.I0(AXI_IP2Bus_WrAck2),
        .I1(AXI_IP2Bus_WrAck1),
        .O(AXI_IP2Bus_WrAck));
  GND GND
       (.G(\<const0> ));
  (* C_INCLUDE_DEV_ISC = "FALSE" *) 
  (* C_INCLUDE_DEV_PENCODER = "FALSE" *) 
  (* C_IPIF_DWIDTH = "32" *) 
  (* C_IP_INTR_MODE_ARRAY = "256'b0000000000000000000000000000001100000000000000000000000000000011000000000000000000000000000000110000000000000000000000000000001100000000000000000000000000000011000000000000000000000000000000110000000000000000000000000000001100000000000000000000000000000011" *) 
  (* C_NUM_CE = "16" *) 
  (* C_NUM_IPIF_IRPT_SRC = "1" *) 
  kf_bd_axi_iic_0_0_interrupt_control X_INTERRUPT_CONTROL
       (.bus2ip_be({1'b1,1'b1,1'b1,1'b1}),
        .bus2ip_clk(S_AXI_ACLK),
        .bus2ip_data({S_AXI_WDATA[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_WDATA[7],S_AXI_WDATA[6],S_AXI_WDATA[5],S_AXI_WDATA[4],S_AXI_WDATA[3],S_AXI_WDATA[2],S_AXI_WDATA[1],S_AXI_WDATA[0]}),
        .bus2ip_reset(Bus2IIC_Reset),
        .interrupt_rdce({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,AXI_Bus2IP_RdCE[27],AXI_Bus2IP_RdCE[26],1'b0,AXI_Bus2IP_RdCE[24],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .interrupt_wrce({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,AXI_Bus2IP_WrCE[7:8],1'b0,AXI_Bus2IP_WrCE[10],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .intr2bus_dbus(Intr2Bus_DBus),
        .intr2bus_devintr(IIC2INTC_Irpt),
        .intr2bus_error(NLW_X_INTERRUPT_CONTROL_intr2bus_error_UNCONNECTED),
        .intr2bus_rdack(NLW_X_INTERRUPT_CONTROL_intr2bus_rdack_UNCONNECTED),
        .intr2bus_retry(NLW_X_INTERRUPT_CONTROL_intr2bus_retry_UNCONNECTED),
        .intr2bus_toutsup(NLW_X_INTERRUPT_CONTROL_intr2bus_toutsup_UNCONNECTED),
        .intr2bus_wrack(NLW_X_INTERRUPT_CONTROL_intr2bus_wrack_UNCONNECTED),
        .ip2bus_intrevent(IIC2Bus_IntrEvent),
        .ipif_lvl_interrupts(1'b0),
        .ipif_reg_interrupts({1'b0,1'b0}));
  (* C_RESET_WIDTH = "4" *) 
  (* C_SIPIF_DWIDTH = "32" *) 
  kf_bd_axi_iic_0_0_soft_reset X_SOFT_RESET
       (.Bus2IP_BE({1'b1,1'b1,1'b1,1'b1}),
        .Bus2IP_Clk(S_AXI_ACLK),
        .Bus2IP_Data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_WDATA[3],S_AXI_WDATA[2],S_AXI_WDATA[1],S_AXI_WDATA[0]}),
        .Bus2IP_Reset(AXI_Bus2IP_Reset),
        .Bus2IP_WrCE(AXI_Bus2IP_WrCE[16]),
        .Reset2Bus_Error(AXI_IP2Bus_Error),
        .Reset2Bus_ToutSup(NLW_X_SOFT_RESET_Reset2Bus_ToutSup_UNCONNECTED),
        .Reset2Bus_WrAck(NLW_X_SOFT_RESET_Reset2Bus_WrAck_UNCONNECTED),
        .Reset2IP_Reset(Bus2IIC_Reset));
  LUT1 #(
    .INIT(2'h1)) 
    X_SOFT_RESET_i_1
       (.I0(S_AXI_ARESETN),
        .O(AXI_Bus2IP_Reset));
endmodule

(* C_ARD_ADDR_RANGE_ARRAY = "384'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111110000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000100001100000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000111111111" *) (* C_ARD_NUM_CE_ARRAY = "96'b000000000000000000000000000100000000000000000000000000000000000100000000000000000000000000010010" *) (* C_DPHASE_TIMEOUT = "8" *) 
(* C_FAMILY = "zynq" *) (* C_S_AXI_ADDR_WIDTH = "9" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* C_S_AXI_MIN_SIZE = "32'b00000000000000000000000111111111" *) (* C_USE_WSTRB = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module kf_bd_axi_iic_0_0_axi_lite_ipif
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    Bus2IP_Clk,
    Bus2IP_Resetn,
    Bus2IP_Addr,
    Bus2IP_RNW,
    Bus2IP_BE,
    Bus2IP_CS,
    Bus2IP_RdCE,
    Bus2IP_WrCE,
    Bus2IP_Data,
    IP2Bus_Data,
    IP2Bus_WrAck,
    IP2Bus_RdAck,
    IP2Bus_Error);
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [8:0]S_AXI_AWADDR;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [8:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
  output Bus2IP_Clk;
  output Bus2IP_Resetn;
  output [8:0]Bus2IP_Addr;
  output Bus2IP_RNW;
  output [3:0]Bus2IP_BE;
  output [2:0]Bus2IP_CS;
  output [34:0]Bus2IP_RdCE;
  output [34:0]Bus2IP_WrCE;
  output [31:0]Bus2IP_Data;
  input [31:0]IP2Bus_Data;
  input IP2Bus_WrAck;
  input IP2Bus_RdAck;
  input IP2Bus_Error;

  wire \<const0> ;
  wire [7:0]\^Bus2IP_Addr ;
  wire [2:0]Bus2IP_CS;
  wire Bus2IP_RNW;
  wire [27:0]\^Bus2IP_RdCE ;
  wire [27:0]\^Bus2IP_WrCE ;
  wire [31:0]IP2Bus_Data;
  wire IP2Bus_Error;
  wire IP2Bus_RdAck;
  wire IP2Bus_WrAck;
  wire S_AXI_ACLK;
  wire [8:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [8:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [1:1]\^S_AXI_BRESP ;
  wire S_AXI_BVALID;
  wire [31:0]\^S_AXI_RDATA ;
  wire S_AXI_RREADY;
  wire [1:1]\^S_AXI_RRESP ;
  wire S_AXI_RVALID;
  wire S_AXI_WVALID;
  wire NLW_I_SLAVE_ATTACHMENT_Bus2IP_Clk_UNCONNECTED;
  wire NLW_I_SLAVE_ATTACHMENT_Bus2IP_Resetn_UNCONNECTED;
  wire NLW_I_SLAVE_ATTACHMENT_S_AXI_WREADY_UNCONNECTED;
  wire [8:8]NLW_I_SLAVE_ATTACHMENT_Bus2IP_Addr_UNCONNECTED;
  wire [3:0]NLW_I_SLAVE_ATTACHMENT_Bus2IP_BE_UNCONNECTED;
  wire [31:0]NLW_I_SLAVE_ATTACHMENT_Bus2IP_Data_UNCONNECTED;
  wire [34:18]NLW_I_SLAVE_ATTACHMENT_Bus2IP_RdCE_UNCONNECTED;
  wire [34:10]NLW_I_SLAVE_ATTACHMENT_Bus2IP_WrCE_UNCONNECTED;
  wire [0:0]NLW_I_SLAVE_ATTACHMENT_S_AXI_BRESP_UNCONNECTED;
  wire [30:8]NLW_I_SLAVE_ATTACHMENT_S_AXI_RDATA_UNCONNECTED;
  wire [0:0]NLW_I_SLAVE_ATTACHMENT_S_AXI_RRESP_UNCONNECTED;

  assign Bus2IP_Addr[8] = \<const0> ;
  assign Bus2IP_Addr[7:0] = \^Bus2IP_Addr [7:0];
  assign Bus2IP_BE[3] = \<const0> ;
  assign Bus2IP_BE[2] = \<const0> ;
  assign Bus2IP_BE[1] = \<const0> ;
  assign Bus2IP_BE[0] = \<const0> ;
  assign Bus2IP_Clk = \<const0> ;
  assign Bus2IP_Data[31] = \<const0> ;
  assign Bus2IP_Data[30] = \<const0> ;
  assign Bus2IP_Data[29] = \<const0> ;
  assign Bus2IP_Data[28] = \<const0> ;
  assign Bus2IP_Data[27] = \<const0> ;
  assign Bus2IP_Data[26] = \<const0> ;
  assign Bus2IP_Data[25] = \<const0> ;
  assign Bus2IP_Data[24] = \<const0> ;
  assign Bus2IP_Data[23] = \<const0> ;
  assign Bus2IP_Data[22] = \<const0> ;
  assign Bus2IP_Data[21] = \<const0> ;
  assign Bus2IP_Data[20] = \<const0> ;
  assign Bus2IP_Data[19] = \<const0> ;
  assign Bus2IP_Data[18] = \<const0> ;
  assign Bus2IP_Data[17] = \<const0> ;
  assign Bus2IP_Data[16] = \<const0> ;
  assign Bus2IP_Data[15] = \<const0> ;
  assign Bus2IP_Data[14] = \<const0> ;
  assign Bus2IP_Data[13] = \<const0> ;
  assign Bus2IP_Data[12] = \<const0> ;
  assign Bus2IP_Data[11] = \<const0> ;
  assign Bus2IP_Data[10] = \<const0> ;
  assign Bus2IP_Data[9] = \<const0> ;
  assign Bus2IP_Data[8] = \<const0> ;
  assign Bus2IP_Data[7] = \<const0> ;
  assign Bus2IP_Data[6] = \<const0> ;
  assign Bus2IP_Data[5] = \<const0> ;
  assign Bus2IP_Data[4] = \<const0> ;
  assign Bus2IP_Data[3] = \<const0> ;
  assign Bus2IP_Data[2] = \<const0> ;
  assign Bus2IP_Data[1] = \<const0> ;
  assign Bus2IP_Data[0] = \<const0> ;
  assign Bus2IP_RdCE[34] = \<const0> ;
  assign Bus2IP_RdCE[33] = \<const0> ;
  assign Bus2IP_RdCE[32] = \<const0> ;
  assign Bus2IP_RdCE[31] = \<const0> ;
  assign Bus2IP_RdCE[30] = \<const0> ;
  assign Bus2IP_RdCE[29] = \<const0> ;
  assign Bus2IP_RdCE[28] = \<const0> ;
  assign Bus2IP_RdCE[27:26] = \^Bus2IP_RdCE [27:26];
  assign Bus2IP_RdCE[25] = \<const0> ;
  assign Bus2IP_RdCE[24] = \^Bus2IP_RdCE [24];
  assign Bus2IP_RdCE[23] = \<const0> ;
  assign Bus2IP_RdCE[22] = \<const0> ;
  assign Bus2IP_RdCE[21] = \<const0> ;
  assign Bus2IP_RdCE[20] = \<const0> ;
  assign Bus2IP_RdCE[19] = \<const0> ;
  assign Bus2IP_RdCE[18] = \<const0> ;
  assign Bus2IP_RdCE[17:0] = \^Bus2IP_RdCE [17:0];
  assign Bus2IP_Resetn = \<const0> ;
  assign Bus2IP_WrCE[34] = \<const0> ;
  assign Bus2IP_WrCE[33] = \<const0> ;
  assign Bus2IP_WrCE[32] = \<const0> ;
  assign Bus2IP_WrCE[31] = \<const0> ;
  assign Bus2IP_WrCE[30] = \<const0> ;
  assign Bus2IP_WrCE[29] = \<const0> ;
  assign Bus2IP_WrCE[28] = \<const0> ;
  assign Bus2IP_WrCE[27:26] = \^Bus2IP_WrCE [27:26];
  assign Bus2IP_WrCE[25] = \<const0> ;
  assign Bus2IP_WrCE[24] = \^Bus2IP_WrCE [24];
  assign Bus2IP_WrCE[23] = \<const0> ;
  assign Bus2IP_WrCE[22] = \<const0> ;
  assign Bus2IP_WrCE[21] = \<const0> ;
  assign Bus2IP_WrCE[20] = \<const0> ;
  assign Bus2IP_WrCE[19] = \<const0> ;
  assign Bus2IP_WrCE[18:17] = \^Bus2IP_WrCE [18:17];
  assign Bus2IP_WrCE[16] = \<const0> ;
  assign Bus2IP_WrCE[15] = \^Bus2IP_WrCE [15];
  assign Bus2IP_WrCE[14] = \<const0> ;
  assign Bus2IP_WrCE[13] = \^Bus2IP_WrCE [13];
  assign Bus2IP_WrCE[12] = \<const0> ;
  assign Bus2IP_WrCE[11] = \<const0> ;
  assign Bus2IP_WrCE[10] = \<const0> ;
  assign Bus2IP_WrCE[9:0] = \^Bus2IP_WrCE [9:0];
  assign S_AXI_BRESP[1] = \^S_AXI_BRESP [1];
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \^S_AXI_RDATA [31];
  assign S_AXI_RDATA[30] = \<const0> ;
  assign S_AXI_RDATA[29] = \<const0> ;
  assign S_AXI_RDATA[28] = \<const0> ;
  assign S_AXI_RDATA[27] = \<const0> ;
  assign S_AXI_RDATA[26] = \<const0> ;
  assign S_AXI_RDATA[25] = \<const0> ;
  assign S_AXI_RDATA[24] = \<const0> ;
  assign S_AXI_RDATA[23] = \<const0> ;
  assign S_AXI_RDATA[22] = \<const0> ;
  assign S_AXI_RDATA[21] = \<const0> ;
  assign S_AXI_RDATA[20] = \<const0> ;
  assign S_AXI_RDATA[19] = \<const0> ;
  assign S_AXI_RDATA[18] = \<const0> ;
  assign S_AXI_RDATA[17] = \<const0> ;
  assign S_AXI_RDATA[16] = \<const0> ;
  assign S_AXI_RDATA[15] = \<const0> ;
  assign S_AXI_RDATA[14] = \<const0> ;
  assign S_AXI_RDATA[13] = \<const0> ;
  assign S_AXI_RDATA[12] = \<const0> ;
  assign S_AXI_RDATA[11] = \<const0> ;
  assign S_AXI_RDATA[10] = \<const0> ;
  assign S_AXI_RDATA[9] = \<const0> ;
  assign S_AXI_RDATA[8] = \<const0> ;
  assign S_AXI_RDATA[7:0] = \^S_AXI_RDATA [7:0];
  assign S_AXI_RRESP[1] = \^S_AXI_RRESP [1];
  assign S_AXI_RRESP[0] = \<const0> ;
  assign S_AXI_WREADY = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ARD_ADDR_RANGE_ARRAY = "384'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111110000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000100001100000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000111111111" *) 
  (* C_ARD_NUM_CE_ARRAY = "96'b000000000000000000000000000100000000000000000000000000000000000100000000000000000000000000010010" *) 
  (* C_DPHASE_TIMEOUT = "8" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_IPIF_ABUS_WIDTH = "9" *) 
  (* C_IPIF_DBUS_WIDTH = "32" *) 
  (* C_S_AXI_MIN_SIZE = "32'b00000000000000000000000111111111" *) 
  (* C_USE_WSTRB = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  kf_bd_axi_iic_0_0_slave_attachment I_SLAVE_ATTACHMENT
       (.Bus2IP_Addr({NLW_I_SLAVE_ATTACHMENT_Bus2IP_Addr_UNCONNECTED[8],\^Bus2IP_Addr }),
        .Bus2IP_BE(NLW_I_SLAVE_ATTACHMENT_Bus2IP_BE_UNCONNECTED[3:0]),
        .Bus2IP_CS(Bus2IP_CS),
        .Bus2IP_Clk(NLW_I_SLAVE_ATTACHMENT_Bus2IP_Clk_UNCONNECTED),
        .Bus2IP_Data(NLW_I_SLAVE_ATTACHMENT_Bus2IP_Data_UNCONNECTED[31:0]),
        .Bus2IP_RNW(Bus2IP_RNW),
        .Bus2IP_RdCE({NLW_I_SLAVE_ATTACHMENT_Bus2IP_RdCE_UNCONNECTED[34:28],\^Bus2IP_RdCE }),
        .Bus2IP_Resetn(NLW_I_SLAVE_ATTACHMENT_Bus2IP_Resetn_UNCONNECTED),
        .Bus2IP_WrCE({NLW_I_SLAVE_ATTACHMENT_Bus2IP_WrCE_UNCONNECTED[34:28],\^Bus2IP_WrCE }),
        .IP2Bus_Data({IP2Bus_Data[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,IP2Bus_Data[7:0]}),
        .IP2Bus_Error(IP2Bus_Error),
        .IP2Bus_RdAck(IP2Bus_RdAck),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BRESP({\^S_AXI_BRESP ,NLW_I_SLAVE_ATTACHMENT_S_AXI_BRESP_UNCONNECTED[0]}),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(\^S_AXI_RDATA ),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RRESP({\^S_AXI_RRESP ,NLW_I_SLAVE_ATTACHMENT_S_AXI_RRESP_UNCONNECTED[0]}),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_WREADY(NLW_I_SLAVE_ATTACHMENT_S_AXI_WREADY_UNCONNECTED),
        .S_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_WVALID(S_AXI_WVALID));
endmodule

(* C_CDC_TYPE = "1" *) (* C_FLOP_INPUT = "0" *) (* C_MTBF_STAGES = "4" *) 
(* C_RESET_STATE = "0" *) (* C_SINGLE_BIT = "1" *) (* C_VECTOR_WIDTH = "32" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module kf_bd_axi_iic_0_0_cdc_sync
   (prmry_aclk,
    prmry_resetn,
    prmry_in,
    prmry_vect_in,
    prmry_ack,
    scndry_aclk,
    scndry_resetn,
    scndry_out,
    scndry_vect_out);
  input prmry_aclk;
  input prmry_resetn;
  input prmry_in;
  input [31:0]prmry_vect_in;
  output prmry_ack;
  input scndry_aclk;
  input scndry_resetn;
  output scndry_out;
  output [31:0]scndry_vect_out;

  wire \<const0> ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  wire Q;
  wire prmry_in;
  wire scndry_aclk;
  wire scndry_out;

  assign prmry_ack = \<const0> ;
  assign scndry_vect_out[31] = \<const0> ;
  assign scndry_vect_out[30] = \<const0> ;
  assign scndry_vect_out[29] = \<const0> ;
  assign scndry_vect_out[28] = \<const0> ;
  assign scndry_vect_out[27] = \<const0> ;
  assign scndry_vect_out[26] = \<const0> ;
  assign scndry_vect_out[25] = \<const0> ;
  assign scndry_vect_out[24] = \<const0> ;
  assign scndry_vect_out[23] = \<const0> ;
  assign scndry_vect_out[22] = \<const0> ;
  assign scndry_vect_out[21] = \<const0> ;
  assign scndry_vect_out[20] = \<const0> ;
  assign scndry_vect_out[19] = \<const0> ;
  assign scndry_vect_out[18] = \<const0> ;
  assign scndry_vect_out[17] = \<const0> ;
  assign scndry_vect_out[16] = \<const0> ;
  assign scndry_vect_out[15] = \<const0> ;
  assign scndry_vect_out[14] = \<const0> ;
  assign scndry_vect_out[13] = \<const0> ;
  assign scndry_vect_out[12] = \<const0> ;
  assign scndry_vect_out[11] = \<const0> ;
  assign scndry_vect_out[10] = \<const0> ;
  assign scndry_vect_out[9] = \<const0> ;
  assign scndry_vect_out[8] = \<const0> ;
  assign scndry_vect_out[7] = \<const0> ;
  assign scndry_vect_out[6] = \<const0> ;
  assign scndry_vect_out[5] = \<const0> ;
  assign scndry_vect_out[4] = \<const0> ;
  assign scndry_vect_out[3] = \<const0> ;
  assign scndry_vect_out[2] = \<const0> ;
  assign scndry_vect_out[1] = \<const0> ;
  assign scndry_vect_out[0] = \<const0> ;
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(Q),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(Q),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(scndry_out),
        .R(1'b0));
  GND GND
       (.G(\<const0> ));
endmodule

(* C_CDC_TYPE = "1" *) (* C_FLOP_INPUT = "0" *) (* C_MTBF_STAGES = "4" *) 
(* C_RESET_STATE = "0" *) (* C_SINGLE_BIT = "1" *) (* C_VECTOR_WIDTH = "32" *) 
(* ORIG_REF_NAME = "cdc_sync" *) (* downgradeipidentifiedwarnings = "yes" *) 
module kf_bd_axi_iic_0_0_cdc_sync__1
   (prmry_aclk,
    prmry_resetn,
    prmry_in,
    prmry_vect_in,
    prmry_ack,
    scndry_aclk,
    scndry_resetn,
    scndry_out,
    scndry_vect_out);
  input prmry_aclk;
  input prmry_resetn;
  input prmry_in;
  input [31:0]prmry_vect_in;
  output prmry_ack;
  input scndry_aclk;
  input scndry_resetn;
  output scndry_out;
  output [31:0]scndry_vect_out;

  wire \<const0> ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  wire Q;
  wire prmry_in;
  wire scndry_aclk;
  wire scndry_out;

  assign prmry_ack = \<const0> ;
  assign scndry_vect_out[31] = \<const0> ;
  assign scndry_vect_out[30] = \<const0> ;
  assign scndry_vect_out[29] = \<const0> ;
  assign scndry_vect_out[28] = \<const0> ;
  assign scndry_vect_out[27] = \<const0> ;
  assign scndry_vect_out[26] = \<const0> ;
  assign scndry_vect_out[25] = \<const0> ;
  assign scndry_vect_out[24] = \<const0> ;
  assign scndry_vect_out[23] = \<const0> ;
  assign scndry_vect_out[22] = \<const0> ;
  assign scndry_vect_out[21] = \<const0> ;
  assign scndry_vect_out[20] = \<const0> ;
  assign scndry_vect_out[19] = \<const0> ;
  assign scndry_vect_out[18] = \<const0> ;
  assign scndry_vect_out[17] = \<const0> ;
  assign scndry_vect_out[16] = \<const0> ;
  assign scndry_vect_out[15] = \<const0> ;
  assign scndry_vect_out[14] = \<const0> ;
  assign scndry_vect_out[13] = \<const0> ;
  assign scndry_vect_out[12] = \<const0> ;
  assign scndry_vect_out[11] = \<const0> ;
  assign scndry_vect_out[10] = \<const0> ;
  assign scndry_vect_out[9] = \<const0> ;
  assign scndry_vect_out[8] = \<const0> ;
  assign scndry_vect_out[7] = \<const0> ;
  assign scndry_vect_out[6] = \<const0> ;
  assign scndry_vect_out[5] = \<const0> ;
  assign scndry_vect_out[4] = \<const0> ;
  assign scndry_vect_out[3] = \<const0> ;
  assign scndry_vect_out[2] = \<const0> ;
  assign scndry_vect_out[1] = \<const0> ;
  assign scndry_vect_out[0] = \<const0> ;
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(Q),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(Q),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(scndry_out),
        .R(1'b0));
  GND GND
       (.G(\<const0> ));
endmodule

(* C_DEFAULT = "1'b1" *) (* C_INERTIAL_DELAY = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module kf_bd_axi_iic_0_0_debounce
   (Sysclk,
    Rst,
    Stable,
    Unstable_n,
    Noisy,
    Clean);
  input Sysclk;
  input Rst;
  input Stable;
  output Unstable_n;
  input Noisy;
  output Clean;

  wire \<const0> ;
  wire Clean;
  wire Noisy;
  wire Sysclk;
  wire NLW_INPUT_DOUBLE_REGS_prmry_ack_UNCONNECTED;
  wire [31:0]NLW_INPUT_DOUBLE_REGS_scndry_vect_out_UNCONNECTED;

  assign Unstable_n = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_CDC_TYPE = "1" *) 
  (* C_FLOP_INPUT = "0" *) 
  (* C_MTBF_STAGES = "4" *) 
  (* C_RESET_STATE = "0" *) 
  (* C_SINGLE_BIT = "1" *) 
  (* C_VECTOR_WIDTH = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  kf_bd_axi_iic_0_0_cdc_sync INPUT_DOUBLE_REGS
       (.prmry_ack(NLW_INPUT_DOUBLE_REGS_prmry_ack_UNCONNECTED),
        .prmry_aclk(1'b0),
        .prmry_in(Noisy),
        .prmry_resetn(1'b0),
        .prmry_vect_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .scndry_aclk(Sysclk),
        .scndry_out(Clean),
        .scndry_resetn(1'b0),
        .scndry_vect_out(NLW_INPUT_DOUBLE_REGS_scndry_vect_out_UNCONNECTED[31:0]));
endmodule

(* C_DEFAULT = "1'b1" *) (* C_INERTIAL_DELAY = "0" *) (* ORIG_REF_NAME = "debounce" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module kf_bd_axi_iic_0_0_debounce__1
   (Sysclk,
    Rst,
    Stable,
    Unstable_n,
    Noisy,
    Clean);
  input Sysclk;
  input Rst;
  input Stable;
  output Unstable_n;
  input Noisy;
  output Clean;

  wire \<const0> ;
  wire Clean;
  wire Noisy;
  wire Sysclk;
  wire NLW_INPUT_DOUBLE_REGS_prmry_ack_UNCONNECTED;
  wire [31:0]NLW_INPUT_DOUBLE_REGS_scndry_vect_out_UNCONNECTED;

  assign Unstable_n = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_CDC_TYPE = "1" *) 
  (* C_FLOP_INPUT = "0" *) 
  (* C_MTBF_STAGES = "4" *) 
  (* C_RESET_STATE = "0" *) 
  (* C_SINGLE_BIT = "1" *) 
  (* C_VECTOR_WIDTH = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  kf_bd_axi_iic_0_0_cdc_sync__1 INPUT_DOUBLE_REGS
       (.prmry_ack(NLW_INPUT_DOUBLE_REGS_prmry_ack_UNCONNECTED),
        .prmry_aclk(1'b0),
        .prmry_in(Noisy),
        .prmry_resetn(1'b0),
        .prmry_vect_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .scndry_aclk(Sysclk),
        .scndry_out(Clean),
        .scndry_resetn(1'b0),
        .scndry_vect_out(NLW_INPUT_DOUBLE_REGS_scndry_vect_out_UNCONNECTED[31:0]));
endmodule

(* downgradeipidentifiedwarnings = "yes" *) 
module kf_bd_axi_iic_0_0_dynamic_master
   (Clk,
    Rst,
    Dynamic_MSMS,
    Cr,
    Tx_fifo_rd_i,
    Tx_data_exists,
    AckDataState,
    Tx_fifo_data,
    EarlyAckHdr,
    EarlyAckDataState,
    Bb,
    Msms_rst_r,
    DynMsmsSet,
    DynRstaSet,
    Msms_rst,
    TxFifoRd,
    Txak,
    Cr_txModeSelect_set,
    Cr_txModeSelect_clr);
  input Clk;
  input Rst;
  input [0:1]Dynamic_MSMS;
  input [0:7]Cr;
  input Tx_fifo_rd_i;
  input Tx_data_exists;
  input AckDataState;
  input [0:7]Tx_fifo_data;
  input EarlyAckHdr;
  input EarlyAckDataState;
  input Bb;
  input Msms_rst_r;
  output DynMsmsSet;
  output DynRstaSet;
  output Msms_rst;
  output TxFifoRd;
  output Txak;
  output Cr_txModeSelect_set;
  output Cr_txModeSelect_clr;

  wire AckDataState;
  wire Bb;
  wire Clk;
  wire [0:7]Cr;
  wire Cr_txModeSelect_clr;
  wire Cr_txModeSelect_set;
  wire Cr_txModeSelect_set_i_1_n_0;
  wire DynMsmsSet;
  wire DynRstaSet;
  wire [0:1]Dynamic_MSMS;
  wire EarlyAckDataState;
  wire EarlyAckHdr;
  wire Msms_rst;
  wire Msms_rst_r;
  wire Rst;
  wire TxFifoRd;
  wire Tx_data_exists;
  wire [0:7]Tx_fifo_data;
  wire Tx_fifo_rd_i;
  wire Txak;
  wire Txak_INST_0_i_1_n_0;
  wire ackDataState_d1;
  wire callingReadAccess;
  wire earlyAckDataState_d1;
  wire firstDynStartSeen;
  wire firstDynStartSeen0;
  wire firstDynStartSeen_i_1_n_0;
  wire p_0_in;
  wire [7:0]p_0_in__0;
  wire p_3_in;
  wire \rdByteCntr[0]_i_1_n_0 ;
  wire \rdByteCntr[2]_i_2_n_0 ;
  wire [0:7]rdByteCntr_reg;
  wire rdCntrFrmTxFifo;
  wire rdCntrFrmTxFifo0;
  wire rxCntDone;
  wire rxCntDone0;

  FDRE Cr_txModeSelect_clr_reg
       (.C(Clk),
        .CE(1'b1),
        .D(callingReadAccess),
        .Q(Cr_txModeSelect_clr),
        .R(Cr_txModeSelect_set_i_1_n_0));
  LUT3 #(
    .INIT(8'hDF)) 
    Cr_txModeSelect_set_i_1
       (.I0(firstDynStartSeen),
        .I1(Rst),
        .I2(EarlyAckHdr),
        .O(Cr_txModeSelect_set_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT1 #(
    .INIT(2'h1)) 
    Cr_txModeSelect_set_i_2
       (.I0(callingReadAccess),
        .O(p_0_in));
  FDRE Cr_txModeSelect_set_reg
       (.C(Clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(Cr_txModeSelect_set),
        .R(Cr_txModeSelect_set_i_1_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    DynMsmsSet_INST_0
       (.I0(Cr[5]),
        .I1(Bb),
        .I2(Tx_data_exists),
        .I3(Dynamic_MSMS[1]),
        .O(DynMsmsSet));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    DynRstaSet_INST_0
       (.I0(Dynamic_MSMS[1]),
        .I1(firstDynStartSeen),
        .I2(Tx_data_exists),
        .I3(Tx_fifo_rd_i),
        .O(DynRstaSet));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    Msms_rst_INST_0
       (.I0(Msms_rst_r),
        .I1(rxCntDone),
        .I2(Dynamic_MSMS[0]),
        .I3(Tx_fifo_rd_i),
        .I4(Tx_data_exists),
        .O(Msms_rst));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'hE)) 
    TxFifoRd_INST_0
       (.I0(Tx_fifo_rd_i),
        .I1(rdCntrFrmTxFifo),
        .O(TxFifoRd));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    Txak_INST_0
       (.I0(rdByteCntr_reg[1]),
        .I1(Txak_INST_0_i_1_n_0),
        .I2(rdByteCntr_reg[0]),
        .I3(EarlyAckDataState),
        .I4(callingReadAccess),
        .I5(Cr[3]),
        .O(Txak));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    Txak_INST_0_i_1
       (.I0(rdByteCntr_reg[3]),
        .I1(rdByteCntr_reg[5]),
        .I2(rdByteCntr_reg[7]),
        .I3(rdByteCntr_reg[6]),
        .I4(rdByteCntr_reg[4]),
        .I5(rdByteCntr_reg[2]),
        .O(Txak_INST_0_i_1_n_0));
  FDRE ackDataState_d1_reg
       (.C(Clk),
        .CE(1'b1),
        .D(AckDataState),
        .Q(ackDataState_d1),
        .R(Rst));
  LUT3 #(
    .INIT(8'h80)) 
    callingReadAccess_i_1
       (.I0(Tx_data_exists),
        .I1(Tx_fifo_rd_i),
        .I2(Dynamic_MSMS[1]),
        .O(p_3_in));
  FDRE callingReadAccess_reg
       (.C(Clk),
        .CE(p_3_in),
        .D(Tx_fifo_data[7]),
        .Q(callingReadAccess),
        .R(Rst));
  FDRE earlyAckDataState_d1_reg
       (.C(Clk),
        .CE(1'b1),
        .D(EarlyAckDataState),
        .Q(earlyAckDataState_d1),
        .R(Rst));
  LUT2 #(
    .INIT(4'hB)) 
    firstDynStartSeen_i_1
       (.I0(Rst),
        .I1(Cr[5]),
        .O(firstDynStartSeen_i_1_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    firstDynStartSeen_i_2
       (.I0(firstDynStartSeen),
        .I1(Dynamic_MSMS[1]),
        .I2(Tx_data_exists),
        .I3(Tx_fifo_rd_i),
        .O(firstDynStartSeen0));
  FDRE firstDynStartSeen_reg
       (.C(Clk),
        .CE(firstDynStartSeen0),
        .D(1'b1),
        .Q(firstDynStartSeen),
        .R(firstDynStartSeen_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FE00)) 
    \rdByteCntr[0]_i_1 
       (.I0(rdByteCntr_reg[1]),
        .I1(Txak_INST_0_i_1_n_0),
        .I2(rdByteCntr_reg[0]),
        .I3(EarlyAckDataState),
        .I4(earlyAckDataState_d1),
        .I5(rdCntrFrmTxFifo),
        .O(\rdByteCntr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA900A9)) 
    \rdByteCntr[0]_i_2 
       (.I0(rdByteCntr_reg[0]),
        .I1(Txak_INST_0_i_1_n_0),
        .I2(rdByteCntr_reg[1]),
        .I3(rdCntrFrmTxFifo),
        .I4(Tx_fifo_data[0]),
        .O(p_0_in__0[7]));
  LUT4 #(
    .INIT(16'hF909)) 
    \rdByteCntr[1]_i_1 
       (.I0(rdByteCntr_reg[1]),
        .I1(Txak_INST_0_i_1_n_0),
        .I2(rdCntrFrmTxFifo),
        .I3(Tx_fifo_data[1]),
        .O(p_0_in__0[6]));
  LUT5 #(
    .INIT(32'hFFA900A9)) 
    \rdByteCntr[2]_i_1 
       (.I0(rdByteCntr_reg[2]),
        .I1(\rdByteCntr[2]_i_2_n_0 ),
        .I2(rdByteCntr_reg[3]),
        .I3(rdCntrFrmTxFifo),
        .I4(Tx_fifo_data[2]),
        .O(p_0_in__0[5]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rdByteCntr[2]_i_2 
       (.I0(rdByteCntr_reg[5]),
        .I1(rdByteCntr_reg[7]),
        .I2(rdByteCntr_reg[6]),
        .I3(rdByteCntr_reg[4]),
        .O(\rdByteCntr[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \rdByteCntr[3]_i_1 
       (.I0(rdByteCntr_reg[3]),
        .I1(\rdByteCntr[2]_i_2_n_0 ),
        .I2(rdCntrFrmTxFifo),
        .I3(Tx_fifo_data[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \rdByteCntr[4]_i_1 
       (.I0(rdByteCntr_reg[4]),
        .I1(rdByteCntr_reg[6]),
        .I2(rdByteCntr_reg[7]),
        .I3(rdByteCntr_reg[5]),
        .I4(rdCntrFrmTxFifo),
        .I5(Tx_fifo_data[4]),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'hFFA900A9)) 
    \rdByteCntr[5]_i_1 
       (.I0(rdByteCntr_reg[5]),
        .I1(rdByteCntr_reg[7]),
        .I2(rdByteCntr_reg[6]),
        .I3(rdCntrFrmTxFifo),
        .I4(Tx_fifo_data[5]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \rdByteCntr[6]_i_1 
       (.I0(rdByteCntr_reg[6]),
        .I1(rdByteCntr_reg[7]),
        .I2(rdCntrFrmTxFifo),
        .I3(Tx_fifo_data[6]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \rdByteCntr[7]_i_1 
       (.I0(Tx_fifo_data[7]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg[7]),
        .O(p_0_in__0[0]));
  FDRE \rdByteCntr_reg[0] 
       (.C(Clk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in__0[7]),
        .Q(rdByteCntr_reg[0]),
        .R(Rst));
  FDRE \rdByteCntr_reg[1] 
       (.C(Clk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in__0[6]),
        .Q(rdByteCntr_reg[1]),
        .R(Rst));
  FDRE \rdByteCntr_reg[2] 
       (.C(Clk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in__0[5]),
        .Q(rdByteCntr_reg[2]),
        .R(Rst));
  FDRE \rdByteCntr_reg[3] 
       (.C(Clk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(rdByteCntr_reg[3]),
        .R(Rst));
  FDRE \rdByteCntr_reg[4] 
       (.C(Clk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(rdByteCntr_reg[4]),
        .R(Rst));
  FDRE \rdByteCntr_reg[5] 
       (.C(Clk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(rdByteCntr_reg[5]),
        .R(Rst));
  FDRE \rdByteCntr_reg[6] 
       (.C(Clk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(rdByteCntr_reg[6]),
        .R(Rst));
  FDRE \rdByteCntr_reg[7] 
       (.C(Clk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(rdByteCntr_reg[7]),
        .R(Rst));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rdCntrFrmTxFifo_i_1
       (.I0(Tx_data_exists),
        .I1(EarlyAckHdr),
        .I2(callingReadAccess),
        .O(rdCntrFrmTxFifo0));
  FDRE rdCntrFrmTxFifo_reg
       (.C(Clk),
        .CE(1'b1),
        .D(rdCntrFrmTxFifo0),
        .Q(rdCntrFrmTxFifo),
        .R(Rst));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    rxCntDone_i_1
       (.I0(AckDataState),
        .I1(callingReadAccess),
        .I2(ackDataState_d1),
        .I3(rdByteCntr_reg[0]),
        .I4(Txak_INST_0_i_1_n_0),
        .I5(rdByteCntr_reg[1]),
        .O(rxCntDone0));
  FDRE rxCntDone_reg
       (.C(Clk),
        .CE(1'b1),
        .D(rxCntDone0),
        .Q(rxCntDone),
        .R(Rst));
endmodule

(* SCL_INERTIAL_DELAY = "0" *) (* SDA_INERTIAL_DELAY = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module kf_bd_axi_iic_0_0_filter
   (Sysclk,
    Rst,
    Scl_noisy,
    Scl_clean,
    Sda_noisy,
    Sda_clean);
  input Sysclk;
  input Rst;
  input Scl_noisy;
  output Scl_clean;
  input Sda_noisy;
  output Sda_clean;

  wire Scl_clean;
  wire Scl_noisy;
  wire Sda_clean;
  wire Sda_noisy;
  wire Sysclk;
  wire NLW_SCL_DEBOUNCE_Unstable_n_UNCONNECTED;
  wire NLW_SDA_DEBOUNCE_Unstable_n_UNCONNECTED;

  (* C_DEFAULT = "1'b1" *) 
  (* C_INERTIAL_DELAY = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  kf_bd_axi_iic_0_0_debounce__1 SCL_DEBOUNCE
       (.Clean(Scl_clean),
        .Noisy(Scl_noisy),
        .Rst(1'b0),
        .Stable(1'b1),
        .Sysclk(Sysclk),
        .Unstable_n(NLW_SCL_DEBOUNCE_Unstable_n_UNCONNECTED));
  (* C_DEFAULT = "1'b1" *) 
  (* C_INERTIAL_DELAY = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  kf_bd_axi_iic_0_0_debounce SDA_DEBOUNCE
       (.Clean(Sda_clean),
        .Noisy(Sda_noisy),
        .Rst(1'b0),
        .Stable(1'b0),
        .Sysclk(Sysclk),
        .Unstable_n(NLW_SDA_DEBOUNCE_Unstable_n_UNCONNECTED));
endmodule

(* C_DEFAULT_VALUE = "8'b00000000" *) (* C_DISABLE_SETUP_VIOLATION_CHECK = "0" *) (* C_FAMILY = "zynq" *) 
(* C_GPO_WIDTH = "1" *) (* C_IIC_FREQ = "400000" *) (* C_NUM_IIC_REGS = "18" *) 
(* C_RC_FIFO_EXIST = "TRUE" *) (* C_SCL_INERTIAL_DELAY = "0" *) (* C_SDA_INERTIAL_DELAY = "0" *) 
(* C_SDA_LEVEL = "1" *) (* C_SMBUS_PMBUS_HOST = "0" *) (* C_STATIC_TIMING_REG_WIDTH = "0" *) 
(* C_S_AXI_ACLK_FREQ_HZ = "50000000" *) (* C_S_AXI_ADDR_WIDTH = "9" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* C_TEN_BIT_ADR = "0" *) (* C_TIMING_REG_WIDTH = "32" *) (* C_TX_FIFO_EXIST = "TRUE" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module kf_bd_axi_iic_0_0_iic
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    IIC2INTC_Irpt,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    Sda_I,
    Sda_O,
    Sda_T,
    Scl_I,
    Scl_O,
    Scl_T,
    Gpo);
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  output IIC2INTC_Irpt;
  input [8:0]S_AXI_AWADDR;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [8:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
  input Sda_I;
  output Sda_O;
  output Sda_T;
  input Scl_I;
  output Scl_O;
  output Scl_T;
  output [0:0]Gpo;

  wire \<const0> ;
  wire Aas;
  wire Abgc;
  wire [0:6]Adr;
  wire Al;
  wire Bb;
  wire [1:8]Bus2IIC_Addr;
  wire [0:17]Bus2IIC_RdCE;
  wire Bus2IIC_Reset;
  wire [0:17]Bus2IIC_WrCE;
  wire [1:7]Cr;
  wire [0:7]Data_i2c;
  wire Dtre;
  wire [0:0]Gpo;
  wire [24:31]IIC2Bus_Data;
  wire [0:7]IIC2Bus_IntrEvent;
  wire IIC2INTC_Irpt;
  wire Msms_rst;
  wire Msms_rst_r;
  wire Msms_set;
  wire New_rcv_dta;
  wire Rc_Data_Exists;
  wire [0:3]Rc_addr;
  wire [0:7]Rc_fifo_data;
  wire Rc_fifo_full;
  wire Rc_fifo_rd;
  wire Rc_fifo_rd_d;
  wire Rc_fifo_rd_i;
  wire Rc_fifo_wr;
  wire Rc_fifo_wr_d;
  wire Rc_fifo_wr_i;
  wire Rdy_new_xmt;
  wire Ro_prev;
  wire Rsta_rst;
  wire S_AXI_ACLK;
  wire [8:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [8:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [1:1]\^S_AXI_BRESP ;
  wire S_AXI_BVALID;
  wire [31:0]\^S_AXI_RDATA ;
  wire S_AXI_RREADY;
  wire [1:1]\^S_AXI_RRESP ;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WVALID;
  wire Scl_I;
  wire Scl_T;
  wire Sda_I;
  wire Sda_T;
  wire Srw;
  wire [7:0]Timing_param_tbuf;
  wire [7:0]Timing_param_thddat;
  wire [7:0]Timing_param_thdsta;
  wire [7:0]Timing_param_thigh;
  wire [7:0]Timing_param_tlow;
  wire [7:0]Timing_param_tsudat;
  wire [7:0]Timing_param_tsusta;
  wire [7:0]Timing_param_tsusto;
  wire [3:0]Tx_addr_0;
  wire Tx_data_exists;
  wire Tx_data_exists0;
  wire Tx_data_exists_sgl;
  wire [7:0]Tx_fifo_data_0;
  wire Tx_fifo_full;
  wire Tx_fifo_rd;
  wire Tx_fifo_rd_d;
  wire Tx_fifo_rd_i;
  wire Tx_fifo_rst;
  wire Tx_fifo_wr;
  wire Tx_fifo_wr_d;
  wire Tx_fifo_wr_i;
  wire Tx_under_prev;
  wire Txer;
  wire ackDataState;
  wire cr_txModeSelect_clr;
  wire cr_txModeSelect_set;
  wire [0:1]ctrlFifoDin;
  wire ctrl_fifo_wr_i;
  wire dynMsmsSet;
  wire dynRstaSet;
  wire [0:1]dynamic_MSMS;
  wire earlyAckDataState;
  wire earlyAckHdr;
  wire scl_clean;
  wire sda_clean;
  wire txFifoRd;
  wire txak;
  wire NLW_IIC_CONTROL_I_Dtc_UNCONNECTED;
  wire NLW_IIC_CONTROL_I_Scl_O_UNCONNECTED;
  wire NLW_IIC_CONTROL_I_Sda_O_UNCONNECTED;
  wire NLW_IIC_CONTROL_I_reg_empty_UNCONNECTED;
  wire [7:7]NLW_REG_INTERFACE_I_Adr_UNCONNECTED;
  wire [0:6]NLW_REG_INTERFACE_I_Cr_UNCONNECTED;
  wire [0:7]NLW_REG_INTERFACE_I_Drr_UNCONNECTED;
  wire [0:7]NLW_REG_INTERFACE_I_Dtr_UNCONNECTED;
  wire [0:23]NLW_REG_INTERFACE_I_IIC2Bus_Data_UNCONNECTED;
  wire [5:7]NLW_REG_INTERFACE_I_Ten_adr_UNCONNECTED;
  wire NLW_WRITE_FIFO_CTRL_I_Data_Exists_UNCONNECTED;
  wire NLW_WRITE_FIFO_CTRL_I_FIFO_Full_UNCONNECTED;
  wire [0:3]NLW_WRITE_FIFO_CTRL_I_Addr_UNCONNECTED;
  wire NLW_X_AXI_IPIF_SSP1_Bus2IIC_Clk_UNCONNECTED;
  wire NLW_X_AXI_IPIF_SSP1_Bus2IIC_RNW_UNCONNECTED;
  wire NLW_X_AXI_IPIF_SSP1_S_AXI_WREADY_UNCONNECTED;
  wire [0:0]NLW_X_AXI_IPIF_SSP1_Bus2IIC_Addr_UNCONNECTED;
  wire [0:31]NLW_X_AXI_IPIF_SSP1_Bus2IIC_Data_UNCONNECTED;
  wire [1:7]NLW_X_AXI_IPIF_SSP1_Bus2IIC_WrCE_UNCONNECTED;
  wire [0:0]NLW_X_AXI_IPIF_SSP1_S_AXI_BRESP_UNCONNECTED;
  wire [30:8]NLW_X_AXI_IPIF_SSP1_S_AXI_RDATA_UNCONNECTED;
  wire [0:0]NLW_X_AXI_IPIF_SSP1_S_AXI_RRESP_UNCONNECTED;

  assign S_AXI_BRESP[1] = \^S_AXI_BRESP [1];
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \^S_AXI_RDATA [31];
  assign S_AXI_RDATA[30] = \<const0> ;
  assign S_AXI_RDATA[29] = \<const0> ;
  assign S_AXI_RDATA[28] = \<const0> ;
  assign S_AXI_RDATA[27] = \<const0> ;
  assign S_AXI_RDATA[26] = \<const0> ;
  assign S_AXI_RDATA[25] = \<const0> ;
  assign S_AXI_RDATA[24] = \<const0> ;
  assign S_AXI_RDATA[23] = \<const0> ;
  assign S_AXI_RDATA[22] = \<const0> ;
  assign S_AXI_RDATA[21] = \<const0> ;
  assign S_AXI_RDATA[20] = \<const0> ;
  assign S_AXI_RDATA[19] = \<const0> ;
  assign S_AXI_RDATA[18] = \<const0> ;
  assign S_AXI_RDATA[17] = \<const0> ;
  assign S_AXI_RDATA[16] = \<const0> ;
  assign S_AXI_RDATA[15] = \<const0> ;
  assign S_AXI_RDATA[14] = \<const0> ;
  assign S_AXI_RDATA[13] = \<const0> ;
  assign S_AXI_RDATA[12] = \<const0> ;
  assign S_AXI_RDATA[11] = \<const0> ;
  assign S_AXI_RDATA[10] = \<const0> ;
  assign S_AXI_RDATA[9] = \<const0> ;
  assign S_AXI_RDATA[8] = \<const0> ;
  assign S_AXI_RDATA[7:0] = \^S_AXI_RDATA [7:0];
  assign S_AXI_RRESP[1] = \^S_AXI_RRESP [1];
  assign S_AXI_RRESP[0] = \<const0> ;
  assign S_AXI_WREADY = \<const0> ;
  assign Scl_O = \<const0> ;
  assign Sda_O = \<const0> ;
  (* downgradeipidentifiedwarnings = "yes" *) 
  kf_bd_axi_iic_0_0_dynamic_master DYN_MASTER_I
       (.AckDataState(ackDataState),
        .Bb(Bb),
        .Clk(S_AXI_ACLK),
        .Cr({1'b0,1'b0,1'b0,Cr[3],1'b0,Cr[5],1'b0,1'b0}),
        .Cr_txModeSelect_clr(cr_txModeSelect_clr),
        .Cr_txModeSelect_set(cr_txModeSelect_set),
        .DynMsmsSet(dynMsmsSet),
        .DynRstaSet(dynRstaSet),
        .Dynamic_MSMS(dynamic_MSMS),
        .EarlyAckDataState(earlyAckDataState),
        .EarlyAckHdr(earlyAckHdr),
        .Msms_rst(Msms_rst),
        .Msms_rst_r(Msms_rst_r),
        .Rst(Tx_fifo_rst),
        .TxFifoRd(txFifoRd),
        .Tx_data_exists(Tx_data_exists),
        .Tx_fifo_data({Tx_fifo_data_0[7],Tx_fifo_data_0[6],Tx_fifo_data_0[5],Tx_fifo_data_0[4],Tx_fifo_data_0[3],Tx_fifo_data_0[2],Tx_fifo_data_0[1],Tx_fifo_data_0[0]}),
        .Tx_fifo_rd_i(Tx_fifo_rd_i),
        .Txak(txak));
  LUT2 #(
    .INIT(4'h2)) 
    DYN_MASTER_I_i_1
       (.I0(Tx_fifo_rd),
        .I1(Tx_fifo_rd_d),
        .O(Tx_fifo_rd_i));
  (* SCL_INERTIAL_DELAY = "0" *) 
  (* SDA_INERTIAL_DELAY = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  kf_bd_axi_iic_0_0_filter FILTER_I
       (.Rst(1'b0),
        .Scl_clean(scl_clean),
        .Scl_noisy(Scl_I),
        .Sda_clean(sda_clean),
        .Sda_noisy(Sda_I),
        .Sysclk(S_AXI_ACLK));
  GND GND
       (.G(\<const0> ));
  (* C_DISABLE_SETUP_VIOLATION_CHECK = "0" *) 
  (* C_IIC_FREQ = "400000" *) 
  (* C_SCL_INERTIAL_DELAY = "0" *) 
  (* C_SDA_LEVEL = "1" *) 
  (* C_SIZE = "8" *) 
  (* C_SMBUS_PMBUS_HOST = "0" *) 
  (* C_S_AXI_ACLK_FREQ_HZ = "50000000" *) 
  (* C_TEN_BIT_ADR = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  kf_bd_axi_iic_0_0_iic_control IIC_CONTROL_I
       (.Aas(Aas),
        .Abgc(Abgc),
        .AckDataState(ackDataState),
        .Adr({Adr[0],Adr[1],Adr[2],Adr[3],Adr[4],Adr[5],Adr[6],1'b0}),
        .Al(Al),
        .Bb(Bb),
        .Data_i2c({Data_i2c[0],Data_i2c[1],Data_i2c[2],Data_i2c[3],Data_i2c[4],Data_i2c[5],Data_i2c[6],Data_i2c[7]}),
        .Dtc(NLW_IIC_CONTROL_I_Dtc_UNCONNECTED),
        .Dtr(Tx_fifo_data_0),
        .Dtre(Dtre),
        .EarlyAckDataState(earlyAckDataState),
        .EarlyAckHdr(earlyAckHdr),
        .Gc_en(Cr[1]),
        .Msms(Cr[5]),
        .Msms_rst(Msms_rst_r),
        .Msms_set(Msms_set),
        .New_rcv_dta(New_rcv_dta),
        .Rdy_new_xmt(Rdy_new_xmt),
        .Reset(Cr[7]),
        .Ro_prev(Ro_prev),
        .Rsta(Cr[2]),
        .Rsta_rst(Rsta_rst),
        .Scl_I(scl_clean),
        .Scl_O(NLW_IIC_CONTROL_I_Scl_O_UNCONNECTED),
        .Scl_T(Scl_T),
        .Sda_I(sda_clean),
        .Sda_O(NLW_IIC_CONTROL_I_Sda_O_UNCONNECTED),
        .Sda_T(Sda_T),
        .Srw(Srw),
        .Sys_clk(S_AXI_ACLK),
        .Ten_adr({1'b0,1'b0,1'b0}),
        .Timing_param_tbuf(Timing_param_tbuf),
        .Timing_param_thddat(Timing_param_thddat),
        .Timing_param_thdsta(Timing_param_thdsta),
        .Timing_param_thigh(Timing_param_thigh),
        .Timing_param_tlow(Timing_param_tlow),
        .Timing_param_tsudat(Timing_param_tsudat),
        .Timing_param_tsusta(Timing_param_tsusta),
        .Timing_param_tsusto(Timing_param_tsusto),
        .Tx(Cr[4]),
        .Tx_under_prev(Tx_under_prev),
        .Txak(txak),
        .Txer(Txer),
        .reg_empty(NLW_IIC_CONTROL_I_reg_empty_UNCONNECTED));
  (* C_DATA_BITS = "8" *) 
  (* C_DEPTH = "4" *) 
  (* C_XON = "FALSE" *) 
  kf_bd_axi_iic_0_0_SRL_FIFO READ_FIFO_I
       (.Addr(Rc_addr),
        .Clk(S_AXI_ACLK),
        .Data_Exists(Rc_Data_Exists),
        .Data_In(Data_i2c),
        .Data_Out(Rc_fifo_data),
        .FIFO_Full(Rc_fifo_full),
        .FIFO_Read(Rc_fifo_rd_i),
        .FIFO_Write(Rc_fifo_wr_i),
        .Reset(Bus2IIC_Reset));
  LUT2 #(
    .INIT(4'h2)) 
    READ_FIFO_I_i_1
       (.I0(Rc_fifo_wr),
        .I1(Rc_fifo_wr_d),
        .O(Rc_fifo_wr_i));
  LUT2 #(
    .INIT(4'h2)) 
    READ_FIFO_I_i_2
       (.I0(Rc_fifo_rd),
        .I1(Rc_fifo_rd_d),
        .O(Rc_fifo_rd_i));
  (* C_DEFAULT_VALUE = "8'b00000000" *) 
  (* C_GPO_WIDTH = "1" *) 
  (* C_IIC_FREQ = "400000" *) 
  (* C_NUM_IIC_REGS = "18" *) 
  (* C_RC_FIFO_BITS = "4" *) 
  (* C_RC_FIFO_EXIST = "TRUE" *) 
  (* C_SCL_INERTIAL_DELAY = "0" *) 
  (* C_SIZE = "8" *) 
  (* C_SMBUS_PMBUS_HOST = "0" *) 
  (* C_S_AXI_ACLK_FREQ_HZ = "50000000" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TEN_BIT_ADR = "0" *) 
  (* C_TX_FIFO_BITS = "4" *) 
  (* C_TX_FIFO_EXIST = "TRUE" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  kf_bd_axi_iic_0_0_reg_interface REG_INTERFACE_I
       (.Aas(Aas),
        .Abgc(Abgc),
        .Adr({Adr,NLW_REG_INTERFACE_I_Adr_UNCONNECTED[7]}),
        .Al(Al),
        .Bb(Bb),
        .Bus2IIC_Addr({1'b0,Bus2IIC_Addr}),
        .Bus2IIC_Data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_WDATA[7],S_AXI_WDATA[6],S_AXI_WDATA[5],S_AXI_WDATA[4],S_AXI_WDATA[3],S_AXI_WDATA[2],S_AXI_WDATA[1],S_AXI_WDATA[0]}),
        .Bus2IIC_RdCE(Bus2IIC_RdCE),
        .Bus2IIC_WrCE({Bus2IIC_WrCE[0],1'b0,Bus2IIC_WrCE[2],1'b0,Bus2IIC_WrCE[4],1'b0,1'b0,1'b0,Bus2IIC_WrCE[8:17]}),
        .Clk(S_AXI_ACLK),
        .Cr({NLW_REG_INTERFACE_I_Cr_UNCONNECTED[0],Cr}),
        .Cr_txModeSelect_clr(cr_txModeSelect_clr),
        .Cr_txModeSelect_set(cr_txModeSelect_set),
        .Data_i2c({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Drr(NLW_REG_INTERFACE_I_Drr_UNCONNECTED[0:7]),
        .Dtr(NLW_REG_INTERFACE_I_Dtr_UNCONNECTED[0:7]),
        .Dtre(Dtre),
        .DynMsmsSet(dynMsmsSet),
        .DynRstaSet(dynRstaSet),
        .Gpo(Gpo),
        .IIC2Bus_Data({NLW_REG_INTERFACE_I_IIC2Bus_Data_UNCONNECTED[0:23],IIC2Bus_Data}),
        .IIC2Bus_IntrEvent(IIC2Bus_IntrEvent),
        .Msms_rst(Msms_rst),
        .Msms_set(Msms_set),
        .New_rcv_dta(New_rcv_dta),
        .Rc_addr(Rc_addr),
        .Rc_data_Exists(Rc_Data_Exists),
        .Rc_fifo_Full(Rc_fifo_full),
        .Rc_fifo_data(Rc_fifo_data),
        .Rc_fifo_rd(Rc_fifo_rd),
        .Rc_fifo_wr(Rc_fifo_wr),
        .Rdy_new_xmt(Rdy_new_xmt),
        .Ro_prev(Ro_prev),
        .Rst(Bus2IIC_Reset),
        .Rsta_rst(Rsta_rst),
        .Srw(Srw),
        .Ten_adr(NLW_REG_INTERFACE_I_Ten_adr_UNCONNECTED[5:7]),
        .Timing_param_tbuf(Timing_param_tbuf),
        .Timing_param_thddat(Timing_param_thddat),
        .Timing_param_thdsta(Timing_param_thdsta),
        .Timing_param_thigh(Timing_param_thigh),
        .Timing_param_tlow(Timing_param_tlow),
        .Timing_param_tsudat(Timing_param_tsudat),
        .Timing_param_tsusta(Timing_param_tsusta),
        .Timing_param_tsusto(Timing_param_tsusto),
        .Tx_addr({Tx_addr_0[3],Tx_addr_0[2],Tx_addr_0[1],Tx_addr_0[0]}),
        .Tx_data_exists(Tx_data_exists),
        .Tx_fifo_Full(Tx_fifo_full),
        .Tx_fifo_data({Tx_fifo_data_0[7],Tx_fifo_data_0[6],Tx_fifo_data_0[5],Tx_fifo_data_0[4],Tx_fifo_data_0[3],Tx_fifo_data_0[2],Tx_fifo_data_0[1],Tx_fifo_data_0[0]}),
        .Tx_fifo_rd(Tx_fifo_rd),
        .Tx_fifo_rst(Tx_fifo_rst),
        .Tx_fifo_wr(Tx_fifo_wr),
        .Tx_under_prev(Tx_under_prev),
        .Txer(Txer),
        .reg_empty(1'b0));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    REG_INTERFACE_I_i_1
       (.I0(Tx_data_exists0),
        .I1(Tx_fifo_data_0[0]),
        .I2(dynamic_MSMS[0]),
        .I3(dynamic_MSMS[1]),
        .I4(Tx_data_exists_sgl),
        .O(Tx_data_exists));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    REG_INTERFACE_I_i_2
       (.I0(Tx_addr_0[1]),
        .I1(Tx_addr_0[2]),
        .I2(Tx_addr_0[3]),
        .I3(Tx_addr_0[0]),
        .I4(Tx_data_exists_sgl),
        .O(Tx_data_exists0));
  FDRE Rc_fifo_rd_d_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Rc_fifo_rd),
        .Q(Rc_fifo_rd_d),
        .R(Bus2IIC_Reset));
  FDRE Rc_fifo_wr_d_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Rc_fifo_wr),
        .Q(Rc_fifo_wr_d),
        .R(Bus2IIC_Reset));
  FDRE Tx_fifo_rd_d_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Tx_fifo_rd),
        .Q(Tx_fifo_rd_d),
        .R(Bus2IIC_Reset));
  FDRE Tx_fifo_wr_d_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Tx_fifo_wr),
        .Q(Tx_fifo_wr_d),
        .R(Bus2IIC_Reset));
  (* C_DATA_BITS = "2" *) 
  (* C_DEPTH = "4" *) 
  (* C_XON = "FALSE" *) 
  kf_bd_axi_iic_0_0_SRL_FIFO__parameterized0 WRITE_FIFO_CTRL_I
       (.Addr(NLW_WRITE_FIFO_CTRL_I_Addr_UNCONNECTED[0:3]),
        .Clk(S_AXI_ACLK),
        .Data_Exists(NLW_WRITE_FIFO_CTRL_I_Data_Exists_UNCONNECTED),
        .Data_In(ctrlFifoDin),
        .Data_Out(dynamic_MSMS),
        .FIFO_Full(NLW_WRITE_FIFO_CTRL_I_FIFO_Full_UNCONNECTED),
        .FIFO_Read(txFifoRd),
        .FIFO_Write(ctrl_fifo_wr_i),
        .Reset(Tx_fifo_rst));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hFFF2)) 
    WRITE_FIFO_CTRL_I_i_1
       (.I0(Tx_fifo_wr),
        .I1(Tx_fifo_wr_d),
        .I2(Tx_fifo_rst),
        .I3(Bus2IIC_Reset),
        .O(ctrl_fifo_wr_i));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h10)) 
    WRITE_FIFO_CTRL_I_i_2
       (.I0(Bus2IIC_Reset),
        .I1(Tx_fifo_rst),
        .I2(S_AXI_WDATA[9]),
        .O(ctrlFifoDin[0]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h10)) 
    WRITE_FIFO_CTRL_I_i_3
       (.I0(Bus2IIC_Reset),
        .I1(Tx_fifo_rst),
        .I2(S_AXI_WDATA[8]),
        .O(ctrlFifoDin[1]));
  (* C_DATA_BITS = "8" *) 
  (* C_DEPTH = "4" *) 
  (* C_XON = "FALSE" *) 
  kf_bd_axi_iic_0_0_SRL_FIFO__1 WRITE_FIFO_I
       (.Addr({Tx_addr_0[3],Tx_addr_0[2],Tx_addr_0[1],Tx_addr_0[0]}),
        .Clk(S_AXI_ACLK),
        .Data_Exists(Tx_data_exists_sgl),
        .Data_In({S_AXI_WDATA[7],S_AXI_WDATA[6],S_AXI_WDATA[5],S_AXI_WDATA[4],S_AXI_WDATA[3],S_AXI_WDATA[2],S_AXI_WDATA[1],S_AXI_WDATA[0]}),
        .Data_Out({Tx_fifo_data_0[7],Tx_fifo_data_0[6],Tx_fifo_data_0[5],Tx_fifo_data_0[4],Tx_fifo_data_0[3],Tx_fifo_data_0[2],Tx_fifo_data_0[1],Tx_fifo_data_0[0]}),
        .FIFO_Full(Tx_fifo_full),
        .FIFO_Read(txFifoRd),
        .FIFO_Write(Tx_fifo_wr_i),
        .Reset(Tx_fifo_rst));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    WRITE_FIFO_I_i_1
       (.I0(Tx_fifo_wr),
        .I1(Tx_fifo_wr_d),
        .O(Tx_fifo_wr_i));
  (* C_FAMILY = "zynq" *) 
  (* C_NUM_IIC_REGS = "18" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  kf_bd_axi_iic_0_0_axi_ipif_ssp1 X_AXI_IPIF_SSP1
       (.Bus2IIC_Addr({NLW_X_AXI_IPIF_SSP1_Bus2IIC_Addr_UNCONNECTED[0],Bus2IIC_Addr}),
        .Bus2IIC_Clk(NLW_X_AXI_IPIF_SSP1_Bus2IIC_Clk_UNCONNECTED),
        .Bus2IIC_Data(NLW_X_AXI_IPIF_SSP1_Bus2IIC_Data_UNCONNECTED[0:31]),
        .Bus2IIC_RNW(NLW_X_AXI_IPIF_SSP1_Bus2IIC_RNW_UNCONNECTED),
        .Bus2IIC_RdCE(Bus2IIC_RdCE),
        .Bus2IIC_Reset(Bus2IIC_Reset),
        .Bus2IIC_WrCE(Bus2IIC_WrCE),
        .IIC2Bus_Data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,IIC2Bus_Data}),
        .IIC2Bus_IntrEvent(IIC2Bus_IntrEvent),
        .IIC2INTC_Irpt(IIC2INTC_Irpt),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BRESP({\^S_AXI_BRESP ,NLW_X_AXI_IPIF_SSP1_S_AXI_BRESP_UNCONNECTED[0]}),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(\^S_AXI_RDATA ),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RRESP({\^S_AXI_RRESP ,NLW_X_AXI_IPIF_SSP1_S_AXI_RRESP_UNCONNECTED[0]}),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA({S_AXI_WDATA[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_WDATA[7:0]}),
        .S_AXI_WREADY(NLW_X_AXI_IPIF_SSP1_S_AXI_WREADY_UNCONNECTED),
        .S_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_WVALID(S_AXI_WVALID));
endmodule

(* C_DISABLE_SETUP_VIOLATION_CHECK = "0" *) (* C_IIC_FREQ = "400000" *) (* C_SCL_INERTIAL_DELAY = "0" *) 
(* C_SDA_LEVEL = "1" *) (* C_SIZE = "8" *) (* C_SMBUS_PMBUS_HOST = "0" *) 
(* C_S_AXI_ACLK_FREQ_HZ = "50000000" *) (* C_TEN_BIT_ADR = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module kf_bd_axi_iic_0_0_iic_control
   (Sys_clk,
    Reset,
    Sda_I,
    Sda_O,
    Sda_T,
    Scl_I,
    Scl_O,
    Scl_T,
    Timing_param_tsusta,
    Timing_param_tsusto,
    Timing_param_thdsta,
    Timing_param_tsudat,
    Timing_param_tbuf,
    Timing_param_thigh,
    Timing_param_tlow,
    Timing_param_thddat,
    Txak,
    Gc_en,
    Ro_prev,
    Dtre,
    Msms,
    Msms_rst,
    Msms_set,
    Rsta,
    Rsta_rst,
    Tx,
    Dtr,
    Adr,
    Ten_adr,
    Bb,
    Dtc,
    Aas,
    Al,
    Srw,
    Txer,
    Abgc,
    Data_i2c,
    New_rcv_dta,
    Rdy_new_xmt,
    Tx_under_prev,
    EarlyAckHdr,
    EarlyAckDataState,
    AckDataState,
    reg_empty);
  input Sys_clk;
  input Reset;
  input Sda_I;
  output Sda_O;
  output Sda_T;
  input Scl_I;
  output Scl_O;
  output Scl_T;
  input [7:0]Timing_param_tsusta;
  input [7:0]Timing_param_tsusto;
  input [7:0]Timing_param_thdsta;
  input [7:0]Timing_param_tsudat;
  input [7:0]Timing_param_tbuf;
  input [7:0]Timing_param_thigh;
  input [7:0]Timing_param_tlow;
  input [7:0]Timing_param_thddat;
  input Txak;
  input Gc_en;
  input Ro_prev;
  input Dtre;
  input Msms;
  output Msms_rst;
  input Msms_set;
  input Rsta;
  output Rsta_rst;
  input Tx;
  input [7:0]Dtr;
  input [7:0]Adr;
  input [7:5]Ten_adr;
  output Bb;
  output Dtc;
  output Aas;
  output Al;
  output Srw;
  output Txer;
  output Abgc;
  output [7:0]Data_i2c;
  output New_rcv_dta;
  output Rdy_new_xmt;
  output Tx_under_prev;
  output EarlyAckHdr;
  output EarlyAckDataState;
  output AckDataState;
  output reg_empty;

  wire \<const0> ;
  wire Aas;
  wire Abgc;
  wire AckDataState;
  wire [7:0]Adr;
  wire Al;
  wire Bb;
  wire CLKCNT_i_10_n_0;
  wire CLKCNT_i_11_n_0;
  wire CLKCNT_i_12_n_0;
  wire CLKCNT_i_13_n_0;
  wire CLKCNT_i_14_n_0;
  wire CLKCNT_i_15_n_0;
  wire CLKCNT_i_15_n_1;
  wire CLKCNT_i_15_n_2;
  wire CLKCNT_i_15_n_3;
  wire CLKCNT_i_16_n_0;
  wire CLKCNT_i_17_n_0;
  wire CLKCNT_i_18_n_0;
  wire CLKCNT_i_19_n_0;
  wire CLKCNT_i_20_n_0;
  wire CLKCNT_i_21_n_0;
  wire CLKCNT_i_22_n_0;
  wire CLKCNT_i_23_n_0;
  wire CLKCNT_i_24_n_0;
  wire CLKCNT_i_25_n_0;
  wire CLKCNT_i_26_n_0;
  wire CLKCNT_i_27_n_0;
  wire CLKCNT_i_3_n_0;
  wire CLKCNT_i_4_n_0;
  wire CLKCNT_i_5_n_0;
  wire CLKCNT_i_6_n_0;
  wire CLKCNT_i_7_n_0;
  wire CLKCNT_i_8_n_0;
  wire CLKCNT_i_9_n_0;
  wire [7:0]Data_i2c;
  wire [7:0]Dtr;
  wire Dtre;
  wire EarlyAckDataState;
  wire EarlyAckDataState0;
  wire EarlyAckDataState_i_2_n_0;
  wire EarlyAckHdr;
  wire EarlyAckHdr0;
  wire \FSM_onehot_scl_state[0]_i_1_n_0 ;
  wire \FSM_onehot_scl_state[1]_i_1_n_0 ;
  wire \FSM_onehot_scl_state[2]_i_1_n_0 ;
  wire \FSM_onehot_scl_state[2]_i_2_n_0 ;
  wire \FSM_onehot_scl_state[2]_i_3_n_0 ;
  wire \FSM_onehot_scl_state[2]_i_4_n_0 ;
  wire \FSM_onehot_scl_state[2]_i_5_n_0 ;
  wire \FSM_onehot_scl_state[3]_i_1_n_0 ;
  wire \FSM_onehot_scl_state[4]_i_1_n_0 ;
  wire \FSM_onehot_scl_state[4]_i_2_n_0 ;
  wire \FSM_onehot_scl_state[4]_i_3_n_0 ;
  wire \FSM_onehot_scl_state[4]_i_4_n_0 ;
  wire \FSM_onehot_scl_state[5]_i_1_n_0 ;
  wire \FSM_onehot_scl_state[6]_i_1_n_0 ;
  wire \FSM_onehot_scl_state[6]_i_2_n_0 ;
  wire \FSM_onehot_scl_state[6]_i_3_n_0 ;
  wire \FSM_onehot_scl_state[6]_i_4_n_0 ;
  wire \FSM_onehot_scl_state[7]_i_1_n_0 ;
  wire \FSM_onehot_scl_state[8]_i_1_n_0 ;
  wire \FSM_onehot_scl_state[9]_i_1_n_0 ;
  wire \FSM_onehot_scl_state[9]_i_2_n_0 ;
  wire \FSM_onehot_scl_state[9]_i_3_n_0 ;
  wire \FSM_onehot_scl_state[9]_i_4_n_0 ;
  wire \FSM_onehot_scl_state[9]_i_5_n_0 ;
  wire \FSM_onehot_scl_state[9]_i_6_n_0 ;
  wire \FSM_onehot_scl_state[9]_i_7_n_0 ;
  wire \FSM_onehot_scl_state[9]_i_8_n_0 ;
  wire \FSM_onehot_scl_state[9]_i_9_n_0 ;
  wire \FSM_onehot_scl_state_reg_n_0_[0] ;
  wire \FSM_onehot_scl_state_reg_n_0_[1] ;
  wire \FSM_onehot_scl_state_reg_n_0_[3] ;
  wire \FSM_onehot_scl_state_reg_n_0_[4] ;
  wire \FSM_onehot_scl_state_reg_n_0_[5] ;
  wire \FSM_onehot_scl_state_reg_n_0_[6] ;
  wire \FSM_onehot_scl_state_reg_n_0_[7] ;
  wire \FSM_onehot_scl_state_reg_n_0_[8] ;
  wire \FSM_onehot_scl_state_reg_n_0_[9] ;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state[2]_i_4_n_0 ;
  wire \FSM_onehot_state[2]_i_5_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_3_n_0 ;
  wire \FSM_onehot_state[3]_i_4_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state[4]_i_3_n_0 ;
  wire \FSM_onehot_state[4]_i_4_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_2_n_0 ;
  wire \FSM_onehot_state[6]_i_3_n_0 ;
  wire \FSM_onehot_state[6]_i_4_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire Gc_en;
  wire \LEVEL_1_GEN.master_sda_i_1_n_0 ;
  wire \LEVEL_1_GEN.master_sda_reg_n_0 ;
  wire Msms;
  wire Msms_rst;
  wire Msms_set;
  wire New_rcv_dta;
  wire Rdy_new_xmt;
  wire Reset;
  wire Ro_prev;
  wire Rsta;
  wire Rsta_rst;
  wire SETUP_CNT_i_2_n_0;
  wire Scl_I;
  (* RTL_KEEP = "yes" *) wire Scl_T;
  wire Sda_I;
  (* RTL_KEEP = "yes" *) wire Sda_T;
  wire Srw;
  wire Sys_clk;
  wire [7:0]Timing_param_tbuf;
  wire [7:0]Timing_param_thddat;
  wire [7:0]Timing_param_thdsta;
  wire [7:0]Timing_param_thigh;
  wire [7:0]Timing_param_tlow;
  wire [7:0]Timing_param_tsudat;
  wire [7:0]Timing_param_tsusta;
  wire [7:0]Timing_param_tsusto;
  wire Tx;
  wire Tx_under_prev;
  wire Txak;
  wire Txer;
  wire aas_i_i_1_n_0;
  wire aas_i_i_2_n_0;
  wire aas_i_i_3_n_0;
  wire aas_i_i_4_n_0;
  wire aas_i_i_5_n_0;
  wire abgc_i_i_1_n_0;
  wire abgc_i_i_2_n_0;
  wire abgc_i_i_3_n_0;
  wire al_i_i_1_n_0;
  wire al_i_i_2_n_0;
  wire al_i_i_3_n_0;
  wire al_prevent;
  wire al_prevent0;
  wire al_prevent_i_1_n_0;
  wire arb_lost;
  wire arb_lost034_out;
  wire arb_lost_i_1_n_0;
  wire arb_lost_i_2_n_0;
  wire [3:0]bit_cnt;
  wire bit_cnt_en;
  wire bit_cnt_en0;
  wire bit_cnt_ld;
  wire bus_busy_d1;
  wire bus_busy_i_1_n_0;
  wire [7:0]clk_cnt;
  wire clk_cnt_en;
  wire clk_cnt_rst;
  wire data_i2c_i0;
  wire detect_start;
  wire detect_start0;
  wire detect_stop0;
  wire detect_stop_b;
  wire detect_stop_b_i_1_n_0;
  wire detect_stop_b_reg_n_0;
  wire detect_stop_i_1_n_0;
  wire detect_stop_i_2_n_0;
  wire detect_stop_i_3_n_0;
  wire detect_stop_reg_n_0;
  wire dtc_i_d1;
  wire dtc_i_d2;
  wire dtc_i_i_1_n_0;
  wire dtc_i_reg_n_0;
  wire dtre_d1;
  wire gen_start;
  wire gen_start_i_1_n_0;
  wire gen_stop;
  wire gen_stop0;
  wire gen_stop_d1;
  wire gen_stop_i_1_n_0;
  wire [7:0]i2c_header;
  wire i2c_header_en;
  wire i2c_header_en0;
  wire master_slave;
  wire master_slave_i_1_n_0;
  wire msms_d1;
  wire msms_d10;
  wire msms_d1_i_2_n_0;
  wire msms_d2;
  wire msms_rst_i;
  wire msms_rst_i_i_1_n_0;
  wire p_0_in;
  wire p_1_in;
  wire p_1_in0_in;
  wire p_1_in6_in;
  wire p_2_in;
  wire p_4_in;
  wire p_4_in5_in;
  wire rdy_new_xmt_i0;
  wire rdy_new_xmt_i_i_1_n_0;
  wire ro_prev_d1;
  wire rsta_d1;
  wire rsta_tx_under_prev;
  wire rsta_tx_under_prev_i_1_n_0;
  wire rsta_tx_under_prev_i_2_n_0;
  wire scl_cout_reg;
  wire scl_cout_reg0;
  wire scl_cout_reg_i_2_n_0;
  wire scl_f_edg_d1;
  wire scl_f_edg_d2;
  wire scl_f_edg_d3;
  wire scl_falling_edge;
  wire scl_falling_edge0;
  wire scl_rin_d1;
  wire scl_rising_edge;
  wire scl_rising_edge0;
  wire sda_cout;
  wire sda_cout_reg;
  wire sda_cout_reg_i_2_n_0;
  wire sda_cout_reg_i_3_n_0;
  wire sda_cout_reg_i_4_n_0;
  wire sda_cout_reg_i_5_n_0;
  wire sda_cout_reg_i_6_n_0;
  wire sda_cout_reg_i_7_n_0;
  wire sda_falling;
  wire sda_rin_d1;
  wire sda_sample;
  wire sda_setup;
  wire [7:0]sda_setup_cnt;
  wire sda_setup_i_1_n_0;
  wire sda_setup_i_2_n_0;
  wire sda_setup_i_3_n_0;
  wire sda_setup_i_4_n_0;
  wire sda_setup_i_5_n_0;
  wire [7:0]shift_reg;
  wire shift_reg_en;
  wire shift_reg_en0;
  wire shift_reg_ld;
  wire shift_reg_ld0;
  wire shift_reg_ld_d1;
  wire shift_reg_ld_i_2_n_0;
  wire slave_sda_i_1_n_0;
  wire slave_sda_reg_n_0;
  wire sm_stop10_out;
  wire sm_stop_reg_n_0;
  wire stop_scl;
  wire stop_scl_reg;
  wire stop_scl_reg_i_2_n_0;
  wire stop_scl_reg_i_3_n_0;
  wire tx_under_prev_d1;
  wire tx_under_prev_i0;
  wire tx_under_prev_i_i_1_n_0;
  wire tx_under_prev_i_i_3_n_0;
  wire txer_edge_i_1_n_0;
  wire txer_edge_i_3_n_0;
  wire txer_i;
  wire txer_i_reg_n_0;
  wire [3:0]NLW_CLKCNT_i_15_O_UNCONNECTED;
  wire NLW_I2CDATA_REG_Shift_out_UNCONNECTED;
  wire NLW_I2CHEADER_REG_Shift_out_UNCONNECTED;

  assign Dtc = \<const0> ;
  assign Scl_O = \<const0> ;
  assign Sda_O = \<const0> ;
  assign reg_empty = \<const0> ;
  FDRE AckDataState_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(AckDataState),
        .R(al_i_i_1_n_0));
  (* C_SIZE = "4" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  kf_bd_axi_iic_0_0_upcnt_n__parameterized0 BITCNT
       (.Clk(Sys_clk),
        .Clr(Reset),
        .Cnt_en(bit_cnt_en),
        .Data({1'b0,1'b0,1'b0,1'b0}),
        .Load(bit_cnt_ld),
        .Qout({bit_cnt[3],bit_cnt[2],bit_cnt[1],bit_cnt[0]}));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    BITCNT_i_1
       (.I0(txer_edge_i_3_n_0),
        .I1(p_4_in),
        .I2(detect_start),
        .O(bit_cnt_ld));
  (* C_SIZE = "8" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  kf_bd_axi_iic_0_0_upcnt_n CLKCNT
       (.Clk(Sys_clk),
        .Clr(Reset),
        .Cnt_en(clk_cnt_en),
        .Data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Load(clk_cnt_rst),
        .Qout({clk_cnt[7],clk_cnt[6],clk_cnt[5],clk_cnt[4],clk_cnt[3],clk_cnt[2],clk_cnt[1],clk_cnt[0]}));
  LUT5 #(
    .INIT(32'hF8F8FFF8)) 
    CLKCNT_i_1
       (.I0(CLKCNT_i_3_n_0),
        .I1(\FSM_onehot_scl_state_reg_n_0_[7] ),
        .I2(CLKCNT_i_4_n_0),
        .I3(CLKCNT_i_5_n_0),
        .I4(Scl_I),
        .O(clk_cnt_en));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    CLKCNT_i_10
       (.I0(clk_cnt[0]),
        .I1(Timing_param_thigh[0]),
        .I2(clk_cnt[7]),
        .I3(Timing_param_thigh[7]),
        .I4(CLKCNT_i_16_n_0),
        .I5(CLKCNT_i_17_n_0),
        .O(CLKCNT_i_10_n_0));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFFFEFFE)) 
    CLKCNT_i_11
       (.I0(CLKCNT_i_18_n_0),
        .I1(CLKCNT_i_19_n_0),
        .I2(clk_cnt[6]),
        .I3(Timing_param_tsusta[6]),
        .I4(clk_cnt[7]),
        .I5(Timing_param_tsusta[7]),
        .O(CLKCNT_i_11_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    CLKCNT_i_12
       (.I0(Timing_param_thddat[6]),
        .I1(clk_cnt[6]),
        .I2(Timing_param_thddat[7]),
        .I3(clk_cnt[7]),
        .O(CLKCNT_i_12_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    CLKCNT_i_13
       (.I0(Timing_param_thddat[3]),
        .I1(clk_cnt[3]),
        .I2(clk_cnt[5]),
        .I3(Timing_param_thddat[5]),
        .I4(clk_cnt[4]),
        .I5(Timing_param_thddat[4]),
        .O(CLKCNT_i_13_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    CLKCNT_i_14
       (.I0(Timing_param_thddat[0]),
        .I1(clk_cnt[0]),
        .I2(clk_cnt[2]),
        .I3(Timing_param_thddat[2]),
        .I4(clk_cnt[1]),
        .I5(Timing_param_thddat[1]),
        .O(CLKCNT_i_14_n_0));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 CLKCNT_i_15
       (.CI(1'b0),
        .CO({CLKCNT_i_15_n_0,CLKCNT_i_15_n_1,CLKCNT_i_15_n_2,CLKCNT_i_15_n_3}),
        .CYINIT(1'b1),
        .DI({CLKCNT_i_20_n_0,CLKCNT_i_21_n_0,CLKCNT_i_22_n_0,CLKCNT_i_23_n_0}),
        .O(NLW_CLKCNT_i_15_O_UNCONNECTED[3:0]),
        .S({CLKCNT_i_24_n_0,CLKCNT_i_25_n_0,CLKCNT_i_26_n_0,CLKCNT_i_27_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6FF6)) 
    CLKCNT_i_16
       (.I0(Timing_param_thigh[2]),
        .I1(clk_cnt[2]),
        .I2(clk_cnt[6]),
        .I3(Timing_param_thigh[6]),
        .I4(Rsta),
        .I5(stop_scl_reg),
        .O(CLKCNT_i_16_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    CLKCNT_i_17
       (.I0(Timing_param_thigh[3]),
        .I1(clk_cnt[3]),
        .I2(clk_cnt[4]),
        .I3(Timing_param_thigh[4]),
        .I4(clk_cnt[5]),
        .I5(Timing_param_thigh[5]),
        .O(CLKCNT_i_17_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    CLKCNT_i_18
       (.I0(Timing_param_tsusta[0]),
        .I1(clk_cnt[0]),
        .I2(clk_cnt[2]),
        .I3(Timing_param_tsusta[2]),
        .I4(clk_cnt[1]),
        .I5(Timing_param_tsusta[1]),
        .O(CLKCNT_i_18_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    CLKCNT_i_19
       (.I0(Timing_param_tsusta[3]),
        .I1(clk_cnt[3]),
        .I2(clk_cnt[5]),
        .I3(Timing_param_tsusta[5]),
        .I4(clk_cnt[4]),
        .I5(Timing_param_tsusta[4]),
        .O(CLKCNT_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    CLKCNT_i_2
       (.I0(CLKCNT_i_3_n_0),
        .I1(CLKCNT_i_6_n_0),
        .I2(CLKCNT_i_7_n_0),
        .I3(\FSM_onehot_scl_state_reg_n_0_[0] ),
        .I4(CLKCNT_i_8_n_0),
        .I5(CLKCNT_i_9_n_0),
        .O(clk_cnt_rst));
  LUT4 #(
    .INIT(16'h44D4)) 
    CLKCNT_i_20
       (.I0(Timing_param_tbuf[7]),
        .I1(clk_cnt[7]),
        .I2(clk_cnt[6]),
        .I3(Timing_param_tbuf[6]),
        .O(CLKCNT_i_20_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    CLKCNT_i_21
       (.I0(Timing_param_tbuf[5]),
        .I1(clk_cnt[5]),
        .I2(clk_cnt[4]),
        .I3(Timing_param_tbuf[4]),
        .O(CLKCNT_i_21_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    CLKCNT_i_22
       (.I0(Timing_param_tbuf[3]),
        .I1(clk_cnt[3]),
        .I2(clk_cnt[2]),
        .I3(Timing_param_tbuf[2]),
        .O(CLKCNT_i_22_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    CLKCNT_i_23
       (.I0(Timing_param_tbuf[1]),
        .I1(clk_cnt[1]),
        .I2(clk_cnt[0]),
        .I3(Timing_param_tbuf[0]),
        .O(CLKCNT_i_23_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    CLKCNT_i_24
       (.I0(\FSM_onehot_scl_state[9]_i_6_n_0 ),
        .O(CLKCNT_i_24_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    CLKCNT_i_25
       (.I0(\FSM_onehot_scl_state[9]_i_8_n_0 ),
        .O(CLKCNT_i_25_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    CLKCNT_i_26
       (.I0(\FSM_onehot_scl_state[9]_i_9_n_0 ),
        .O(CLKCNT_i_26_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CLKCNT_i_27
       (.I0(clk_cnt[1]),
        .I1(Timing_param_tbuf[1]),
        .I2(clk_cnt[0]),
        .I3(Timing_param_tbuf[0]),
        .O(CLKCNT_i_27_n_0));
  LUT6 #(
    .INIT(64'h2AA22AA200002AA2)) 
    CLKCNT_i_3
       (.I0(stop_scl_reg_i_3_n_0),
        .I1(CLKCNT_i_10_n_0),
        .I2(Timing_param_thigh[1]),
        .I3(clk_cnt[1]),
        .I4(Rsta),
        .I5(CLKCNT_i_11_n_0),
        .O(CLKCNT_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    CLKCNT_i_4
       (.I0(CLKCNT_i_7_n_0),
        .I1(\FSM_onehot_scl_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_scl_state_reg_n_0_[9] ),
        .I3(\FSM_onehot_scl_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_scl_state[9]_i_3_n_0 ),
        .O(CLKCNT_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    CLKCNT_i_5
       (.I0(Scl_I),
        .I1(CLKCNT_i_12_n_0),
        .I2(CLKCNT_i_13_n_0),
        .I3(CLKCNT_i_14_n_0),
        .I4(\FSM_onehot_scl_state_reg_n_0_[4] ),
        .O(CLKCNT_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    CLKCNT_i_6
       (.I0(\FSM_onehot_scl_state_reg_n_0_[7] ),
        .I1(arb_lost),
        .O(CLKCNT_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    CLKCNT_i_7
       (.I0(detect_stop_b_reg_n_0),
        .I1(CLKCNT_i_15_n_0),
        .O(CLKCNT_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    CLKCNT_i_8
       (.I0(\FSM_onehot_scl_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_scl_state_reg_n_0_[8] ),
        .I2(Scl_I),
        .I3(\FSM_onehot_scl_state_reg_n_0_[4] ),
        .I4(detect_stop_b),
        .O(CLKCNT_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    CLKCNT_i_9
       (.I0(Scl_I),
        .I1(CLKCNT_i_12_n_0),
        .I2(CLKCNT_i_13_n_0),
        .I3(CLKCNT_i_14_n_0),
        .I4(\FSM_onehot_scl_state_reg_n_0_[4] ),
        .O(CLKCNT_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hFBAA)) 
    EarlyAckDataState_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(EarlyAckDataState_i_2_n_0),
        .I2(dtc_i_i_1_n_0),
        .I3(p_1_in6_in),
        .O(EarlyAckDataState0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    EarlyAckDataState_i_2
       (.I0(bit_cnt[3]),
        .I1(bit_cnt[0]),
        .I2(bit_cnt[2]),
        .I3(bit_cnt[1]),
        .O(EarlyAckDataState_i_2_n_0));
  FDRE EarlyAckDataState_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(EarlyAckDataState0),
        .Q(EarlyAckDataState),
        .R(al_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    EarlyAckHdr_i_1
       (.I0(p_1_in0_in),
        .I1(scl_f_edg_d3),
        .O(EarlyAckHdr0));
  FDRE EarlyAckHdr_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(EarlyAckHdr0),
        .Q(EarlyAckHdr),
        .R(al_i_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \FSM_onehot_scl_state[0]_i_1 
       (.I0(\FSM_onehot_scl_state[9]_i_5_n_0 ),
        .I1(\FSM_onehot_scl_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_scl_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_scl_state[2]_i_2_n_0 ),
        .I4(arb_lost),
        .I5(\FSM_onehot_scl_state_reg_n_0_[7] ),
        .O(\FSM_onehot_scl_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF2222222)) 
    \FSM_onehot_scl_state[1]_i_1 
       (.I0(\FSM_onehot_scl_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_scl_state[9]_i_5_n_0 ),
        .I2(\FSM_onehot_scl_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_scl_state[2]_i_2_n_0 ),
        .I4(\FSM_onehot_scl_state[2]_i_3_n_0 ),
        .O(\FSM_onehot_scl_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \FSM_onehot_scl_state[2]_i_1 
       (.I0(\FSM_onehot_scl_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_scl_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_scl_state[2]_i_3_n_0 ),
        .I3(\FSM_onehot_scl_state[2]_i_4_n_0 ),
        .O(\FSM_onehot_scl_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_scl_state[2]_i_2 
       (.I0(Bb),
        .I1(gen_start),
        .I2(master_slave),
        .O(\FSM_onehot_scl_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF222FFFFF000F000)) 
    \FSM_onehot_scl_state[2]_i_3 
       (.I0(\FSM_onehot_scl_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_scl_state[9]_i_5_n_0 ),
        .I2(CLKCNT_i_7_n_0),
        .I3(\FSM_onehot_scl_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_scl_state[2]_i_5_n_0 ),
        .I5(detect_stop_b_reg_n_0),
        .O(\FSM_onehot_scl_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \FSM_onehot_scl_state[2]_i_4 
       (.I0(Rsta),
        .I1(CLKCNT_i_6_n_0),
        .I2(Sda_I),
        .I3(detect_stop_b),
        .I4(\FSM_onehot_scl_state[9]_i_5_n_0 ),
        .I5(\FSM_onehot_scl_state_reg_n_0_[1] ),
        .O(\FSM_onehot_scl_state[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_scl_state[2]_i_5 
       (.I0(scl_cout_reg_i_2_n_0),
        .I1(\FSM_onehot_scl_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_scl_state_reg_n_0_[5] ),
        .I3(detect_stop_b),
        .I4(\FSM_onehot_scl_state_reg_n_0_[4] ),
        .O(\FSM_onehot_scl_state[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_scl_state[3]_i_1 
       (.I0(\FSM_onehot_scl_state[4]_i_2_n_0 ),
        .I1(\FSM_onehot_scl_state_reg_n_0_[3] ),
        .I2(Sda_I),
        .I3(detect_stop_b),
        .O(\FSM_onehot_scl_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAAEAAAE)) 
    \FSM_onehot_scl_state[4]_i_1 
       (.I0(CLKCNT_i_5_n_0),
        .I1(CLKCNT_i_6_n_0),
        .I2(stop_scl_reg),
        .I3(Rsta),
        .I4(\FSM_onehot_scl_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_scl_state[4]_i_2_n_0 ),
        .O(\FSM_onehot_scl_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \FSM_onehot_scl_state[4]_i_2 
       (.I0(clk_cnt[7]),
        .I1(Timing_param_thdsta[7]),
        .I2(clk_cnt[6]),
        .I3(Timing_param_thdsta[6]),
        .I4(\FSM_onehot_scl_state[4]_i_3_n_0 ),
        .I5(\FSM_onehot_scl_state[4]_i_4_n_0 ),
        .O(\FSM_onehot_scl_state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \FSM_onehot_scl_state[4]_i_3 
       (.I0(Timing_param_thdsta[0]),
        .I1(clk_cnt[0]),
        .I2(clk_cnt[1]),
        .I3(Timing_param_thdsta[1]),
        .I4(clk_cnt[2]),
        .I5(Timing_param_thdsta[2]),
        .O(\FSM_onehot_scl_state[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \FSM_onehot_scl_state[4]_i_4 
       (.I0(Timing_param_thdsta[3]),
        .I1(clk_cnt[3]),
        .I2(clk_cnt[5]),
        .I3(Timing_param_thdsta[5]),
        .I4(clk_cnt[4]),
        .I5(Timing_param_thdsta[4]),
        .O(\FSM_onehot_scl_state[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_scl_state[5]_i_1 
       (.I0(CLKCNT_i_9_n_0),
        .I1(\FSM_onehot_scl_state[6]_i_2_n_0 ),
        .I2(\FSM_onehot_scl_state_reg_n_0_[5] ),
        .O(\FSM_onehot_scl_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_scl_state[6]_i_1 
       (.I0(Scl_I),
        .I1(\FSM_onehot_scl_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_scl_state[6]_i_2_n_0 ),
        .I3(\FSM_onehot_scl_state_reg_n_0_[5] ),
        .O(\FSM_onehot_scl_state[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \FSM_onehot_scl_state[6]_i_2 
       (.I0(clk_cnt[7]),
        .I1(Timing_param_tlow[7]),
        .I2(clk_cnt[6]),
        .I3(Timing_param_tlow[6]),
        .I4(\FSM_onehot_scl_state[6]_i_3_n_0 ),
        .I5(\FSM_onehot_scl_state[6]_i_4_n_0 ),
        .O(\FSM_onehot_scl_state[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \FSM_onehot_scl_state[6]_i_3 
       (.I0(Timing_param_tlow[0]),
        .I1(clk_cnt[0]),
        .I2(clk_cnt[2]),
        .I3(Timing_param_tlow[2]),
        .I4(clk_cnt[1]),
        .I5(Timing_param_tlow[1]),
        .O(\FSM_onehot_scl_state[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \FSM_onehot_scl_state[6]_i_4 
       (.I0(Timing_param_tlow[3]),
        .I1(clk_cnt[3]),
        .I2(clk_cnt[5]),
        .I3(Timing_param_tlow[5]),
        .I4(clk_cnt[4]),
        .I5(Timing_param_tlow[4]),
        .O(\FSM_onehot_scl_state[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_scl_state[7]_i_1 
       (.I0(Scl_I),
        .I1(\FSM_onehot_scl_state_reg_n_0_[6] ),
        .O(\FSM_onehot_scl_state[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \FSM_onehot_scl_state[8]_i_1 
       (.I0(Rsta),
        .I1(stop_scl_reg),
        .I2(CLKCNT_i_6_n_0),
        .I3(Sda_I),
        .I4(\FSM_onehot_scl_state_reg_n_0_[8] ),
        .O(\FSM_onehot_scl_state[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \FSM_onehot_scl_state[9]_i_1 
       (.I0(CLKCNT_i_3_n_0),
        .I1(\FSM_onehot_scl_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_scl_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_scl_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_scl_state[9]_i_3_n_0 ),
        .I5(\FSM_onehot_scl_state[9]_i_4_n_0 ),
        .O(\FSM_onehot_scl_state[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_scl_state[9]_i_2 
       (.I0(\FSM_onehot_scl_state[9]_i_5_n_0 ),
        .I1(\FSM_onehot_scl_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_scl_state_reg_n_0_[8] ),
        .I3(Sda_I),
        .O(\FSM_onehot_scl_state[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \FSM_onehot_scl_state[9]_i_3 
       (.I0(\FSM_onehot_scl_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_scl_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_scl_state_reg_n_0_[7] ),
        .I3(arb_lost),
        .O(\FSM_onehot_scl_state[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_scl_state[9]_i_4 
       (.I0(detect_stop_b),
        .I1(\FSM_onehot_scl_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_scl_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_scl_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_scl_state_reg_n_0_[9] ),
        .O(\FSM_onehot_scl_state[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_onehot_scl_state[9]_i_5 
       (.I0(\FSM_onehot_scl_state[9]_i_6_n_0 ),
        .I1(\FSM_onehot_scl_state[9]_i_7_n_0 ),
        .I2(\FSM_onehot_scl_state[9]_i_8_n_0 ),
        .I3(\FSM_onehot_scl_state[9]_i_9_n_0 ),
        .O(\FSM_onehot_scl_state[9]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \FSM_onehot_scl_state[9]_i_6 
       (.I0(clk_cnt[7]),
        .I1(Timing_param_tbuf[7]),
        .I2(clk_cnt[6]),
        .I3(Timing_param_tbuf[6]),
        .O(\FSM_onehot_scl_state[9]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_scl_state[9]_i_7 
       (.I0(clk_cnt[1]),
        .I1(Timing_param_tbuf[1]),
        .I2(clk_cnt[0]),
        .I3(Timing_param_tbuf[0]),
        .O(\FSM_onehot_scl_state[9]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \FSM_onehot_scl_state[9]_i_8 
       (.I0(clk_cnt[5]),
        .I1(Timing_param_tbuf[5]),
        .I2(clk_cnt[4]),
        .I3(Timing_param_tbuf[4]),
        .O(\FSM_onehot_scl_state[9]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \FSM_onehot_scl_state[9]_i_9 
       (.I0(clk_cnt[3]),
        .I1(Timing_param_tbuf[3]),
        .I2(clk_cnt[2]),
        .I3(Timing_param_tbuf[2]),
        .O(\FSM_onehot_scl_state[9]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_scl_state_reg[0] 
       (.C(Sys_clk),
        .CE(\FSM_onehot_scl_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_scl_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_scl_state_reg_n_0_[0] ),
        .S(al_i_i_1_n_0));
  (* FSM_ENCODED_STATES = "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_scl_state_reg[1] 
       (.C(Sys_clk),
        .CE(\FSM_onehot_scl_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_scl_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_scl_state_reg_n_0_[1] ),
        .R(al_i_i_1_n_0));
  (* FSM_ENCODED_STATES = "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_scl_state_reg[2] 
       (.C(Sys_clk),
        .CE(\FSM_onehot_scl_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_scl_state[2]_i_1_n_0 ),
        .Q(detect_stop_b),
        .R(al_i_i_1_n_0));
  (* FSM_ENCODED_STATES = "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_scl_state_reg[3] 
       (.C(Sys_clk),
        .CE(\FSM_onehot_scl_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_scl_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_scl_state_reg_n_0_[3] ),
        .R(al_i_i_1_n_0));
  (* FSM_ENCODED_STATES = "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_scl_state_reg[4] 
       (.C(Sys_clk),
        .CE(\FSM_onehot_scl_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_scl_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_scl_state_reg_n_0_[4] ),
        .R(al_i_i_1_n_0));
  (* FSM_ENCODED_STATES = "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_scl_state_reg[5] 
       (.C(Sys_clk),
        .CE(\FSM_onehot_scl_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_scl_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_scl_state_reg_n_0_[5] ),
        .R(al_i_i_1_n_0));
  (* FSM_ENCODED_STATES = "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_scl_state_reg[6] 
       (.C(Sys_clk),
        .CE(\FSM_onehot_scl_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_scl_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_scl_state_reg_n_0_[6] ),
        .R(al_i_i_1_n_0));
  (* FSM_ENCODED_STATES = "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_scl_state_reg[7] 
       (.C(Sys_clk),
        .CE(\FSM_onehot_scl_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_scl_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_scl_state_reg_n_0_[7] ),
        .R(al_i_i_1_n_0));
  (* FSM_ENCODED_STATES = "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_scl_state_reg[8] 
       (.C(Sys_clk),
        .CE(\FSM_onehot_scl_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_scl_state[8]_i_1_n_0 ),
        .Q(\FSM_onehot_scl_state_reg_n_0_[8] ),
        .R(al_i_i_1_n_0));
  (* FSM_ENCODED_STATES = "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_scl_state_reg[9] 
       (.C(Sys_clk),
        .CE(\FSM_onehot_scl_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_scl_state[9]_i_2_n_0 ),
        .Q(\FSM_onehot_scl_state_reg_n_0_[9] ),
        .R(al_i_i_1_n_0));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[0]_i_2_n_0 ),
        .I1(\FSM_onehot_state[2]_i_3_n_0 ),
        .I2(\FSM_onehot_state[2]_i_2_n_0 ),
        .I3(\FSM_onehot_state[4]_i_3_n_0 ),
        .I4(\FSM_onehot_state[2]_i_5_n_0 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(p_1_in0_in),
        .I1(\FSM_onehot_state[3]_i_4_n_0 ),
        .I2(\FSM_onehot_state[3]_i_3_n_0 ),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .I2(p_1_in6_in),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(detect_start),
        .I1(p_0_in),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA000200020002)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[4]_i_3_n_0 ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(p_1_in0_in),
        .I3(\FSM_onehot_state[2]_i_3_n_0 ),
        .I4(\FSM_onehot_state[2]_i_4_n_0 ),
        .I5(\FSM_onehot_state[2]_i_5_n_0 ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state[5]_i_2_n_0 ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(\FSM_onehot_state[3]_i_4_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(arb_lost),
        .I3(sda_sample),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[2]_i_4 
       (.I0(Tx),
        .I1(master_slave),
        .I2(i2c_header[0]),
        .O(\FSM_onehot_state[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[2]_i_5 
       (.I0(\FSM_onehot_state[4]_i_4_n_0 ),
        .I1(\FSM_onehot_state[3]_i_4_n_0 ),
        .O(\FSM_onehot_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00800080AAAA0080)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .I1(Ro_prev),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state[5]_i_2_n_0 ),
        .I4(\FSM_onehot_state[3]_i_3_n_0 ),
        .I5(\FSM_onehot_state[3]_i_4_n_0 ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\FSM_onehot_state[4]_i_3_n_0 ),
        .I1(p_1_in0_in),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(p_1_in6_in),
        .I1(detect_start),
        .O(\FSM_onehot_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[3]_i_4 
       (.I0(master_slave),
        .I1(aas_i_i_2_n_0),
        .O(\FSM_onehot_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABA00000000)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state[4]_i_2_n_0 ),
        .I1(Ro_prev),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state[5]_i_2_n_0 ),
        .I4(p_1_in0_in),
        .I5(\FSM_onehot_state[4]_i_3_n_0 ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h0000F200)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(master_slave),
        .I1(Tx),
        .I2(aas_i_i_2_n_0),
        .I3(\FSM_onehot_state[4]_i_4_n_0 ),
        .I4(\FSM_onehot_state[2]_i_4_n_0 ),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(p_2_in),
        .I1(p_4_in),
        .O(\FSM_onehot_state[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_state[4]_i_4 
       (.I0(p_1_in0_in),
        .I1(sda_sample),
        .I2(arb_lost),
        .O(\FSM_onehot_state[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hAAAAAEAA)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(p_4_in),
        .I1(\FSM_onehot_state[5]_i_2_n_0 ),
        .I2(p_1_in0_in),
        .I3(detect_start),
        .I4(p_2_in),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(p_0_in),
        .I1(p_1_in6_in),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state[6]_i_3_n_0 ),
        .I1(\FSM_onehot_state[6]_i_4_n_0 ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(p_2_in),
        .I1(p_4_in),
        .O(\FSM_onehot_state[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEAEAFFFFFFEA)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(txer_edge_i_3_n_0),
        .I1(detect_start),
        .I2(p_4_in),
        .I3(p_2_in),
        .I4(\FSM_onehot_state[5]_i_2_n_0 ),
        .I5(EarlyAckDataState_i_2_n_0),
        .O(\FSM_onehot_state[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \FSM_onehot_state[6]_i_4 
       (.I0(scl_f_edg_d2),
        .I1(Ro_prev),
        .I2(ro_prev_d1),
        .O(\FSM_onehot_state[6]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "ack_header:1000000,wait_ack:0000010,header:0100000,ack_data:0001000,rcv_data:0010000,xmit_data:0000100,idle:0000001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(Sys_clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(p_4_in),
        .S(bus_busy_i_1_n_0));
  (* FSM_ENCODED_STATES = "ack_header:1000000,wait_ack:0000010,header:0100000,ack_data:0001000,rcv_data:0010000,xmit_data:0000100,idle:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(Sys_clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(bus_busy_i_1_n_0));
  (* FSM_ENCODED_STATES = "ack_header:1000000,wait_ack:0000010,header:0100000,ack_data:0001000,rcv_data:0010000,xmit_data:0000100,idle:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(Sys_clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(p_0_in),
        .R(bus_busy_i_1_n_0));
  (* FSM_ENCODED_STATES = "ack_header:1000000,wait_ack:0000010,header:0100000,ack_data:0001000,rcv_data:0010000,xmit_data:0000100,idle:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(Sys_clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(bus_busy_i_1_n_0));
  (* FSM_ENCODED_STATES = "ack_header:1000000,wait_ack:0000010,header:0100000,ack_data:0001000,rcv_data:0010000,xmit_data:0000100,idle:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(Sys_clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(p_1_in6_in),
        .R(bus_busy_i_1_n_0));
  (* FSM_ENCODED_STATES = "ack_header:1000000,wait_ack:0000010,header:0100000,ack_data:0001000,rcv_data:0010000,xmit_data:0000100,idle:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(Sys_clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(p_2_in),
        .R(bus_busy_i_1_n_0));
  (* FSM_ENCODED_STATES = "ack_header:1000000,wait_ack:0000010,header:0100000,ack_data:0001000,rcv_data:0010000,xmit_data:0000100,idle:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(Sys_clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[6]_i_2_n_0 ),
        .Q(p_1_in0_in),
        .R(bus_busy_i_1_n_0));
  GND GND
       (.G(\<const0> ));
  (* downgradeipidentifiedwarnings = "yes" *) 
  kf_bd_axi_iic_0_0_shift8__1 I2CDATA_REG
       (.Clk(Sys_clk),
        .Clr(Reset),
        .Data_in(Dtr),
        .Data_ld(shift_reg_ld),
        .Data_out(shift_reg),
        .Shift_en(shift_reg_en),
        .Shift_in(Sda_I),
        .Shift_out(NLW_I2CDATA_REG_Shift_out_UNCONNECTED));
  (* downgradeipidentifiedwarnings = "yes" *) 
  kf_bd_axi_iic_0_0_shift8 I2CHEADER_REG
       (.Clk(Sys_clk),
        .Clr(Reset),
        .Data_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Data_ld(1'b0),
        .Data_out(i2c_header),
        .Shift_en(i2c_header_en),
        .Shift_in(Sda_I),
        .Shift_out(NLW_I2CHEADER_REG_Shift_out_UNCONNECTED));
  LUT6 #(
    .INIT(64'hFFFB0F0BFFFB000B)) 
    \LEVEL_1_GEN.master_sda_i_1 
       (.I0(Txak),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(p_2_in),
        .I3(p_0_in),
        .I4(shift_reg[7]),
        .I5(Tx_under_prev),
        .O(\LEVEL_1_GEN.master_sda_i_1_n_0 ));
  FDSE \LEVEL_1_GEN.master_sda_reg 
       (.C(Sys_clk),
        .CE(1'b1),
        .D(\LEVEL_1_GEN.master_sda_i_1_n_0 ),
        .Q(\LEVEL_1_GEN.master_sda_reg_n_0 ),
        .S(al_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hE)) 
    Msms_rst_INST_0
       (.I0(msms_rst_i),
        .I1(sm_stop_reg_n_0),
        .O(Msms_rst));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Rsta_rst_INST_0
       (.I0(\FSM_onehot_scl_state_reg_n_0_[3] ),
        .I1(Rsta),
        .O(Rsta_rst));
  (* C_SIZE = "8" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  kf_bd_axi_iic_0_0_upcnt_n__1 SETUP_CNT
       (.Clk(Sys_clk),
        .Clr(Reset),
        .Cnt_en(sda_setup),
        .Data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Load(p_4_in5_in),
        .Qout({sda_setup_cnt[7],sda_setup_cnt[6],sda_setup_cnt[5],sda_setup_cnt[4],sda_setup_cnt[3],sda_setup_cnt[2],sda_setup_cnt[1],sda_setup_cnt[0]}));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    SETUP_CNT_i_1
       (.I0(gen_stop),
        .I1(gen_stop_d1),
        .I2(Sda_I),
        .I3(sda_rin_d1),
        .I4(SETUP_CNT_i_2_n_0),
        .O(p_4_in5_in));
  LUT6 #(
    .INIT(64'h2F222F22FFFF2F22)) 
    SETUP_CNT_i_2
       (.I0(sda_rin_d1),
        .I1(Sda_I),
        .I2(rsta_d1),
        .I3(Rsta),
        .I4(tx_under_prev_d1),
        .I5(Tx_under_prev),
        .O(SETUP_CNT_i_2_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    Scl_T_inferred_i_1
       (.I0(Ro_prev),
        .I1(scl_cout_reg),
        .I2(sda_setup),
        .I3(rsta_tx_under_prev),
        .O(Scl_T));
  LUT5 #(
    .INIT(32'h0000EFE0)) 
    Sda_T_inferred_i_1
       (.I0(arb_lost),
        .I1(sda_cout_reg),
        .I2(master_slave),
        .I3(slave_sda_reg_n_0),
        .I4(stop_scl_reg),
        .O(Sda_T));
  LUT3 #(
    .INIT(8'hBF)) 
    aas_i_i_1
       (.I0(detect_stop_reg_n_0),
        .I1(Reset),
        .I2(aas_i_i_2_n_0),
        .O(aas_i_i_1_n_0));
  LUT4 #(
    .INIT(16'hABAA)) 
    aas_i_i_2
       (.I0(Abgc),
        .I1(aas_i_i_3_n_0),
        .I2(aas_i_i_4_n_0),
        .I3(aas_i_i_5_n_0),
        .O(aas_i_i_2_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    aas_i_i_3
       (.I0(Adr[3]),
        .I1(i2c_header[3]),
        .I2(Adr[5]),
        .I3(i2c_header[5]),
        .O(aas_i_i_3_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    aas_i_i_4
       (.I0(Adr[4]),
        .I1(i2c_header[4]),
        .I2(Adr[6]),
        .I3(i2c_header[6]),
        .O(aas_i_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    aas_i_i_5
       (.I0(i2c_header[7]),
        .I1(Adr[7]),
        .I2(i2c_header[2]),
        .I3(Adr[2]),
        .I4(Adr[1]),
        .I5(i2c_header[1]),
        .O(aas_i_i_5_n_0));
  FDRE aas_i_reg
       (.C(Sys_clk),
        .CE(p_1_in0_in),
        .D(1'b1),
        .Q(Aas),
        .R(aas_i_i_1_n_0));
  LUT3 #(
    .INIT(8'hFB)) 
    abgc_i_i_1
       (.I0(detect_start),
        .I1(Reset),
        .I2(detect_stop_reg_n_0),
        .O(abgc_i_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000004)) 
    abgc_i_i_2
       (.I0(i2c_header[7]),
        .I1(p_1_in0_in),
        .I2(i2c_header[3]),
        .I3(i2c_header[0]),
        .I4(abgc_i_i_3_n_0),
        .O(abgc_i_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    abgc_i_i_3
       (.I0(Gc_en),
        .I1(i2c_header[2]),
        .I2(i2c_header[6]),
        .I3(i2c_header[1]),
        .I4(i2c_header[5]),
        .I5(i2c_header[4]),
        .O(abgc_i_i_3_n_0));
  FDRE abgc_i_reg
       (.C(Sys_clk),
        .CE(abgc_i_i_2_n_0),
        .D(1'b1),
        .Q(Abgc),
        .R(abgc_i_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    al_i_i_1
       (.I0(Reset),
        .O(al_i_i_1_n_0));
  LUT6 #(
    .INIT(64'hE0E0E0E0E0EEE0E0)) 
    al_i_i_2
       (.I0(Rsta),
        .I1(master_slave),
        .I2(al_i_i_3_n_0),
        .I3(al_prevent),
        .I4(detect_stop_reg_n_0),
        .I5(sm_stop_reg_n_0),
        .O(al_i_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hFDDD)) 
    al_i_i_3
       (.I0(master_slave),
        .I1(arb_lost),
        .I2(bus_busy_d1),
        .I3(gen_start),
        .O(al_i_i_3_n_0));
  FDRE al_i_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(al_i_i_2_n_0),
        .Q(Al),
        .R(al_i_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    al_prevent_i_1
       (.I0(detect_start),
        .I1(sm_stop_reg_n_0),
        .I2(gen_stop),
        .O(al_prevent_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h54)) 
    al_prevent_i_2
       (.I0(detect_start),
        .I1(sm_stop_reg_n_0),
        .I2(gen_stop),
        .O(al_prevent0));
  FDRE al_prevent_reg
       (.C(Sys_clk),
        .CE(al_prevent_i_1_n_0),
        .D(al_prevent0),
        .Q(al_prevent),
        .R(al_i_i_1_n_0));
  LUT3 #(
    .INIT(8'hEF)) 
    arb_lost_i_1
       (.I0(\FSM_onehot_scl_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_scl_state_reg_n_0_[0] ),
        .I2(Reset),
        .O(arb_lost_i_1_n_0));
  LUT4 #(
    .INIT(16'hA800)) 
    arb_lost_i_2
       (.I0(scl_rising_edge),
        .I1(p_0_in),
        .I2(p_2_in),
        .I3(master_slave),
        .O(arb_lost_i_2_n_0));
  FDRE arb_lost_reg
       (.C(Sys_clk),
        .CE(arb_lost_i_2_n_0),
        .D(arb_lost034_out),
        .Q(arb_lost),
        .R(arb_lost_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    bit_cnt_en_i_1
       (.I0(scl_falling_edge),
        .I1(\FSM_onehot_state[5]_i_2_n_0 ),
        .I2(p_2_in),
        .O(bit_cnt_en0));
  FDRE bit_cnt_en_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(bit_cnt_en0),
        .Q(bit_cnt_en),
        .R(al_i_i_1_n_0));
  FDRE bus_busy_d1_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(Bb),
        .Q(bus_busy_d1),
        .R(al_i_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    bus_busy_i_1
       (.I0(detect_stop_reg_n_0),
        .I1(Reset),
        .O(bus_busy_i_1_n_0));
  FDRE bus_busy_reg
       (.C(Sys_clk),
        .CE(detect_start),
        .D(1'b1),
        .Q(Bb),
        .R(bus_busy_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    \data_i2c_i[7]_i_1 
       (.I0(scl_falling_edge),
        .I1(Ro_prev),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(data_i2c_i0));
  FDRE \data_i2c_i_reg[0] 
       (.C(Sys_clk),
        .CE(data_i2c_i0),
        .D(shift_reg[0]),
        .Q(Data_i2c[0]),
        .R(al_i_i_1_n_0));
  FDRE \data_i2c_i_reg[1] 
       (.C(Sys_clk),
        .CE(data_i2c_i0),
        .D(shift_reg[1]),
        .Q(Data_i2c[1]),
        .R(al_i_i_1_n_0));
  FDRE \data_i2c_i_reg[2] 
       (.C(Sys_clk),
        .CE(data_i2c_i0),
        .D(shift_reg[2]),
        .Q(Data_i2c[2]),
        .R(al_i_i_1_n_0));
  FDRE \data_i2c_i_reg[3] 
       (.C(Sys_clk),
        .CE(data_i2c_i0),
        .D(shift_reg[3]),
        .Q(Data_i2c[3]),
        .R(al_i_i_1_n_0));
  FDRE \data_i2c_i_reg[4] 
       (.C(Sys_clk),
        .CE(data_i2c_i0),
        .D(shift_reg[4]),
        .Q(Data_i2c[4]),
        .R(al_i_i_1_n_0));
  FDRE \data_i2c_i_reg[5] 
       (.C(Sys_clk),
        .CE(data_i2c_i0),
        .D(shift_reg[5]),
        .Q(Data_i2c[5]),
        .R(al_i_i_1_n_0));
  FDRE \data_i2c_i_reg[6] 
       (.C(Sys_clk),
        .CE(data_i2c_i0),
        .D(shift_reg[6]),
        .Q(Data_i2c[6]),
        .R(al_i_i_1_n_0));
  FDRE \data_i2c_i_reg[7] 
       (.C(Sys_clk),
        .CE(data_i2c_i0),
        .D(shift_reg[7]),
        .Q(Data_i2c[7]),
        .R(al_i_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    detect_start_i_1
       (.I0(p_2_in),
        .I1(Reset),
        .O(detect_start0));
  LUT2 #(
    .INIT(4'h2)) 
    detect_start_i_2
       (.I0(sda_rin_d1),
        .I1(Sda_I),
        .O(sda_falling));
  FDRE detect_start_reg
       (.C(Sys_clk),
        .CE(sda_falling),
        .D(Scl_I),
        .Q(detect_start),
        .R(detect_start0));
  LUT3 #(
    .INIT(8'hBA)) 
    detect_stop_b_i_1
       (.I0(detect_stop_b),
        .I1(sda_rin_d1),
        .I2(Sda_I),
        .O(detect_stop_b_i_1_n_0));
  FDRE detect_stop_b_reg
       (.C(Sys_clk),
        .CE(detect_stop_b_i_1_n_0),
        .D(detect_stop_i_3_n_0),
        .Q(detect_stop_b_reg_n_0),
        .R(detect_stop_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    detect_stop_i_1
       (.I0(detect_start),
        .I1(Reset),
        .O(detect_stop_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F22)) 
    detect_stop_i_2
       (.I0(msms_d1),
        .I1(msms_d2),
        .I2(sda_rin_d1),
        .I3(Sda_I),
        .O(detect_stop_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h40)) 
    detect_stop_i_3
       (.I0(sda_rin_d1),
        .I1(Sda_I),
        .I2(Scl_I),
        .O(detect_stop_i_3_n_0));
  FDRE detect_stop_reg
       (.C(Sys_clk),
        .CE(detect_stop_i_2_n_0),
        .D(detect_stop_i_3_n_0),
        .Q(detect_stop_reg_n_0),
        .R(detect_stop_i_1_n_0));
  FDRE dtc_i_d1_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(dtc_i_reg_n_0),
        .Q(dtc_i_d1),
        .R(al_i_i_1_n_0));
  FDRE dtc_i_d2_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(dtc_i_d1),
        .Q(dtc_i_d2),
        .R(al_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    dtc_i_i_1
       (.I0(bit_cnt[3]),
        .I1(bit_cnt[0]),
        .I2(bit_cnt[2]),
        .I3(bit_cnt[1]),
        .O(dtc_i_i_1_n_0));
  FDRE dtc_i_reg
       (.C(Sys_clk),
        .CE(scl_falling_edge),
        .D(dtc_i_i_1_n_0),
        .Q(dtc_i_reg_n_0),
        .R(al_i_i_1_n_0));
  FDRE dtre_d1_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(Dtre),
        .Q(dtre_d1),
        .R(al_i_i_1_n_0));
  LUT3 #(
    .INIT(8'hF2)) 
    gen_start_i_1
       (.I0(msms_d1),
        .I1(msms_d2),
        .I2(detect_start),
        .O(gen_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    gen_start_i_2
       (.I0(msms_d1),
        .I1(msms_d2),
        .O(detect_stop0));
  FDRE gen_start_reg
       (.C(Sys_clk),
        .CE(gen_start_i_1_n_0),
        .D(detect_stop0),
        .Q(gen_start),
        .R(al_i_i_1_n_0));
  FDRE gen_stop_d1_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(gen_stop),
        .Q(gen_stop_d1),
        .R(al_i_i_1_n_0));
  LUT4 #(
    .INIT(16'hFF04)) 
    gen_stop_i_1
       (.I0(arb_lost),
        .I1(msms_d2),
        .I2(msms_d1),
        .I3(detect_stop_reg_n_0),
        .O(gen_stop_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h04)) 
    gen_stop_i_2
       (.I0(arb_lost),
        .I1(msms_d2),
        .I2(msms_d1),
        .O(gen_stop0));
  FDRE gen_stop_reg
       (.C(Sys_clk),
        .CE(gen_stop_i_1_n_0),
        .D(gen_stop0),
        .Q(gen_stop),
        .R(al_i_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i2c_header_en_i_1
       (.I0(p_2_in),
        .I1(scl_rising_edge),
        .O(i2c_header_en0));
  FDRE i2c_header_en_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(i2c_header_en0),
        .Q(i2c_header_en),
        .R(al_i_i_1_n_0));
  LUT3 #(
    .INIT(8'h8F)) 
    master_slave_i_1
       (.I0(arb_lost),
        .I1(Bb),
        .I2(Reset),
        .O(master_slave_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    master_slave_i_2
       (.I0(Bb),
        .O(p_1_in));
  FDRE master_slave_reg
       (.C(Sys_clk),
        .CE(p_1_in),
        .D(msms_d1),
        .Q(master_slave),
        .R(master_slave_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    msms_d1_i_1
       (.I0(msms_d1_i_2_n_0),
        .I1(msms_rst_i),
        .O(msms_d10));
  LUT6 #(
    .INIT(64'hAABAAAAAAABAAABA)) 
    msms_d1_i_2
       (.I0(Msms),
        .I1(txer_i_reg_n_0),
        .I2(msms_d1),
        .I3(Msms_set),
        .I4(dtc_i_d2),
        .I5(dtc_i_d1),
        .O(msms_d1_i_2_n_0));
  FDRE msms_d1_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(msms_d10),
        .Q(msms_d1),
        .R(al_i_i_1_n_0));
  FDRE msms_d2_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(msms_d1),
        .Q(msms_d2),
        .R(al_i_i_1_n_0));
  LUT5 #(
    .INIT(32'hFF57FF00)) 
    msms_rst_i_i_1
       (.I0(scl_rising_edge),
        .I1(p_0_in),
        .I2(p_2_in),
        .I3(arb_lost_i_1_n_0),
        .I4(master_slave),
        .O(msms_rst_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    msms_rst_i_i_2
       (.I0(sda_cout_reg),
        .I1(Sda_I),
        .O(arb_lost034_out));
  FDRE msms_rst_i_reg
       (.C(Sys_clk),
        .CE(master_slave),
        .D(arb_lost034_out),
        .Q(msms_rst_i),
        .R(msms_rst_i_i_1_n_0));
  FDRE new_rcv_dta_i_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(data_i2c_i0),
        .Q(New_rcv_dta),
        .R(al_i_i_1_n_0));
  LUT3 #(
    .INIT(8'hEA)) 
    rdy_new_xmt_i_i_1
       (.I0(p_0_in),
        .I1(Msms),
        .I2(p_2_in),
        .O(rdy_new_xmt_i_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    rdy_new_xmt_i_i_2
       (.I0(shift_reg_ld_d1),
        .I1(shift_reg_ld),
        .O(rdy_new_xmt_i0));
  FDRE rdy_new_xmt_i_reg
       (.C(Sys_clk),
        .CE(rdy_new_xmt_i_i_1_n_0),
        .D(rdy_new_xmt_i0),
        .Q(Rdy_new_xmt),
        .R(al_i_i_1_n_0));
  FDRE ro_prev_d1_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(Ro_prev),
        .Q(ro_prev_d1),
        .R(al_i_i_1_n_0));
  FDRE rsta_d1_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(Rsta),
        .Q(rsta_d1),
        .R(al_i_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F20)) 
    rsta_tx_under_prev_i_1
       (.I0(Rsta),
        .I1(rsta_d1),
        .I2(Dtre),
        .I3(dtre_d1),
        .O(rsta_tx_under_prev_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h40)) 
    rsta_tx_under_prev_i_2
       (.I0(rsta_d1),
        .I1(Rsta),
        .I2(Dtre),
        .O(rsta_tx_under_prev_i_2_n_0));
  FDRE rsta_tx_under_prev_reg
       (.C(Sys_clk),
        .CE(rsta_tx_under_prev_i_1_n_0),
        .D(rsta_tx_under_prev_i_2_n_0),
        .Q(rsta_tx_under_prev),
        .R(al_i_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    scl_cout_reg_i_1
       (.I0(detect_stop_b),
        .I1(\FSM_onehot_scl_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_scl_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_scl_state_reg_n_0_[3] ),
        .I4(scl_cout_reg_i_2_n_0),
        .I5(Ro_prev),
        .O(scl_cout_reg0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    scl_cout_reg_i_2
       (.I0(\FSM_onehot_scl_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_scl_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_scl_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_scl_state_reg_n_0_[9] ),
        .O(scl_cout_reg_i_2_n_0));
  FDSE scl_cout_reg_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(scl_cout_reg0),
        .Q(scl_cout_reg),
        .S(al_i_i_1_n_0));
  FDRE scl_f_edg_d1_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(scl_falling_edge),
        .Q(scl_f_edg_d1),
        .R(al_i_i_1_n_0));
  FDRE scl_f_edg_d2_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(scl_f_edg_d1),
        .Q(scl_f_edg_d2),
        .R(al_i_i_1_n_0));
  FDRE scl_f_edg_d3_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(scl_f_edg_d2),
        .Q(scl_f_edg_d3),
        .R(al_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    scl_falling_edge_i_1
       (.I0(scl_rin_d1),
        .I1(Scl_I),
        .O(scl_falling_edge0));
  FDRE scl_falling_edge_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(scl_falling_edge0),
        .Q(scl_falling_edge),
        .R(al_i_i_1_n_0));
  FDRE scl_rin_d1_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(Scl_I),
        .Q(scl_rin_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    scl_rising_edge_i_1
       (.I0(Scl_I),
        .I1(scl_rin_d1),
        .O(scl_rising_edge0));
  FDRE scl_rising_edge_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(scl_rising_edge0),
        .Q(scl_rising_edge),
        .R(al_i_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF2)) 
    sda_cout_reg_i_1
       (.I0(CLKCNT_i_6_n_0),
        .I1(stop_scl_reg_i_3_n_0),
        .I2(\FSM_onehot_scl_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_scl_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_scl_state_reg_n_0_[0] ),
        .I5(detect_stop_b),
        .O(sda_cout));
  LUT3 #(
    .INIT(8'hF4)) 
    sda_cout_reg_i_2
       (.I0(sda_cout_reg_i_3_n_0),
        .I1(\FSM_onehot_scl_state_reg_n_0_[7] ),
        .I2(sda_cout_reg_i_4_n_0),
        .O(sda_cout_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6FF6)) 
    sda_cout_reg_i_3
       (.I0(clk_cnt[7]),
        .I1(Timing_param_tsusto[7]),
        .I2(clk_cnt[6]),
        .I3(Timing_param_tsusto[6]),
        .I4(sda_cout_reg_i_5_n_0),
        .I5(sda_cout_reg_i_6_n_0),
        .O(sda_cout_reg_i_3_n_0));
  LUT5 #(
    .INIT(32'hBABABABB)) 
    sda_cout_reg_i_4
       (.I0(\FSM_onehot_scl_state_reg_n_0_[0] ),
        .I1(sda_cout_reg_i_7_n_0),
        .I2(txer_edge_i_3_n_0),
        .I3(sm_stop_reg_n_0),
        .I4(gen_stop),
        .O(sda_cout_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    sda_cout_reg_i_5
       (.I0(Timing_param_tsusto[0]),
        .I1(clk_cnt[0]),
        .I2(clk_cnt[1]),
        .I3(Timing_param_tsusto[1]),
        .I4(clk_cnt[2]),
        .I5(Timing_param_tsusto[2]),
        .O(sda_cout_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    sda_cout_reg_i_6
       (.I0(Timing_param_tsusto[3]),
        .I1(clk_cnt[3]),
        .I2(clk_cnt[4]),
        .I3(Timing_param_tsusto[4]),
        .I4(clk_cnt[5]),
        .I5(Timing_param_tsusto[5]),
        .O(sda_cout_reg_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    sda_cout_reg_i_7
       (.I0(\FSM_onehot_scl_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_scl_state_reg_n_0_[6] ),
        .I2(\LEVEL_1_GEN.master_sda_reg_n_0 ),
        .I3(Rsta),
        .O(sda_cout_reg_i_7_n_0));
  FDSE sda_cout_reg_reg
       (.C(Sys_clk),
        .CE(sda_cout),
        .D(sda_cout_reg_i_2_n_0),
        .Q(sda_cout_reg),
        .S(al_i_i_1_n_0));
  FDRE sda_rin_d1_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(Sda_I),
        .Q(sda_rin_d1),
        .R(1'b0));
  FDRE sda_sample_reg
       (.C(Sys_clk),
        .CE(scl_rising_edge),
        .D(Sda_I),
        .Q(sda_sample),
        .R(al_i_i_1_n_0));
  LUT4 #(
    .INIT(16'hFF54)) 
    sda_setup_i_1
       (.I0(Scl_I),
        .I1(p_4_in5_in),
        .I2(Tx_under_prev),
        .I3(sda_setup_i_3_n_0),
        .O(sda_setup_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h54)) 
    sda_setup_i_2
       (.I0(Scl_I),
        .I1(p_4_in5_in),
        .I2(Tx_under_prev),
        .O(sda_setup_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    sda_setup_i_3
       (.I0(sda_setup_cnt[6]),
        .I1(Timing_param_tsudat[6]),
        .I2(sda_setup_cnt[7]),
        .I3(Timing_param_tsudat[7]),
        .I4(sda_setup_i_4_n_0),
        .I5(sda_setup_i_5_n_0),
        .O(sda_setup_i_3_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    sda_setup_i_4
       (.I0(Timing_param_tsudat[0]),
        .I1(sda_setup_cnt[0]),
        .I2(sda_setup_cnt[1]),
        .I3(Timing_param_tsudat[1]),
        .I4(sda_setup_cnt[2]),
        .I5(Timing_param_tsudat[2]),
        .O(sda_setup_i_4_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    sda_setup_i_5
       (.I0(Timing_param_tsudat[3]),
        .I1(sda_setup_cnt[3]),
        .I2(sda_setup_cnt[5]),
        .I3(Timing_param_tsudat[5]),
        .I4(sda_setup_cnt[4]),
        .I5(Timing_param_tsudat[4]),
        .O(sda_setup_i_5_n_0));
  FDRE sda_setup_reg
       (.C(Sys_clk),
        .CE(sda_setup_i_1_n_0),
        .D(sda_setup_i_2_n_0),
        .Q(sda_setup),
        .R(al_i_i_1_n_0));
  LUT6 #(
    .INIT(64'hC8C0C8C0FFFFC8C0)) 
    shift_reg_en_i_1
       (.I0(p_2_in),
        .I1(scl_rising_edge),
        .I2(\FSM_onehot_state[3]_i_3_n_0 ),
        .I3(master_slave),
        .I4(scl_f_edg_d2),
        .I5(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(shift_reg_en0));
  FDRE shift_reg_en_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(shift_reg_en0),
        .Q(shift_reg_en),
        .R(al_i_i_1_n_0));
  FDRE shift_reg_ld_d1_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(shift_reg_ld),
        .Q(shift_reg_ld_d1),
        .R(al_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    shift_reg_ld_i_1
       (.I0(detect_start),
        .I1(p_1_in6_in),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(Tx_under_prev),
        .I4(shift_reg_ld_i_2_n_0),
        .O(shift_reg_ld0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hEFC0E0C0)) 
    shift_reg_ld_i_2
       (.I0(Tx),
        .I1(p_4_in),
        .I2(master_slave),
        .I3(p_1_in0_in),
        .I4(i2c_header[0]),
        .O(shift_reg_ld_i_2_n_0));
  FDRE shift_reg_ld_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(shift_reg_ld0),
        .Q(shift_reg_ld),
        .R(al_i_i_1_n_0));
  LUT6 #(
    .INIT(64'hABBBA888ABBBABBB)) 
    slave_sda_i_1
       (.I0(Txak),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(p_1_in0_in),
        .I3(aas_i_i_2_n_0),
        .I4(shift_reg[7]),
        .I5(p_0_in),
        .O(slave_sda_i_1_n_0));
  FDSE slave_sda_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(slave_sda_i_1_n_0),
        .Q(slave_sda_reg_n_0),
        .S(al_i_i_1_n_0));
  LUT5 #(
    .INIT(32'h00004000)) 
    sm_stop_i_1
       (.I0(arb_lost),
        .I1(master_slave),
        .I2(sda_sample),
        .I3(tx_under_prev_i_i_3_n_0),
        .I4(\FSM_onehot_state[6]_i_4_n_0 ),
        .O(sm_stop10_out));
  FDRE sm_stop_reg
       (.C(Sys_clk),
        .CE(sm_stop10_out),
        .D(master_slave),
        .Q(sm_stop_reg_n_0),
        .R(bus_busy_i_1_n_0));
  FDRE srw_i_reg
       (.C(Sys_clk),
        .CE(p_1_in0_in),
        .D(i2c_header[0]),
        .Q(Srw),
        .R(al_i_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFF2)) 
    stop_scl_reg_i_1
       (.I0(CLKCNT_i_6_n_0),
        .I1(stop_scl_reg_i_3_n_0),
        .I2(\FSM_onehot_scl_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_scl_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_scl_state[9]_i_4_n_0 ),
        .O(stop_scl));
  LUT5 #(
    .INIT(32'h0000EEE0)) 
    stop_scl_reg_i_2
       (.I0(\FSM_onehot_scl_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_scl_state_reg_n_0_[6] ),
        .I2(gen_stop),
        .I3(sm_stop_reg_n_0),
        .I4(txer_edge_i_3_n_0),
        .O(stop_scl_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    stop_scl_reg_i_3
       (.I0(stop_scl_reg),
        .I1(Rsta),
        .I2(sda_cout_reg_i_3_n_0),
        .O(stop_scl_reg_i_3_n_0));
  FDRE stop_scl_reg_reg
       (.C(Sys_clk),
        .CE(stop_scl),
        .D(stop_scl_reg_i_2_n_0),
        .Q(stop_scl_reg),
        .R(al_i_i_1_n_0));
  FDRE tx_under_prev_d1_reg
       (.C(Sys_clk),
        .CE(1'b1),
        .D(Tx_under_prev),
        .Q(tx_under_prev_d1),
        .R(al_i_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    tx_under_prev_i_i_1
       (.I0(tx_under_prev_i0),
        .I1(p_1_in6_in),
        .I2(Dtre),
        .I3(p_4_in),
        .O(tx_under_prev_i_i_1_n_0));
  LUT6 #(
    .INIT(64'h2002000000000000)) 
    tx_under_prev_i_i_2
       (.I0(tx_under_prev_i_i_3_n_0),
        .I1(gen_stop),
        .I2(Aas),
        .I3(Srw),
        .I4(Dtre),
        .I5(scl_falling_edge),
        .O(tx_under_prev_i0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'hE)) 
    tx_under_prev_i_i_3
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_1_in0_in),
        .O(tx_under_prev_i_i_3_n_0));
  FDRE tx_under_prev_i_reg
       (.C(Sys_clk),
        .CE(tx_under_prev_i_i_1_n_0),
        .D(tx_under_prev_i0),
        .Q(Tx_under_prev),
        .R(al_i_i_1_n_0));
  LUT3 #(
    .INIT(8'h4F)) 
    txer_edge_i_1
       (.I0(scl_falling_edge),
        .I1(scl_f_edg_d2),
        .I2(Reset),
        .O(txer_edge_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    txer_edge_i_2
       (.I0(scl_falling_edge),
        .I1(txer_edge_i_3_n_0),
        .O(txer_i));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hE)) 
    txer_edge_i_3
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(tx_under_prev_i_i_3_n_0),
        .O(txer_edge_i_3_n_0));
  FDRE txer_edge_reg
       (.C(Sys_clk),
        .CE(txer_i),
        .D(sda_sample),
        .Q(Txer),
        .R(txer_edge_i_1_n_0));
  FDRE txer_i_reg
       (.C(Sys_clk),
        .CE(txer_i),
        .D(sda_sample),
        .Q(txer_i_reg_n_0),
        .R(al_i_i_1_n_0));
endmodule

(* C_INCLUDE_DEV_ISC = "FALSE" *) (* C_INCLUDE_DEV_PENCODER = "FALSE" *) (* C_IPIF_DWIDTH = "32" *) 
(* C_IP_INTR_MODE_ARRAY = "256'b0000000000000000000000000000001100000000000000000000000000000011000000000000000000000000000000110000000000000000000000000000001100000000000000000000000000000011000000000000000000000000000000110000000000000000000000000000001100000000000000000000000000000011" *) (* C_NUM_CE = "16" *) (* C_NUM_IPIF_IRPT_SRC = "1" *) 
module kf_bd_axi_iic_0_0_interrupt_control
   (bus2ip_clk,
    bus2ip_reset,
    bus2ip_data,
    bus2ip_be,
    interrupt_rdce,
    interrupt_wrce,
    ipif_reg_interrupts,
    ipif_lvl_interrupts,
    ip2bus_intrevent,
    intr2bus_devintr,
    intr2bus_dbus,
    intr2bus_wrack,
    intr2bus_rdack,
    intr2bus_error,
    intr2bus_retry,
    intr2bus_toutsup);
  input bus2ip_clk;
  input bus2ip_reset;
  input [0:31]bus2ip_data;
  input [0:3]bus2ip_be;
  input [0:15]interrupt_rdce;
  input [0:15]interrupt_wrce;
  input [0:1]ipif_reg_interrupts;
  input [0:0]ipif_lvl_interrupts;
  input [0:7]ip2bus_intrevent;
  output intr2bus_devintr;
  output [0:31]intr2bus_dbus;
  output intr2bus_wrack;
  output intr2bus_rdack;
  output intr2bus_error;
  output intr2bus_retry;
  output intr2bus_toutsup;

  wire \<const0> ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg_n_0_[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0 ;
  wire bus2ip_clk;
  wire [0:31]bus2ip_data;
  wire bus2ip_reset;
  wire [0:15]interrupt_rdce;
  wire [0:15]interrupt_wrce;
  wire [0:31]\^intr2bus_dbus ;
  wire intr2bus_devintr;
  wire intr2bus_devintr_INST_0_i_1_n_0;
  wire intr2bus_devintr_INST_0_i_2_n_0;
  wire intr2bus_devintr_INST_0_i_3_n_0;
  wire intr2bus_devintr_INST_0_i_4_n_0;
  wire [0:7]ip2bus_intrevent;
  wire \ip_irpt_enable_reg_reg_n_0_[0] ;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire [31:31]p_0_in;
  wire p_0_in0_in;
  wire p_0_in11_in;
  wire p_0_in14_in;
  wire p_0_in17_in;
  wire p_0_in2_in;
  wire p_0_in5_in;
  wire p_0_in8_in;
  wire p_1_in;
  wire p_1_in10_in;
  wire p_1_in13_in;
  wire p_1_in16_in;
  wire p_1_in1_in;
  wire p_1_in4_in;
  wire p_1_in7_in;

  assign intr2bus_dbus[0] = \^intr2bus_dbus [0];
  assign intr2bus_dbus[1] = \<const0> ;
  assign intr2bus_dbus[2] = \<const0> ;
  assign intr2bus_dbus[3] = \<const0> ;
  assign intr2bus_dbus[4] = \<const0> ;
  assign intr2bus_dbus[5] = \<const0> ;
  assign intr2bus_dbus[6] = \<const0> ;
  assign intr2bus_dbus[7] = \<const0> ;
  assign intr2bus_dbus[8] = \<const0> ;
  assign intr2bus_dbus[9] = \<const0> ;
  assign intr2bus_dbus[10] = \<const0> ;
  assign intr2bus_dbus[11] = \<const0> ;
  assign intr2bus_dbus[12] = \<const0> ;
  assign intr2bus_dbus[13] = \<const0> ;
  assign intr2bus_dbus[14] = \<const0> ;
  assign intr2bus_dbus[15] = \<const0> ;
  assign intr2bus_dbus[16] = \<const0> ;
  assign intr2bus_dbus[17] = \<const0> ;
  assign intr2bus_dbus[18] = \<const0> ;
  assign intr2bus_dbus[19] = \<const0> ;
  assign intr2bus_dbus[20] = \<const0> ;
  assign intr2bus_dbus[21] = \<const0> ;
  assign intr2bus_dbus[22] = \<const0> ;
  assign intr2bus_dbus[23] = \<const0> ;
  assign intr2bus_dbus[24:31] = \^intr2bus_dbus [24:31];
  assign intr2bus_error = \<const0> ;
  assign intr2bus_rdack = \<const0> ;
  assign intr2bus_retry = \<const0> ;
  assign intr2bus_toutsup = \<const0> ;
  assign intr2bus_wrack = \<const0> ;
  LUT5 #(
    .INIT(32'hFBFFF4F0)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(interrupt_wrce[8]),
        .I2(ip2bus_intrevent[0]),
        .I3(bus2ip_data[31]),
        .I4(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg_n_0_[0] ),
        .O(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] 
       (.C(bus2ip_clk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ),
        .Q(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg_n_0_[0] ),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'hFBFFF4F0)) 
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(interrupt_wrce[8]),
        .I2(ip2bus_intrevent[1]),
        .I3(bus2ip_data[30]),
        .I4(p_1_in16_in),
        .O(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] 
       (.C(bus2ip_clk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ),
        .Q(p_1_in16_in),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'hFBFFF4F0)) 
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(interrupt_wrce[8]),
        .I2(ip2bus_intrevent[2]),
        .I3(bus2ip_data[29]),
        .I4(p_1_in13_in),
        .O(\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] 
       (.C(bus2ip_clk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0 ),
        .Q(p_1_in13_in),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'hFBFFF4F0)) 
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(interrupt_wrce[8]),
        .I2(ip2bus_intrevent[3]),
        .I3(bus2ip_data[28]),
        .I4(p_1_in10_in),
        .O(\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] 
       (.C(bus2ip_clk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0 ),
        .Q(p_1_in10_in),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'hFBFFF4F0)) 
    \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(interrupt_wrce[8]),
        .I2(ip2bus_intrevent[4]),
        .I3(bus2ip_data[27]),
        .I4(p_1_in7_in),
        .O(\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] 
       (.C(bus2ip_clk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0 ),
        .Q(p_1_in7_in),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'hFBFFF4F0)) 
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(interrupt_wrce[8]),
        .I2(ip2bus_intrevent[5]),
        .I3(bus2ip_data[26]),
        .I4(p_1_in4_in),
        .O(\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] 
       (.C(bus2ip_clk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0 ),
        .Q(p_1_in4_in),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'hFBFFF4F0)) 
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(interrupt_wrce[8]),
        .I2(ip2bus_intrevent[6]),
        .I3(bus2ip_data[25]),
        .I4(p_1_in1_in),
        .O(\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] 
       (.C(bus2ip_clk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0 ),
        .Q(p_1_in1_in),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'hFBFFF4F0)) 
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(interrupt_wrce[8]),
        .I2(ip2bus_intrevent[7]),
        .I3(bus2ip_data[24]),
        .I4(p_1_in),
        .O(\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] 
       (.C(bus2ip_clk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0 ),
        .Q(p_1_in),
        .R(bus2ip_reset));
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'h0040)) 
    \intr2bus_dbus[0]_INST_0 
       (.I0(interrupt_rdce[8]),
        .I1(p_0_in),
        .I2(interrupt_rdce[7]),
        .I3(interrupt_rdce[10]),
        .O(\^intr2bus_dbus [0]));
  LUT4 #(
    .INIT(16'hB888)) 
    \intr2bus_dbus[24]_INST_0 
       (.I0(p_1_in),
        .I1(interrupt_rdce[8]),
        .I2(p_0_in17_in),
        .I3(interrupt_rdce[10]),
        .O(\^intr2bus_dbus [24]));
  LUT4 #(
    .INIT(16'hB888)) 
    \intr2bus_dbus[25]_INST_0 
       (.I0(p_1_in1_in),
        .I1(interrupt_rdce[8]),
        .I2(p_0_in14_in),
        .I3(interrupt_rdce[10]),
        .O(\^intr2bus_dbus [25]));
  LUT4 #(
    .INIT(16'hB888)) 
    \intr2bus_dbus[26]_INST_0 
       (.I0(p_1_in4_in),
        .I1(interrupt_rdce[8]),
        .I2(p_0_in11_in),
        .I3(interrupt_rdce[10]),
        .O(\^intr2bus_dbus [26]));
  LUT4 #(
    .INIT(16'hB888)) 
    \intr2bus_dbus[27]_INST_0 
       (.I0(p_1_in7_in),
        .I1(interrupt_rdce[8]),
        .I2(p_0_in8_in),
        .I3(interrupt_rdce[10]),
        .O(\^intr2bus_dbus [27]));
  LUT4 #(
    .INIT(16'hB888)) 
    \intr2bus_dbus[28]_INST_0 
       (.I0(p_1_in10_in),
        .I1(interrupt_rdce[8]),
        .I2(p_0_in5_in),
        .I3(interrupt_rdce[10]),
        .O(\^intr2bus_dbus [28]));
  LUT4 #(
    .INIT(16'hB888)) 
    \intr2bus_dbus[29]_INST_0 
       (.I0(p_1_in13_in),
        .I1(interrupt_rdce[8]),
        .I2(p_0_in2_in),
        .I3(interrupt_rdce[10]),
        .O(\^intr2bus_dbus [29]));
  LUT4 #(
    .INIT(16'hB888)) 
    \intr2bus_dbus[30]_INST_0 
       (.I0(p_1_in16_in),
        .I1(interrupt_rdce[8]),
        .I2(p_0_in0_in),
        .I3(interrupt_rdce[10]),
        .O(\^intr2bus_dbus [30]));
  LUT4 #(
    .INIT(16'hB888)) 
    \intr2bus_dbus[31]_INST_0 
       (.I0(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg_n_0_[0] ),
        .I1(interrupt_rdce[8]),
        .I2(\ip_irpt_enable_reg_reg_n_0_[0] ),
        .I3(interrupt_rdce[10]),
        .O(\^intr2bus_dbus [31]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    intr2bus_devintr_INST_0
       (.I0(p_0_in),
        .I1(intr2bus_devintr_INST_0_i_1_n_0),
        .I2(intr2bus_devintr_INST_0_i_2_n_0),
        .I3(intr2bus_devintr_INST_0_i_3_n_0),
        .I4(intr2bus_devintr_INST_0_i_4_n_0),
        .O(intr2bus_devintr));
  LUT4 #(
    .INIT(16'hF888)) 
    intr2bus_devintr_INST_0_i_1
       (.I0(p_0_in14_in),
        .I1(p_1_in1_in),
        .I2(p_0_in17_in),
        .I3(p_1_in),
        .O(intr2bus_devintr_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    intr2bus_devintr_INST_0_i_2
       (.I0(p_0_in11_in),
        .I1(p_1_in4_in),
        .I2(p_0_in2_in),
        .I3(p_1_in13_in),
        .O(intr2bus_devintr_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'h0777)) 
    intr2bus_devintr_INST_0_i_3
       (.I0(p_0_in5_in),
        .I1(p_1_in10_in),
        .I2(\ip_irpt_enable_reg_reg_n_0_[0] ),
        .I3(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg_n_0_[0] ),
        .O(intr2bus_devintr_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    intr2bus_devintr_INST_0_i_4
       (.I0(p_0_in8_in),
        .I1(p_1_in7_in),
        .I2(p_0_in0_in),
        .I3(p_1_in16_in),
        .O(intr2bus_devintr_INST_0_i_4_n_0));
  FDRE \ip_irpt_enable_reg_reg[0] 
       (.C(bus2ip_clk),
        .CE(interrupt_wrce[10]),
        .D(bus2ip_data[31]),
        .Q(\ip_irpt_enable_reg_reg_n_0_[0] ),
        .R(bus2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[1] 
       (.C(bus2ip_clk),
        .CE(interrupt_wrce[10]),
        .D(bus2ip_data[30]),
        .Q(p_0_in0_in),
        .R(bus2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[2] 
       (.C(bus2ip_clk),
        .CE(interrupt_wrce[10]),
        .D(bus2ip_data[29]),
        .Q(p_0_in2_in),
        .R(bus2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[3] 
       (.C(bus2ip_clk),
        .CE(interrupt_wrce[10]),
        .D(bus2ip_data[28]),
        .Q(p_0_in5_in),
        .R(bus2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[4] 
       (.C(bus2ip_clk),
        .CE(interrupt_wrce[10]),
        .D(bus2ip_data[27]),
        .Q(p_0_in8_in),
        .R(bus2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[5] 
       (.C(bus2ip_clk),
        .CE(interrupt_wrce[10]),
        .D(bus2ip_data[26]),
        .Q(p_0_in11_in),
        .R(bus2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[6] 
       (.C(bus2ip_clk),
        .CE(interrupt_wrce[10]),
        .D(bus2ip_data[25]),
        .Q(p_0_in14_in),
        .R(bus2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[7] 
       (.C(bus2ip_clk),
        .CE(interrupt_wrce[10]),
        .D(bus2ip_data[24]),
        .Q(p_0_in17_in),
        .R(bus2ip_reset));
  FDRE ipif_glbl_irpt_enable_reg_reg
       (.C(bus2ip_clk),
        .CE(interrupt_wrce[7]),
        .D(bus2ip_data[0]),
        .Q(p_0_in),
        .R(bus2ip_reset));
  LUT3 #(
    .INIT(8'hFE)) 
    irpt_wrack_d1_i_1
       (.I0(interrupt_wrce[7]),
        .I1(interrupt_wrce[10]),
        .I2(interrupt_wrce[8]),
        .O(irpt_wrack));
  FDRE irpt_wrack_d1_reg
       (.C(bus2ip_clk),
        .CE(1'b1),
        .D(irpt_wrack),
        .Q(irpt_wrack_d1),
        .R(bus2ip_reset));
endmodule

(* CHECK_LICENSE_TYPE = "kf_bd_axi_iic_0_0,axi_iic,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_iic,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module kf_bd_axi_iic_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    iic2intc_irpt,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    sda_i,
    sda_o,
    sda_t,
    scl_i,
    scl_o,
    scl_t,
    gpo);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_mode = "slave S_AXI_ACLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN kf_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_mode = "slave S_AXI_ARESETN" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTERRUPT INTERRUPT" *) (* x_interface_mode = "master INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output iic2intc_irpt;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_mode = "slave S_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN kf_bd_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [8:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [8:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SDA_I" *) (* x_interface_mode = "master IIC" *) (* x_interface_parameter = "XIL_INTERFACENAME IIC, BOARD.ASSOCIATED_PARAM IIC_BOARD_INTERFACE" *) input sda_i;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SDA_O" *) output sda_o;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SDA_T" *) output sda_t;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SCL_I" *) input scl_i;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SCL_O" *) output scl_o;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SCL_T" *) output scl_t;
  output [0:0]gpo;

  wire \<const0> ;
  wire [0:0]gpo;
  wire iic2intc_irpt;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire scl_i;
  wire scl_t;
  wire sda_i;
  wire sda_t;
  wire NLW_U0_scl_o_UNCONNECTED;
  wire NLW_U0_sda_o_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [30:8]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [31];
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7:0] = \^s_axi_rdata [7:0];
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  assign scl_o = \<const0> ;
  assign sda_o = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_DEFAULT_VALUE = "8'b00000000" *) 
  (* C_DISABLE_SETUP_VIOLATION_CHECK = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_GPO_WIDTH = "1" *) 
  (* C_IIC_FREQ = "400000" *) 
  (* C_SCL_INERTIAL_DELAY = "0" *) 
  (* C_SDA_INERTIAL_DELAY = "0" *) 
  (* C_SDA_LEVEL = "1" *) 
  (* C_SMBUS_PMBUS_HOST = "0" *) 
  (* C_STATIC_TIMING_REG_WIDTH = "0" *) 
  (* C_S_AXI_ACLK_FREQ_HZ = "50000000" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TEN_BIT_ADR = "0" *) 
  (* C_TIMING_REG_WIDTH = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  kf_bd_axi_iic_0_0_axi_iic U0
       (.gpo(gpo),
        .iic2intc_irpt(iic2intc_irpt),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp({\^s_axi_bresp ,NLW_U0_s_axi_bresp_UNCONNECTED[0]}),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(\^s_axi_rdata ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp({\^s_axi_rresp ,NLW_U0_s_axi_rresp_UNCONNECTED[0]}),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[9:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid),
        .scl_i(scl_i),
        .scl_o(NLW_U0_scl_o_UNCONNECTED),
        .scl_t(scl_t),
        .sda_i(sda_i),
        .sda_o(NLW_U0_sda_o_UNCONNECTED),
        .sda_t(sda_t));
endmodule

(* C_AB = "3" *) (* C_AW = "9" *) (* C_BAR = "9'b000000000" *) 
(* C_FAMILY = "nofamily" *) 
module kf_bd_axi_iic_0_0_pselect_f
   (A,
    AValid,
    CS);
  input [0:8]A;
  input AValid;
  output CS;

  wire [0:8]A;
  wire AValid;
  wire CS;

  LUT4 #(
    .INIT(16'h0002)) 
    CS_INST_0
       (.I0(AValid),
        .I1(A[1]),
        .I2(A[2]),
        .I3(A[0]),
        .O(CS));
endmodule

(* C_AB = "4" *) (* C_AW = "4" *) (* C_BAR = "4'b1010" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized10
   (A,
    AValid,
    CS);
  input [0:3]A;
  input AValid;
  output CS;

  wire [0:3]A;
  wire AValid;
  wire CS;

  LUT5 #(
    .INIT(32'h10000000)) 
    CS_INST_0
       (.I0(A[1]),
        .I1(A[3]),
        .I2(A[2]),
        .I3(A[0]),
        .I4(AValid),
        .O(CS));
endmodule

(* C_AB = "7" *) (* C_AW = "9" *) (* C_BAR = "9'b001000000" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized16
   (A,
    AValid,
    CS);
  input [0:8]A;
  input AValid;
  output CS;

  wire [0:8]A;
  wire AValid;
  wire CS;
  wire CS_INST_0_i_1_n_0;

  LUT3 #(
    .INIT(8'h02)) 
    CS_INST_0
       (.I0(AValid),
        .I1(CS_INST_0_i_1_n_0),
        .I2(A[0]),
        .O(CS));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    CS_INST_0_i_1
       (.I0(A[1]),
        .I1(A[3]),
        .I2(A[5]),
        .I3(A[6]),
        .I4(A[4]),
        .I5(A[2]),
        .O(CS_INST_0_i_1_n_0));
endmodule

(* C_AB = "1" *) (* C_AW = "9" *) (* C_BAR = "9'b100000000" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized17
   (A,
    AValid,
    CS);
  input [0:8]A;
  input AValid;
  output CS;

  wire [0:8]A;
  wire AValid;
  wire CS;

  LUT2 #(
    .INIT(4'h8)) 
    CS_INST_0
       (.I0(A[0]),
        .I1(AValid),
        .O(CS));
endmodule

(* C_AB = "5" *) (* C_AW = "5" *) (* C_BAR = "5'b00000" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized18
   (A,
    AValid,
    CS);
  input [0:4]A;
  input AValid;
  output CS;

  wire [0:4]A;
  wire AValid;
  wire CS;

  LUT6 #(
    .INIT(64'h0000000000000002)) 
    CS_INST_0
       (.I0(AValid),
        .I1(A[1]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[2]),
        .I5(A[0]),
        .O(CS));
endmodule

(* C_AB = "5" *) (* C_AW = "5" *) (* C_BAR = "5'b00001" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized19
   (A,
    AValid,
    CS);
  input [0:4]A;
  input AValid;
  output CS;

  wire [0:4]A;
  wire AValid;
  wire CS;

  LUT6 #(
    .INIT(64'h0000000000000200)) 
    CS_INST_0
       (.I0(AValid),
        .I1(A[1]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[2]),
        .I5(A[0]),
        .O(CS));
endmodule

(* C_AB = "5" *) (* C_AW = "5" *) (* C_BAR = "5'b00010" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized20
   (A,
    AValid,
    CS);
  input [0:4]A;
  input AValid;
  output CS;

  wire [0:4]A;
  wire AValid;
  wire CS;

  LUT6 #(
    .INIT(64'h0000000000000020)) 
    CS_INST_0
       (.I0(AValid),
        .I1(A[1]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[2]),
        .I5(A[0]),
        .O(CS));
endmodule

(* C_AB = "5" *) (* C_AW = "5" *) (* C_BAR = "5'b00011" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized21
   (A,
    AValid,
    CS);
  input [0:4]A;
  input AValid;
  output CS;

  wire [0:4]A;
  wire AValid;
  wire CS;

  LUT6 #(
    .INIT(64'h0000000000002000)) 
    CS_INST_0
       (.I0(AValid),
        .I1(A[1]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[2]),
        .I5(A[0]),
        .O(CS));
endmodule

(* C_AB = "5" *) (* C_AW = "5" *) (* C_BAR = "5'b00100" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized22
   (A,
    AValid,
    CS);
  input [0:4]A;
  input AValid;
  output CS;

  wire [0:4]A;
  wire AValid;
  wire CS;

  LUT6 #(
    .INIT(64'h0000000000020000)) 
    CS_INST_0
       (.I0(AValid),
        .I1(A[1]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[2]),
        .I5(A[0]),
        .O(CS));
endmodule

(* C_AB = "5" *) (* C_AW = "5" *) (* C_BAR = "5'b00101" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized23
   (A,
    AValid,
    CS);
  input [0:4]A;
  input AValid;
  output CS;

  wire [0:4]A;
  wire AValid;
  wire CS;

  LUT6 #(
    .INIT(64'h0000000002000000)) 
    CS_INST_0
       (.I0(AValid),
        .I1(A[1]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[2]),
        .I5(A[0]),
        .O(CS));
endmodule

(* C_AB = "5" *) (* C_AW = "5" *) (* C_BAR = "5'b00110" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized24
   (A,
    AValid,
    CS);
  input [0:4]A;
  input AValid;
  output CS;

  wire [0:4]A;
  wire AValid;
  wire CS;

  LUT6 #(
    .INIT(64'h0000000000200000)) 
    CS_INST_0
       (.I0(AValid),
        .I1(A[1]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[2]),
        .I5(A[0]),
        .O(CS));
endmodule

(* C_AB = "5" *) (* C_AW = "5" *) (* C_BAR = "5'b00111" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized25
   (A,
    AValid,
    CS);
  input [0:4]A;
  input AValid;
  output CS;

  wire [0:4]A;
  wire AValid;
  wire CS;

  LUT6 #(
    .INIT(64'h0000000020000000)) 
    CS_INST_0
       (.I0(AValid),
        .I1(A[1]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[2]),
        .I5(A[0]),
        .O(CS));
endmodule

(* C_AB = "5" *) (* C_AW = "5" *) (* C_BAR = "5'b01000" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized26
   (A,
    AValid,
    CS);
  input [0:4]A;
  input AValid;
  output CS;

  wire [0:4]A;
  wire AValid;
  wire CS;

  LUT6 #(
    .INIT(64'h0000000000000008)) 
    CS_INST_0
       (.I0(AValid),
        .I1(A[1]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[2]),
        .I5(A[0]),
        .O(CS));
endmodule

(* C_AB = "5" *) (* C_AW = "5" *) (* C_BAR = "5'b01001" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized27
   (A,
    AValid,
    CS);
  input [0:4]A;
  input AValid;
  output CS;

  wire [0:4]A;
  wire AValid;
  wire CS;

  LUT6 #(
    .INIT(64'h0000000000000800)) 
    CS_INST_0
       (.I0(AValid),
        .I1(A[1]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[2]),
        .I5(A[0]),
        .O(CS));
endmodule

(* C_AB = "5" *) (* C_AW = "5" *) (* C_BAR = "5'b01010" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized28
   (A,
    AValid,
    CS);
  input [0:4]A;
  input AValid;
  output CS;

  wire [0:4]A;
  wire AValid;
  wire CS;

  LUT6 #(
    .INIT(64'h0000000000000080)) 
    CS_INST_0
       (.I0(AValid),
        .I1(A[1]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[2]),
        .I5(A[0]),
        .O(CS));
endmodule

(* C_AB = "5" *) (* C_AW = "5" *) (* C_BAR = "5'b01011" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized29
   (A,
    AValid,
    CS);
  input [0:4]A;
  input AValid;
  output CS;

  wire [0:4]A;
  wire AValid;
  wire CS;

  LUT6 #(
    .INIT(64'h0000000000008000)) 
    CS_INST_0
       (.I0(AValid),
        .I1(A[1]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[2]),
        .I5(A[0]),
        .O(CS));
endmodule

(* C_AB = "5" *) (* C_AW = "5" *) (* C_BAR = "5'b01100" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized30
   (A,
    AValid,
    CS);
  input [0:4]A;
  input AValid;
  output CS;

  wire [0:4]A;
  wire AValid;
  wire CS;

  LUT6 #(
    .INIT(64'h0000000000080000)) 
    CS_INST_0
       (.I0(AValid),
        .I1(A[1]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[2]),
        .I5(A[0]),
        .O(CS));
endmodule

(* C_AB = "5" *) (* C_AW = "5" *) (* C_BAR = "5'b01101" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized31
   (A,
    AValid,
    CS);
  input [0:4]A;
  input AValid;
  output CS;

  wire [0:4]A;
  wire AValid;
  wire CS;

  LUT6 #(
    .INIT(64'h0000000008000000)) 
    CS_INST_0
       (.I0(AValid),
        .I1(A[1]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[2]),
        .I5(A[0]),
        .O(CS));
endmodule

(* C_AB = "5" *) (* C_AW = "5" *) (* C_BAR = "5'b01110" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized32
   (A,
    AValid,
    CS);
  input [0:4]A;
  input AValid;
  output CS;

  wire [0:4]A;
  wire AValid;
  wire CS;

  LUT6 #(
    .INIT(64'h0000000000800000)) 
    CS_INST_0
       (.I0(AValid),
        .I1(A[1]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[2]),
        .I5(A[0]),
        .O(CS));
endmodule

(* C_AB = "5" *) (* C_AW = "5" *) (* C_BAR = "5'b01111" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized33
   (A,
    AValid,
    CS);
  input [0:4]A;
  input AValid;
  output CS;

  wire [0:4]A;
  wire AValid;
  wire CS;

  LUT6 #(
    .INIT(64'h0000000080000000)) 
    CS_INST_0
       (.I0(AValid),
        .I1(A[1]),
        .I2(A[3]),
        .I3(A[4]),
        .I4(A[2]),
        .I5(A[0]),
        .O(CS));
endmodule

(* C_AB = "5" *) (* C_AW = "5" *) (* C_BAR = "5'b10000" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized34
   (A,
    AValid,
    CS);
  input [0:4]A;
  input AValid;
  output CS;

  wire [0:4]A;
  wire AValid;
  wire CS;

  LUT6 #(
    .INIT(64'h0001000000000000)) 
    CS_INST_0
       (.I0(A[1]),
        .I1(A[3]),
        .I2(A[4]),
        .I3(A[2]),
        .I4(A[0]),
        .I5(AValid),
        .O(CS));
endmodule

(* C_AB = "5" *) (* C_AW = "5" *) (* C_BAR = "5'b10001" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized35
   (A,
    AValid,
    CS);
  input [0:4]A;
  input AValid;
  output CS;

  wire [0:4]A;
  wire AValid;
  wire CS;

  LUT6 #(
    .INIT(64'h0010000000000000)) 
    CS_INST_0
       (.I0(A[1]),
        .I1(A[3]),
        .I2(A[4]),
        .I3(A[2]),
        .I4(A[0]),
        .I5(AValid),
        .O(CS));
endmodule

(* C_AB = "4" *) (* C_AW = "4" *) (* C_BAR = "4'b0111" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized7
   (A,
    AValid,
    CS);
  input [0:3]A;
  input AValid;
  output CS;

  wire [0:3]A;
  wire AValid;
  wire CS;

  LUT5 #(
    .INIT(32'h00008000)) 
    CS_INST_0
       (.I0(AValid),
        .I1(A[1]),
        .I2(A[3]),
        .I3(A[2]),
        .I4(A[0]),
        .O(CS));
endmodule

(* C_AB = "4" *) (* C_AW = "4" *) (* C_BAR = "4'b1000" *) 
(* C_FAMILY = "nofamily" *) (* ORIG_REF_NAME = "pselect_f" *) 
module kf_bd_axi_iic_0_0_pselect_f__parameterized8
   (A,
    AValid,
    CS);
  input [0:3]A;
  input AValid;
  output CS;

  wire [0:3]A;
  wire AValid;
  wire CS;

  LUT5 #(
    .INIT(32'h01000000)) 
    CS_INST_0
       (.I0(A[1]),
        .I1(A[3]),
        .I2(A[2]),
        .I3(A[0]),
        .I4(AValid),
        .O(CS));
endmodule

(* C_DEFAULT_VALUE = "8'b00000000" *) (* C_GPO_WIDTH = "1" *) (* C_IIC_FREQ = "400000" *) 
(* C_NUM_IIC_REGS = "18" *) (* C_RC_FIFO_BITS = "4" *) (* C_RC_FIFO_EXIST = "TRUE" *) 
(* C_SCL_INERTIAL_DELAY = "0" *) (* C_SIZE = "8" *) (* C_SMBUS_PMBUS_HOST = "0" *) 
(* C_S_AXI_ACLK_FREQ_HZ = "50000000" *) (* C_S_AXI_ADDR_WIDTH = "9" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* C_TEN_BIT_ADR = "0" *) (* C_TX_FIFO_BITS = "4" *) (* C_TX_FIFO_EXIST = "TRUE" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module kf_bd_axi_iic_0_0_reg_interface
   (Clk,
    Rst,
    Bus2IIC_Addr,
    Bus2IIC_Data,
    Bus2IIC_WrCE,
    Bus2IIC_RdCE,
    IIC2Bus_Data,
    IIC2Bus_IntrEvent,
    Gpo,
    Cr,
    Msms_rst,
    Rsta_rst,
    Msms_set,
    DynMsmsSet,
    DynRstaSet,
    Cr_txModeSelect_set,
    Cr_txModeSelect_clr,
    Aas,
    Bb,
    Srw,
    Abgc,
    Dtr,
    Rdy_new_xmt,
    Dtre,
    Drr,
    Data_i2c,
    New_rcv_dta,
    Ro_prev,
    Adr,
    Ten_adr,
    Al,
    Txer,
    Tx_under_prev,
    Timing_param_tsusta,
    Timing_param_tsusto,
    Timing_param_thdsta,
    Timing_param_tsudat,
    Timing_param_tbuf,
    Timing_param_thigh,
    Timing_param_tlow,
    Timing_param_thddat,
    Tx_fifo_data,
    Tx_data_exists,
    Tx_fifo_wr,
    Tx_fifo_rd,
    Tx_fifo_rst,
    Tx_fifo_Full,
    Tx_addr,
    Rc_fifo_data,
    Rc_fifo_wr,
    Rc_fifo_rd,
    Rc_fifo_Full,
    Rc_data_Exists,
    Rc_addr,
    reg_empty);
  input Clk;
  input Rst;
  input [0:8]Bus2IIC_Addr;
  input [0:31]Bus2IIC_Data;
  input [0:17]Bus2IIC_WrCE;
  input [0:17]Bus2IIC_RdCE;
  output [0:31]IIC2Bus_Data;
  output [0:7]IIC2Bus_IntrEvent;
  output [31:31]Gpo;
  output [0:7]Cr;
  input Msms_rst;
  input Rsta_rst;
  output Msms_set;
  input DynMsmsSet;
  input DynRstaSet;
  input Cr_txModeSelect_set;
  input Cr_txModeSelect_clr;
  input Aas;
  input Bb;
  input Srw;
  input Abgc;
  output [0:7]Dtr;
  input Rdy_new_xmt;
  output Dtre;
  output [0:7]Drr;
  input [0:7]Data_i2c;
  input New_rcv_dta;
  output Ro_prev;
  output [0:7]Adr;
  output [5:7]Ten_adr;
  input Al;
  input Txer;
  input Tx_under_prev;
  output [7:0]Timing_param_tsusta;
  output [7:0]Timing_param_tsusto;
  output [7:0]Timing_param_thdsta;
  output [7:0]Timing_param_tsudat;
  output [7:0]Timing_param_tbuf;
  output [7:0]Timing_param_thigh;
  output [7:0]Timing_param_tlow;
  output [7:0]Timing_param_thddat;
  input [0:7]Tx_fifo_data;
  input Tx_data_exists;
  output Tx_fifo_wr;
  output Tx_fifo_rd;
  output Tx_fifo_rst;
  input Tx_fifo_Full;
  input [0:3]Tx_addr;
  input [0:7]Rc_fifo_data;
  output Rc_fifo_wr;
  output Rc_fifo_rd;
  input Rc_fifo_Full;
  input Rc_data_Exists;
  input [0:3]Rc_addr;
  input reg_empty;

  wire Aas;
  wire Abgc;
  wire [0:7]Adr;
  wire Al;
  wire Bb;
  wire [0:8]Bus2IIC_Addr;
  wire [0:31]Bus2IIC_Data;
  wire [0:17]Bus2IIC_RdCE;
  wire [0:17]Bus2IIC_WrCE;
  wire Clk;
  wire [0:7]Cr;
  wire Cr_txModeSelect_clr;
  wire Cr_txModeSelect_set;
  wire Dtre;
  wire DynMsmsSet;
  wire DynRstaSet;
  wire [31:31]Gpo;
  wire [0:31]IIC2Bus_Data;
  wire \IIC2Bus_Data[24]_INST_0_i_10_n_0 ;
  wire \IIC2Bus_Data[24]_INST_0_i_1_n_0 ;
  wire \IIC2Bus_Data[24]_INST_0_i_2_n_0 ;
  wire \IIC2Bus_Data[24]_INST_0_i_3_n_0 ;
  wire \IIC2Bus_Data[24]_INST_0_i_4_n_0 ;
  wire \IIC2Bus_Data[24]_INST_0_i_5_n_0 ;
  wire \IIC2Bus_Data[24]_INST_0_i_6_n_0 ;
  wire \IIC2Bus_Data[24]_INST_0_i_7_n_0 ;
  wire \IIC2Bus_Data[24]_INST_0_i_8_n_0 ;
  wire \IIC2Bus_Data[24]_INST_0_i_9_n_0 ;
  wire \IIC2Bus_Data[25]_INST_0_i_1_n_0 ;
  wire \IIC2Bus_Data[25]_INST_0_i_2_n_0 ;
  wire \IIC2Bus_Data[25]_INST_0_i_3_n_0 ;
  wire \IIC2Bus_Data[25]_INST_0_i_4_n_0 ;
  wire \IIC2Bus_Data[25]_INST_0_i_5_n_0 ;
  wire \IIC2Bus_Data[26]_INST_0_i_1_n_0 ;
  wire \IIC2Bus_Data[26]_INST_0_i_2_n_0 ;
  wire \IIC2Bus_Data[26]_INST_0_i_3_n_0 ;
  wire \IIC2Bus_Data[26]_INST_0_i_4_n_0 ;
  wire \IIC2Bus_Data[26]_INST_0_i_5_n_0 ;
  wire \IIC2Bus_Data[27]_INST_0_i_1_n_0 ;
  wire \IIC2Bus_Data[27]_INST_0_i_2_n_0 ;
  wire \IIC2Bus_Data[27]_INST_0_i_3_n_0 ;
  wire \IIC2Bus_Data[27]_INST_0_i_4_n_0 ;
  wire \IIC2Bus_Data[27]_INST_0_i_5_n_0 ;
  wire \IIC2Bus_Data[28]_INST_0_i_1_n_0 ;
  wire \IIC2Bus_Data[28]_INST_0_i_2_n_0 ;
  wire \IIC2Bus_Data[28]_INST_0_i_3_n_0 ;
  wire \IIC2Bus_Data[28]_INST_0_i_4_n_0 ;
  wire \IIC2Bus_Data[28]_INST_0_i_5_n_0 ;
  wire \IIC2Bus_Data[28]_INST_0_i_6_n_0 ;
  wire \IIC2Bus_Data[28]_INST_0_i_7_n_0 ;
  wire \IIC2Bus_Data[29]_INST_0_i_1_n_0 ;
  wire \IIC2Bus_Data[29]_INST_0_i_2_n_0 ;
  wire \IIC2Bus_Data[29]_INST_0_i_3_n_0 ;
  wire \IIC2Bus_Data[29]_INST_0_i_4_n_0 ;
  wire \IIC2Bus_Data[29]_INST_0_i_5_n_0 ;
  wire \IIC2Bus_Data[29]_INST_0_i_6_n_0 ;
  wire \IIC2Bus_Data[29]_INST_0_i_7_n_0 ;
  wire \IIC2Bus_Data[30]_INST_0_i_1_n_0 ;
  wire \IIC2Bus_Data[30]_INST_0_i_2_n_0 ;
  wire \IIC2Bus_Data[30]_INST_0_i_3_n_0 ;
  wire \IIC2Bus_Data[30]_INST_0_i_4_n_0 ;
  wire \IIC2Bus_Data[30]_INST_0_i_5_n_0 ;
  wire \IIC2Bus_Data[30]_INST_0_i_6_n_0 ;
  wire \IIC2Bus_Data[30]_INST_0_i_7_n_0 ;
  wire \IIC2Bus_Data[31]_INST_0_i_1_n_0 ;
  wire \IIC2Bus_Data[31]_INST_0_i_2_n_0 ;
  wire \IIC2Bus_Data[31]_INST_0_i_3_n_0 ;
  wire \IIC2Bus_Data[31]_INST_0_i_4_n_0 ;
  wire \IIC2Bus_Data[31]_INST_0_i_5_n_0 ;
  wire \IIC2Bus_Data[31]_INST_0_i_6_n_0 ;
  wire [0:7]IIC2Bus_IntrEvent;
  wire \IIC2Bus_IntrEvent[4]_i_1_n_0 ;
  wire \IIC2Bus_IntrEvent[6]_i_1_n_0 ;
  wire Msms_rst;
  wire Msms_set;
  wire New_rcv_dta;
  wire \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg_n_0_[7] ;
  wire \RD_FIFO_CNTRL.ro_prev_i_i_1_n_0 ;
  wire \RD_FIFO_CNTRL.ro_prev_i_i_3_n_0 ;
  wire [0:3]Rc_addr;
  wire Rc_data_Exists;
  wire Rc_fifo_Full;
  wire [0:7]Rc_fifo_data;
  wire Rc_fifo_rd;
  wire Rc_fifo_wr;
  wire Rc_fifo_wr0;
  wire Rdy_new_xmt;
  wire Ro_prev;
  wire Rst;
  wire Rsta_rst;
  wire Srw;
  wire [7:0]Timing_param_tbuf;
  wire [7:0]Timing_param_thddat;
  wire [7:0]Timing_param_thdsta;
  wire [7:0]Timing_param_thigh;
  wire [7:0]Timing_param_tlow;
  wire [7:0]Timing_param_tsudat;
  wire [7:0]Timing_param_tsusta;
  wire [7:0]Timing_param_tsusto;
  wire [0:3]Tx_addr;
  wire Tx_data_exists;
  wire Tx_fifo_Full;
  wire [0:7]Tx_fifo_data;
  wire Tx_fifo_rd;
  wire Tx_fifo_rst;
  wire Tx_fifo_wr;
  wire Tx_under_prev;
  wire Txer;
  wire \cr_i[2]_i_1_n_0 ;
  wire \cr_i[4]_i_1_n_0 ;
  wire \cr_i[5]_i_1_n_0 ;
  wire \cr_i_reg_n_0_[0] ;
  wire \cr_i_reg_n_0_[6] ;
  wire msms_d1;
  wire msms_set_i0;
  wire msms_set_i_i_1_n_0;
  wire new_rcv_dta_d1;
  wire p_0_in;
  wire [6:6]p_0_out;
  wire p_1_in;
  wire p_1_in2_in;
  wire p_1_in3_in;
  wire ro_prev_i0;
  wire [1:7]sr_i;
  wire \sr_i[0]_i_1_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \FIFO_GEN_DTR.IIC2Bus_IntrEvent[7]_i_1 
       (.I0(Tx_addr[3]),
        .O(p_0_in));
  FDRE \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7] 
       (.C(Clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(IIC2Bus_IntrEvent[7]),
        .R(Rst));
  FDRE \FIFO_GEN_DTR.Tx_fifo_rd_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(Rdy_new_xmt),
        .Q(Tx_fifo_rd),
        .R(Rst));
  FDSE \FIFO_GEN_DTR.Tx_fifo_rst_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(\cr_i_reg_n_0_[6] ),
        .Q(Tx_fifo_rst),
        .S(Rst));
  FDRE \FIFO_GEN_DTR.Tx_fifo_wr_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(Bus2IIC_WrCE[2]),
        .Q(Tx_fifo_wr),
        .R(Rst));
  FDRE \GPO_GEN.gpo_i_reg[31] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[9]),
        .D(Bus2IIC_Data[31]),
        .Q(Gpo),
        .R(Rst));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \IIC2Bus_Data[24]_INST_0 
       (.I0(\IIC2Bus_Data[24]_INST_0_i_1_n_0 ),
        .I1(Bus2IIC_Addr[3]),
        .I2(\IIC2Bus_Data[24]_INST_0_i_2_n_0 ),
        .I3(Bus2IIC_Addr[2]),
        .I4(\IIC2Bus_Data[24]_INST_0_i_3_n_0 ),
        .I5(\IIC2Bus_Data[24]_INST_0_i_4_n_0 ),
        .O(IIC2Bus_Data[24]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \IIC2Bus_Data[24]_INST_0_i_1 
       (.I0(Adr[0]),
        .I1(Bus2IIC_Addr[6]),
        .I2(Bus2IIC_Addr[5]),
        .I3(Bus2IIC_Addr[4]),
        .I4(\IIC2Bus_Data[24]_INST_0_i_5_n_0 ),
        .O(\IIC2Bus_Data[24]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \IIC2Bus_Data[24]_INST_0_i_10 
       (.I0(Bus2IIC_RdCE[8]),
        .I1(Bus2IIC_RdCE[3]),
        .I2(Bus2IIC_RdCE[15]),
        .I3(Bus2IIC_RdCE[0]),
        .O(\IIC2Bus_Data[24]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \IIC2Bus_Data[24]_INST_0_i_2 
       (.I0(\IIC2Bus_Data[24]_INST_0_i_6_n_0 ),
        .I1(Bus2IIC_Addr[4]),
        .I2(Timing_param_tsusta[7]),
        .I3(Bus2IIC_Addr[6]),
        .I4(Timing_param_tsusto[7]),
        .I5(Bus2IIC_Addr[5]),
        .O(\IIC2Bus_Data[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \IIC2Bus_Data[24]_INST_0_i_3 
       (.I0(Timing_param_tlow[7]),
        .I1(Bus2IIC_Addr[6]),
        .I2(Timing_param_thddat[7]),
        .I3(Bus2IIC_Addr[5]),
        .I4(Bus2IIC_Addr[4]),
        .I5(Bus2IIC_Addr[3]),
        .O(\IIC2Bus_Data[24]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF4)) 
    \IIC2Bus_Data[24]_INST_0_i_4 
       (.I0(\IIC2Bus_Data[24]_INST_0_i_7_n_0 ),
        .I1(\IIC2Bus_Data[24]_INST_0_i_8_n_0 ),
        .I2(Bus2IIC_Addr[8]),
        .I3(Bus2IIC_Addr[1]),
        .I4(Bus2IIC_Addr[7]),
        .O(\IIC2Bus_Data[24]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \IIC2Bus_Data[24]_INST_0_i_5 
       (.I0(Rc_fifo_data[0]),
        .I1(Tx_fifo_data[0]),
        .I2(Bus2IIC_Addr[5]),
        .I3(Dtre),
        .I4(Bus2IIC_Addr[6]),
        .I5(\cr_i_reg_n_0_[0] ),
        .O(\IIC2Bus_Data[24]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \IIC2Bus_Data[24]_INST_0_i_6 
       (.I0(Timing_param_thigh[7]),
        .I1(Timing_param_tbuf[7]),
        .I2(Bus2IIC_Addr[5]),
        .I3(Timing_param_tsudat[7]),
        .I4(Bus2IIC_Addr[6]),
        .I5(Timing_param_thdsta[7]),
        .O(\IIC2Bus_Data[24]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \IIC2Bus_Data[24]_INST_0_i_7 
       (.I0(Bus2IIC_RdCE[1]),
        .I1(Bus2IIC_RdCE[13]),
        .I2(Bus2IIC_RdCE[5]),
        .I3(Bus2IIC_RdCE[17]),
        .I4(\IIC2Bus_Data[24]_INST_0_i_9_n_0 ),
        .I5(\IIC2Bus_Data[24]_INST_0_i_10_n_0 ),
        .O(\IIC2Bus_Data[24]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \IIC2Bus_Data[24]_INST_0_i_8 
       (.I0(Bus2IIC_RdCE[10]),
        .I1(Bus2IIC_RdCE[7]),
        .I2(Bus2IIC_RdCE[9]),
        .I3(Bus2IIC_RdCE[16]),
        .I4(Bus2IIC_RdCE[11]),
        .I5(Bus2IIC_RdCE[12]),
        .O(\IIC2Bus_Data[24]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \IIC2Bus_Data[24]_INST_0_i_9 
       (.I0(Bus2IIC_RdCE[14]),
        .I1(Bus2IIC_RdCE[2]),
        .I2(Bus2IIC_RdCE[6]),
        .I3(Bus2IIC_RdCE[4]),
        .O(\IIC2Bus_Data[24]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \IIC2Bus_Data[25]_INST_0 
       (.I0(\IIC2Bus_Data[25]_INST_0_i_1_n_0 ),
        .I1(Bus2IIC_Addr[3]),
        .I2(\IIC2Bus_Data[25]_INST_0_i_2_n_0 ),
        .I3(Bus2IIC_Addr[2]),
        .I4(\IIC2Bus_Data[25]_INST_0_i_3_n_0 ),
        .I5(\IIC2Bus_Data[24]_INST_0_i_4_n_0 ),
        .O(IIC2Bus_Data[25]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \IIC2Bus_Data[25]_INST_0_i_1 
       (.I0(Adr[1]),
        .I1(Bus2IIC_Addr[6]),
        .I2(Bus2IIC_Addr[5]),
        .I3(Bus2IIC_Addr[4]),
        .I4(\IIC2Bus_Data[25]_INST_0_i_4_n_0 ),
        .O(\IIC2Bus_Data[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \IIC2Bus_Data[25]_INST_0_i_2 
       (.I0(\IIC2Bus_Data[25]_INST_0_i_5_n_0 ),
        .I1(Bus2IIC_Addr[4]),
        .I2(Timing_param_tsusta[6]),
        .I3(Bus2IIC_Addr[6]),
        .I4(Timing_param_tsusto[6]),
        .I5(Bus2IIC_Addr[5]),
        .O(\IIC2Bus_Data[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \IIC2Bus_Data[25]_INST_0_i_3 
       (.I0(Timing_param_tlow[6]),
        .I1(Bus2IIC_Addr[6]),
        .I2(Timing_param_thddat[6]),
        .I3(Bus2IIC_Addr[5]),
        .I4(Bus2IIC_Addr[4]),
        .I5(Bus2IIC_Addr[3]),
        .O(\IIC2Bus_Data[25]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \IIC2Bus_Data[25]_INST_0_i_4 
       (.I0(Rc_fifo_data[1]),
        .I1(Tx_fifo_data[1]),
        .I2(Bus2IIC_Addr[5]),
        .I3(sr_i[1]),
        .I4(Bus2IIC_Addr[6]),
        .I5(Cr[1]),
        .O(\IIC2Bus_Data[25]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \IIC2Bus_Data[25]_INST_0_i_5 
       (.I0(Timing_param_thigh[6]),
        .I1(Timing_param_tbuf[6]),
        .I2(Bus2IIC_Addr[5]),
        .I3(Timing_param_tsudat[6]),
        .I4(Bus2IIC_Addr[6]),
        .I5(Timing_param_thdsta[6]),
        .O(\IIC2Bus_Data[25]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \IIC2Bus_Data[26]_INST_0 
       (.I0(\IIC2Bus_Data[26]_INST_0_i_1_n_0 ),
        .I1(Bus2IIC_Addr[3]),
        .I2(\IIC2Bus_Data[26]_INST_0_i_2_n_0 ),
        .I3(Bus2IIC_Addr[2]),
        .I4(\IIC2Bus_Data[26]_INST_0_i_3_n_0 ),
        .I5(\IIC2Bus_Data[24]_INST_0_i_4_n_0 ),
        .O(IIC2Bus_Data[26]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \IIC2Bus_Data[26]_INST_0_i_1 
       (.I0(Adr[2]),
        .I1(Bus2IIC_Addr[6]),
        .I2(Bus2IIC_Addr[5]),
        .I3(Bus2IIC_Addr[4]),
        .I4(\IIC2Bus_Data[26]_INST_0_i_4_n_0 ),
        .O(\IIC2Bus_Data[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \IIC2Bus_Data[26]_INST_0_i_2 
       (.I0(\IIC2Bus_Data[26]_INST_0_i_5_n_0 ),
        .I1(Bus2IIC_Addr[4]),
        .I2(Timing_param_tsusta[5]),
        .I3(Bus2IIC_Addr[6]),
        .I4(Timing_param_tsusto[5]),
        .I5(Bus2IIC_Addr[5]),
        .O(\IIC2Bus_Data[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \IIC2Bus_Data[26]_INST_0_i_3 
       (.I0(Timing_param_tlow[5]),
        .I1(Bus2IIC_Addr[6]),
        .I2(Timing_param_thddat[5]),
        .I3(Bus2IIC_Addr[5]),
        .I4(Bus2IIC_Addr[4]),
        .I5(Bus2IIC_Addr[3]),
        .O(\IIC2Bus_Data[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \IIC2Bus_Data[26]_INST_0_i_4 
       (.I0(Rc_fifo_data[2]),
        .I1(Tx_fifo_data[2]),
        .I2(Bus2IIC_Addr[5]),
        .I3(sr_i[2]),
        .I4(Bus2IIC_Addr[6]),
        .I5(Cr[2]),
        .O(\IIC2Bus_Data[26]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \IIC2Bus_Data[26]_INST_0_i_5 
       (.I0(Timing_param_thigh[5]),
        .I1(Timing_param_tbuf[5]),
        .I2(Bus2IIC_Addr[5]),
        .I3(Timing_param_tsudat[5]),
        .I4(Bus2IIC_Addr[6]),
        .I5(Timing_param_thdsta[5]),
        .O(\IIC2Bus_Data[26]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \IIC2Bus_Data[27]_INST_0 
       (.I0(\IIC2Bus_Data[27]_INST_0_i_1_n_0 ),
        .I1(Bus2IIC_Addr[3]),
        .I2(\IIC2Bus_Data[27]_INST_0_i_2_n_0 ),
        .I3(Bus2IIC_Addr[2]),
        .I4(\IIC2Bus_Data[27]_INST_0_i_3_n_0 ),
        .I5(\IIC2Bus_Data[24]_INST_0_i_4_n_0 ),
        .O(IIC2Bus_Data[27]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \IIC2Bus_Data[27]_INST_0_i_1 
       (.I0(Adr[3]),
        .I1(Bus2IIC_Addr[6]),
        .I2(Bus2IIC_Addr[5]),
        .I3(Bus2IIC_Addr[4]),
        .I4(\IIC2Bus_Data[27]_INST_0_i_4_n_0 ),
        .O(\IIC2Bus_Data[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \IIC2Bus_Data[27]_INST_0_i_2 
       (.I0(\IIC2Bus_Data[27]_INST_0_i_5_n_0 ),
        .I1(Bus2IIC_Addr[4]),
        .I2(Timing_param_tsusta[4]),
        .I3(Bus2IIC_Addr[6]),
        .I4(Timing_param_tsusto[4]),
        .I5(Bus2IIC_Addr[5]),
        .O(\IIC2Bus_Data[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \IIC2Bus_Data[27]_INST_0_i_3 
       (.I0(Timing_param_tlow[4]),
        .I1(Bus2IIC_Addr[6]),
        .I2(Timing_param_thddat[4]),
        .I3(Bus2IIC_Addr[5]),
        .I4(Bus2IIC_Addr[4]),
        .I5(Bus2IIC_Addr[3]),
        .O(\IIC2Bus_Data[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \IIC2Bus_Data[27]_INST_0_i_4 
       (.I0(Rc_fifo_data[3]),
        .I1(Tx_fifo_data[3]),
        .I2(Bus2IIC_Addr[5]),
        .I3(sr_i[3]),
        .I4(Bus2IIC_Addr[6]),
        .I5(Cr[3]),
        .O(\IIC2Bus_Data[27]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \IIC2Bus_Data[27]_INST_0_i_5 
       (.I0(Timing_param_thigh[4]),
        .I1(Timing_param_tbuf[4]),
        .I2(Bus2IIC_Addr[5]),
        .I3(Timing_param_tsudat[4]),
        .I4(Bus2IIC_Addr[6]),
        .I5(Timing_param_thdsta[4]),
        .O(\IIC2Bus_Data[27]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE400E4)) 
    \IIC2Bus_Data[28]_INST_0 
       (.I0(Bus2IIC_Addr[3]),
        .I1(\IIC2Bus_Data[28]_INST_0_i_1_n_0 ),
        .I2(\IIC2Bus_Data[28]_INST_0_i_2_n_0 ),
        .I3(Bus2IIC_Addr[2]),
        .I4(\IIC2Bus_Data[28]_INST_0_i_3_n_0 ),
        .I5(\IIC2Bus_Data[24]_INST_0_i_4_n_0 ),
        .O(IIC2Bus_Data[28]));
  MUXF7 \IIC2Bus_Data[28]_INST_0_i_1 
       (.I0(\IIC2Bus_Data[28]_INST_0_i_4_n_0 ),
        .I1(\IIC2Bus_Data[28]_INST_0_i_5_n_0 ),
        .O(\IIC2Bus_Data[28]_INST_0_i_1_n_0 ),
        .S(Bus2IIC_Addr[4]));
  MUXF7 \IIC2Bus_Data[28]_INST_0_i_2 
       (.I0(\IIC2Bus_Data[28]_INST_0_i_6_n_0 ),
        .I1(\IIC2Bus_Data[28]_INST_0_i_7_n_0 ),
        .O(\IIC2Bus_Data[28]_INST_0_i_2_n_0 ),
        .S(Bus2IIC_Addr[4]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \IIC2Bus_Data[28]_INST_0_i_3 
       (.I0(Timing_param_tlow[3]),
        .I1(Bus2IIC_Addr[6]),
        .I2(Timing_param_thddat[3]),
        .I3(Bus2IIC_Addr[5]),
        .I4(Bus2IIC_Addr[4]),
        .I5(Bus2IIC_Addr[3]),
        .O(\IIC2Bus_Data[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \IIC2Bus_Data[28]_INST_0_i_4 
       (.I0(Rc_fifo_data[4]),
        .I1(Tx_fifo_data[4]),
        .I2(Bus2IIC_Addr[5]),
        .I3(sr_i[4]),
        .I4(Bus2IIC_Addr[6]),
        .I5(Cr[4]),
        .O(\IIC2Bus_Data[28]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \IIC2Bus_Data[28]_INST_0_i_5 
       (.I0(Rc_addr[3]),
        .I1(Bus2IIC_Addr[5]),
        .I2(Tx_addr[3]),
        .I3(Bus2IIC_Addr[6]),
        .I4(Adr[4]),
        .O(\IIC2Bus_Data[28]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \IIC2Bus_Data[28]_INST_0_i_6 
       (.I0(Timing_param_tsusto[3]),
        .I1(Timing_param_tsusta[3]),
        .I2(Bus2IIC_Addr[5]),
        .I3(p_1_in3_in),
        .I4(Bus2IIC_Addr[6]),
        .O(\IIC2Bus_Data[28]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \IIC2Bus_Data[28]_INST_0_i_7 
       (.I0(Timing_param_thigh[3]),
        .I1(Timing_param_tbuf[3]),
        .I2(Bus2IIC_Addr[5]),
        .I3(Timing_param_tsudat[3]),
        .I4(Bus2IIC_Addr[6]),
        .I5(Timing_param_thdsta[3]),
        .O(\IIC2Bus_Data[28]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \IIC2Bus_Data[29]_INST_0 
       (.I0(\IIC2Bus_Data[29]_INST_0_i_1_n_0 ),
        .I1(Bus2IIC_Addr[3]),
        .I2(\IIC2Bus_Data[29]_INST_0_i_2_n_0 ),
        .I3(Bus2IIC_Addr[2]),
        .I4(\IIC2Bus_Data[29]_INST_0_i_3_n_0 ),
        .I5(\IIC2Bus_Data[24]_INST_0_i_4_n_0 ),
        .O(IIC2Bus_Data[29]));
  MUXF7 \IIC2Bus_Data[29]_INST_0_i_1 
       (.I0(\IIC2Bus_Data[29]_INST_0_i_4_n_0 ),
        .I1(\IIC2Bus_Data[29]_INST_0_i_5_n_0 ),
        .O(\IIC2Bus_Data[29]_INST_0_i_1_n_0 ),
        .S(Bus2IIC_Addr[4]));
  MUXF7 \IIC2Bus_Data[29]_INST_0_i_2 
       (.I0(\IIC2Bus_Data[29]_INST_0_i_6_n_0 ),
        .I1(\IIC2Bus_Data[29]_INST_0_i_7_n_0 ),
        .O(\IIC2Bus_Data[29]_INST_0_i_2_n_0 ),
        .S(Bus2IIC_Addr[4]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \IIC2Bus_Data[29]_INST_0_i_3 
       (.I0(Timing_param_tlow[2]),
        .I1(Bus2IIC_Addr[6]),
        .I2(Timing_param_thddat[2]),
        .I3(Bus2IIC_Addr[5]),
        .I4(Bus2IIC_Addr[4]),
        .I5(Bus2IIC_Addr[3]),
        .O(\IIC2Bus_Data[29]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \IIC2Bus_Data[29]_INST_0_i_4 
       (.I0(Timing_param_tsusto[2]),
        .I1(Timing_param_tsusta[2]),
        .I2(Bus2IIC_Addr[5]),
        .I3(p_1_in2_in),
        .I4(Bus2IIC_Addr[6]),
        .O(\IIC2Bus_Data[29]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \IIC2Bus_Data[29]_INST_0_i_5 
       (.I0(Timing_param_thigh[2]),
        .I1(Timing_param_tbuf[2]),
        .I2(Bus2IIC_Addr[5]),
        .I3(Timing_param_tsudat[2]),
        .I4(Bus2IIC_Addr[6]),
        .I5(Timing_param_thdsta[2]),
        .O(\IIC2Bus_Data[29]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \IIC2Bus_Data[29]_INST_0_i_6 
       (.I0(Rc_fifo_data[5]),
        .I1(Tx_fifo_data[5]),
        .I2(Bus2IIC_Addr[5]),
        .I3(sr_i[5]),
        .I4(Bus2IIC_Addr[6]),
        .I5(Cr[5]),
        .O(\IIC2Bus_Data[29]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \IIC2Bus_Data[29]_INST_0_i_7 
       (.I0(Rc_addr[2]),
        .I1(Bus2IIC_Addr[5]),
        .I2(Tx_addr[2]),
        .I3(Bus2IIC_Addr[6]),
        .I4(Adr[5]),
        .O(\IIC2Bus_Data[29]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE400E4)) 
    \IIC2Bus_Data[30]_INST_0 
       (.I0(Bus2IIC_Addr[3]),
        .I1(\IIC2Bus_Data[30]_INST_0_i_1_n_0 ),
        .I2(\IIC2Bus_Data[30]_INST_0_i_2_n_0 ),
        .I3(Bus2IIC_Addr[2]),
        .I4(\IIC2Bus_Data[30]_INST_0_i_3_n_0 ),
        .I5(\IIC2Bus_Data[24]_INST_0_i_4_n_0 ),
        .O(IIC2Bus_Data[30]));
  MUXF7 \IIC2Bus_Data[30]_INST_0_i_1 
       (.I0(\IIC2Bus_Data[30]_INST_0_i_4_n_0 ),
        .I1(\IIC2Bus_Data[30]_INST_0_i_5_n_0 ),
        .O(\IIC2Bus_Data[30]_INST_0_i_1_n_0 ),
        .S(Bus2IIC_Addr[4]));
  MUXF7 \IIC2Bus_Data[30]_INST_0_i_2 
       (.I0(\IIC2Bus_Data[30]_INST_0_i_6_n_0 ),
        .I1(\IIC2Bus_Data[30]_INST_0_i_7_n_0 ),
        .O(\IIC2Bus_Data[30]_INST_0_i_2_n_0 ),
        .S(Bus2IIC_Addr[4]));
  LUT6 #(
    .INIT(64'h0101010000010000)) 
    \IIC2Bus_Data[30]_INST_0_i_3 
       (.I0(Bus2IIC_Addr[5]),
        .I1(Bus2IIC_Addr[4]),
        .I2(Bus2IIC_Addr[3]),
        .I3(Bus2IIC_Addr[6]),
        .I4(Timing_param_tlow[1]),
        .I5(Timing_param_thddat[1]),
        .O(\IIC2Bus_Data[30]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \IIC2Bus_Data[30]_INST_0_i_4 
       (.I0(Rc_fifo_data[6]),
        .I1(Tx_fifo_data[6]),
        .I2(Bus2IIC_Addr[5]),
        .I3(IIC2Bus_IntrEvent[5]),
        .I4(Bus2IIC_Addr[6]),
        .I5(\cr_i_reg_n_0_[6] ),
        .O(\IIC2Bus_Data[30]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \IIC2Bus_Data[30]_INST_0_i_5 
       (.I0(Rc_addr[1]),
        .I1(Bus2IIC_Addr[5]),
        .I2(Tx_addr[1]),
        .I3(Bus2IIC_Addr[6]),
        .I4(Adr[6]),
        .O(\IIC2Bus_Data[30]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \IIC2Bus_Data[30]_INST_0_i_6 
       (.I0(Timing_param_tsusto[1]),
        .I1(Timing_param_tsusta[1]),
        .I2(Bus2IIC_Addr[5]),
        .I3(p_1_in),
        .I4(Bus2IIC_Addr[6]),
        .O(\IIC2Bus_Data[30]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \IIC2Bus_Data[30]_INST_0_i_7 
       (.I0(Timing_param_thigh[1]),
        .I1(Timing_param_tbuf[1]),
        .I2(Bus2IIC_Addr[5]),
        .I3(Timing_param_tsudat[1]),
        .I4(Bus2IIC_Addr[6]),
        .I5(Timing_param_thdsta[1]),
        .O(\IIC2Bus_Data[30]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \IIC2Bus_Data[31]_INST_0 
       (.I0(\IIC2Bus_Data[31]_INST_0_i_1_n_0 ),
        .I1(Bus2IIC_Addr[3]),
        .I2(\IIC2Bus_Data[31]_INST_0_i_2_n_0 ),
        .I3(Bus2IIC_Addr[2]),
        .I4(\IIC2Bus_Data[31]_INST_0_i_3_n_0 ),
        .I5(\IIC2Bus_Data[24]_INST_0_i_4_n_0 ),
        .O(IIC2Bus_Data[31]));
  LUT6 #(
    .INIT(64'h5808FFFF58080000)) 
    \IIC2Bus_Data[31]_INST_0_i_1 
       (.I0(Bus2IIC_Addr[6]),
        .I1(Tx_addr[0]),
        .I2(Bus2IIC_Addr[5]),
        .I3(Rc_addr[0]),
        .I4(Bus2IIC_Addr[4]),
        .I5(\IIC2Bus_Data[31]_INST_0_i_4_n_0 ),
        .O(\IIC2Bus_Data[31]_INST_0_i_1_n_0 ));
  MUXF7 \IIC2Bus_Data[31]_INST_0_i_2 
       (.I0(\IIC2Bus_Data[31]_INST_0_i_5_n_0 ),
        .I1(\IIC2Bus_Data[31]_INST_0_i_6_n_0 ),
        .O(\IIC2Bus_Data[31]_INST_0_i_2_n_0 ),
        .S(Bus2IIC_Addr[4]));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \IIC2Bus_Data[31]_INST_0_i_3 
       (.I0(Timing_param_tlow[0]),
        .I1(Bus2IIC_Addr[6]),
        .I2(Timing_param_thddat[0]),
        .I3(Bus2IIC_Addr[5]),
        .I4(Bus2IIC_Addr[4]),
        .I5(Bus2IIC_Addr[3]),
        .O(\IIC2Bus_Data[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \IIC2Bus_Data[31]_INST_0_i_4 
       (.I0(Rc_fifo_data[7]),
        .I1(Tx_fifo_data[7]),
        .I2(Bus2IIC_Addr[5]),
        .I3(sr_i[7]),
        .I4(Bus2IIC_Addr[6]),
        .I5(Cr[7]),
        .O(\IIC2Bus_Data[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \IIC2Bus_Data[31]_INST_0_i_5 
       (.I0(Timing_param_tsusto[0]),
        .I1(Timing_param_tsusta[0]),
        .I2(Bus2IIC_Addr[5]),
        .I3(Gpo),
        .I4(Bus2IIC_Addr[6]),
        .I5(\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg_n_0_[7] ),
        .O(\IIC2Bus_Data[31]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \IIC2Bus_Data[31]_INST_0_i_6 
       (.I0(Timing_param_thigh[0]),
        .I1(Timing_param_tbuf[0]),
        .I2(Bus2IIC_Addr[5]),
        .I3(Timing_param_tsudat[0]),
        .I4(Bus2IIC_Addr[6]),
        .I5(Timing_param_thdsta[0]),
        .O(\IIC2Bus_Data[31]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \IIC2Bus_IntrEvent[4]_i_1 
       (.I0(Bb),
        .O(\IIC2Bus_IntrEvent[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \IIC2Bus_IntrEvent[6]_i_1 
       (.I0(Aas),
        .O(\IIC2Bus_IntrEvent[6]_i_1_n_0 ));
  FDRE \IIC2Bus_IntrEvent_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(Al),
        .Q(IIC2Bus_IntrEvent[0]),
        .R(Rst));
  FDRE \IIC2Bus_IntrEvent_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(Txer),
        .Q(IIC2Bus_IntrEvent[1]),
        .R(Rst));
  FDRE \IIC2Bus_IntrEvent_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .D(Tx_under_prev),
        .Q(IIC2Bus_IntrEvent[2]),
        .R(Rst));
  FDRE \IIC2Bus_IntrEvent_reg[3] 
       (.C(Clk),
        .CE(1'b1),
        .D(Ro_prev),
        .Q(IIC2Bus_IntrEvent[3]),
        .R(Rst));
  FDRE \IIC2Bus_IntrEvent_reg[4] 
       (.C(Clk),
        .CE(1'b1),
        .D(\IIC2Bus_IntrEvent[4]_i_1_n_0 ),
        .Q(IIC2Bus_IntrEvent[4]),
        .R(Rst));
  FDRE \IIC2Bus_IntrEvent_reg[5] 
       (.C(Clk),
        .CE(1'b1),
        .D(Aas),
        .Q(IIC2Bus_IntrEvent[5]),
        .R(Rst));
  FDRE \IIC2Bus_IntrEvent_reg[6] 
       (.C(Clk),
        .CE(1'b1),
        .D(\IIC2Bus_IntrEvent[6]_i_1_n_0 ),
        .Q(IIC2Bus_IntrEvent[6]),
        .R(Rst));
  FDRE \RD_FIFO_CNTRL.Rc_fifo_rd_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(Bus2IIC_RdCE[3]),
        .Q(Rc_fifo_rd),
        .R(Rst));
  LUT2 #(
    .INIT(4'h2)) 
    \RD_FIFO_CNTRL.Rc_fifo_wr_i_1 
       (.I0(New_rcv_dta),
        .I1(new_rcv_dta_d1),
        .O(Rc_fifo_wr0));
  FDRE \RD_FIFO_CNTRL.Rc_fifo_wr_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(Rc_fifo_wr0),
        .Q(Rc_fifo_wr),
        .R(Rst));
  FDRE \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[8]),
        .D(Bus2IIC_Data[28]),
        .Q(p_1_in3_in),
        .R(Rst));
  FDRE \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[5] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[8]),
        .D(Bus2IIC_Data[29]),
        .Q(p_1_in2_in),
        .R(Rst));
  FDRE \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[6] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[8]),
        .D(Bus2IIC_Data[30]),
        .Q(p_1_in),
        .R(Rst));
  FDRE \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[8]),
        .D(Bus2IIC_Data[31]),
        .Q(\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg_n_0_[7] ),
        .R(Rst));
  LUT2 #(
    .INIT(4'hE)) 
    \RD_FIFO_CNTRL.ro_prev_i_i_1 
       (.I0(Rst),
        .I1(Msms_set),
        .O(\RD_FIFO_CNTRL.ro_prev_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0090000000000090)) 
    \RD_FIFO_CNTRL.ro_prev_i_i_2 
       (.I0(Rc_addr[0]),
        .I1(\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg_n_0_[7] ),
        .I2(Rc_data_Exists),
        .I3(\RD_FIFO_CNTRL.ro_prev_i_i_3_n_0 ),
        .I4(Rc_addr[3]),
        .I5(p_1_in3_in),
        .O(ro_prev_i0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \RD_FIFO_CNTRL.ro_prev_i_i_3 
       (.I0(Rc_addr[2]),
        .I1(p_1_in2_in),
        .I2(Rc_addr[1]),
        .I3(p_1_in),
        .O(\RD_FIFO_CNTRL.ro_prev_i_i_3_n_0 ));
  FDRE \RD_FIFO_CNTRL.ro_prev_i_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(ro_prev_i0),
        .Q(Ro_prev),
        .R(\RD_FIFO_CNTRL.ro_prev_i_i_1_n_0 ));
  FDRE \adr_i_reg[0] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[4]),
        .D(Bus2IIC_Data[24]),
        .Q(Adr[0]),
        .R(Rst));
  FDRE \adr_i_reg[1] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[4]),
        .D(Bus2IIC_Data[25]),
        .Q(Adr[1]),
        .R(Rst));
  FDRE \adr_i_reg[2] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[4]),
        .D(Bus2IIC_Data[26]),
        .Q(Adr[2]),
        .R(Rst));
  FDRE \adr_i_reg[3] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[4]),
        .D(Bus2IIC_Data[27]),
        .Q(Adr[3]),
        .R(Rst));
  FDRE \adr_i_reg[4] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[4]),
        .D(Bus2IIC_Data[28]),
        .Q(Adr[4]),
        .R(Rst));
  FDRE \adr_i_reg[5] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[4]),
        .D(Bus2IIC_Data[29]),
        .Q(Adr[5]),
        .R(Rst));
  FDRE \adr_i_reg[6] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[4]),
        .D(Bus2IIC_Data[30]),
        .Q(Adr[6]),
        .R(Rst));
  LUT5 #(
    .INIT(32'h8888BBB8)) 
    \cr_i[2]_i_1 
       (.I0(Bus2IIC_Data[26]),
        .I1(Bus2IIC_WrCE[0]),
        .I2(Cr[2]),
        .I3(DynRstaSet),
        .I4(Rsta_rst),
        .O(\cr_i[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8888BBB8)) 
    \cr_i[4]_i_1 
       (.I0(Bus2IIC_Data[28]),
        .I1(Bus2IIC_WrCE[0]),
        .I2(Cr[4]),
        .I3(Cr_txModeSelect_set),
        .I4(Cr_txModeSelect_clr),
        .O(\cr_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8888BBB8)) 
    \cr_i[5]_i_1 
       (.I0(Bus2IIC_Data[29]),
        .I1(Bus2IIC_WrCE[0]),
        .I2(Cr[5]),
        .I3(DynMsmsSet),
        .I4(Msms_rst),
        .O(\cr_i[5]_i_1_n_0 ));
  FDRE \cr_i_reg[0] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[0]),
        .D(Bus2IIC_Data[24]),
        .Q(\cr_i_reg_n_0_[0] ),
        .R(Rst));
  FDRE \cr_i_reg[1] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[0]),
        .D(Bus2IIC_Data[25]),
        .Q(Cr[1]),
        .R(Rst));
  FDRE \cr_i_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .D(\cr_i[2]_i_1_n_0 ),
        .Q(Cr[2]),
        .R(Rst));
  FDRE \cr_i_reg[3] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[0]),
        .D(Bus2IIC_Data[27]),
        .Q(Cr[3]),
        .R(Rst));
  FDRE \cr_i_reg[4] 
       (.C(Clk),
        .CE(1'b1),
        .D(\cr_i[4]_i_1_n_0 ),
        .Q(Cr[4]),
        .R(Rst));
  FDRE \cr_i_reg[5] 
       (.C(Clk),
        .CE(1'b1),
        .D(\cr_i[5]_i_1_n_0 ),
        .Q(Cr[5]),
        .R(Rst));
  FDRE \cr_i_reg[6] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[0]),
        .D(Bus2IIC_Data[30]),
        .Q(\cr_i_reg_n_0_[6] ),
        .R(Rst));
  FDRE \cr_i_reg[7] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[0]),
        .D(Bus2IIC_Data[31]),
        .Q(Cr[7]),
        .R(Rst));
  FDRE msms_d1_reg
       (.C(Clk),
        .CE(1'b1),
        .D(Cr[5]),
        .Q(msms_d1),
        .R(Rst));
  LUT4 #(
    .INIT(16'h58FF)) 
    msms_set_i_i_1
       (.I0(msms_d1),
        .I1(Ro_prev),
        .I2(Cr[5]),
        .I3(Bb),
        .O(msms_set_i_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    msms_set_i_i_2
       (.I0(msms_d1),
        .I1(Ro_prev),
        .I2(Cr[5]),
        .O(msms_set_i0));
  FDRE msms_set_i_reg
       (.C(Clk),
        .CE(msms_set_i_i_1_n_0),
        .D(msms_set_i0),
        .Q(Msms_set),
        .R(Rst));
  FDRE new_rcv_dta_d1_reg
       (.C(Clk),
        .CE(1'b1),
        .D(New_rcv_dta),
        .Q(new_rcv_dta_d1),
        .R(Rst));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sr_i[0]_i_1 
       (.I0(Tx_data_exists),
        .O(\sr_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sr_i[1]_i_1 
       (.I0(Rc_data_Exists),
        .O(p_0_out));
  FDRE \sr_i_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(\sr_i[0]_i_1_n_0 ),
        .Q(Dtre),
        .R(Rst));
  FDRE \sr_i_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(p_0_out),
        .Q(sr_i[1]),
        .R(Rst));
  FDRE \sr_i_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .D(Rc_fifo_Full),
        .Q(sr_i[2]),
        .R(Rst));
  FDRE \sr_i_reg[3] 
       (.C(Clk),
        .CE(1'b1),
        .D(Tx_fifo_Full),
        .Q(sr_i[3]),
        .R(Rst));
  FDRE \sr_i_reg[4] 
       (.C(Clk),
        .CE(1'b1),
        .D(Srw),
        .Q(sr_i[4]),
        .R(Rst));
  FDRE \sr_i_reg[5] 
       (.C(Clk),
        .CE(1'b1),
        .D(Bb),
        .Q(sr_i[5]),
        .R(Rst));
  FDRE \sr_i_reg[7] 
       (.C(Clk),
        .CE(1'b1),
        .D(Abgc),
        .Q(sr_i[7]),
        .R(Rst));
  FDRE \timing_param_tbuf_i_reg[0] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[14]),
        .D(Bus2IIC_Data[31]),
        .Q(Timing_param_tbuf[0]),
        .R(Rst));
  FDRE \timing_param_tbuf_i_reg[1] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[14]),
        .D(Bus2IIC_Data[30]),
        .Q(Timing_param_tbuf[1]),
        .R(Rst));
  FDRE \timing_param_tbuf_i_reg[2] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[14]),
        .D(Bus2IIC_Data[29]),
        .Q(Timing_param_tbuf[2]),
        .R(Rst));
  FDRE \timing_param_tbuf_i_reg[3] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[14]),
        .D(Bus2IIC_Data[28]),
        .Q(Timing_param_tbuf[3]),
        .R(Rst));
  FDSE \timing_param_tbuf_i_reg[4] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[14]),
        .D(Bus2IIC_Data[27]),
        .Q(Timing_param_tbuf[4]),
        .S(Rst));
  FDRE \timing_param_tbuf_i_reg[5] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[14]),
        .D(Bus2IIC_Data[26]),
        .Q(Timing_param_tbuf[5]),
        .R(Rst));
  FDSE \timing_param_tbuf_i_reg[6] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[14]),
        .D(Bus2IIC_Data[25]),
        .Q(Timing_param_tbuf[6]),
        .S(Rst));
  FDRE \timing_param_tbuf_i_reg[7] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[14]),
        .D(Bus2IIC_Data[24]),
        .Q(Timing_param_tbuf[7]),
        .R(Rst));
  FDSE \timing_param_thddat_i_reg[0] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[17]),
        .D(Bus2IIC_Data[31]),
        .Q(Timing_param_thddat[0]),
        .S(Rst));
  FDRE \timing_param_thddat_i_reg[1] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[17]),
        .D(Bus2IIC_Data[30]),
        .Q(Timing_param_thddat[1]),
        .R(Rst));
  FDRE \timing_param_thddat_i_reg[2] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[17]),
        .D(Bus2IIC_Data[29]),
        .Q(Timing_param_thddat[2]),
        .R(Rst));
  FDRE \timing_param_thddat_i_reg[3] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[17]),
        .D(Bus2IIC_Data[28]),
        .Q(Timing_param_thddat[3]),
        .R(Rst));
  FDRE \timing_param_thddat_i_reg[4] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[17]),
        .D(Bus2IIC_Data[27]),
        .Q(Timing_param_thddat[4]),
        .R(Rst));
  FDRE \timing_param_thddat_i_reg[5] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[17]),
        .D(Bus2IIC_Data[26]),
        .Q(Timing_param_thddat[5]),
        .R(Rst));
  FDRE \timing_param_thddat_i_reg[6] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[17]),
        .D(Bus2IIC_Data[25]),
        .Q(Timing_param_thddat[6]),
        .R(Rst));
  FDRE \timing_param_thddat_i_reg[7] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[17]),
        .D(Bus2IIC_Data[24]),
        .Q(Timing_param_thddat[7]),
        .R(Rst));
  FDSE \timing_param_thdsta_i_reg[0] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[12]),
        .D(Bus2IIC_Data[31]),
        .Q(Timing_param_thdsta[0]),
        .S(Rst));
  FDRE \timing_param_thdsta_i_reg[1] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[12]),
        .D(Bus2IIC_Data[30]),
        .Q(Timing_param_thdsta[1]),
        .R(Rst));
  FDSE \timing_param_thdsta_i_reg[2] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[12]),
        .D(Bus2IIC_Data[29]),
        .Q(Timing_param_thdsta[2]),
        .S(Rst));
  FDSE \timing_param_thdsta_i_reg[3] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[12]),
        .D(Bus2IIC_Data[28]),
        .Q(Timing_param_thdsta[3]),
        .S(Rst));
  FDRE \timing_param_thdsta_i_reg[4] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[12]),
        .D(Bus2IIC_Data[27]),
        .Q(Timing_param_thdsta[4]),
        .R(Rst));
  FDSE \timing_param_thdsta_i_reg[5] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[12]),
        .D(Bus2IIC_Data[26]),
        .Q(Timing_param_thdsta[5]),
        .S(Rst));
  FDRE \timing_param_thdsta_i_reg[6] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[12]),
        .D(Bus2IIC_Data[25]),
        .Q(Timing_param_thdsta[6]),
        .R(Rst));
  FDRE \timing_param_thdsta_i_reg[7] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[12]),
        .D(Bus2IIC_Data[24]),
        .Q(Timing_param_thdsta[7]),
        .R(Rst));
  FDSE \timing_param_thigh_i_reg[0] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[15]),
        .D(Bus2IIC_Data[31]),
        .Q(Timing_param_thigh[0]),
        .S(Rst));
  FDSE \timing_param_thigh_i_reg[1] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[15]),
        .D(Bus2IIC_Data[30]),
        .Q(Timing_param_thigh[1]),
        .S(Rst));
  FDSE \timing_param_thigh_i_reg[2] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[15]),
        .D(Bus2IIC_Data[29]),
        .Q(Timing_param_thigh[2]),
        .S(Rst));
  FDRE \timing_param_thigh_i_reg[3] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[15]),
        .D(Bus2IIC_Data[28]),
        .Q(Timing_param_thigh[3]),
        .R(Rst));
  FDSE \timing_param_thigh_i_reg[4] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[15]),
        .D(Bus2IIC_Data[27]),
        .Q(Timing_param_thigh[4]),
        .S(Rst));
  FDSE \timing_param_thigh_i_reg[5] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[15]),
        .D(Bus2IIC_Data[26]),
        .Q(Timing_param_thigh[5]),
        .S(Rst));
  FDRE \timing_param_thigh_i_reg[6] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[15]),
        .D(Bus2IIC_Data[25]),
        .Q(Timing_param_thigh[6]),
        .R(Rst));
  FDRE \timing_param_thigh_i_reg[7] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[15]),
        .D(Bus2IIC_Data[24]),
        .Q(Timing_param_thigh[7]),
        .R(Rst));
  FDSE \timing_param_tlow_i_reg[0] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[16]),
        .D(Bus2IIC_Data[31]),
        .Q(Timing_param_tlow[0]),
        .S(Rst));
  FDSE \timing_param_tlow_i_reg[1] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[16]),
        .D(Bus2IIC_Data[30]),
        .Q(Timing_param_tlow[1]),
        .S(Rst));
  FDSE \timing_param_tlow_i_reg[2] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[16]),
        .D(Bus2IIC_Data[29]),
        .Q(Timing_param_tlow[2]),
        .S(Rst));
  FDRE \timing_param_tlow_i_reg[3] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[16]),
        .D(Bus2IIC_Data[28]),
        .Q(Timing_param_tlow[3]),
        .R(Rst));
  FDSE \timing_param_tlow_i_reg[4] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[16]),
        .D(Bus2IIC_Data[27]),
        .Q(Timing_param_tlow[4]),
        .S(Rst));
  FDSE \timing_param_tlow_i_reg[5] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[16]),
        .D(Bus2IIC_Data[26]),
        .Q(Timing_param_tlow[5]),
        .S(Rst));
  FDRE \timing_param_tlow_i_reg[6] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[16]),
        .D(Bus2IIC_Data[25]),
        .Q(Timing_param_tlow[6]),
        .R(Rst));
  FDRE \timing_param_tlow_i_reg[7] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[16]),
        .D(Bus2IIC_Data[24]),
        .Q(Timing_param_tlow[7]),
        .R(Rst));
  FDRE \timing_param_tsudat_i_reg[0] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[13]),
        .D(Bus2IIC_Data[31]),
        .Q(Timing_param_tsudat[0]),
        .R(Rst));
  FDRE \timing_param_tsudat_i_reg[1] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[13]),
        .D(Bus2IIC_Data[30]),
        .Q(Timing_param_tsudat[1]),
        .R(Rst));
  FDSE \timing_param_tsudat_i_reg[2] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[13]),
        .D(Bus2IIC_Data[29]),
        .Q(Timing_param_tsudat[2]),
        .S(Rst));
  FDRE \timing_param_tsudat_i_reg[3] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[13]),
        .D(Bus2IIC_Data[28]),
        .Q(Timing_param_tsudat[3]),
        .R(Rst));
  FDSE \timing_param_tsudat_i_reg[4] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[13]),
        .D(Bus2IIC_Data[27]),
        .Q(Timing_param_tsudat[4]),
        .S(Rst));
  FDRE \timing_param_tsudat_i_reg[5] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[13]),
        .D(Bus2IIC_Data[26]),
        .Q(Timing_param_tsudat[5]),
        .R(Rst));
  FDRE \timing_param_tsudat_i_reg[6] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[13]),
        .D(Bus2IIC_Data[25]),
        .Q(Timing_param_tsudat[6]),
        .R(Rst));
  FDRE \timing_param_tsudat_i_reg[7] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[13]),
        .D(Bus2IIC_Data[24]),
        .Q(Timing_param_tsudat[7]),
        .R(Rst));
  FDSE \timing_param_tsusta_i_reg[0] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[10]),
        .D(Bus2IIC_Data[31]),
        .Q(Timing_param_tsusta[0]),
        .S(Rst));
  FDRE \timing_param_tsusta_i_reg[1] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[10]),
        .D(Bus2IIC_Data[30]),
        .Q(Timing_param_tsusta[1]),
        .R(Rst));
  FDSE \timing_param_tsusta_i_reg[2] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[10]),
        .D(Bus2IIC_Data[29]),
        .Q(Timing_param_tsusta[2]),
        .S(Rst));
  FDSE \timing_param_tsusta_i_reg[3] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[10]),
        .D(Bus2IIC_Data[28]),
        .Q(Timing_param_tsusta[3]),
        .S(Rst));
  FDRE \timing_param_tsusta_i_reg[4] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[10]),
        .D(Bus2IIC_Data[27]),
        .Q(Timing_param_tsusta[4]),
        .R(Rst));
  FDSE \timing_param_tsusta_i_reg[5] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[10]),
        .D(Bus2IIC_Data[26]),
        .Q(Timing_param_tsusta[5]),
        .S(Rst));
  FDRE \timing_param_tsusta_i_reg[6] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[10]),
        .D(Bus2IIC_Data[25]),
        .Q(Timing_param_tsusta[6]),
        .R(Rst));
  FDRE \timing_param_tsusta_i_reg[7] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[10]),
        .D(Bus2IIC_Data[24]),
        .Q(Timing_param_tsusta[7]),
        .R(Rst));
  FDSE \timing_param_tsusto_i_reg[0] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[11]),
        .D(Bus2IIC_Data[31]),
        .Q(Timing_param_tsusto[0]),
        .S(Rst));
  FDRE \timing_param_tsusto_i_reg[1] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[11]),
        .D(Bus2IIC_Data[30]),
        .Q(Timing_param_tsusto[1]),
        .R(Rst));
  FDSE \timing_param_tsusto_i_reg[2] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[11]),
        .D(Bus2IIC_Data[29]),
        .Q(Timing_param_tsusto[2]),
        .S(Rst));
  FDSE \timing_param_tsusto_i_reg[3] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[11]),
        .D(Bus2IIC_Data[28]),
        .Q(Timing_param_tsusto[3]),
        .S(Rst));
  FDRE \timing_param_tsusto_i_reg[4] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[11]),
        .D(Bus2IIC_Data[27]),
        .Q(Timing_param_tsusto[4]),
        .R(Rst));
  FDSE \timing_param_tsusto_i_reg[5] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[11]),
        .D(Bus2IIC_Data[26]),
        .Q(Timing_param_tsusto[5]),
        .S(Rst));
  FDRE \timing_param_tsusto_i_reg[6] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[11]),
        .D(Bus2IIC_Data[25]),
        .Q(Timing_param_tsusto[6]),
        .R(Rst));
  FDRE \timing_param_tsusto_i_reg[7] 
       (.C(Clk),
        .CE(Bus2IIC_WrCE[11]),
        .D(Bus2IIC_Data[24]),
        .Q(Timing_param_tsusto[7]),
        .R(Rst));
endmodule

(* downgradeipidentifiedwarnings = "yes" *) 
module kf_bd_axi_iic_0_0_shift8
   (Clk,
    Clr,
    Data_ld,
    Data_in,
    Shift_in,
    Shift_en,
    Shift_out,
    Data_out);
  input Clk;
  input Clr;
  input Data_ld;
  input [7:0]Data_in;
  input Shift_in;
  input Shift_en;
  output Shift_out;
  output [7:0]Data_out;

  wire \<const0> ;
  wire Clk;
  wire Clr;
  wire [7:0]Data_out;
  wire Shift_en;
  wire Shift_in;
  wire p_0_in;

  assign Shift_out = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_int[7]_i_1 
       (.I0(Clr),
        .O(p_0_in));
  FDRE \data_int_reg[0] 
       (.C(Clk),
        .CE(Shift_en),
        .D(Shift_in),
        .Q(Data_out[0]),
        .R(p_0_in));
  FDRE \data_int_reg[1] 
       (.C(Clk),
        .CE(Shift_en),
        .D(Data_out[0]),
        .Q(Data_out[1]),
        .R(p_0_in));
  FDRE \data_int_reg[2] 
       (.C(Clk),
        .CE(Shift_en),
        .D(Data_out[1]),
        .Q(Data_out[2]),
        .R(p_0_in));
  FDRE \data_int_reg[3] 
       (.C(Clk),
        .CE(Shift_en),
        .D(Data_out[2]),
        .Q(Data_out[3]),
        .R(p_0_in));
  FDRE \data_int_reg[4] 
       (.C(Clk),
        .CE(Shift_en),
        .D(Data_out[3]),
        .Q(Data_out[4]),
        .R(p_0_in));
  FDRE \data_int_reg[5] 
       (.C(Clk),
        .CE(Shift_en),
        .D(Data_out[4]),
        .Q(Data_out[5]),
        .R(p_0_in));
  FDRE \data_int_reg[6] 
       (.C(Clk),
        .CE(Shift_en),
        .D(Data_out[5]),
        .Q(Data_out[6]),
        .R(p_0_in));
  FDRE \data_int_reg[7] 
       (.C(Clk),
        .CE(Shift_en),
        .D(Data_out[6]),
        .Q(Data_out[7]),
        .R(p_0_in));
endmodule

(* ORIG_REF_NAME = "shift8" *) (* downgradeipidentifiedwarnings = "yes" *) 
module kf_bd_axi_iic_0_0_shift8__1
   (Clk,
    Clr,
    Data_ld,
    Data_in,
    Shift_in,
    Shift_en,
    Shift_out,
    Data_out);
  input Clk;
  input Clr;
  input Data_ld;
  input [7:0]Data_in;
  input Shift_in;
  input Shift_en;
  output Shift_out;
  output [7:0]Data_out;

  wire \<const0> ;
  wire Clk;
  wire Clr;
  wire [7:0]Data_in;
  wire Data_ld;
  wire [7:0]Data_out;
  wire Shift_en;
  wire Shift_in;
  wire \data_int[7]_i_2_n_0 ;
  wire p_0_in;
  wire [7:0]p_2_in;

  assign Shift_out = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_int[0]_i_1 
       (.I0(Data_in[0]),
        .I1(Data_ld),
        .I2(Shift_in),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_int[1]_i_1 
       (.I0(Data_in[1]),
        .I1(Data_ld),
        .I2(Data_out[0]),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_int[2]_i_1 
       (.I0(Data_in[2]),
        .I1(Data_ld),
        .I2(Data_out[1]),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_int[3]_i_1 
       (.I0(Data_in[3]),
        .I1(Data_ld),
        .I2(Data_out[2]),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_int[4]_i_1 
       (.I0(Data_in[4]),
        .I1(Data_ld),
        .I2(Data_out[3]),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_int[5]_i_1 
       (.I0(Data_in[5]),
        .I1(Data_ld),
        .I2(Data_out[4]),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_int[6]_i_1 
       (.I0(Data_in[6]),
        .I1(Data_ld),
        .I2(Data_out[5]),
        .O(p_2_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_int[7]_i_1 
       (.I0(Clr),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'hE)) 
    \data_int[7]_i_2 
       (.I0(Data_ld),
        .I1(Shift_en),
        .O(\data_int[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_int[7]_i_3 
       (.I0(Data_in[7]),
        .I1(Data_ld),
        .I2(Data_out[6]),
        .O(p_2_in[7]));
  FDRE \data_int_reg[0] 
       (.C(Clk),
        .CE(\data_int[7]_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(Data_out[0]),
        .R(p_0_in));
  FDRE \data_int_reg[1] 
       (.C(Clk),
        .CE(\data_int[7]_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(Data_out[1]),
        .R(p_0_in));
  FDRE \data_int_reg[2] 
       (.C(Clk),
        .CE(\data_int[7]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(Data_out[2]),
        .R(p_0_in));
  FDRE \data_int_reg[3] 
       (.C(Clk),
        .CE(\data_int[7]_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(Data_out[3]),
        .R(p_0_in));
  FDRE \data_int_reg[4] 
       (.C(Clk),
        .CE(\data_int[7]_i_2_n_0 ),
        .D(p_2_in[4]),
        .Q(Data_out[4]),
        .R(p_0_in));
  FDRE \data_int_reg[5] 
       (.C(Clk),
        .CE(\data_int[7]_i_2_n_0 ),
        .D(p_2_in[5]),
        .Q(Data_out[5]),
        .R(p_0_in));
  FDRE \data_int_reg[6] 
       (.C(Clk),
        .CE(\data_int[7]_i_2_n_0 ),
        .D(p_2_in[6]),
        .Q(Data_out[6]),
        .R(p_0_in));
  FDRE \data_int_reg[7] 
       (.C(Clk),
        .CE(\data_int[7]_i_2_n_0 ),
        .D(p_2_in[7]),
        .Q(Data_out[7]),
        .R(p_0_in));
endmodule

(* C_ARD_ADDR_RANGE_ARRAY = "384'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111110000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000100001100000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000111111111" *) (* C_ARD_NUM_CE_ARRAY = "96'b000000000000000000000000000100000000000000000000000000000000000100000000000000000000000000010010" *) (* C_DPHASE_TIMEOUT = "8" *) 
(* C_FAMILY = "zynq" *) (* C_IPIF_ABUS_WIDTH = "9" *) (* C_IPIF_DBUS_WIDTH = "32" *) 
(* C_S_AXI_MIN_SIZE = "32'b00000000000000000000000111111111" *) (* C_USE_WSTRB = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module kf_bd_axi_iic_0_0_slave_attachment
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    Bus2IP_Clk,
    Bus2IP_Resetn,
    Bus2IP_Addr,
    Bus2IP_RNW,
    Bus2IP_BE,
    Bus2IP_CS,
    Bus2IP_RdCE,
    Bus2IP_WrCE,
    Bus2IP_Data,
    IP2Bus_Data,
    IP2Bus_WrAck,
    IP2Bus_RdAck,
    IP2Bus_Error);
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [8:0]S_AXI_AWADDR;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [8:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
  output Bus2IP_Clk;
  output Bus2IP_Resetn;
  output [8:0]Bus2IP_Addr;
  output Bus2IP_RNW;
  output [3:0]Bus2IP_BE;
  output [2:0]Bus2IP_CS;
  output [34:0]Bus2IP_RdCE;
  output [34:0]Bus2IP_WrCE;
  output [31:0]Bus2IP_Data;
  input [31:0]IP2Bus_Data;
  input IP2Bus_WrAck;
  input IP2Bus_RdAck;
  input IP2Bus_Error;

  wire \<const0> ;
  wire [7:0]\^Bus2IP_Addr ;
  wire [2:0]Bus2IP_CS;
  wire Bus2IP_RNW;
  wire [27:0]\^Bus2IP_RdCE ;
  wire [27:0]\^Bus2IP_WrCE ;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire [31:0]IP2Bus_Data;
  wire IP2Bus_Error;
  wire IP2Bus_RdAck;
  wire IP2Bus_WrAck;
  wire S_AXI_ACLK;
  wire [8:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [8:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [1:1]\^S_AXI_BRESP ;
  wire S_AXI_BVALID;
  wire [31:0]\^S_AXI_RDATA ;
  wire S_AXI_RREADY;
  wire [1:1]\^S_AXI_RRESP ;
  wire S_AXI_RVALID;
  wire S_AXI_WVALID;
  wire \bus2ip_addr_i[7]_i_1_n_0 ;
  wire \bus2ip_addr_i_reg_n_0_[8] ;
  wire bus2ip_rnw_i06_out;
  wire clear;
  wire is_read;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write;
  wire is_write_reg_n_0;
  wire p_0_in;
  wire [8:0]p_1_in;
  wire [3:0]plusOp;
  wire rst;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i0;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i0;
  wire s_axi_rvalid_i_i_1_n_0;
  wire start2;
  wire start2_i_1_n_0;
  wire state1;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire temp_i;
  wire NLW_I_DECODER_CS_for_gaps_UNCONNECTED;
  wire [0:16]NLW_I_DECODER_RdCE_Out_UNCONNECTED;
  wire [0:24]NLW_I_DECODER_WrCE_Out_UNCONNECTED;

  assign Bus2IP_Addr[8] = \<const0> ;
  assign Bus2IP_Addr[7:0] = \^Bus2IP_Addr [7:0];
  assign Bus2IP_BE[3] = \<const0> ;
  assign Bus2IP_BE[2] = \<const0> ;
  assign Bus2IP_BE[1] = \<const0> ;
  assign Bus2IP_BE[0] = \<const0> ;
  assign Bus2IP_Clk = \<const0> ;
  assign Bus2IP_Data[31] = \<const0> ;
  assign Bus2IP_Data[30] = \<const0> ;
  assign Bus2IP_Data[29] = \<const0> ;
  assign Bus2IP_Data[28] = \<const0> ;
  assign Bus2IP_Data[27] = \<const0> ;
  assign Bus2IP_Data[26] = \<const0> ;
  assign Bus2IP_Data[25] = \<const0> ;
  assign Bus2IP_Data[24] = \<const0> ;
  assign Bus2IP_Data[23] = \<const0> ;
  assign Bus2IP_Data[22] = \<const0> ;
  assign Bus2IP_Data[21] = \<const0> ;
  assign Bus2IP_Data[20] = \<const0> ;
  assign Bus2IP_Data[19] = \<const0> ;
  assign Bus2IP_Data[18] = \<const0> ;
  assign Bus2IP_Data[17] = \<const0> ;
  assign Bus2IP_Data[16] = \<const0> ;
  assign Bus2IP_Data[15] = \<const0> ;
  assign Bus2IP_Data[14] = \<const0> ;
  assign Bus2IP_Data[13] = \<const0> ;
  assign Bus2IP_Data[12] = \<const0> ;
  assign Bus2IP_Data[11] = \<const0> ;
  assign Bus2IP_Data[10] = \<const0> ;
  assign Bus2IP_Data[9] = \<const0> ;
  assign Bus2IP_Data[8] = \<const0> ;
  assign Bus2IP_Data[7] = \<const0> ;
  assign Bus2IP_Data[6] = \<const0> ;
  assign Bus2IP_Data[5] = \<const0> ;
  assign Bus2IP_Data[4] = \<const0> ;
  assign Bus2IP_Data[3] = \<const0> ;
  assign Bus2IP_Data[2] = \<const0> ;
  assign Bus2IP_Data[1] = \<const0> ;
  assign Bus2IP_Data[0] = \<const0> ;
  assign Bus2IP_RdCE[34] = \<const0> ;
  assign Bus2IP_RdCE[33] = \<const0> ;
  assign Bus2IP_RdCE[32] = \<const0> ;
  assign Bus2IP_RdCE[31] = \<const0> ;
  assign Bus2IP_RdCE[30] = \<const0> ;
  assign Bus2IP_RdCE[29] = \<const0> ;
  assign Bus2IP_RdCE[28] = \<const0> ;
  assign Bus2IP_RdCE[27:26] = \^Bus2IP_RdCE [27:26];
  assign Bus2IP_RdCE[25] = \<const0> ;
  assign Bus2IP_RdCE[24] = \^Bus2IP_RdCE [24];
  assign Bus2IP_RdCE[23] = \<const0> ;
  assign Bus2IP_RdCE[22] = \<const0> ;
  assign Bus2IP_RdCE[21] = \<const0> ;
  assign Bus2IP_RdCE[20] = \<const0> ;
  assign Bus2IP_RdCE[19] = \<const0> ;
  assign Bus2IP_RdCE[18] = \<const0> ;
  assign Bus2IP_RdCE[17:0] = \^Bus2IP_RdCE [17:0];
  assign Bus2IP_Resetn = \<const0> ;
  assign Bus2IP_WrCE[34] = \<const0> ;
  assign Bus2IP_WrCE[33] = \<const0> ;
  assign Bus2IP_WrCE[32] = \<const0> ;
  assign Bus2IP_WrCE[31] = \<const0> ;
  assign Bus2IP_WrCE[30] = \<const0> ;
  assign Bus2IP_WrCE[29] = \<const0> ;
  assign Bus2IP_WrCE[28] = \<const0> ;
  assign Bus2IP_WrCE[27:26] = \^Bus2IP_WrCE [27:26];
  assign Bus2IP_WrCE[25] = \<const0> ;
  assign Bus2IP_WrCE[24] = \^Bus2IP_WrCE [24];
  assign Bus2IP_WrCE[23] = \<const0> ;
  assign Bus2IP_WrCE[22] = \<const0> ;
  assign Bus2IP_WrCE[21] = \<const0> ;
  assign Bus2IP_WrCE[20] = \<const0> ;
  assign Bus2IP_WrCE[19] = \<const0> ;
  assign Bus2IP_WrCE[18:17] = \^Bus2IP_WrCE [18:17];
  assign Bus2IP_WrCE[16] = \<const0> ;
  assign Bus2IP_WrCE[15] = \^Bus2IP_WrCE [15];
  assign Bus2IP_WrCE[14] = \<const0> ;
  assign Bus2IP_WrCE[13] = \^Bus2IP_WrCE [13];
  assign Bus2IP_WrCE[12] = \<const0> ;
  assign Bus2IP_WrCE[11] = \<const0> ;
  assign Bus2IP_WrCE[10] = \<const0> ;
  assign Bus2IP_WrCE[9:0] = \^Bus2IP_WrCE [9:0];
  assign S_AXI_BRESP[1] = \^S_AXI_BRESP [1];
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \^S_AXI_RDATA [31];
  assign S_AXI_RDATA[30] = \<const0> ;
  assign S_AXI_RDATA[29] = \<const0> ;
  assign S_AXI_RDATA[28] = \<const0> ;
  assign S_AXI_RDATA[27] = \<const0> ;
  assign S_AXI_RDATA[26] = \<const0> ;
  assign S_AXI_RDATA[25] = \<const0> ;
  assign S_AXI_RDATA[24] = \<const0> ;
  assign S_AXI_RDATA[23] = \<const0> ;
  assign S_AXI_RDATA[22] = \<const0> ;
  assign S_AXI_RDATA[21] = \<const0> ;
  assign S_AXI_RDATA[20] = \<const0> ;
  assign S_AXI_RDATA[19] = \<const0> ;
  assign S_AXI_RDATA[18] = \<const0> ;
  assign S_AXI_RDATA[17] = \<const0> ;
  assign S_AXI_RDATA[16] = \<const0> ;
  assign S_AXI_RDATA[15] = \<const0> ;
  assign S_AXI_RDATA[14] = \<const0> ;
  assign S_AXI_RDATA[13] = \<const0> ;
  assign S_AXI_RDATA[12] = \<const0> ;
  assign S_AXI_RDATA[11] = \<const0> ;
  assign S_AXI_RDATA[10] = \<const0> ;
  assign S_AXI_RDATA[9] = \<const0> ;
  assign S_AXI_RDATA[8] = \<const0> ;
  assign S_AXI_RDATA[7:0] = \^S_AXI_RDATA [7:0];
  assign S_AXI_RRESP[1] = \^S_AXI_RRESP [1];
  assign S_AXI_RRESP[0] = \<const0> ;
  assign S_AXI_WREADY = \<const0> ;
  LUT6 #(
    .INIT(64'hFFFF002A002A002A)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_ARVALID),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(state1),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(S_AXI_AWREADY),
        .I3(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_ARVALID),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(s_axi_rresp_i),
        .I1(S_AXI_ARREADY),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(state1),
        .I4(S_AXI_AWREADY),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(S_AXI_BREADY),
        .I1(S_AXI_BVALID),
        .I2(S_AXI_RREADY),
        .I3(S_AXI_RVALID),
        .O(state1));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(rst));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  (* C_ARD_ADDR_RANGE_ARRAY = "384'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111110000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000100001100000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000111111111" *) 
  (* C_ARD_NUM_CE_ARRAY = "96'b000000000000000000000000000100000000000000000000000000000000000100000000000000000000000000010010" *) 
  (* C_BUS_AWIDTH = "9" *) 
  (* C_FAMILY = "nofamily" *) 
  (* C_S_AXI_MIN_SIZE = "32'b00000000000000000000000111111111" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  kf_bd_axi_iic_0_0_address_decoder I_DECODER
       (.Address_In_Erly({\bus2ip_addr_i_reg_n_0_[8] ,\^Bus2IP_Addr [7],\^Bus2IP_Addr [6],\^Bus2IP_Addr [5],\^Bus2IP_Addr [4],\^Bus2IP_Addr [3],\^Bus2IP_Addr [2],1'b0,1'b0}),
        .Address_Valid_Erly(1'b0),
        .Bus_RNW(1'b0),
        .Bus_RNW_Erly(Bus2IP_RNW),
        .Bus_clk(S_AXI_ACLK),
        .Bus_rst(S_AXI_ARESETN),
        .CS_CE_ld_enable(1'b0),
        .CS_Out({Bus2IP_CS[2],Bus2IP_CS[1],Bus2IP_CS[0]}),
        .CS_for_gaps(NLW_I_DECODER_CS_for_gaps_UNCONNECTED),
        .Clear_CS_CE_Reg(temp_i),
        .RW_CE_ld_enable(start2),
        .RdCE_Out({NLW_I_DECODER_RdCE_Out_UNCONNECTED[0:6],\^Bus2IP_RdCE [27],\^Bus2IP_RdCE [26],\^Bus2IP_RdCE [25],\^Bus2IP_RdCE [24],\^Bus2IP_RdCE [23],\^Bus2IP_RdCE [22],\^Bus2IP_RdCE [21],\^Bus2IP_RdCE [20],\^Bus2IP_RdCE [19],\^Bus2IP_RdCE [18],\^Bus2IP_RdCE [17],\^Bus2IP_RdCE [16],\^Bus2IP_RdCE [15],\^Bus2IP_RdCE [14],\^Bus2IP_RdCE [13],\^Bus2IP_RdCE [12],\^Bus2IP_RdCE [11],\^Bus2IP_RdCE [10],\^Bus2IP_RdCE [9],\^Bus2IP_RdCE [8],\^Bus2IP_RdCE [7],\^Bus2IP_RdCE [6],\^Bus2IP_RdCE [5],\^Bus2IP_RdCE [4],\^Bus2IP_RdCE [3],\^Bus2IP_RdCE [2],\^Bus2IP_RdCE [1],\^Bus2IP_RdCE [0]}),
        .WrCE_Out({NLW_I_DECODER_WrCE_Out_UNCONNECTED[0:6],\^Bus2IP_WrCE [27],\^Bus2IP_WrCE [26],\^Bus2IP_WrCE [25],\^Bus2IP_WrCE [24],\^Bus2IP_WrCE [23],\^Bus2IP_WrCE [22],\^Bus2IP_WrCE [21],\^Bus2IP_WrCE [20],\^Bus2IP_WrCE [19],\^Bus2IP_WrCE [18],\^Bus2IP_WrCE [17],\^Bus2IP_WrCE [16],\^Bus2IP_WrCE [15],\^Bus2IP_WrCE [14],\^Bus2IP_WrCE [13],\^Bus2IP_WrCE [12],\^Bus2IP_WrCE [11],\^Bus2IP_WrCE [10],\^Bus2IP_WrCE [9],\^Bus2IP_WrCE [8],\^Bus2IP_WrCE [7],\^Bus2IP_WrCE [6],\^Bus2IP_WrCE [5],\^Bus2IP_WrCE [4],\^Bus2IP_WrCE [3],\^Bus2IP_WrCE [2],\^Bus2IP_WrCE [1],\^Bus2IP_WrCE [0]}));
  LUT2 #(
    .INIT(4'hE)) 
    I_DECODER_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_AWREADY),
        .O(temp_i));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    S_AXI_ARREADY_INST_0
       (.I0(IP2Bus_RdAck),
        .I1(is_read_reg_n_0),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(S_AXI_ARREADY));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    S_AXI_AWREADY_INST_0
       (.I0(IP2Bus_WrAck),
        .I1(is_write_reg_n_0),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(S_AXI_AWREADY));
  LUT5 #(
    .INIT(32'hFFEF1000)) 
    \bus2ip_addr_i[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARADDR[0]),
        .I4(S_AXI_AWADDR[0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hFFEF1000)) 
    \bus2ip_addr_i[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARADDR[1]),
        .I4(S_AXI_AWADDR[1]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hFFEF1000)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARADDR[2]),
        .I4(S_AXI_AWADDR[2]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hFFEF1000)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARADDR[3]),
        .I4(S_AXI_AWADDR[3]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hFFEF1000)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARADDR[4]),
        .I4(S_AXI_AWADDR[4]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hFFEF1000)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARADDR[5]),
        .I4(S_AXI_AWADDR[5]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hFFEF1000)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARADDR[6]),
        .I4(S_AXI_AWADDR[6]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'h11101010)) 
    \bus2ip_addr_i[7]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_WVALID),
        .O(\bus2ip_addr_i[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF1000)) 
    \bus2ip_addr_i[7]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARADDR[7]),
        .I4(S_AXI_AWADDR[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFEF1000)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARADDR[8]),
        .I4(S_AXI_AWADDR[8]),
        .O(p_1_in[8]));
  FDRE \bus2ip_addr_i_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\bus2ip_addr_i[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\^Bus2IP_Addr [0]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\bus2ip_addr_i[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\^Bus2IP_Addr [1]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\bus2ip_addr_i[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\^Bus2IP_Addr [2]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\bus2ip_addr_i[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\^Bus2IP_Addr [3]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\bus2ip_addr_i[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\^Bus2IP_Addr [4]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\bus2ip_addr_i[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\^Bus2IP_Addr [5]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\bus2ip_addr_i[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\^Bus2IP_Addr [6]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\bus2ip_addr_i[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\^Bus2IP_Addr [7]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\bus2ip_addr_i[7]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\bus2ip_addr_i_reg_n_0_[8] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h10)) 
    bus2ip_rnw_i_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S_AXI_ARVALID),
        .O(bus2ip_rnw_i06_out));
  FDRE bus2ip_rnw_i_reg
       (.C(S_AXI_ACLK),
        .CE(\bus2ip_addr_i[7]_i_1_n_0 ),
        .D(bus2ip_rnw_i06_out),
        .Q(Bus2IP_RNW),
        .R(rst));
  LUT3 #(
    .INIT(8'hEA)) 
    is_read_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(state1),
        .O(is_read_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    is_read_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(S_AXI_ARVALID),
        .O(is_read));
  FDRE is_read_reg
       (.C(S_AXI_ACLK),
        .CE(is_read_i_1_n_0),
        .D(is_read),
        .Q(is_read_reg_n_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    is_write_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(is_write));
  FDRE is_write_reg
       (.C(S_AXI_ACLK),
        .CE(is_read_i_1_n_0),
        .D(is_write),
        .Q(is_write_reg_n_0),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(S_AXI_ARESETN),
        .O(p_0_in));
  FDRE rst_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_0_in),
        .Q(rst),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_bresp_i_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_bresp_i),
        .D(IP2Bus_Error),
        .Q(\^S_AXI_BRESP ),
        .R(rst));
  LUT4 #(
    .INIT(16'hFF40)) 
    s_axi_bvalid_i_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_BREADY),
        .O(s_axi_bvalid_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    s_axi_bvalid_i_i_2
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S_AXI_AWREADY),
        .O(s_axi_bvalid_i0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(S_AXI_ACLK),
        .CE(s_axi_bvalid_i_i_1_n_0),
        .D(s_axi_bvalid_i0),
        .Q(S_AXI_BVALID),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[0]),
        .Q(\^S_AXI_RDATA [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[1]),
        .Q(\^S_AXI_RDATA [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[2]),
        .Q(\^S_AXI_RDATA [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[31]),
        .Q(\^S_AXI_RDATA [31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[3]),
        .Q(\^S_AXI_RDATA [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[4]),
        .Q(\^S_AXI_RDATA [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[5]),
        .Q(\^S_AXI_RDATA [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[6]),
        .Q(\^S_AXI_RDATA [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[7]),
        .Q(\^S_AXI_RDATA [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rresp_i_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Error),
        .Q(\^S_AXI_RRESP ),
        .R(rst));
  LUT4 #(
    .INIT(16'hFF40)) 
    s_axi_rvalid_i_i_1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(S_AXI_ARREADY),
        .I3(S_AXI_RREADY),
        .O(s_axi_rvalid_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    s_axi_rvalid_i_i_2
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(S_AXI_ARREADY),
        .O(s_axi_rvalid_i0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(S_AXI_ACLK),
        .CE(s_axi_rvalid_i_i_1_n_0),
        .D(s_axi_rvalid_i0),
        .Q(S_AXI_RVALID),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h11101010)) 
    start2_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_WVALID),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h5FCF5FC0)) 
    \state[0]_i_1 
       (.I0(state1),
        .I1(S_AXI_AWREADY),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(S_AXI_ARVALID),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h74FF74CC)) 
    \state[1]_i_1 
       (.I0(state1),
        .I1(\state_reg_n_0_[1] ),
        .I2(S_AXI_ARREADY),
        .I3(\state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(rst));
endmodule

(* C_RESET_WIDTH = "4" *) (* C_SIPIF_DWIDTH = "32" *) 
module kf_bd_axi_iic_0_0_soft_reset
   (Bus2IP_Reset,
    Bus2IP_Clk,
    Bus2IP_WrCE,
    Bus2IP_Data,
    Bus2IP_BE,
    Reset2IP_Reset,
    Reset2Bus_WrAck,
    Reset2Bus_Error,
    Reset2Bus_ToutSup);
  input Bus2IP_Reset;
  input Bus2IP_Clk;
  input Bus2IP_WrCE;
  input [0:31]Bus2IP_Data;
  input [0:3]Bus2IP_BE;
  output Reset2IP_Reset;
  output Reset2Bus_WrAck;
  output Reset2Bus_Error;
  output Reset2Bus_ToutSup;

  wire \<const0> ;
  wire Bus2IP_Clk;
  wire [0:31]Bus2IP_Data;
  wire Bus2IP_Reset;
  wire Bus2IP_WrCE;
  wire \RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[3].RST_FLOPS_n_0 ;
  wire Reset2Bus_Error;
  wire Reset2IP_Reset;
  wire S;
  wire flop_q_chain_1;
  wire flop_q_chain_2;
  wire flop_q_chain_3;
  wire reset_trig0;
  wire sw_rst_cond_d1;
  wire sw_rst_cond_d1_i_1_n_0;

  assign Reset2Bus_ToutSup = \<const0> ;
  assign Reset2Bus_WrAck = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[0].RST_FLOPS 
       (.C(Bus2IP_Clk),
        .CE(1'b1),
        .D(S),
        .Q(flop_q_chain_3),
        .R(Bus2IP_Reset));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[1].RST_FLOPS 
       (.C(Bus2IP_Clk),
        .CE(1'b1),
        .D(\RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain_2),
        .R(Bus2IP_Reset));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[1].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain_3),
        .O(\RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[2].RST_FLOPS 
       (.C(Bus2IP_Clk),
        .CE(1'b1),
        .D(\RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain_1),
        .R(Bus2IP_Reset));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[2].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain_2),
        .O(\RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[3].RST_FLOPS 
       (.C(Bus2IP_Clk),
        .CE(1'b1),
        .D(\RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ),
        .Q(\RESET_FLOPS[3].RST_FLOPS_n_0 ),
        .R(Bus2IP_Reset));
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[3].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain_1),
        .O(\RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hAAAAAA2A)) 
    Reset2Bus_Error_INST_0
       (.I0(Bus2IP_WrCE),
        .I1(Bus2IP_Data[28]),
        .I2(Bus2IP_Data[30]),
        .I3(Bus2IP_Data[29]),
        .I4(Bus2IP_Data[31]),
        .O(Reset2Bus_Error));
  LUT2 #(
    .INIT(4'hE)) 
    Reset2IP_Reset_INST_0
       (.I0(Bus2IP_Reset),
        .I1(\RESET_FLOPS[3].RST_FLOPS_n_0 ),
        .O(Reset2IP_Reset));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    reset_trig_i_1
       (.I0(Bus2IP_Data[31]),
        .I1(Bus2IP_Data[29]),
        .I2(Bus2IP_Data[30]),
        .I3(Bus2IP_Data[28]),
        .I4(Bus2IP_WrCE),
        .I5(sw_rst_cond_d1),
        .O(reset_trig0));
  FDRE reset_trig_reg
       (.C(Bus2IP_Clk),
        .CE(1'b1),
        .D(reset_trig0),
        .Q(S),
        .R(Bus2IP_Reset));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    sw_rst_cond_d1_i_1
       (.I0(Bus2IP_WrCE),
        .I1(Bus2IP_Data[28]),
        .I2(Bus2IP_Data[30]),
        .I3(Bus2IP_Data[29]),
        .I4(Bus2IP_Data[31]),
        .O(sw_rst_cond_d1_i_1_n_0));
  FDRE sw_rst_cond_d1_reg
       (.C(Bus2IP_Clk),
        .CE(1'b1),
        .D(sw_rst_cond_d1_i_1_n_0),
        .Q(sw_rst_cond_d1),
        .R(Bus2IP_Reset));
endmodule

(* C_SIZE = "8" *) (* downgradeipidentifiedwarnings = "yes" *) 
module kf_bd_axi_iic_0_0_upcnt_n
   (Clr,
    Clk,
    Data,
    Cnt_en,
    Load,
    Qout);
  input Clr;
  input Clk;
  input [0:7]Data;
  input Cnt_en;
  input Load;
  inout [0:7]Qout;

  wire Clk;
  wire Clr;
  wire Cnt_en;
  wire Load;
  wire [0:7]Qout;
  wire clear;
  wire \q_int[0]_i_2_n_0 ;
  wire \q_int[0]_i_3_n_0 ;
  wire \q_int[0]_i_4_n_0 ;
  wire \q_int[1]_i_1_n_0 ;
  wire \q_int[2]_i_1_n_0 ;
  wire \q_int[2]_i_2_n_0 ;
  wire \q_int[3]_i_1_n_0 ;
  wire \q_int[4]_i_1_n_0 ;
  wire \q_int[5]_i_1_n_0 ;
  wire \q_int[6]_i_1_n_0 ;
  wire \q_int[7]_i_1_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \q_int[0]_i_1 
       (.I0(Clr),
        .O(clear));
  LUT2 #(
    .INIT(4'hE)) 
    \q_int[0]_i_2 
       (.I0(Load),
        .I1(Cnt_en),
        .O(\q_int[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h006A)) 
    \q_int[0]_i_3 
       (.I0(Qout[0]),
        .I1(Qout[1]),
        .I2(\q_int[0]_i_4_n_0 ),
        .I3(Load),
        .O(\q_int[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \q_int[0]_i_4 
       (.I0(Qout[2]),
        .I1(Qout[4]),
        .I2(Qout[6]),
        .I3(Qout[7]),
        .I4(Qout[5]),
        .I5(Qout[3]),
        .O(\q_int[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \q_int[1]_i_1 
       (.I0(Qout[1]),
        .I1(\q_int[0]_i_4_n_0 ),
        .I2(Load),
        .O(\q_int[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \q_int[2]_i_1 
       (.I0(Qout[2]),
        .I1(\q_int[2]_i_2_n_0 ),
        .I2(Load),
        .O(\q_int[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \q_int[2]_i_2 
       (.I0(Qout[3]),
        .I1(Qout[5]),
        .I2(Qout[7]),
        .I3(Qout[6]),
        .I4(Qout[4]),
        .O(\q_int[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \q_int[3]_i_1 
       (.I0(Qout[3]),
        .I1(Qout[4]),
        .I2(Qout[6]),
        .I3(Qout[7]),
        .I4(Qout[5]),
        .I5(Load),
        .O(\q_int[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \q_int[4]_i_1 
       (.I0(Qout[4]),
        .I1(Qout[5]),
        .I2(Qout[7]),
        .I3(Qout[6]),
        .I4(Load),
        .O(\q_int[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h006A)) 
    \q_int[5]_i_1 
       (.I0(Qout[5]),
        .I1(Qout[6]),
        .I2(Qout[7]),
        .I3(Load),
        .O(\q_int[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \q_int[6]_i_1 
       (.I0(Qout[6]),
        .I1(Qout[7]),
        .I2(Load),
        .O(\q_int[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_int[7]_i_1 
       (.I0(Load),
        .I1(Qout[7]),
        .O(\q_int[7]_i_1_n_0 ));
  FDRE \q_int_reg[0] 
       (.C(Clk),
        .CE(\q_int[0]_i_2_n_0 ),
        .D(\q_int[0]_i_3_n_0 ),
        .Q(Qout[0]),
        .R(clear));
  FDRE \q_int_reg[1] 
       (.C(Clk),
        .CE(\q_int[0]_i_2_n_0 ),
        .D(\q_int[1]_i_1_n_0 ),
        .Q(Qout[1]),
        .R(clear));
  FDRE \q_int_reg[2] 
       (.C(Clk),
        .CE(\q_int[0]_i_2_n_0 ),
        .D(\q_int[2]_i_1_n_0 ),
        .Q(Qout[2]),
        .R(clear));
  FDRE \q_int_reg[3] 
       (.C(Clk),
        .CE(\q_int[0]_i_2_n_0 ),
        .D(\q_int[3]_i_1_n_0 ),
        .Q(Qout[3]),
        .R(clear));
  FDRE \q_int_reg[4] 
       (.C(Clk),
        .CE(\q_int[0]_i_2_n_0 ),
        .D(\q_int[4]_i_1_n_0 ),
        .Q(Qout[4]),
        .R(clear));
  FDRE \q_int_reg[5] 
       (.C(Clk),
        .CE(\q_int[0]_i_2_n_0 ),
        .D(\q_int[5]_i_1_n_0 ),
        .Q(Qout[5]),
        .R(clear));
  FDRE \q_int_reg[6] 
       (.C(Clk),
        .CE(\q_int[0]_i_2_n_0 ),
        .D(\q_int[6]_i_1_n_0 ),
        .Q(Qout[6]),
        .R(clear));
  FDRE \q_int_reg[7] 
       (.C(Clk),
        .CE(\q_int[0]_i_2_n_0 ),
        .D(\q_int[7]_i_1_n_0 ),
        .Q(Qout[7]),
        .R(clear));
endmodule

(* C_SIZE = "8" *) (* ORIG_REF_NAME = "upcnt_n" *) (* downgradeipidentifiedwarnings = "yes" *) 
module kf_bd_axi_iic_0_0_upcnt_n__1
   (Clr,
    Clk,
    Data,
    Cnt_en,
    Load,
    Qout);
  input Clr;
  input Clk;
  input [0:7]Data;
  input Cnt_en;
  input Load;
  inout [0:7]Qout;

  wire Clk;
  wire Clr;
  wire Cnt_en;
  wire Load;
  wire [0:7]Qout;
  wire clear;
  wire \q_int[0]_i_2_n_0 ;
  wire \q_int[0]_i_3_n_0 ;
  wire \q_int[0]_i_4_n_0 ;
  wire \q_int[1]_i_1_n_0 ;
  wire \q_int[2]_i_1_n_0 ;
  wire \q_int[2]_i_2_n_0 ;
  wire \q_int[3]_i_1_n_0 ;
  wire \q_int[4]_i_1_n_0 ;
  wire \q_int[5]_i_1_n_0 ;
  wire \q_int[6]_i_1_n_0 ;
  wire \q_int[7]_i_1_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \q_int[0]_i_1 
       (.I0(Clr),
        .O(clear));
  LUT2 #(
    .INIT(4'hE)) 
    \q_int[0]_i_2 
       (.I0(Load),
        .I1(Cnt_en),
        .O(\q_int[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h006A)) 
    \q_int[0]_i_3 
       (.I0(Qout[0]),
        .I1(Qout[1]),
        .I2(\q_int[0]_i_4_n_0 ),
        .I3(Load),
        .O(\q_int[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \q_int[0]_i_4 
       (.I0(Qout[2]),
        .I1(Qout[4]),
        .I2(Qout[6]),
        .I3(Qout[7]),
        .I4(Qout[5]),
        .I5(Qout[3]),
        .O(\q_int[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \q_int[1]_i_1 
       (.I0(Qout[1]),
        .I1(\q_int[0]_i_4_n_0 ),
        .I2(Load),
        .O(\q_int[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \q_int[2]_i_1 
       (.I0(Qout[2]),
        .I1(\q_int[2]_i_2_n_0 ),
        .I2(Load),
        .O(\q_int[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \q_int[2]_i_2 
       (.I0(Qout[3]),
        .I1(Qout[5]),
        .I2(Qout[7]),
        .I3(Qout[6]),
        .I4(Qout[4]),
        .O(\q_int[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \q_int[3]_i_1 
       (.I0(Qout[3]),
        .I1(Qout[4]),
        .I2(Qout[6]),
        .I3(Qout[7]),
        .I4(Qout[5]),
        .I5(Load),
        .O(\q_int[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \q_int[4]_i_1 
       (.I0(Qout[4]),
        .I1(Qout[5]),
        .I2(Qout[7]),
        .I3(Qout[6]),
        .I4(Load),
        .O(\q_int[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h006A)) 
    \q_int[5]_i_1 
       (.I0(Qout[5]),
        .I1(Qout[6]),
        .I2(Qout[7]),
        .I3(Load),
        .O(\q_int[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \q_int[6]_i_1 
       (.I0(Qout[6]),
        .I1(Qout[7]),
        .I2(Load),
        .O(\q_int[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q_int[7]_i_1 
       (.I0(Load),
        .I1(Qout[7]),
        .O(\q_int[7]_i_1_n_0 ));
  FDRE \q_int_reg[0] 
       (.C(Clk),
        .CE(\q_int[0]_i_2_n_0 ),
        .D(\q_int[0]_i_3_n_0 ),
        .Q(Qout[0]),
        .R(clear));
  FDRE \q_int_reg[1] 
       (.C(Clk),
        .CE(\q_int[0]_i_2_n_0 ),
        .D(\q_int[1]_i_1_n_0 ),
        .Q(Qout[1]),
        .R(clear));
  FDRE \q_int_reg[2] 
       (.C(Clk),
        .CE(\q_int[0]_i_2_n_0 ),
        .D(\q_int[2]_i_1_n_0 ),
        .Q(Qout[2]),
        .R(clear));
  FDRE \q_int_reg[3] 
       (.C(Clk),
        .CE(\q_int[0]_i_2_n_0 ),
        .D(\q_int[3]_i_1_n_0 ),
        .Q(Qout[3]),
        .R(clear));
  FDRE \q_int_reg[4] 
       (.C(Clk),
        .CE(\q_int[0]_i_2_n_0 ),
        .D(\q_int[4]_i_1_n_0 ),
        .Q(Qout[4]),
        .R(clear));
  FDRE \q_int_reg[5] 
       (.C(Clk),
        .CE(\q_int[0]_i_2_n_0 ),
        .D(\q_int[5]_i_1_n_0 ),
        .Q(Qout[5]),
        .R(clear));
  FDRE \q_int_reg[6] 
       (.C(Clk),
        .CE(\q_int[0]_i_2_n_0 ),
        .D(\q_int[6]_i_1_n_0 ),
        .Q(Qout[6]),
        .R(clear));
  FDRE \q_int_reg[7] 
       (.C(Clk),
        .CE(\q_int[0]_i_2_n_0 ),
        .D(\q_int[7]_i_1_n_0 ),
        .Q(Qout[7]),
        .R(clear));
endmodule

(* C_SIZE = "4" *) (* ORIG_REF_NAME = "upcnt_n" *) (* downgradeipidentifiedwarnings = "yes" *) 
module kf_bd_axi_iic_0_0_upcnt_n__parameterized0
   (Clr,
    Clk,
    Data,
    Cnt_en,
    Load,
    Qout);
  input Clr;
  input Clk;
  input [0:3]Data;
  input Cnt_en;
  input Load;
  inout [0:3]Qout;

  wire Clk;
  wire Clr;
  wire Cnt_en;
  wire Load;
  wire [0:3]Qout;
  wire p_0_in;
  wire \q_int[0]_i_2_n_0 ;
  wire \q_int[0]_i_3_n_0 ;
  wire \q_int[1]_i_1_n_0 ;
  wire \q_int[2]_i_1_n_0 ;
  wire \q_int[3]_i_1_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \q_int[0]_i_1 
       (.I0(Clr),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'hE)) 
    \q_int[0]_i_2 
       (.I0(Load),
        .I1(Cnt_en),
        .O(\q_int[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \q_int[0]_i_3 
       (.I0(Qout[0]),
        .I1(Qout[1]),
        .I2(Qout[3]),
        .I3(Qout[2]),
        .I4(Load),
        .O(\q_int[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \q_int[1]_i_1 
       (.I0(Qout[1]),
        .I1(Qout[2]),
        .I2(Qout[3]),
        .I3(Load),
        .O(\q_int[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \q_int[2]_i_1 
       (.I0(Qout[2]),
        .I1(Qout[3]),
        .I2(Load),
        .O(\q_int[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q_int[3]_i_1 
       (.I0(Load),
        .I1(Qout[3]),
        .O(\q_int[3]_i_1_n_0 ));
  FDRE \q_int_reg[0] 
       (.C(Clk),
        .CE(\q_int[0]_i_2_n_0 ),
        .D(\q_int[0]_i_3_n_0 ),
        .Q(Qout[0]),
        .R(p_0_in));
  FDRE \q_int_reg[1] 
       (.C(Clk),
        .CE(\q_int[0]_i_2_n_0 ),
        .D(\q_int[1]_i_1_n_0 ),
        .Q(Qout[1]),
        .R(p_0_in));
  FDRE \q_int_reg[2] 
       (.C(Clk),
        .CE(\q_int[0]_i_2_n_0 ),
        .D(\q_int[2]_i_1_n_0 ),
        .Q(Qout[2]),
        .R(p_0_in));
  FDRE \q_int_reg[3] 
       (.C(Clk),
        .CE(\q_int[0]_i_2_n_0 ),
        .D(\q_int[3]_i_1_n_0 ),
        .Q(Qout[3]),
        .R(p_0_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
