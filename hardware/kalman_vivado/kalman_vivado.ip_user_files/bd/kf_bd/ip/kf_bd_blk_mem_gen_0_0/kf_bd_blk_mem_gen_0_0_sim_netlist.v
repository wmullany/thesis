// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Jun  9 01:23:06 2025
// Host        : Laptop45877481 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top kf_bd_blk_mem_gen_0_0 -prefix
//               kf_bd_blk_mem_gen_0_0_ kf_bd_blk_mem_gen_0_0_sim_netlist.v
// Design      : kf_bd_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "kf_bd_blk_mem_gen_0_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module kf_bd_blk_mem_gen_0_0
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
  kf_bd_blk_mem_gen_0_0_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59568)
`pragma protect data_block
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
vXJy
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
