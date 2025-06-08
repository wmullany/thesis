// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Jun  9 01:23:06 2025
// Host        : Laptop45877481 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ kf_bd_blk_mem_gen_0_0_sim_netlist.v
// Design      : kf_bd_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "kf_bd_blk_mem_gen_0_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59856)
`pragma protect data_block
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
snQ+N7cy
`pragma protect end_protected
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
