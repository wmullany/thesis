// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:KF:1.0
// IP Revision: 12

(* X_CORE_INFO = "KF,Vivado 2024.2" *)
(* CHECK_LICENSE_TYPE = "kf_bd_KF_0_0,KF,{}" *)
(* CORE_GENERATION_INFO = "kf_bd_KF_0_0,KF,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=KF,x_ipVersion=1.0,x_ipCoreRevision=12,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S01_AXIS_TDATA_WIDTH=32,C_M00_AXIS_TDATA_WIDTH=32,C_M00_AXIS_START_COUNT=32}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module kf_bd_KF_0_0 (
  m00_axis_aclk,
  m00_axis_aresetn,
  m00_axis_tvalid,
  m00_axis_tdata,
  m00_axis_tstrb,
  m00_axis_tlast,
  m00_axis_tready,
  s01_axis_aclk,
  s01_axis_aresetn,
  s01_axis_tready,
  s01_axis_tdata,
  s01_axis_tstrb,
  s01_axis_tlast,
  s01_axis_tvalid
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN kf_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
input wire m00_axis_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire m00_axis_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN kf_bd_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire m00_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *)
output wire [31 : 0] m00_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB" *)
output wire [3 : 0] m00_axis_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *)
output wire m00_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *)
input wire m00_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S01_AXIS_CLK CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXIS_CLK, ASSOCIATED_BUSIF S01_AXIS, ASSOCIATED_RESET s01_axis_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN kf_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
input wire s01_axis_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S01_AXIS_RST RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire s01_axis_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S01_AXIS TREADY" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN kf_bd_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire s01_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S01_AXIS TDATA" *)
input wire [31 : 0] s01_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S01_AXIS TSTRB" *)
input wire [3 : 0] s01_axis_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S01_AXIS TLAST" *)
input wire s01_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S01_AXIS TVALID" *)
input wire s01_axis_tvalid;

  KF #(
    .C_S01_AXIS_TDATA_WIDTH(32),  // AXI4Stream sink: Data Width
    .C_M00_AXIS_TDATA_WIDTH(32),  // Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
    .C_M00_AXIS_START_COUNT(32)  // Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.
  ) inst (
    .m00_axis_aclk(m00_axis_aclk),
    .m00_axis_aresetn(m00_axis_aresetn),
    .m00_axis_tvalid(m00_axis_tvalid),
    .m00_axis_tdata(m00_axis_tdata),
    .m00_axis_tstrb(m00_axis_tstrb),
    .m00_axis_tlast(m00_axis_tlast),
    .m00_axis_tready(m00_axis_tready),
    .s01_axis_aclk(s01_axis_aclk),
    .s01_axis_aresetn(s01_axis_aresetn),
    .s01_axis_tready(s01_axis_tready),
    .s01_axis_tdata(s01_axis_tdata),
    .s01_axis_tstrb(s01_axis_tstrb),
    .s01_axis_tlast(s01_axis_tlast),
    .s01_axis_tvalid(s01_axis_tvalid)
  );
endmodule
