-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Jun 12 20:45:28 2025
-- Host        : Laptop45877481 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top kf_bd_rst_ps7_0_50M_3 -prefix
--               kf_bd_rst_ps7_0_50M_3_ kf_bd_rst_ps7_0_50M_3_sim_netlist.vhdl
-- Design      : kf_bd_rst_ps7_0_50M_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kf_bd_rst_ps7_0_50M_3_cdc_sync is
  port (
    prmry_aclk : in STD_LOGIC;
    prmry_resetn : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    prmry_vect_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    prmry_ack : out STD_LOGIC;
    scndry_aclk : in STD_LOGIC;
    scndry_resetn : in STD_LOGIC;
    scndry_out : out STD_LOGIC;
    scndry_vect_out : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_CDC_TYPE : integer;
  attribute C_CDC_TYPE of kf_bd_rst_ps7_0_50M_3_cdc_sync : entity is 1;
  attribute C_FLOP_INPUT : integer;
  attribute C_FLOP_INPUT of kf_bd_rst_ps7_0_50M_3_cdc_sync : entity is 0;
  attribute C_MTBF_STAGES : integer;
  attribute C_MTBF_STAGES of kf_bd_rst_ps7_0_50M_3_cdc_sync : entity is 4;
  attribute C_RESET_STATE : integer;
  attribute C_RESET_STATE of kf_bd_rst_ps7_0_50M_3_cdc_sync : entity is 0;
  attribute C_SINGLE_BIT : integer;
  attribute C_SINGLE_BIT of kf_bd_rst_ps7_0_50M_3_cdc_sync : entity is 1;
  attribute C_VECTOR_WIDTH : integer;
  attribute C_VECTOR_WIDTH of kf_bd_rst_ps7_0_50M_3_cdc_sync : entity is 2;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of kf_bd_rst_ps7_0_50M_3_cdc_sync : entity is "yes";
end kf_bd_rst_ps7_0_50M_3_cdc_sync;

architecture STRUCTURE of kf_bd_rst_ps7_0_50M_3_cdc_sync is
  signal \<const0>\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  signal Q : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
  prmry_ack <= \<const0>\;
  scndry_vect_out(1) <= \<const0>\;
  scndry_vect_out(0) <= \<const0>\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => scndry_aclk,
      CE => '1',
      D => prmry_in,
      Q => Q,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => scndry_aclk,
      CE => '1',
      D => Q,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => scndry_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => scndry_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => scndry_out,
      R => '0'
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \kf_bd_rst_ps7_0_50M_3_cdc_sync__1\ is
  port (
    prmry_aclk : in STD_LOGIC;
    prmry_resetn : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    prmry_vect_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    prmry_ack : out STD_LOGIC;
    scndry_aclk : in STD_LOGIC;
    scndry_resetn : in STD_LOGIC;
    scndry_out : out STD_LOGIC;
    scndry_vect_out : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_CDC_TYPE : integer;
  attribute C_CDC_TYPE of \kf_bd_rst_ps7_0_50M_3_cdc_sync__1\ : entity is 1;
  attribute C_FLOP_INPUT : integer;
  attribute C_FLOP_INPUT of \kf_bd_rst_ps7_0_50M_3_cdc_sync__1\ : entity is 0;
  attribute C_MTBF_STAGES : integer;
  attribute C_MTBF_STAGES of \kf_bd_rst_ps7_0_50M_3_cdc_sync__1\ : entity is 4;
  attribute C_RESET_STATE : integer;
  attribute C_RESET_STATE of \kf_bd_rst_ps7_0_50M_3_cdc_sync__1\ : entity is 0;
  attribute C_SINGLE_BIT : integer;
  attribute C_SINGLE_BIT of \kf_bd_rst_ps7_0_50M_3_cdc_sync__1\ : entity is 1;
  attribute C_VECTOR_WIDTH : integer;
  attribute C_VECTOR_WIDTH of \kf_bd_rst_ps7_0_50M_3_cdc_sync__1\ : entity is 2;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \kf_bd_rst_ps7_0_50M_3_cdc_sync__1\ : entity is "cdc_sync";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \kf_bd_rst_ps7_0_50M_3_cdc_sync__1\ : entity is "yes";
end \kf_bd_rst_ps7_0_50M_3_cdc_sync__1\;

architecture STRUCTURE of \kf_bd_rst_ps7_0_50M_3_cdc_sync__1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  signal Q : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
  prmry_ack <= \<const0>\;
  scndry_vect_out(1) <= \<const0>\;
  scndry_vect_out(0) <= \<const0>\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => scndry_aclk,
      CE => '1',
      D => prmry_in,
      Q => Q,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => scndry_aclk,
      CE => '1',
      D => Q,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => scndry_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => scndry_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => scndry_out,
      R => '0'
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kf_bd_rst_ps7_0_50M_3_upcnt_n is
  port (
    Data : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Cnt_en : in STD_LOGIC;
    Load : in STD_LOGIC;
    Clr : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Qout : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute C_SIZE : integer;
  attribute C_SIZE of kf_bd_rst_ps7_0_50M_3_upcnt_n : entity is 6;
end kf_bd_rst_ps7_0_50M_3_upcnt_n;

architecture STRUCTURE of kf_bd_rst_ps7_0_50M_3_upcnt_n is
  signal \^qout\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal clear : STD_LOGIC;
  signal q_int0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q_int[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q_int[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q_int[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q_int[4]_i_1\ : label is "soft_lutpair0";
begin
  Qout(5 downto 0) <= \^qout\(5 downto 0);
\q_int[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^qout\(0),
      O => q_int0(0)
    );
\q_int[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^qout\(0),
      I1 => \^qout\(1),
      O => q_int0(1)
    );
\q_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^qout\(0),
      I1 => \^qout\(1),
      I2 => \^qout\(2),
      O => q_int0(2)
    );
\q_int[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^qout\(1),
      I1 => \^qout\(0),
      I2 => \^qout\(2),
      I3 => \^qout\(3),
      O => q_int0(3)
    );
\q_int[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^qout\(2),
      I1 => \^qout\(0),
      I2 => \^qout\(1),
      I3 => \^qout\(3),
      I4 => \^qout\(4),
      O => q_int0(4)
    );
\q_int[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Clr,
      O => clear
    );
\q_int[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^qout\(3),
      I1 => \^qout\(1),
      I2 => \^qout\(0),
      I3 => \^qout\(2),
      I4 => \^qout\(4),
      I5 => \^qout\(5),
      O => q_int0(5)
    );
\q_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => Cnt_en,
      D => q_int0(0),
      Q => \^qout\(0),
      R => clear
    );
\q_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => Cnt_en,
      D => q_int0(1),
      Q => \^qout\(1),
      R => clear
    );
\q_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => Cnt_en,
      D => q_int0(2),
      Q => \^qout\(2),
      R => clear
    );
\q_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => Cnt_en,
      D => q_int0(3),
      Q => \^qout\(3),
      R => clear
    );
\q_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => Cnt_en,
      D => q_int0(4),
      Q => \^qout\(4),
      R => clear
    );
\q_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => Cnt_en,
      D => q_int0(5),
      Q => \^qout\(5),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kf_bd_rst_ps7_0_50M_3_lpf is
  port (
    MB_Debug_Sys_Rst : in STD_LOGIC;
    Dcm_locked : in STD_LOGIC;
    External_System_Reset : in STD_LOGIC;
    Auxiliary_System_Reset : in STD_LOGIC;
    Slowest_Sync_Clk : in STD_LOGIC;
    Lpf_reset : out STD_LOGIC
  );
  attribute C_AUX_RESET_HIGH : string;
  attribute C_AUX_RESET_HIGH of kf_bd_rst_ps7_0_50M_3_lpf : entity is "1'b0";
  attribute C_AUX_RST_WIDTH : integer;
  attribute C_AUX_RST_WIDTH of kf_bd_rst_ps7_0_50M_3_lpf : entity is 4;
  attribute C_EXT_RESET_HIGH : string;
  attribute C_EXT_RESET_HIGH of kf_bd_rst_ps7_0_50M_3_lpf : entity is "1'b0";
  attribute C_EXT_RST_WIDTH : integer;
  attribute C_EXT_RST_WIDTH of kf_bd_rst_ps7_0_50M_3_lpf : entity is 4;
end kf_bd_rst_ps7_0_50M_3_lpf;

architecture STRUCTURE of kf_bd_rst_ps7_0_50M_3_lpf is
  signal Q : STD_LOGIC;
  signal asr_and : STD_LOGIC;
  signal asr_d1 : STD_LOGIC;
  signal asr_lpf : STD_LOGIC_VECTOR ( 0 to 0 );
  signal asr_nand : STD_LOGIC;
  signal exr_and : STD_LOGIC;
  signal exr_d1 : STD_LOGIC;
  signal exr_lpf : STD_LOGIC_VECTOR ( 0 to 0 );
  signal exr_nand : STD_LOGIC;
  signal lpf_asr : STD_LOGIC;
  signal lpf_exr : STD_LOGIC;
  signal lpf_int0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in4_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_2_in3_in : STD_LOGIC;
  signal p_3_in1_in : STD_LOGIC;
  signal p_3_in6_in : STD_LOGIC;
  signal \NLW_ACTIVE_LOW_AUX.ACT_LO_AUX_prmry_ack_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ACTIVE_LOW_AUX.ACT_LO_AUX_scndry_vect_out_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_ACTIVE_LOW_EXT.ACT_LO_EXT_prmry_ack_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ACTIVE_LOW_EXT.ACT_LO_EXT_scndry_vect_out_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_CDC_TYPE : integer;
  attribute C_CDC_TYPE of \ACTIVE_LOW_AUX.ACT_LO_AUX\ : label is 1;
  attribute C_FLOP_INPUT : integer;
  attribute C_FLOP_INPUT of \ACTIVE_LOW_AUX.ACT_LO_AUX\ : label is 0;
  attribute C_MTBF_STAGES : integer;
  attribute C_MTBF_STAGES of \ACTIVE_LOW_AUX.ACT_LO_AUX\ : label is 4;
  attribute C_RESET_STATE : integer;
  attribute C_RESET_STATE of \ACTIVE_LOW_AUX.ACT_LO_AUX\ : label is 0;
  attribute C_SINGLE_BIT : integer;
  attribute C_SINGLE_BIT of \ACTIVE_LOW_AUX.ACT_LO_AUX\ : label is 1;
  attribute C_VECTOR_WIDTH : integer;
  attribute C_VECTOR_WIDTH of \ACTIVE_LOW_AUX.ACT_LO_AUX\ : label is 2;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \ACTIVE_LOW_AUX.ACT_LO_AUX\ : label is "yes";
  attribute C_CDC_TYPE of \ACTIVE_LOW_EXT.ACT_LO_EXT\ : label is 1;
  attribute C_FLOP_INPUT of \ACTIVE_LOW_EXT.ACT_LO_EXT\ : label is 0;
  attribute C_MTBF_STAGES of \ACTIVE_LOW_EXT.ACT_LO_EXT\ : label is 4;
  attribute C_RESET_STATE of \ACTIVE_LOW_EXT.ACT_LO_EXT\ : label is 0;
  attribute C_SINGLE_BIT of \ACTIVE_LOW_EXT.ACT_LO_EXT\ : label is 1;
  attribute C_VECTOR_WIDTH of \ACTIVE_LOW_EXT.ACT_LO_EXT\ : label is 2;
  attribute downgradeipidentifiedwarnings of \ACTIVE_LOW_EXT.ACT_LO_EXT\ : label is "yes";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of POR_SRL_I : label is "SRL16";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of POR_SRL_I : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of POR_SRL_I : label is "PRIMITIVE";
  attribute srl_name : string;
  attribute srl_name of POR_SRL_I : label is "U0/EXT_LPF/POR_SRL_I";
begin
\ACTIVE_LOW_AUX.ACT_LO_AUX\: entity work.kf_bd_rst_ps7_0_50M_3_cdc_sync
     port map (
      prmry_ack => \NLW_ACTIVE_LOW_AUX.ACT_LO_AUX_prmry_ack_UNCONNECTED\,
      prmry_aclk => '1',
      prmry_in => asr_d1,
      prmry_resetn => '1',
      prmry_vect_in(1 downto 0) => B"00",
      scndry_aclk => Slowest_Sync_Clk,
      scndry_out => p_3_in1_in,
      scndry_resetn => '1',
      scndry_vect_out(1 downto 0) => \NLW_ACTIVE_LOW_AUX.ACT_LO_AUX_scndry_vect_out_UNCONNECTED\(1 downto 0)
    );
\ACTIVE_LOW_AUX.ACT_LO_AUX_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Auxiliary_System_Reset,
      O => asr_d1
    );
\ACTIVE_LOW_EXT.ACT_LO_EXT\: entity work.\kf_bd_rst_ps7_0_50M_3_cdc_sync__1\
     port map (
      prmry_ack => \NLW_ACTIVE_LOW_EXT.ACT_LO_EXT_prmry_ack_UNCONNECTED\,
      prmry_aclk => '1',
      prmry_in => exr_d1,
      prmry_resetn => '1',
      prmry_vect_in(1 downto 0) => B"00",
      scndry_aclk => Slowest_Sync_Clk,
      scndry_out => p_3_in6_in,
      scndry_resetn => '1',
      scndry_vect_out(1 downto 0) => \NLW_ACTIVE_LOW_EXT.ACT_LO_EXT_scndry_vect_out_UNCONNECTED\(1 downto 0)
    );
\ACTIVE_LOW_EXT.ACT_LO_EXT_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => MB_Debug_Sys_Rst,
      I1 => External_System_Reset,
      O => exr_d1
    );
\AUX_LPF[1].asr_lpf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => '1',
      D => p_3_in1_in,
      Q => p_2_in,
      R => '0'
    );
\AUX_LPF[2].asr_lpf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => '1',
      D => p_2_in,
      Q => p_1_in,
      R => '0'
    );
\AUX_LPF[3].asr_lpf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => '1',
      D => p_1_in,
      Q => asr_lpf(0),
      R => '0'
    );
\EXT_LPF[1].exr_lpf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => '1',
      D => p_3_in6_in,
      Q => p_2_in3_in,
      R => '0'
    );
\EXT_LPF[2].exr_lpf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => '1',
      D => p_2_in3_in,
      Q => p_1_in4_in,
      R => '0'
    );
\EXT_LPF[3].exr_lpf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => '1',
      D => p_1_in4_in,
      Q => exr_lpf(0),
      R => '0'
    );
POR_SRL_I: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"FFFF"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => Slowest_Sync_Clk,
      D => '0',
      Q => Q
    );
lpf_asr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => asr_lpf(0),
      I1 => p_3_in1_in,
      I2 => p_2_in,
      I3 => p_1_in,
      O => asr_and
    );
lpf_asr_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => asr_lpf(0),
      I1 => p_3_in1_in,
      I2 => p_2_in,
      I3 => p_1_in,
      O => asr_nand
    );
lpf_asr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => asr_nand,
      D => '0',
      Q => lpf_asr,
      S => asr_and
    );
lpf_exr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => exr_lpf(0),
      I1 => p_3_in6_in,
      I2 => p_2_in3_in,
      I3 => p_1_in4_in,
      O => exr_and
    );
lpf_exr_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => exr_lpf(0),
      I1 => p_3_in6_in,
      I2 => p_2_in3_in,
      I3 => p_1_in4_in,
      O => exr_nand
    );
lpf_exr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => exr_nand,
      D => '0',
      Q => lpf_exr,
      S => exr_and
    );
lpf_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => Dcm_locked,
      I1 => lpf_exr,
      I2 => lpf_asr,
      I3 => Q,
      O => lpf_int0
    );
lpf_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => '1',
      D => lpf_int0,
      Q => Lpf_reset,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kf_bd_rst_ps7_0_50M_3_sequence_psr is
  port (
    Lpf_reset : in STD_LOGIC;
    Slowest_Sync_Clk : in STD_LOGIC;
    Bsr_out : out STD_LOGIC;
    Pr_out : out STD_LOGIC;
    MB_out : out STD_LOGIC
  );
end kf_bd_rst_ps7_0_50M_3_sequence_psr;

architecture STRUCTURE of kf_bd_rst_ps7_0_50M_3_sequence_psr is
  signal \^mb_out\ : STD_LOGIC;
  signal \bsr_dec_reg_n_0_[0]\ : STD_LOGIC;
  signal \bsr_dec_reg_n_0_[2]\ : STD_LOGIC;
  signal \core_dec[0]_i_1_n_0\ : STD_LOGIC;
  signal \core_dec[2]_i_1_n_0\ : STD_LOGIC;
  signal \core_dec_reg_n_0_[0]\ : STD_LOGIC;
  signal \core_dec_reg_n_0_[1]\ : STD_LOGIC;
  signal from_sys_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_3_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_5_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal pr_dec0 : STD_LOGIC;
  signal \pr_dec_reg_n_0_[0]\ : STD_LOGIC;
  signal \pr_dec_reg_n_0_[2]\ : STD_LOGIC;
  signal seq_clr : STD_LOGIC;
  signal seq_cnt : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal seq_cnt_en : STD_LOGIC;
  attribute C_SIZE : integer;
  attribute C_SIZE of SEQ_COUNTER : label is 6;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bsr_dec[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bsr_dec[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \core_dec[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \core_dec[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pr_dec[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pr_dec[2]_i_1\ : label is "soft_lutpair4";
begin
  MB_out <= \^mb_out\;
Core_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => p_0_in,
      D => '0',
      Q => \^mb_out\,
      S => Lpf_reset
    );
SEQ_COUNTER: entity work.kf_bd_rst_ps7_0_50M_3_upcnt_n
     port map (
      Clk => Slowest_Sync_Clk,
      Clr => seq_clr,
      Cnt_en => seq_cnt_en,
      Data(5 downto 0) => B"000000",
      Load => '0',
      Qout(5 downto 0) => seq_cnt(5 downto 0)
    );
\bsr_dec[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0090"
    )
        port map (
      I0 => seq_cnt_en,
      I1 => seq_cnt(4),
      I2 => seq_cnt(3),
      I3 => seq_cnt(5),
      O => p_5_out(0)
    );
\bsr_dec[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \core_dec_reg_n_0_[1]\,
      I1 => \bsr_dec_reg_n_0_[0]\,
      O => p_5_out(2)
    );
\bsr_dec_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => '1',
      D => p_5_out(0),
      Q => \bsr_dec_reg_n_0_[0]\,
      R => '0'
    );
\bsr_dec_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => '1',
      D => p_5_out(2),
      Q => \bsr_dec_reg_n_0_[2]\,
      R => '0'
    );
bsr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => \bsr_dec_reg_n_0_[2]\,
      D => '0',
      Q => Bsr_out,
      S => Lpf_reset
    );
\core_dec[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9000"
    )
        port map (
      I0 => seq_cnt_en,
      I1 => seq_cnt(4),
      I2 => seq_cnt(3),
      I3 => seq_cnt(5),
      O => \core_dec[0]_i_1_n_0\
    );
\core_dec[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0018"
    )
        port map (
      I0 => seq_cnt_en,
      I1 => seq_cnt(0),
      I2 => seq_cnt(2),
      I3 => seq_cnt(1),
      O => pr_dec0
    );
\core_dec[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \core_dec_reg_n_0_[1]\,
      I1 => \core_dec_reg_n_0_[0]\,
      O => \core_dec[2]_i_1_n_0\
    );
\core_dec_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => '1',
      D => \core_dec[0]_i_1_n_0\,
      Q => \core_dec_reg_n_0_[0]\,
      R => '0'
    );
\core_dec_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => '1',
      D => pr_dec0,
      Q => \core_dec_reg_n_0_[1]\,
      R => '0'
    );
\core_dec_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => '1',
      D => \core_dec[2]_i_1_n_0\,
      Q => p_0_in,
      R => '0'
    );
from_sys_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^mb_out\,
      O => from_sys_i_1_n_0
    );
from_sys_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => from_sys_i_1_n_0,
      D => '0',
      Q => seq_cnt_en,
      S => Lpf_reset
    );
\pr_dec[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0480"
    )
        port map (
      I0 => seq_cnt_en,
      I1 => seq_cnt(3),
      I2 => seq_cnt(5),
      I3 => seq_cnt(4),
      O => p_3_out(0)
    );
\pr_dec[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \core_dec_reg_n_0_[1]\,
      I1 => \pr_dec_reg_n_0_[0]\,
      O => p_3_out(2)
    );
\pr_dec_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => '1',
      D => p_3_out(0),
      Q => \pr_dec_reg_n_0_[0]\,
      R => '0'
    );
\pr_dec_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => '1',
      D => p_3_out(2),
      Q => \pr_dec_reg_n_0_[2]\,
      R => '0'
    );
pr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => \pr_dec_reg_n_0_[2]\,
      D => '0',
      Q => Pr_out,
      S => Lpf_reset
    );
seq_clr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Slowest_Sync_Clk,
      CE => '1',
      D => '1',
      Q => seq_clr,
      R => Lpf_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kf_bd_rst_ps7_0_50M_3_proc_sys_reset is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_AUX_RESET_HIGH : string;
  attribute C_AUX_RESET_HIGH of kf_bd_rst_ps7_0_50M_3_proc_sys_reset : entity is "1'b0";
  attribute C_AUX_RST_WIDTH : integer;
  attribute C_AUX_RST_WIDTH of kf_bd_rst_ps7_0_50M_3_proc_sys_reset : entity is 4;
  attribute C_EXT_RESET_HIGH : string;
  attribute C_EXT_RESET_HIGH of kf_bd_rst_ps7_0_50M_3_proc_sys_reset : entity is "1'b0";
  attribute C_EXT_RST_WIDTH : integer;
  attribute C_EXT_RST_WIDTH of kf_bd_rst_ps7_0_50M_3_proc_sys_reset : entity is 4;
  attribute C_FAMILY : string;
  attribute C_FAMILY of kf_bd_rst_ps7_0_50M_3_proc_sys_reset : entity is "zynq";
  attribute C_NUM_BUS_RST : integer;
  attribute C_NUM_BUS_RST of kf_bd_rst_ps7_0_50M_3_proc_sys_reset : entity is 1;
  attribute C_NUM_INTERCONNECT_ARESETN : integer;
  attribute C_NUM_INTERCONNECT_ARESETN of kf_bd_rst_ps7_0_50M_3_proc_sys_reset : entity is 1;
  attribute C_NUM_PERP_ARESETN : integer;
  attribute C_NUM_PERP_ARESETN of kf_bd_rst_ps7_0_50M_3_proc_sys_reset : entity is 1;
  attribute C_NUM_PERP_RST : integer;
  attribute C_NUM_PERP_RST of kf_bd_rst_ps7_0_50M_3_proc_sys_reset : entity is 1;
end kf_bd_rst_ps7_0_50M_3_proc_sys_reset;

architecture STRUCTURE of kf_bd_rst_ps7_0_50M_3_proc_sys_reset is
  signal \ACTIVE_LOW_BSR_OUT_DFF[0].FDRE_BSR_N_i_1_n_0\ : STD_LOGIC;
  signal \ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N_i_1_n_0\ : STD_LOGIC;
  signal Bsr_out : STD_LOGIC;
  signal MB_out : STD_LOGIC;
  signal Pr_out : STD_LOGIC;
  signal lpf_reset : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \ACTIVE_LOW_BSR_OUT_DFF[0].FDRE_BSR_N\ : label is "PRIMITIVE";
  attribute box_type of \ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N\ : label is "PRIMITIVE";
  attribute box_type of \BSR_OUT_DFF[0].FDRE_BSR\ : label is "PRIMITIVE";
  attribute C_AUX_RESET_HIGH of EXT_LPF : label is "1'b0";
  attribute C_AUX_RST_WIDTH of EXT_LPF : label is 4;
  attribute C_EXT_RESET_HIGH of EXT_LPF : label is "1'b0";
  attribute C_EXT_RST_WIDTH of EXT_LPF : label is 4;
  attribute box_type of FDRE_inst : label is "PRIMITIVE";
  attribute box_type of \PR_OUT_DFF[0].FDRE_PER\ : label is "PRIMITIVE";
begin
\ACTIVE_LOW_BSR_OUT_DFF[0].FDRE_BSR_N\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => \ACTIVE_LOW_BSR_OUT_DFF[0].FDRE_BSR_N_i_1_n_0\,
      Q => interconnect_aresetn(0),
      R => '0'
    );
\ACTIVE_LOW_BSR_OUT_DFF[0].FDRE_BSR_N_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Bsr_out,
      O => \ACTIVE_LOW_BSR_OUT_DFF[0].FDRE_BSR_N_i_1_n_0\
    );
\ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => \ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N_i_1_n_0\,
      Q => peripheral_aresetn(0),
      R => '0'
    );
\ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Pr_out,
      O => \ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N_i_1_n_0\
    );
\BSR_OUT_DFF[0].FDRE_BSR\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => Bsr_out,
      Q => bus_struct_reset(0),
      R => '0'
    );
EXT_LPF: entity work.kf_bd_rst_ps7_0_50M_3_lpf
     port map (
      Auxiliary_System_Reset => aux_reset_in,
      Dcm_locked => dcm_locked,
      External_System_Reset => ext_reset_in,
      Lpf_reset => lpf_reset,
      MB_Debug_Sys_Rst => mb_debug_sys_rst,
      Slowest_Sync_Clk => slowest_sync_clk
    );
FDRE_inst: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => MB_out,
      Q => mb_reset,
      R => '0'
    );
\PR_OUT_DFF[0].FDRE_PER\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => Pr_out,
      Q => peripheral_reset(0),
      R => '0'
    );
SEQ: entity work.kf_bd_rst_ps7_0_50M_3_sequence_psr
     port map (
      Bsr_out => Bsr_out,
      Lpf_reset => lpf_reset,
      MB_out => MB_out,
      Pr_out => Pr_out,
      Slowest_Sync_Clk => slowest_sync_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kf_bd_rst_ps7_0_50M_3 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of kf_bd_rst_ps7_0_50M_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of kf_bd_rst_ps7_0_50M_3 : entity is "kf_bd_rst_ps7_0_50M_3,proc_sys_reset,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of kf_bd_rst_ps7_0_50M_3 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of kf_bd_rst_ps7_0_50M_3 : entity is "proc_sys_reset,Vivado 2024.2";
end kf_bd_rst_ps7_0_50M_3;

architecture STRUCTURE of kf_bd_rst_ps7_0_50M_3 is
  attribute C_AUX_RESET_HIGH : string;
  attribute C_AUX_RESET_HIGH of U0 : label is "1'b0";
  attribute C_AUX_RST_WIDTH : integer;
  attribute C_AUX_RST_WIDTH of U0 : label is 4;
  attribute C_EXT_RESET_HIGH : string;
  attribute C_EXT_RESET_HIGH of U0 : label is "1'b0";
  attribute C_EXT_RST_WIDTH : integer;
  attribute C_EXT_RST_WIDTH of U0 : label is 4;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_NUM_BUS_RST : integer;
  attribute C_NUM_BUS_RST of U0 : label is 1;
  attribute C_NUM_INTERCONNECT_ARESETN : integer;
  attribute C_NUM_INTERCONNECT_ARESETN of U0 : label is 1;
  attribute C_NUM_PERP_ARESETN : integer;
  attribute C_NUM_PERP_ARESETN of U0 : label is 1;
  attribute C_NUM_PERP_RST : integer;
  attribute C_NUM_PERP_RST of U0 : label is 1;
  attribute x_interface_info : string;
  attribute x_interface_info of aux_reset_in : signal is "xilinx.com:signal:reset:1.0 aux_reset RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of aux_reset_in : signal is "slave aux_reset";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aux_reset_in : signal is "XIL_INTERFACENAME aux_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of ext_reset_in : signal is "xilinx.com:signal:reset:1.0 ext_reset RST";
  attribute x_interface_mode of ext_reset_in : signal is "slave ext_reset";
  attribute x_interface_parameter of ext_reset_in : signal is "XIL_INTERFACENAME ext_reset, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of mb_debug_sys_rst : signal is "xilinx.com:signal:reset:1.0 dbg_reset RST";
  attribute x_interface_mode of mb_debug_sys_rst : signal is "slave dbg_reset";
  attribute x_interface_parameter of mb_debug_sys_rst : signal is "XIL_INTERFACENAME dbg_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute x_interface_info of mb_reset : signal is "xilinx.com:signal:reset:1.0 mb_rst RST";
  attribute x_interface_mode of mb_reset : signal is "master mb_rst";
  attribute x_interface_parameter of mb_reset : signal is "XIL_INTERFACENAME mb_rst, POLARITY ACTIVE_HIGH, TYPE PROCESSOR, INSERT_VIP 0";
  attribute x_interface_info of slowest_sync_clk : signal is "xilinx.com:signal:clock:1.0 clock CLK";
  attribute x_interface_mode of slowest_sync_clk : signal is "slave clock";
  attribute x_interface_parameter of slowest_sync_clk : signal is "XIL_INTERFACENAME clock, ASSOCIATED_RESET mb_reset:bus_struct_reset:interconnect_aresetn:peripheral_aresetn:peripheral_reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN kf_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of bus_struct_reset : signal is "xilinx.com:signal:reset:1.0 bus_struct_reset RST";
  attribute x_interface_mode of bus_struct_reset : signal is "master bus_struct_reset";
  attribute x_interface_parameter of bus_struct_reset : signal is "XIL_INTERFACENAME bus_struct_reset, POLARITY ACTIVE_HIGH, TYPE INTERCONNECT, INSERT_VIP 0";
  attribute x_interface_info of interconnect_aresetn : signal is "xilinx.com:signal:reset:1.0 interconnect_low_rst RST";
  attribute x_interface_mode of interconnect_aresetn : signal is "master interconnect_low_rst";
  attribute x_interface_parameter of interconnect_aresetn : signal is "XIL_INTERFACENAME interconnect_low_rst, POLARITY ACTIVE_LOW, TYPE INTERCONNECT, INSERT_VIP 0";
  attribute x_interface_info of peripheral_aresetn : signal is "xilinx.com:signal:reset:1.0 peripheral_low_rst RST";
  attribute x_interface_mode of peripheral_aresetn : signal is "master peripheral_low_rst";
  attribute x_interface_parameter of peripheral_aresetn : signal is "XIL_INTERFACENAME peripheral_low_rst, POLARITY ACTIVE_LOW, TYPE PERIPHERAL, INSERT_VIP 0";
  attribute x_interface_info of peripheral_reset : signal is "xilinx.com:signal:reset:1.0 peripheral_high_rst RST";
  attribute x_interface_mode of peripheral_reset : signal is "master peripheral_high_rst";
  attribute x_interface_parameter of peripheral_reset : signal is "XIL_INTERFACENAME peripheral_high_rst, POLARITY ACTIVE_HIGH, TYPE PERIPHERAL, INSERT_VIP 0";
begin
U0: entity work.kf_bd_rst_ps7_0_50M_3_proc_sys_reset
     port map (
      aux_reset_in => aux_reset_in,
      bus_struct_reset(0) => bus_struct_reset(0),
      dcm_locked => dcm_locked,
      ext_reset_in => ext_reset_in,
      interconnect_aresetn(0) => interconnect_aresetn(0),
      mb_debug_sys_rst => mb_debug_sys_rst,
      mb_reset => mb_reset,
      peripheral_aresetn(0) => peripheral_aresetn(0),
      peripheral_reset(0) => peripheral_reset(0),
      slowest_sync_clk => slowest_sync_clk
    );
end STRUCTURE;
