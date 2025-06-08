-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Jun  9 01:24:04 2025
-- Host        : Laptop45877481 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ kf_bd_axi_iic_0_0_sim_netlist.vhdl
-- Design      : kf_bd_axi_iic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO is
  port (
    Rc_addr : out STD_LOGIC_VECTOR ( 0 to 3 );
    Rc_fifo_data : out STD_LOGIC_VECTOR ( 0 to 7 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\ : out STD_LOGIC;
    Bus2IIC_Reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    CI : in STD_LOGIC;
    \FIFO_RAM[0].SRL16E_I_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Rc_fifo_wr : in STD_LOGIC;
    Rc_fifo_wr_d : in STD_LOGIC;
    Rc_fifo_rd_d : in STD_LOGIC;
    Rc_fifo_rd : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO is
  signal \Addr_Counters[3].XORCY_I_i_1__1_n_0\ : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal Rc_Data_Exists : STD_LOGIC;
  signal \^rc_addr\ : STD_LOGIC_VECTOR ( 0 to 3 );
  signal S : STD_LOGIC;
  signal S0_out : STD_LOGIC;
  signal S1_out : STD_LOGIC;
  signal addr_cy_1 : STD_LOGIC;
  signal addr_cy_2 : STD_LOGIC;
  signal addr_cy_3 : STD_LOGIC;
  signal \buffer_Empty__2\ : STD_LOGIC;
  signal sum_A_0 : STD_LOGIC;
  signal sum_A_1 : STD_LOGIC;
  signal sum_A_2 : STD_LOGIC;
  signal sum_A_3 : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute box_type of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of Data_Exists_DFF : label is "VCC:CE";
  attribute box_type of Data_Exists_DFF : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Data_Exists_DFF_i_2__0\ : label is "soft_lutpair37";
  attribute box_type of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[0].SRL16E_I ";
  attribute box_type of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[1].SRL16E_I ";
  attribute box_type of \FIFO_RAM[2].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[2].SRL16E_I ";
  attribute box_type of \FIFO_RAM[3].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[3].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[3].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[3].SRL16E_I ";
  attribute box_type of \FIFO_RAM[4].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[4].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[4].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[4].SRL16E_I ";
  attribute box_type of \FIFO_RAM[5].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[5].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[5].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[5].SRL16E_I ";
  attribute box_type of \FIFO_RAM[6].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[6].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[6].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[6].SRL16E_I ";
  attribute box_type of \FIFO_RAM[7].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[7].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[7].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[7].SRL16E_I ";
  attribute SOFT_HLUTNM of \RD_FIFO_CNTRL.ro_prev_i_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \sr_i[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \sr_i[2]_i_1\ : label is "soft_lutpair37";
begin
  Rc_addr(0 to 3) <= \^rc_addr\(0 to 3);
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => Rc_Data_Exists,
      D => sum_A_3,
      Q => \^rc_addr\(0),
      R => Bus2IIC_Reset
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => addr_cy_1,
      CO(1) => addr_cy_2,
      CO(0) => addr_cy_3,
      CYINIT => CI,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \^rc_addr\(2),
      DI(1) => \^rc_addr\(1),
      DI(0) => \^rc_addr\(0),
      O(3) => sum_A_0,
      O(2) => sum_A_1,
      O(1) => sum_A_2,
      O(0) => sum_A_3,
      S(3) => \Addr_Counters[3].XORCY_I_i_1__1_n_0\,
      S(2) => S0_out,
      S(1) => S1_out,
      S(0) => S
    );
\Addr_Counters[0].MUXCY_L_I_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22A2115122A222A2"
    )
        port map (
      I0 => \^rc_addr\(0),
      I1 => \buffer_Empty__2\,
      I2 => Rc_fifo_wr,
      I3 => Rc_fifo_wr_d,
      I4 => Rc_fifo_rd_d,
      I5 => Rc_fifo_rd,
      O => S
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => Rc_Data_Exists,
      D => sum_A_2,
      Q => \^rc_addr\(1),
      R => Bus2IIC_Reset
    );
\Addr_Counters[1].MUXCY_L_I_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22A2115122A222A2"
    )
        port map (
      I0 => \^rc_addr\(1),
      I1 => \buffer_Empty__2\,
      I2 => Rc_fifo_wr,
      I3 => Rc_fifo_wr_d,
      I4 => Rc_fifo_rd_d,
      I5 => Rc_fifo_rd,
      O => S1_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => Rc_Data_Exists,
      D => sum_A_1,
      Q => \^rc_addr\(2),
      R => Bus2IIC_Reset
    );
\Addr_Counters[2].MUXCY_L_I_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22A2115122A222A2"
    )
        port map (
      I0 => \^rc_addr\(2),
      I1 => \buffer_Empty__2\,
      I2 => Rc_fifo_wr,
      I3 => Rc_fifo_wr_d,
      I4 => Rc_fifo_rd_d,
      I5 => Rc_fifo_rd,
      O => S0_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => Rc_Data_Exists,
      D => sum_A_0,
      Q => \^rc_addr\(3),
      R => Bus2IIC_Reset
    );
\Addr_Counters[3].XORCY_I_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22A2115122A222A2"
    )
        port map (
      I0 => \^rc_addr\(3),
      I1 => \buffer_Empty__2\,
      I2 => Rc_fifo_wr,
      I3 => Rc_fifo_wr_d,
      I4 => Rc_fifo_rd_d,
      I5 => Rc_fifo_rd,
      O => \Addr_Counters[3].XORCY_I_i_1__1_n_0\
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D_0,
      Q => Rc_Data_Exists,
      R => Bus2IIC_Reset
    );
\Data_Exists_DFF_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF75FF20202020"
    )
        port map (
      I0 => \buffer_Empty__2\,
      I1 => Rc_fifo_wr_d,
      I2 => Rc_fifo_wr,
      I3 => Rc_fifo_rd,
      I4 => Rc_fifo_rd_d,
      I5 => Rc_Data_Exists,
      O => D_0
    );
\Data_Exists_DFF_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^rc_addr\(1),
      I1 => \^rc_addr\(0),
      I2 => \^rc_addr\(3),
      I3 => \^rc_addr\(2),
      O => \buffer_Empty__2\
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \FIFO_RAM[0].SRL16E_I_0\(7),
      Q => Rc_fifo_data(0)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \FIFO_RAM[0].SRL16E_I_0\(6),
      Q => Rc_fifo_data(1)
    );
\FIFO_RAM[2].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \FIFO_RAM[0].SRL16E_I_0\(5),
      Q => Rc_fifo_data(2)
    );
\FIFO_RAM[3].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \FIFO_RAM[0].SRL16E_I_0\(4),
      Q => Rc_fifo_data(3)
    );
\FIFO_RAM[4].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \FIFO_RAM[0].SRL16E_I_0\(3),
      Q => Rc_fifo_data(4)
    );
\FIFO_RAM[5].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \FIFO_RAM[0].SRL16E_I_0\(2),
      Q => Rc_fifo_data(5)
    );
\FIFO_RAM[6].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \FIFO_RAM[0].SRL16E_I_0\(1),
      Q => Rc_fifo_data(6)
    );
\FIFO_RAM[7].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \FIFO_RAM[0].SRL16E_I_0\(0),
      Q => Rc_fifo_data(7)
    );
\RD_FIFO_CNTRL.ro_prev_i_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => Q(0),
      I1 => \^rc_addr\(0),
      I2 => Rc_Data_Exists,
      O => \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\
    );
\sr_i[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Rc_Data_Exists,
      O => D(1)
    );
\sr_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^rc_addr\(1),
      I1 => \^rc_addr\(0),
      I2 => \^rc_addr\(3),
      I3 => \^rc_addr\(2),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO_0 is
  port (
    Tx_addr_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Tx_fifo_data_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \Addr_Counters[1].FDRE_I_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FIFO_RAM[1].SRL16E_I_0\ : out STD_LOGIC;
    \Tx_data_exists__4\ : out STD_LOGIC;
    \FIFO_RAM[0].SRL16E_I_0\ : out STD_LOGIC;
    \Addr_Counters[3].FDRE_I_0\ : out STD_LOGIC;
    \FIFO_RAM[7].SRL16E_I_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_fifo_rst : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txFifoRd : in STD_LOGIC;
    \Tx_fifo_wr_i__0\ : in STD_LOGIC;
    dynamic_MSMS : in STD_LOGIC_VECTOR ( 0 to 1 );
    Bb : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_fifo_wr_d : in STD_LOGIC;
    Tx_fifo_wr : in STD_LOGIC;
    shift_reg_ld : in STD_LOGIC;
    scndry_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO_0 : entity is "SRL_FIFO";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO_0 is
  signal \Addr_Counters[3].XORCY_I_i_1__0_n_0\ : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal D : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0_out : STD_LOGIC;
  signal S1_out : STD_LOGIC;
  signal \^tx_addr_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^tx_data_exists__4\ : STD_LOGIC;
  signal Tx_data_exists_sgl : STD_LOGIC;
  signal \^tx_fifo_data_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal addr_cy_1 : STD_LOGIC;
  signal addr_cy_2 : STD_LOGIC;
  signal addr_cy_3 : STD_LOGIC;
  signal \buffer_Empty__2\ : STD_LOGIC;
  signal callingReadAccess_i_3_n_0 : STD_LOGIC;
  signal sum_A_0 : STD_LOGIC;
  signal sum_A_1 : STD_LOGIC;
  signal sum_A_2 : STD_LOGIC;
  signal sum_A_3 : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute box_type of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of Data_Exists_DFF : label is "VCC:CE";
  attribute box_type of Data_Exists_DFF : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Data_Exists_DFF_i_2 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \FIFO_GEN_DTR.IIC2Bus_IntrEvent[7]_i_1\ : label is "soft_lutpair45";
  attribute box_type of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[0].SRL16E_I ";
  attribute box_type of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[1].SRL16E_I ";
  attribute box_type of \FIFO_RAM[2].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[2].SRL16E_I ";
  attribute box_type of \FIFO_RAM[3].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[3].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[3].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[3].SRL16E_I ";
  attribute box_type of \FIFO_RAM[4].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[4].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[4].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[4].SRL16E_I ";
  attribute box_type of \FIFO_RAM[5].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[5].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[5].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[5].SRL16E_I ";
  attribute box_type of \FIFO_RAM[6].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[6].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[6].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[6].SRL16E_I ";
  attribute box_type of \FIFO_RAM[7].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[7].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[7].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[7].SRL16E_I ";
  attribute SOFT_HLUTNM of callingReadAccess_i_3 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \cr_i[5]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \sr_i[0]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \sr_i[3]_i_1\ : label is "soft_lutpair45";
begin
  Tx_addr_0(3 downto 0) <= \^tx_addr_0\(3 downto 0);
  \Tx_data_exists__4\ <= \^tx_data_exists__4\;
  Tx_fifo_data_0(7 downto 0) <= \^tx_fifo_data_0\(7 downto 0);
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => Tx_data_exists_sgl,
      D => sum_A_3,
      Q => \^tx_addr_0\(3),
      R => Tx_fifo_rst
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => addr_cy_1,
      CO(1) => addr_cy_2,
      CO(0) => addr_cy_3,
      CYINIT => CI,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \^tx_addr_0\(1),
      DI(1) => \^tx_addr_0\(2),
      DI(0) => \^tx_addr_0\(3),
      O(3) => sum_A_0,
      O(2) => sum_A_1,
      O(1) => sum_A_2,
      O(0) => sum_A_3,
      S(3) => \Addr_Counters[3].XORCY_I_i_1__0_n_0\,
      S(2) => S0_out,
      S(1) => S1_out,
      S(0) => S
    );
\Addr_Counters[0].MUXCY_L_I_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554AAAAAAAA"
    )
        port map (
      I0 => \^tx_addr_0\(3),
      I1 => \^tx_addr_0\(2),
      I2 => \^tx_addr_0\(0),
      I3 => \^tx_addr_0\(1),
      I4 => \Tx_fifo_wr_i__0\,
      I5 => txFifoRd,
      O => S
    );
\Addr_Counters[0].MUXCY_L_I_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF00000000"
    )
        port map (
      I0 => txFifoRd,
      I1 => \^tx_addr_0\(2),
      I2 => \^tx_addr_0\(3),
      I3 => \^tx_addr_0\(0),
      I4 => \^tx_addr_0\(1),
      I5 => \Tx_fifo_wr_i__0\,
      O => CI
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => Tx_data_exists_sgl,
      D => sum_A_2,
      Q => \^tx_addr_0\(2),
      R => Tx_fifo_rst
    );
\Addr_Counters[1].MUXCY_L_I_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554AAAAAAAA"
    )
        port map (
      I0 => \^tx_addr_0\(2),
      I1 => \^tx_addr_0\(3),
      I2 => \^tx_addr_0\(0),
      I3 => \^tx_addr_0\(1),
      I4 => \Tx_fifo_wr_i__0\,
      I5 => txFifoRd,
      O => S1_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => Tx_data_exists_sgl,
      D => sum_A_1,
      Q => \^tx_addr_0\(1),
      R => Tx_fifo_rst
    );
\Addr_Counters[2].MUXCY_L_I_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554AAAAAAAA"
    )
        port map (
      I0 => \^tx_addr_0\(1),
      I1 => \^tx_addr_0\(2),
      I2 => \^tx_addr_0\(3),
      I3 => \^tx_addr_0\(0),
      I4 => \Tx_fifo_wr_i__0\,
      I5 => txFifoRd,
      O => S0_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => Tx_data_exists_sgl,
      D => sum_A_0,
      Q => \^tx_addr_0\(0),
      R => Tx_fifo_rst
    );
\Addr_Counters[3].XORCY_I_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554AAAAAAAA"
    )
        port map (
      I0 => \^tx_addr_0\(0),
      I1 => \^tx_addr_0\(2),
      I2 => \^tx_addr_0\(3),
      I3 => \^tx_addr_0\(1),
      I4 => \Tx_fifo_wr_i__0\,
      I5 => txFifoRd,
      O => \Addr_Counters[3].XORCY_I_i_1__0_n_0\
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D,
      Q => Tx_data_exists_sgl,
      R => Tx_fifo_rst
    );
\Data_Exists_DFF_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75FF2020"
    )
        port map (
      I0 => \buffer_Empty__2\,
      I1 => Tx_fifo_wr_d,
      I2 => Tx_fifo_wr,
      I3 => txFifoRd,
      I4 => Tx_data_exists_sgl,
      O => D
    );
Data_Exists_DFF_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^tx_addr_0\(2),
      I1 => \^tx_addr_0\(3),
      I2 => \^tx_addr_0\(0),
      I3 => \^tx_addr_0\(1),
      O => \buffer_Empty__2\
    );
\FIFO_GEN_DTR.IIC2Bus_IntrEvent[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^tx_addr_0\(0),
      O => \Addr_Counters[3].FDRE_I_0\
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr_0\(3),
      A1 => \^tx_addr_0\(2),
      A2 => \^tx_addr_0\(1),
      A3 => \^tx_addr_0\(0),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(7),
      Q => \^tx_fifo_data_0\(7)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr_0\(3),
      A1 => \^tx_addr_0\(2),
      A2 => \^tx_addr_0\(1),
      A3 => \^tx_addr_0\(0),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(6),
      Q => \^tx_fifo_data_0\(6)
    );
\FIFO_RAM[2].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr_0\(3),
      A1 => \^tx_addr_0\(2),
      A2 => \^tx_addr_0\(1),
      A3 => \^tx_addr_0\(0),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(5),
      Q => \^tx_fifo_data_0\(5)
    );
\FIFO_RAM[3].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr_0\(3),
      A1 => \^tx_addr_0\(2),
      A2 => \^tx_addr_0\(1),
      A3 => \^tx_addr_0\(0),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(4),
      Q => \^tx_fifo_data_0\(4)
    );
\FIFO_RAM[4].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr_0\(3),
      A1 => \^tx_addr_0\(2),
      A2 => \^tx_addr_0\(1),
      A3 => \^tx_addr_0\(0),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(3),
      Q => \^tx_fifo_data_0\(3)
    );
\FIFO_RAM[5].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr_0\(3),
      A1 => \^tx_addr_0\(2),
      A2 => \^tx_addr_0\(1),
      A3 => \^tx_addr_0\(0),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(2),
      Q => \^tx_fifo_data_0\(2)
    );
\FIFO_RAM[6].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr_0\(3),
      A1 => \^tx_addr_0\(2),
      A2 => \^tx_addr_0\(1),
      A3 => \^tx_addr_0\(0),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(1),
      Q => \^tx_fifo_data_0\(1)
    );
\FIFO_RAM[7].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr_0\(3),
      A1 => \^tx_addr_0\(2),
      A2 => \^tx_addr_0\(1),
      A3 => \^tx_addr_0\(0),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(0),
      Q => \^tx_fifo_data_0\(0)
    );
callingReadAccess_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFAAAA"
    )
        port map (
      I0 => callingReadAccess_i_3_n_0,
      I1 => dynamic_MSMS(0),
      I2 => dynamic_MSMS(1),
      I3 => \^tx_fifo_data_0\(0),
      I4 => Tx_data_exists_sgl,
      O => \^tx_data_exists__4\
    );
callingReadAccess_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \^tx_addr_0\(3),
      I1 => \^tx_addr_0\(0),
      I2 => \^tx_addr_0\(1),
      I3 => \^tx_addr_0\(2),
      I4 => Tx_data_exists_sgl,
      O => callingReadAccess_i_3_n_0
    );
\cr_i[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => \^tx_data_exists__4\,
      I1 => dynamic_MSMS(1),
      I2 => Bb,
      I3 => Q(0),
      O => \FIFO_RAM[1].SRL16E_I_0\
    );
\data_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tx_fifo_data_0\(0),
      I1 => shift_reg_ld,
      I2 => scndry_out,
      O => \FIFO_RAM[7].SRL16E_I_0\(0)
    );
\sr_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^tx_data_exists__4\,
      O => \FIFO_RAM[0].SRL16E_I_0\
    );
\sr_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^tx_addr_0\(2),
      I1 => \^tx_addr_0\(3),
      I2 => \^tx_addr_0\(0),
      I3 => \^tx_addr_0\(1),
      O => \Addr_Counters[1].FDRE_I_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO__parameterized0\ is
  port (
    Data_Exists_DFF_0 : out STD_LOGIC;
    dynamic_MSMS : out STD_LOGIC_VECTOR ( 0 to 1 );
    p_3_in : out STD_LOGIC;
    \buffer_Empty__2\ : out STD_LOGIC;
    Tx_fifo_rst : in STD_LOGIC;
    D : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ctrlFifoDin : in STD_LOGIC_VECTOR ( 0 to 1 );
    \ctrl_fifo_wr_i__1\ : in STD_LOGIC;
    txFifoRd : in STD_LOGIC;
    Tx_fifo_rd : in STD_LOGIC;
    Tx_fifo_rd_d : in STD_LOGIC;
    \Tx_data_exists__4\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO__parameterized0\ : entity is "SRL_FIFO";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO__parameterized0\ is
  signal \Addr_Counters[0].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[1].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[2].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].XORCY_I_i_1_n_0\ : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal \^data_exists_dff_0\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0_out : STD_LOGIC;
  signal S1_out : STD_LOGIC;
  signal addr_cy_1 : STD_LOGIC;
  signal addr_cy_2 : STD_LOGIC;
  signal addr_cy_3 : STD_LOGIC;
  signal \^dynamic_msms\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal sum_A_0 : STD_LOGIC;
  signal sum_A_1 : STD_LOGIC;
  signal sum_A_2 : STD_LOGIC;
  signal sum_A_3 : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute box_type of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of Data_Exists_DFF : label is "VCC:CE";
  attribute box_type of Data_Exists_DFF : label is "PRIMITIVE";
  attribute box_type of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM[0].SRL16E_I ";
  attribute box_type of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM[1].SRL16E_I ";
begin
  Data_Exists_DFF_0 <= \^data_exists_dff_0\;
  dynamic_MSMS(0 to 1) <= \^dynamic_msms\(0 to 1);
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^data_exists_dff_0\,
      D => sum_A_3,
      Q => \Addr_Counters[0].FDRE_I_n_0\,
      R => Tx_fifo_rst
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => addr_cy_1,
      CO(1) => addr_cy_2,
      CO(0) => addr_cy_3,
      CYINIT => CI,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \Addr_Counters[2].FDRE_I_n_0\,
      DI(1) => \Addr_Counters[1].FDRE_I_n_0\,
      DI(0) => \Addr_Counters[0].FDRE_I_n_0\,
      O(3) => sum_A_0,
      O(2) => sum_A_1,
      O(1) => sum_A_2,
      O(0) => sum_A_3,
      S(3) => \Addr_Counters[3].XORCY_I_i_1_n_0\,
      S(2) => S0_out,
      S(1) => S1_out,
      S(0) => S
    );
\Addr_Counters[0].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554AAAAAAAA"
    )
        port map (
      I0 => \Addr_Counters[0].FDRE_I_n_0\,
      I1 => \Addr_Counters[2].FDRE_I_n_0\,
      I2 => \Addr_Counters[3].FDRE_I_n_0\,
      I3 => \Addr_Counters[1].FDRE_I_n_0\,
      I4 => \ctrl_fifo_wr_i__1\,
      I5 => txFifoRd,
      O => S
    );
\Addr_Counters[0].MUXCY_L_I_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \ctrl_fifo_wr_i__1\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[2].FDRE_I_n_0\,
      I3 => \Addr_Counters[0].FDRE_I_n_0\,
      I4 => \Addr_Counters[1].FDRE_I_n_0\,
      I5 => txFifoRd,
      O => CI
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^data_exists_dff_0\,
      D => sum_A_2,
      Q => \Addr_Counters[1].FDRE_I_n_0\,
      R => Tx_fifo_rst
    );
\Addr_Counters[1].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554AAAAAAAA"
    )
        port map (
      I0 => \Addr_Counters[1].FDRE_I_n_0\,
      I1 => \Addr_Counters[2].FDRE_I_n_0\,
      I2 => \Addr_Counters[3].FDRE_I_n_0\,
      I3 => \Addr_Counters[0].FDRE_I_n_0\,
      I4 => \ctrl_fifo_wr_i__1\,
      I5 => txFifoRd,
      O => S1_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^data_exists_dff_0\,
      D => sum_A_1,
      Q => \Addr_Counters[2].FDRE_I_n_0\,
      R => Tx_fifo_rst
    );
\Addr_Counters[2].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554AAAAAAAA"
    )
        port map (
      I0 => \Addr_Counters[2].FDRE_I_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => \Addr_Counters[1].FDRE_I_n_0\,
      I4 => \ctrl_fifo_wr_i__1\,
      I5 => txFifoRd,
      O => S0_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^data_exists_dff_0\,
      D => sum_A_0,
      Q => \Addr_Counters[3].FDRE_I_n_0\,
      R => Tx_fifo_rst
    );
\Addr_Counters[3].XORCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554AAAAAAAA"
    )
        port map (
      I0 => \Addr_Counters[3].FDRE_I_n_0\,
      I1 => \Addr_Counters[2].FDRE_I_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => \Addr_Counters[1].FDRE_I_n_0\,
      I4 => \ctrl_fifo_wr_i__1\,
      I5 => txFifoRd,
      O => \Addr_Counters[3].XORCY_I_i_1_n_0\
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D,
      Q => \^data_exists_dff_0\,
      R => Tx_fifo_rst
    );
\Data_Exists_DFF_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \Addr_Counters[2].FDRE_I_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => \Addr_Counters[1].FDRE_I_n_0\,
      O => \buffer_Empty__2\
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => ctrlFifoDin(0),
      Q => \^dynamic_msms\(0)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => ctrlFifoDin(1),
      Q => \^dynamic_msms\(1)
    );
callingReadAccess_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^dynamic_msms\(1),
      I1 => Tx_fifo_rd,
      I2 => Tx_fifo_rd_d,
      I3 => \Tx_data_exists__4\,
      O => p_3_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  port (
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    \bus2ip_addr_i_reg[3]\ : out STD_LOGIC;
    is_write_reg : out STD_LOGIC;
    is_read_reg : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wdata[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus2IIC_WrCE : out STD_LOGIC_VECTOR ( 11 downto 0 );
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    AXI_IP2Bus_Error : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \bus2ip_addr_i_reg[5]\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[2]\ : out STD_LOGIC;
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_IP2Bus_RdAck20 : out STD_LOGIC;
    AXI_IP2Bus_WrAck20 : out STD_LOGIC;
    \s_axi_wdata[31]\ : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    start2 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC;
    AXI_IP2Bus_WrAck1 : in STD_LOGIC;
    AXI_IP2Bus_WrAck2 : in STD_LOGIC;
    s_axi_arready : in STD_LOGIC;
    AXI_IP2Bus_RdAck1 : in STD_LOGIC;
    AXI_IP2Bus_RdAck2 : in STD_LOGIC;
    s_axi_arready_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \cr_i_reg[5]\ : in STD_LOGIC;
    Msms_rst : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_axi_rdata_i_reg[0]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_0\ : in STD_LOGIC;
    p_1_in16_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[1]\ : in STD_LOGIC;
    p_1_in13_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[2]\ : in STD_LOGIC;
    p_1_in10_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[3]\ : in STD_LOGIC;
    p_1_in7_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]\ : in STD_LOGIC;
    p_1_in4_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]\ : in STD_LOGIC;
    p_1_in1_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]_0\ : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_IP2Bus_RdAck2_reg : in STD_LOGIC;
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  signal AXI_Bus2IP_CS : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal AXI_Bus2IP_RdCE : STD_LOGIC_VECTOR ( 26 to 26 );
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \^bus_rnw_reg_reg_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[17].ce_out_i_reg[17]_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34]\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS\ : STD_LOGIC;
  signal \^bus2ip_addr_i_reg[2]\ : STD_LOGIC;
  signal \^bus2ip_addr_i_reg[3]\ : STD_LOGIC;
  signal \^bus2ip_addr_i_reg[5]\ : STD_LOGIC;
  signal \^bus2ip_addr_i_reg[6]\ : STD_LOGIC;
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_10 : STD_LOGIC;
  signal ce_expnd_i_11 : STD_LOGIC;
  signal ce_expnd_i_12 : STD_LOGIC;
  signal ce_expnd_i_13 : STD_LOGIC;
  signal ce_expnd_i_14 : STD_LOGIC;
  signal ce_expnd_i_15 : STD_LOGIC;
  signal ce_expnd_i_16 : STD_LOGIC;
  signal ce_expnd_i_17 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_24 : STD_LOGIC;
  signal ce_expnd_i_26 : STD_LOGIC;
  signal ce_expnd_i_27 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal ce_expnd_i_4 : STD_LOGIC;
  signal ce_expnd_i_5 : STD_LOGIC;
  signal ce_expnd_i_6 : STD_LOGIC;
  signal ce_expnd_i_7 : STD_LOGIC;
  signal ce_expnd_i_8 : STD_LOGIC;
  signal ce_expnd_i_9 : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal \eqOp__2\ : STD_LOGIC;
  signal \^is_read_reg\ : STD_LOGIC;
  signal \^is_write_reg\ : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_18_in : STD_LOGIC;
  signal p_1_in_0 : STD_LOGIC;
  signal p_24_in : STD_LOGIC;
  signal p_27_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal pselect_hit_i_0 : STD_LOGIC;
  signal pselect_hit_i_2 : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_16_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_5_n_0\ : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal \^sw_rst_cond\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of AXI_IP2Bus_RdAck2_i_1 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of AXI_IP2Bus_WrAck2_i_1 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \FIFO_GEN_DTR.Tx_fifo_wr_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_3\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \GPO_GEN.gpo_i[31]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \MEM_DECODE_GEN[0].cs_out_i[0]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \RD_FIFO_CNTRL.rc_fifo_pirq_i[4]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \adr_i[0]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \cr_i[0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \cr_i[5]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \ip_irpt_enable_reg[7]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of ipif_glbl_irpt_enable_reg_i_1 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of irpt_wrack_d1_i_1 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[7]_i_11\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[7]_i_15\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[7]_i_16\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[7]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[7]_i_3\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \timing_param_tbuf_i[7]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \timing_param_thddat_i[7]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \timing_param_thdsta_i[7]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \timing_param_thigh_i[7]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \timing_param_tlow_i[7]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \timing_param_tsudat_i[7]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \timing_param_tsusta_i[7]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \timing_param_tsusto_i[7]_i_1\ : label is "soft_lutpair62";
begin
  Bus_RNW_reg_reg_0 <= \^bus_rnw_reg_reg_0\;
  \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]_0\ <= \^gen_bkend_ce_registers[17].ce_out_i_reg[17]_0\;
  \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ <= \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\;
  \bus2ip_addr_i_reg[2]\ <= \^bus2ip_addr_i_reg[2]\;
  \bus2ip_addr_i_reg[3]\ <= \^bus2ip_addr_i_reg[3]\;
  \bus2ip_addr_i_reg[5]\ <= \^bus2ip_addr_i_reg[5]\;
  \bus2ip_addr_i_reg[6]\ <= \^bus2ip_addr_i_reg[6]\;
  is_read_reg <= \^is_read_reg\;
  is_write_reg <= \^is_write_reg\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  sw_rst_cond <= \^sw_rst_cond\;
AXI_IP2Bus_RdAck2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => AXI_Bus2IP_CS(0),
      I1 => p_18_in,
      I2 => AXI_Bus2IP_CS(2),
      I3 => AXI_IP2Bus_RdAck2_reg,
      O => AXI_IP2Bus_RdAck20
    );
AXI_IP2Bus_WrAck2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => AXI_Bus2IP_CS(0),
      I1 => p_18_in,
      I2 => AXI_Bus2IP_CS(2),
      I3 => AXI_IP2Bus_RdAck2_reg,
      O => AXI_IP2Bus_WrAck20
    );
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_IP2Bus_RdAck2_reg,
      I1 => start2,
      I2 => \^bus_rnw_reg_reg_0\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^bus_rnw_reg_reg_0\,
      R => '0'
    );
\FIFO_GEN_DTR.Tx_fifo_wr_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_15_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => Bus2IIC_WrCE(10)
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(2),
      I4 => pselect_hit_i_2,
      O => ce_expnd_i_24
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_24,
      Q => p_24_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[5]\,
      I1 => \^bus2ip_addr_i_reg[3]\,
      I2 => Q(8),
      I3 => Q(6),
      I4 => Q(7),
      O => \MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS\
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      O => \^bus2ip_addr_i_reg[3]\
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => \MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS\,
      Q => p_18_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Q(6),
      I1 => Q(3),
      I2 => Q(2),
      I3 => \^bus2ip_addr_i_reg[5]\,
      I4 => Q(8),
      O => ce_expnd_i_17
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_17,
      Q => \^gen_bkend_ce_registers[17].ce_out_i_reg[17]_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => Q(6),
      I1 => Q(3),
      I2 => Q(2),
      I3 => \^bus2ip_addr_i_reg[5]\,
      I4 => Q(8),
      O => ce_expnd_i_16
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_16,
      Q => p_16_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[5]\,
      I1 => Q(8),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(6),
      O => ce_expnd_i_15
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_15,
      Q => p_15_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(4),
      I3 => Q(6),
      I4 => pselect_hit_i_0,
      I5 => Q(5),
      O => ce_expnd_i_14
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_14,
      Q => p_14_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => Q(6),
      I1 => Q(3),
      I2 => Q(4),
      I3 => Q(5),
      I4 => Q(2),
      I5 => pselect_hit_i_0,
      O => ce_expnd_i_13
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_13,
      Q => p_13_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(6),
      I2 => Q(2),
      I3 => Q(4),
      I4 => pselect_hit_i_0,
      I5 => Q(5),
      O => ce_expnd_i_12
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_12,
      Q => p_12_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => Q(4),
      I1 => \^bus2ip_addr_i_reg[6]\,
      I2 => Q(8),
      I3 => Q(5),
      O => ce_expnd_i_11
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_11,
      Q => p_11_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(5),
      I3 => Q(6),
      I4 => Q(4),
      I5 => pselect_hit_i_0,
      O => ce_expnd_i_10
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_10,
      Q => p_10_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(6),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(8),
      O => ce_expnd_i_9
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_9,
      Q => p_9_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(6),
      I2 => \^bus2ip_addr_i_reg[2]\,
      I3 => Q(5),
      I4 => Q(8),
      O => ce_expnd_i_8
    );
\GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      O => \^bus2ip_addr_i_reg[2]\
    );
\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_8,
      Q => p_8_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(6),
      I2 => Q(3),
      I3 => Q(5),
      I4 => Q(2),
      I5 => pselect_hit_i_0,
      O => ce_expnd_i_7
    );
\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_7,
      Q => p_7_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(4),
      I3 => Q(6),
      I4 => Q(5),
      I5 => pselect_hit_i_0,
      O => ce_expnd_i_6
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_6,
      Q => p_6_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(6),
      I4 => Q(2),
      I5 => Q(8),
      O => ce_expnd_i_5
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_5,
      Q => p_5_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(6),
      I2 => Q(2),
      I3 => Q(5),
      I4 => Q(4),
      I5 => pselect_hit_i_0,
      O => ce_expnd_i_4
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(8),
      I1 => start2,
      O => pselect_hit_i_0
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_4,
      Q => p_4_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Q(5),
      I1 => \^bus2ip_addr_i_reg[6]\,
      I2 => Q(4),
      I3 => Q(8),
      O => ce_expnd_i_3
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Q(6),
      I1 => Q(3),
      I2 => Q(2),
      O => \^bus2ip_addr_i_reg[6]\
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_3,
      Q => p_3_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(8),
      I5 => Q(6),
      O => ce_expnd_i_2
    );
\GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_2,
      Q => p_2_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => Q(6),
      I1 => Q(3),
      I2 => Q(2),
      I3 => \^bus2ip_addr_i_reg[5]\,
      I4 => Q(8),
      O => ce_expnd_i_1
    );
\GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_1,
      Q => p_1_in_0,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^is_write_reg\,
      I1 => \^is_read_reg\,
      I2 => s_axi_aresetn,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(8),
      I1 => Q(2),
      I2 => Q(3),
      I3 => \^bus2ip_addr_i_reg[5]\,
      I4 => Q(6),
      O => ce_expnd_i_0
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      O => \^bus2ip_addr_i_reg[5]\
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34]\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(4),
      I3 => Q(5),
      I4 => pselect_hit_i_2,
      O => ce_expnd_i_27
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_27,
      Q => p_27_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => \^bus2ip_addr_i_reg[3]\,
      I3 => Q(8),
      I4 => Q(6),
      I5 => Q(7),
      O => ce_expnd_i_26
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_26,
      Q => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      R => cs_ce_clr
    );
\GPO_GEN.gpo_i[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => p_8_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => gpo(0),
      O => s_axi_wdata_0_sn_1
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => Q(8),
      I3 => start2,
      O => pselect_hit_i_2
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => pselect_hit_i_2,
      Q => AXI_Bus2IP_CS(2),
      R => cs_ce_clr
    );
\MEM_DECODE_GEN[2].cs_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2,
      D => Q(8),
      Q => AXI_Bus2IP_CS(0),
      R => cs_ce_clr
    );
\RD_FIFO_CNTRL.Rc_fifo_rd_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_14_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => Bus2IIC_RdCE(0)
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_9_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => Bus2IIC_WrCE(8)
    );
\adr_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_13_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => Bus2IIC_WrCE(9)
    );
\cr_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[17].ce_out_i_reg[17]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => Bus2IIC_WrCE(11)
    );
\cr_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CAA0C0C"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \cr_i_reg[5]\,
      I2 => Msms_rst,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \^gen_bkend_ce_registers[17].ce_out_i_reg[17]_0\,
      O => \s_axi_wdata[2]\(0)
    );
\ip_irpt_enable_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_24_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => E(0)
    );
ipif_glbl_irpt_enable_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => p_27_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_0_in(0),
      O => \s_axi_wdata[31]\
    );
irpt_wrack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0E"
    )
        port map (
      I0 => p_27_in,
      I1 => p_24_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      O => irpt_wrack
    );
reset_trig_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sw_rst_cond\,
      I1 => sw_rst_cond_d1,
      O => reset_trig0
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_arready,
      I1 => \eqOp__2\,
      I2 => AXI_IP2Bus_RdAck1,
      I3 => AXI_IP2Bus_RdAck2,
      O => \^is_read_reg\
    );
\s_axi_rdata_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[7]\(0),
      I2 => AXI_Bus2IP_RdCE(26),
      I3 => \s_axi_rdata_i_reg[0]\,
      I4 => \s_axi_rdata_i_reg[0]_0\,
      I5 => \s_axi_rdata_i[7]_i_5_n_0\,
      O => D(0)
    );
\s_axi_rdata_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[7]\(1),
      I2 => AXI_Bus2IP_RdCE(26),
      I3 => p_1_in16_in,
      I4 => \s_axi_rdata_i_reg[1]\,
      I5 => \s_axi_rdata_i[7]_i_5_n_0\,
      O => D(1)
    );
\s_axi_rdata_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[7]\(2),
      I2 => AXI_Bus2IP_RdCE(26),
      I3 => p_1_in13_in,
      I4 => \s_axi_rdata_i_reg[2]\,
      I5 => \s_axi_rdata_i[7]_i_5_n_0\,
      O => D(2)
    );
\s_axi_rdata_i[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => p_24_in,
      I1 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I2 => p_0_in(0),
      I3 => p_27_in,
      I4 => \^bus_rnw_reg_reg_0\,
      O => D(8)
    );
\s_axi_rdata_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[7]\(3),
      I2 => AXI_Bus2IP_RdCE(26),
      I3 => p_1_in10_in,
      I4 => \s_axi_rdata_i_reg[3]\,
      I5 => \s_axi_rdata_i[7]_i_5_n_0\,
      O => D(3)
    );
\s_axi_rdata_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[7]\(4),
      I2 => AXI_Bus2IP_RdCE(26),
      I3 => p_1_in7_in,
      I4 => \s_axi_rdata_i_reg[4]\,
      I5 => \s_axi_rdata_i[7]_i_5_n_0\,
      O => D(4)
    );
\s_axi_rdata_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[7]\(5),
      I2 => AXI_Bus2IP_RdCE(26),
      I3 => p_1_in4_in,
      I4 => \s_axi_rdata_i_reg[5]\,
      I5 => \s_axi_rdata_i[7]_i_5_n_0\,
      O => D(5)
    );
\s_axi_rdata_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[7]\(6),
      I2 => AXI_Bus2IP_RdCE(26),
      I3 => p_1_in1_in,
      I4 => \s_axi_rdata_i_reg[6]\,
      I5 => \s_axi_rdata_i[7]_i_5_n_0\,
      O => D(6)
    );
\s_axi_rdata_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_2_n_0\,
      I1 => \s_axi_rdata_i_reg[7]\(7),
      I2 => AXI_Bus2IP_RdCE(26),
      I3 => p_1_in,
      I4 => \s_axi_rdata_i_reg[7]_0\,
      I5 => \s_axi_rdata_i[7]_i_5_n_0\,
      O => D(7)
    );
\s_axi_rdata_i[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[17].ce_out_i_reg[17]_0\,
      I1 => p_10_in,
      I2 => p_9_in,
      I3 => p_14_in,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => p_16_in,
      O => \s_axi_rdata_i[7]_i_10_n_0\
    );
\s_axi_rdata_i[7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE00"
    )
        port map (
      I0 => p_13_in,
      I1 => p_15_in,
      I2 => p_11_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_12_in,
      O => \s_axi_rdata_i[7]_i_11_n_0\
    );
\s_axi_rdata_i[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFF0FFF0"
    )
        port map (
      I0 => p_3_in,
      I1 => p_4_in,
      I2 => \s_axi_rdata_i[7]_i_15_n_0\,
      I3 => \s_axi_rdata_i[7]_i_16_n_0\,
      I4 => p_8_in,
      I5 => \^bus_rnw_reg_reg_0\,
      O => \s_axi_rdata_i[7]_i_12_n_0\
    );
\s_axi_rdata_i[7]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE00"
    )
        port map (
      I0 => p_6_in,
      I1 => p_7_in,
      I2 => p_2_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_5_in,
      O => \s_axi_rdata_i[7]_i_15_n_0\
    );
\s_axi_rdata_i[7]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => p_1_in_0,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34]\,
      O => \s_axi_rdata_i[7]_i_16_n_0\
    );
\s_axi_rdata_i[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_24_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      O => \s_axi_rdata_i[7]_i_2_n_0\
    );
\s_axi_rdata_i[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => AXI_Bus2IP_RdCE(26)
    );
\s_axi_rdata_i[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010101010100"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(7),
      I3 => \s_axi_rdata_i[7]_i_10_n_0\,
      I4 => \s_axi_rdata_i[7]_i_11_n_0\,
      I5 => \s_axi_rdata_i[7]_i_12_n_0\,
      O => \s_axi_rdata_i[7]_i_5_n_0\
    );
\s_axi_rresp_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440444444444444"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_18_in,
      I2 => s_axi_wdata(2),
      I3 => s_axi_wdata(0),
      I4 => s_axi_wdata(3),
      I5 => s_axi_wdata(1),
      O => AXI_IP2Bus_Error
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_awready,
      I1 => \eqOp__2\,
      I2 => AXI_IP2Bus_WrAck1,
      I3 => AXI_IP2Bus_WrAck2,
      O => \^is_write_reg\
    );
s_axi_wready_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axi_arready_0(1),
      I1 => s_axi_arready_0(0),
      I2 => s_axi_arready_0(2),
      I3 => s_axi_arready_0(3),
      O => \eqOp__2\
    );
sw_rst_cond_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_18_in,
      I2 => s_axi_wdata(2),
      I3 => s_axi_wdata(0),
      I4 => s_axi_wdata(3),
      I5 => s_axi_wdata(1),
      O => \^sw_rst_cond\
    );
\timing_param_tbuf_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_3_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => Bus2IIC_WrCE(3)
    );
\timing_param_thddat_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34]\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => Bus2IIC_WrCE(0)
    );
\timing_param_thdsta_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_5_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => Bus2IIC_WrCE(5)
    );
\timing_param_thigh_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_2_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => Bus2IIC_WrCE(2)
    );
\timing_param_tlow_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in_0,
      I1 => \^bus_rnw_reg_reg_0\,
      O => Bus2IIC_WrCE(1)
    );
\timing_param_tsudat_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_4_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => Bus2IIC_WrCE(4)
    );
\timing_param_tsusta_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_7_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => Bus2IIC_WrCE(7)
    );
\timing_param_tsusto_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_6_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => Bus2IIC_WrCE(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync is
  port (
    \sda_rising__0\ : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    sda_rin_d1 : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  signal Q : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
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
  scndry_out <= \^scndry_out\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sda_i,
      Q => Q,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
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
      C => s_axi_aclk,
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
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \^scndry_out\,
      R => '0'
    );
detect_stop_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => sda_rin_d1,
      O => \sda_rising__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_4 is
  port (
    scl_rising_edge0 : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ : out STD_LOGIC;
    scl_rin_d1 : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_4 : entity is "cdc_sync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_4 is
  signal \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_s_level_out_d4_0\ : STD_LOGIC;
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
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ <= \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_s_level_out_d4_0\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_i,
      Q => Q,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
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
      C => s_axi_aclk,
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
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_s_level_out_d4_0\,
      R => '0'
    );
scl_rising_edge_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_s_level_out_d4_0\,
      I1 => scl_rin_d1,
      O => scl_rising_edge0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dynamic_master is
  port (
    rdCntrFrmTxFifo : out STD_LOGIC;
    rxCntDone : out STD_LOGIC;
    firstDynStartSeen : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txak : out STD_LOGIC;
    Tx_fifo_rst : in STD_LOGIC;
    ackDataState : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    Tx_fifo_data_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    earlyAckDataState : in STD_LOGIC;
    firstDynStartSeen_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \cr_i_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Bus_RNW_reg : in STD_LOGIC;
    p_17_in : in STD_LOGIC;
    earlyAckHdr : in STD_LOGIC;
    \Tx_data_exists__4\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dynamic_master;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dynamic_master is
  signal Cr_txModeSelect_clr_i_1_n_0 : STD_LOGIC;
  signal Cr_txModeSelect_set_i_1_n_0 : STD_LOGIC;
  signal ackDataState_d1 : STD_LOGIC;
  signal callingReadAccess : STD_LOGIC;
  signal cr_txModeSelect_clr : STD_LOGIC;
  signal cr_txModeSelect_set : STD_LOGIC;
  signal earlyAckDataState_d1 : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal \^firstdynstartseen\ : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rdByteCntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \rdByteCntr[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdByteCntr[1]_i_2_n_0\ : STD_LOGIC;
  signal rdByteCntr_reg : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \^rdcntrfrmtxfifo\ : STD_LOGIC;
  signal rdCntrFrmTxFifo0 : STD_LOGIC;
  signal rxCntDone0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Cr_txModeSelect_clr_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of Cr_txModeSelect_set_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdByteCntr[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdByteCntr[7]_i_1\ : label is "soft_lutpair0";
begin
  firstDynStartSeen <= \^firstdynstartseen\;
  rdCntrFrmTxFifo <= \^rdcntrfrmtxfifo\;
Cr_txModeSelect_clr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => callingReadAccess,
      I1 => Tx_fifo_rst,
      I2 => earlyAckHdr,
      I3 => \^firstdynstartseen\,
      O => Cr_txModeSelect_clr_i_1_n_0
    );
Cr_txModeSelect_clr_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Cr_txModeSelect_clr_i_1_n_0,
      Q => cr_txModeSelect_clr,
      R => '0'
    );
Cr_txModeSelect_set_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => callingReadAccess,
      I1 => Tx_fifo_rst,
      I2 => earlyAckHdr,
      I3 => \^firstdynstartseen\,
      O => Cr_txModeSelect_set_i_1_n_0
    );
Cr_txModeSelect_set_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Cr_txModeSelect_set_i_1_n_0,
      Q => cr_txModeSelect_set,
      R => '0'
    );
\LEVEL_1_GEN.master_sda_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => eqOp,
      I1 => earlyAckDataState,
      I2 => callingReadAccess,
      I3 => Q(1),
      O => txak
    );
ackDataState_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ackDataState,
      Q => ackDataState_d1,
      R => Tx_fifo_rst
    );
callingReadAccess_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_3_in,
      D => Tx_fifo_data_0(0),
      Q => callingReadAccess,
      R => Tx_fifo_rst
    );
\cr_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF20EC000020EC"
    )
        port map (
      I0 => \^firstdynstartseen\,
      I1 => Q(2),
      I2 => p_3_in,
      I3 => \cr_i_reg[2]\(0),
      I4 => E(0),
      I5 => s_axi_wdata(1),
      O => D(1)
    );
\cr_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0000FCAAFCFC"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => Q(0),
      I2 => cr_txModeSelect_set,
      I3 => Bus_RNW_reg,
      I4 => p_17_in,
      I5 => cr_txModeSelect_clr,
      O => D(0)
    );
earlyAckDataState_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => earlyAckDataState,
      Q => earlyAckDataState_d1,
      R => Tx_fifo_rst
    );
firstDynStartSeen_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => firstDynStartSeen_reg_0,
      Q => \^firstdynstartseen\,
      R => '0'
    );
\rdByteCntr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => eqOp,
      I1 => earlyAckDataState,
      I2 => earlyAckDataState_d1,
      I3 => \^rdcntrfrmtxfifo\,
      O => \rdByteCntr[0]_i_1_n_0\
    );
\rdByteCntr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA900A9"
    )
        port map (
      I0 => rdByteCntr_reg(0),
      I1 => rdByteCntr_reg(1),
      I2 => \rdByteCntr[0]_i_3_n_0\,
      I3 => \^rdcntrfrmtxfifo\,
      I4 => Tx_fifo_data_0(7),
      O => \p_0_in__1\(7)
    );
\rdByteCntr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => rdByteCntr_reg(3),
      I1 => rdByteCntr_reg(6),
      I2 => rdByteCntr_reg(7),
      I3 => rdByteCntr_reg(5),
      I4 => rdByteCntr_reg(4),
      I5 => rdByteCntr_reg(2),
      O => \rdByteCntr[0]_i_3_n_0\
    );
\rdByteCntr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAA90000AAA9"
    )
        port map (
      I0 => rdByteCntr_reg(1),
      I1 => rdByteCntr_reg(2),
      I2 => \rdByteCntr[1]_i_2_n_0\,
      I3 => rdByteCntr_reg(3),
      I4 => \^rdcntrfrmtxfifo\,
      I5 => Tx_fifo_data_0(6),
      O => \p_0_in__1\(6)
    );
\rdByteCntr[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rdByteCntr_reg(6),
      I1 => rdByteCntr_reg(7),
      I2 => rdByteCntr_reg(5),
      I3 => rdByteCntr_reg(4),
      O => \rdByteCntr[1]_i_2_n_0\
    );
\rdByteCntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA900A9"
    )
        port map (
      I0 => rdByteCntr_reg(2),
      I1 => rdByteCntr_reg(3),
      I2 => \rdByteCntr[1]_i_2_n_0\,
      I3 => \^rdcntrfrmtxfifo\,
      I4 => Tx_fifo_data_0(5),
      O => \p_0_in__1\(5)
    );
\rdByteCntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => rdByteCntr_reg(3),
      I1 => \rdByteCntr[1]_i_2_n_0\,
      I2 => \^rdcntrfrmtxfifo\,
      I3 => Tx_fifo_data_0(4),
      O => \p_0_in__1\(4)
    );
\rdByteCntr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAA90000AAA9"
    )
        port map (
      I0 => rdByteCntr_reg(4),
      I1 => rdByteCntr_reg(5),
      I2 => rdByteCntr_reg(7),
      I3 => rdByteCntr_reg(6),
      I4 => \^rdcntrfrmtxfifo\,
      I5 => Tx_fifo_data_0(3),
      O => \p_0_in__1\(3)
    );
\rdByteCntr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE100E1"
    )
        port map (
      I0 => rdByteCntr_reg(6),
      I1 => rdByteCntr_reg(7),
      I2 => rdByteCntr_reg(5),
      I3 => \^rdcntrfrmtxfifo\,
      I4 => Tx_fifo_data_0(2),
      O => \p_0_in__1\(2)
    );
\rdByteCntr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => rdByteCntr_reg(7),
      I1 => rdByteCntr_reg(6),
      I2 => \^rdcntrfrmtxfifo\,
      I3 => Tx_fifo_data_0(1),
      O => \p_0_in__1\(1)
    );
\rdByteCntr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => Tx_fifo_data_0(0),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => rdByteCntr_reg(7),
      O => \p_0_in__1\(0)
    );
\rdByteCntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__1\(7),
      Q => rdByteCntr_reg(0),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__1\(6),
      Q => rdByteCntr_reg(1),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__1\(5),
      Q => rdByteCntr_reg(2),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__1\(4),
      Q => rdByteCntr_reg(3),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__1\(3),
      Q => rdByteCntr_reg(4),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__1\(2),
      Q => rdByteCntr_reg(5),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__1\(1),
      Q => rdByteCntr_reg(6),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__1\(0),
      Q => rdByteCntr_reg(7),
      R => Tx_fifo_rst
    );
rdCntrFrmTxFifo_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => callingReadAccess,
      I1 => earlyAckHdr,
      I2 => \Tx_data_exists__4\,
      O => rdCntrFrmTxFifo0
    );
rdCntrFrmTxFifo_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdCntrFrmTxFifo0,
      Q => \^rdcntrfrmtxfifo\,
      R => Tx_fifo_rst
    );
rxCntDone_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => ackDataState,
      I1 => callingReadAccess,
      I2 => ackDataState_d1,
      I3 => eqOp,
      O => rxCntDone0
    );
rxCntDone_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => rdByteCntr_reg(1),
      I1 => rdByteCntr_reg(0),
      I2 => rdByteCntr_reg(3),
      I3 => rdByteCntr_reg(2),
      I4 => \rdByteCntr[1]_i_2_n_0\,
      O => eqOp
    );
rxCntDone_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rxCntDone0,
      Q => rxCntDone,
      R => Tx_fifo_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interrupt_control is
  port (
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : out STD_LOGIC;
    p_1_in16_in : out STD_LOGIC;
    p_1_in13_in : out STD_LOGIC;
    p_1_in10_in : out STD_LOGIC;
    p_1_in7_in : out STD_LOGIC;
    p_1_in4_in : out STD_LOGIC;
    p_1_in1_in : out STD_LOGIC;
    p_1_in : out STD_LOGIC;
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    iic2intc_irpt : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_wrack : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg_0 : in STD_LOGIC;
    p_26_in : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IIC2Bus_IntrEvent : in STD_LOGIC_VECTOR ( 0 to 7 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interrupt_control;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interrupt_control is
  signal \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal iic2intc_irpt_INST_0_i_1_n_0 : STD_LOGIC;
  signal iic2intc_irpt_INST_0_i_2_n_0 : STD_LOGIC;
  signal iic2intc_irpt_INST_0_i_3_n_0 : STD_LOGIC;
  signal iic2intc_irpt_INST_0_i_4_n_0 : STD_LOGIC;
  signal irpt_wrack_d1 : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^p_1_in\ : STD_LOGIC;
  signal \^p_1_in10_in\ : STD_LOGIC;
  signal \^p_1_in13_in\ : STD_LOGIC;
  signal \^p_1_in16_in\ : STD_LOGIC;
  signal \^p_1_in1_in\ : STD_LOGIC;
  signal \^p_1_in4_in\ : STD_LOGIC;
  signal \^p_1_in7_in\ : STD_LOGIC;
begin
  \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ <= \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\;
  Q(7 downto 0) <= \^q\(7 downto 0);
  p_0_in(0) <= \^p_0_in\(0);
  p_1_in <= \^p_1_in\;
  p_1_in10_in <= \^p_1_in10_in\;
  p_1_in13_in <= \^p_1_in13_in\;
  p_1_in16_in <= \^p_1_in16_in\;
  p_1_in1_in <= \^p_1_in1_in\;
  p_1_in4_in <= \^p_1_in4_in\;
  p_1_in7_in <= \^p_1_in7_in\;
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFF0400"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => p_26_in,
      I2 => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\,
      I3 => s_axi_wdata(0),
      I4 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      I5 => IIC2Bus_IntrEvent(0),
      O => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\,
      Q => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFF0400"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => p_26_in,
      I2 => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\,
      I3 => s_axi_wdata(1),
      I4 => \^p_1_in16_in\,
      I5 => IIC2Bus_IntrEvent(1),
      O => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\,
      Q => \^p_1_in16_in\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFF0400"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => p_26_in,
      I2 => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\,
      I3 => s_axi_wdata(2),
      I4 => \^p_1_in13_in\,
      I5 => IIC2Bus_IntrEvent(2),
      O => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0\,
      Q => \^p_1_in13_in\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFF0400"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => p_26_in,
      I2 => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\,
      I3 => s_axi_wdata(3),
      I4 => \^p_1_in10_in\,
      I5 => IIC2Bus_IntrEvent(3),
      O => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0\,
      Q => \^p_1_in10_in\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFF0400"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => p_26_in,
      I2 => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\,
      I3 => s_axi_wdata(4),
      I4 => \^p_1_in7_in\,
      I5 => IIC2Bus_IntrEvent(4),
      O => \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\,
      Q => \^p_1_in7_in\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFF0400"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => p_26_in,
      I2 => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\,
      I3 => s_axi_wdata(5),
      I4 => \^p_1_in4_in\,
      I5 => IIC2Bus_IntrEvent(5),
      O => \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0\,
      Q => \^p_1_in4_in\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFF0400"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => p_26_in,
      I2 => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\,
      I3 => s_axi_wdata(6),
      I4 => \^p_1_in1_in\,
      I5 => IIC2Bus_IntrEvent(6),
      O => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\,
      Q => \^p_1_in1_in\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFF0400"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => p_26_in,
      I2 => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\,
      I3 => s_axi_wdata(7),
      I4 => \^p_1_in\,
      I5 => IIC2Bus_IntrEvent(7),
      O => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0\,
      Q => \^p_1_in\,
      R => SR(0)
    );
iic2intc_irpt_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => iic2intc_irpt_INST_0_i_1_n_0,
      I1 => iic2intc_irpt_INST_0_i_2_n_0,
      I2 => iic2intc_irpt_INST_0_i_3_n_0,
      I3 => iic2intc_irpt_INST_0_i_4_n_0,
      I4 => \^p_0_in\(0),
      O => iic2intc_irpt
    );
iic2intc_irpt_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^p_1_in4_in\,
      I2 => \^q\(6),
      I3 => \^p_1_in1_in\,
      O => iic2intc_irpt_INST_0_i_1_n_0
    );
iic2intc_irpt_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^p_1_in\,
      I2 => \^q\(0),
      I3 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      O => iic2intc_irpt_INST_0_i_2_n_0
    );
iic2intc_irpt_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^p_1_in16_in\,
      I2 => \^q\(2),
      I3 => \^p_1_in13_in\,
      O => iic2intc_irpt_INST_0_i_3_n_0
    );
iic2intc_irpt_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^p_1_in10_in\,
      I2 => \^q\(4),
      I3 => \^p_1_in7_in\,
      O => iic2intc_irpt_INST_0_i_4_n_0
    );
\ip_irpt_enable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => \^q\(1),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(2),
      Q => \^q\(2),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(3),
      Q => \^q\(3),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => \^q\(4),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(5),
      Q => \^q\(5),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => \^q\(6),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => \^q\(7),
      R => SR(0)
    );
ipif_glbl_irpt_enable_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ipif_glbl_irpt_enable_reg_reg_0,
      Q => \^p_0_in\(0),
      R => SR(0)
    );
irpt_wrack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_wrack,
      Q => irpt_wrack_d1,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reg_interface is
  port (
    IIC2Bus_IntrEvent : out STD_LOGIC_VECTOR ( 0 to 7 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx_fifo_wr : out STD_LOGIC;
    Tx_fifo_rd : out STD_LOGIC;
    Tx_fifo_rst : out STD_LOGIC;
    new_rcv_dta_d1 : out STD_LOGIC;
    Rc_fifo_wr : out STD_LOGIC;
    Rc_fifo_rd : out STD_LOGIC;
    \sr_i_reg[0]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 );
    Msms_set : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FIFO_GEN_DTR.Tx_fifo_rst_reg_0\ : out STD_LOGIC;
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D_0 : out STD_LOGIC;
    txFifoRd : out STD_LOGIC;
    \Tx_fifo_wr_i__0\ : out STD_LOGIC;
    \ctrl_fifo_wr_i__1\ : out STD_LOGIC;
    CI : out STD_LOGIC;
    \cr_i_reg[2]_0\ : out STD_LOGIC;
    \timing_param_tsusta_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \timing_param_thddat_i_reg[6]_0\ : out STD_LOGIC;
    \timing_param_thddat_i_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \cr_i_reg[7]_0\ : out STD_LOGIC;
    \state123_out__0\ : out STD_LOGIC;
    \addr_match__0\ : out STD_LOGIC;
    \adr_i_reg[0]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \Tx_fifo_rd_i__0\ : out STD_LOGIC;
    \FSM_onehot_scl_state_reg[1]\ : out STD_LOGIC;
    \stop_start_wait1__4\ : out STD_LOGIC;
    \timing_param_tbuf_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \timing_param_tsusta_i_reg[0]_0\ : out STD_LOGIC;
    \timing_param_tsusta_i_reg[1]_0\ : out STD_LOGIC;
    \timing_param_tsusta_i_reg[2]_0\ : out STD_LOGIC;
    \timing_param_tsusta_i_reg[3]_0\ : out STD_LOGIC;
    \FIFO_RAM[7].SRL16E_I\ : out STD_LOGIC;
    \timing_param_tsusto_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \timing_param_thigh_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \sr_i_reg[3]_0\ : out STD_LOGIC;
    \timing_param_tsudat_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \sr_i_reg[2]_0\ : out STD_LOGIC;
    \sr_i_reg[1]_0\ : out STD_LOGIC;
    \sr_i_reg[0]_1\ : out STD_LOGIC;
    \cr_i_reg[7]_1\ : out STD_LOGIC;
    \timing_param_tlow_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \timing_param_thdsta_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Bus2IIC_Reset : in STD_LOGIC;
    \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Bus2IIC_WrCE : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rdy_new_xmt_i : in STD_LOGIC;
    New_rcv_dta : in STD_LOGIC;
    Rc_fifo_wr0 : in STD_LOGIC;
    Bus2IIC_RdCE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sr_i_reg[0]_2\ : in STD_LOGIC;
    Aas : in STD_LOGIC;
    \GPO_GEN.gpo_i_reg[31]_0\ : in STD_LOGIC;
    firstDynStartSeen : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    \RD_FIFO_CNTRL.ro_prev_i_reg_0\ : in STD_LOGIC;
    Rc_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    Data_Exists_DFF : in STD_LOGIC;
    \buffer_Empty__2\ : in STD_LOGIC;
    Tx_fifo_wr_d : in STD_LOGIC;
    Rc_fifo_rd_d : in STD_LOGIC;
    \sr_i_reg[1]_1\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Rc_fifo_wr_d : in STD_LOGIC;
    \clk_cnt_en1_inferred__2/i__carry\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \q_int[0]_i_10\ : in STD_LOGIC;
    master_slave : in STD_LOGIC;
    slave_sda_reg : in STD_LOGIC;
    slave_sda_i_2_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Tx_fifo_rd_d : in STD_LOGIC;
    rdCntrFrmTxFifo : in STD_LOGIC;
    \FSM_onehot_scl_state[2]_i_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_scl_state[2]_i_3_0\ : in STD_LOGIC;
    Tx_fifo_data_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i[0]_i_5\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Rc_fifo_data : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \cr_i_reg[2]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \IIC2Bus_IntrEvent_reg[0]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reg_interface;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reg_interface is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_scl_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_17_n_0\ : STD_LOGIC;
  signal \^msms_set\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^rd_fifo_cntrl.rc_fifo_pirq_i_reg[4]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \RD_FIFO_CNTRL.ro_prev_i_i_1_n_0\ : STD_LOGIC;
  signal \RD_FIFO_CNTRL.ro_prev_i_i_2_n_0\ : STD_LOGIC;
  signal \^rc_fifo_rd\ : STD_LOGIC;
  signal \^rc_fifo_wr\ : STD_LOGIC;
  signal \^tx_fifo_rd\ : STD_LOGIC;
  signal \^tx_fifo_rst\ : STD_LOGIC;
  signal \^tx_fifo_wr\ : STD_LOGIC;
  signal \^tx_fifo_wr_i__0\ : STD_LOGIC;
  signal \^addr_match__0\ : STD_LOGIC;
  signal \^adr_i_reg[0]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal msms_d1 : STD_LOGIC;
  signal msms_set_i_i_1_n_0 : STD_LOGIC;
  signal slave_sda_i_3_n_0 : STD_LOGIC;
  signal slave_sda_i_5_n_0 : STD_LOGIC;
  signal sr_i : STD_LOGIC_VECTOR ( 1 to 3 );
  signal \^sr_i_reg[0]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^timing_param_tbuf_i_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal timing_param_thddat_i : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \^timing_param_thddat_i_reg[5]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^timing_param_thigh_i_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^timing_param_tlow_i_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^timing_param_tsudat_i_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^timing_param_tsusta_i_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^timing_param_tsusto_i_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^txfiford\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Addr_Counters[0].MUXCY_L_I_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \Addr_Counters[0].MUXCY_L_I_i_3__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of Data_Exists_DFF_i_3 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[2]_i_5\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[9]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[9]_i_15\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \cr_i[5]_i_4\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[0]_i_9\ : label is "soft_lutpair39";
begin
  D(0) <= \^d\(0);
  Msms_set <= \^msms_set\;
  Q(7 downto 0) <= \^q\(7 downto 0);
  \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]_0\(3 downto 0) <= \^rd_fifo_cntrl.rc_fifo_pirq_i_reg[4]_0\(3 downto 0);
  Rc_fifo_rd <= \^rc_fifo_rd\;
  Rc_fifo_wr <= \^rc_fifo_wr\;
  Tx_fifo_rd <= \^tx_fifo_rd\;
  Tx_fifo_rst <= \^tx_fifo_rst\;
  Tx_fifo_wr <= \^tx_fifo_wr\;
  \Tx_fifo_wr_i__0\ <= \^tx_fifo_wr_i__0\;
  \addr_match__0\ <= \^addr_match__0\;
  \adr_i_reg[0]_0\(6 downto 0) <= \^adr_i_reg[0]_0\(6 downto 0);
  \sr_i_reg[0]_0\(3 downto 0) <= \^sr_i_reg[0]_0\(3 downto 0);
  \timing_param_tbuf_i_reg[7]_0\(7 downto 0) <= \^timing_param_tbuf_i_reg[7]_0\(7 downto 0);
  \timing_param_thddat_i_reg[5]_0\(5 downto 0) <= \^timing_param_thddat_i_reg[5]_0\(5 downto 0);
  \timing_param_thigh_i_reg[7]_0\(7 downto 0) <= \^timing_param_thigh_i_reg[7]_0\(7 downto 0);
  \timing_param_tlow_i_reg[7]_0\(7 downto 0) <= \^timing_param_tlow_i_reg[7]_0\(7 downto 0);
  \timing_param_tsudat_i_reg[7]_0\(7 downto 0) <= \^timing_param_tsudat_i_reg[7]_0\(7 downto 0);
  \timing_param_tsusta_i_reg[7]_0\(7 downto 0) <= \^timing_param_tsusta_i_reg[7]_0\(7 downto 0);
  \timing_param_tsusto_i_reg[7]_0\(7 downto 0) <= \^timing_param_tsusto_i_reg[7]_0\(7 downto 0);
  txFifoRd <= \^txfiford\;
\Addr_Counters[0].MUXCY_L_I_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002F00"
    )
        port map (
      I0 => \^rc_fifo_rd\,
      I1 => Rc_fifo_rd_d,
      I2 => \sr_i_reg[1]_1\(4),
      I3 => \^rc_fifo_wr\,
      I4 => Rc_fifo_wr_d,
      O => CI
    );
\Addr_Counters[0].MUXCY_L_I_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => Bus2IIC_Reset,
      I1 => \^tx_fifo_rst\,
      I2 => Tx_fifo_wr_d,
      I3 => \^tx_fifo_wr\,
      O => \ctrl_fifo_wr_i__1\
    );
\Addr_Counters[0].MUXCY_L_I_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^tx_fifo_wr\,
      I1 => Tx_fifo_wr_d,
      O => \^tx_fifo_wr_i__0\
    );
Data_Exists_DFF_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFAFAFAFA2A"
    )
        port map (
      I0 => Data_Exists_DFF,
      I1 => \^txfiford\,
      I2 => \buffer_Empty__2\,
      I3 => Bus2IIC_Reset,
      I4 => \^tx_fifo_rst\,
      I5 => \^tx_fifo_wr_i__0\,
      O => D_0
    );
Data_Exists_DFF_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => Tx_fifo_rd_d,
      I1 => \^tx_fifo_rd\,
      I2 => rdCntrFrmTxFifo,
      O => \^txfiford\
    );
\FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7]_0\,
      Q => IIC2Bus_IntrEvent(7),
      R => Bus2IIC_Reset
    );
\FIFO_GEN_DTR.Tx_fifo_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdy_new_xmt_i,
      Q => \^tx_fifo_rd\,
      R => Bus2IIC_Reset
    );
\FIFO_GEN_DTR.Tx_fifo_rst_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(1),
      Q => \^tx_fifo_rst\,
      S => Bus2IIC_Reset
    );
\FIFO_GEN_DTR.Tx_fifo_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus2IIC_WrCE(10),
      Q => \^tx_fifo_wr\,
      R => Bus2IIC_Reset
    );
\FSM_onehot_scl_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888888888888888"
    )
        port map (
      I0 => \FSM_onehot_scl_state[2]_i_3\(0),
      I1 => \FSM_onehot_scl_state[2]_i_3_0\,
      I2 => \FSM_onehot_scl_state[9]_i_17_n_0\,
      I3 => \FSM_onehot_scl_state[9]_i_16_n_0\,
      I4 => \FSM_onehot_scl_state[2]_i_5_n_0\,
      I5 => \FSM_onehot_scl_state[9]_i_14_n_0\,
      O => \FSM_onehot_scl_state_reg[1]\
    );
\FSM_onehot_scl_state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^timing_param_tbuf_i_reg[7]_0\(1),
      I1 => \clk_cnt_en1_inferred__2/i__carry\(1),
      I2 => \^timing_param_tbuf_i_reg[7]_0\(0),
      I3 => \clk_cnt_en1_inferred__2/i__carry\(0),
      O => \FSM_onehot_scl_state[2]_i_5_n_0\
    );
\FSM_onehot_scl_state[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => timing_param_thddat_i(6),
      I1 => \clk_cnt_en1_inferred__2/i__carry\(6),
      I2 => timing_param_thddat_i(7),
      I3 => \clk_cnt_en1_inferred__2/i__carry\(7),
      I4 => \q_int[0]_i_10\,
      O => \timing_param_thddat_i_reg[6]_0\
    );
\FSM_onehot_scl_state[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \cr_i_reg[7]_0\
    );
\FSM_onehot_scl_state[9]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000082"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^timing_param_tsusta_i_reg[7]_0\(6),
      I2 => \clk_cnt_en1_inferred__2/i__carry\(6),
      I3 => \^timing_param_tsusta_i_reg[7]_0\(7),
      I4 => \clk_cnt_en1_inferred__2/i__carry\(7),
      O => \cr_i_reg[2]_0\
    );
\FSM_onehot_scl_state[9]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^timing_param_tbuf_i_reg[7]_0\(3),
      I1 => \clk_cnt_en1_inferred__2/i__carry\(3),
      I2 => \^timing_param_tbuf_i_reg[7]_0\(2),
      I3 => \clk_cnt_en1_inferred__2/i__carry\(2),
      O => \FSM_onehot_scl_state[9]_i_14_n_0\
    );
\FSM_onehot_scl_state[9]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^timing_param_tbuf_i_reg[7]_0\(1),
      I1 => \clk_cnt_en1_inferred__2/i__carry\(1),
      O => \FSM_onehot_scl_state[9]_i_15_n_0\
    );
\FSM_onehot_scl_state[9]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^timing_param_tbuf_i_reg[7]_0\(7),
      I1 => \clk_cnt_en1_inferred__2/i__carry\(7),
      I2 => \^timing_param_tbuf_i_reg[7]_0\(6),
      I3 => \clk_cnt_en1_inferred__2/i__carry\(6),
      O => \FSM_onehot_scl_state[9]_i_16_n_0\
    );
\FSM_onehot_scl_state[9]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^timing_param_tbuf_i_reg[7]_0\(5),
      I1 => \clk_cnt_en1_inferred__2/i__carry\(5),
      I2 => \^timing_param_tbuf_i_reg[7]_0\(4),
      I3 => \clk_cnt_en1_inferred__2/i__carry\(4),
      O => \FSM_onehot_scl_state[9]_i_17_n_0\
    );
\FSM_onehot_scl_state[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008000000000000"
    )
        port map (
      I0 => \FSM_onehot_scl_state[9]_i_14_n_0\,
      I1 => \FSM_onehot_scl_state[9]_i_15_n_0\,
      I2 => \^timing_param_tbuf_i_reg[7]_0\(0),
      I3 => \clk_cnt_en1_inferred__2/i__carry\(0),
      I4 => \FSM_onehot_scl_state[9]_i_16_n_0\,
      I5 => \FSM_onehot_scl_state[9]_i_17_n_0\,
      O => \stop_start_wait1__4\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^addr_match__0\,
      I1 => master_slave,
      O => \state123_out__0\
    );
\GPO_GEN.gpo_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GPO_GEN.gpo_i_reg[31]_0\,
      Q => gpo(0),
      R => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IIC2Bus_IntrEvent_reg[0]_0\(4),
      Q => IIC2Bus_IntrEvent(0),
      R => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IIC2Bus_IntrEvent_reg[0]_0\(3),
      Q => IIC2Bus_IntrEvent(1),
      R => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IIC2Bus_IntrEvent_reg[0]_0\(2),
      Q => IIC2Bus_IntrEvent(2),
      R => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^d\(0),
      Q => IIC2Bus_IntrEvent(3),
      R => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IIC2Bus_IntrEvent_reg[0]_0\(1),
      Q => IIC2Bus_IntrEvent(4),
      R => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Aas,
      Q => IIC2Bus_IntrEvent(5),
      R => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IIC2Bus_IntrEvent_reg[0]_0\(0),
      Q => IIC2Bus_IntrEvent(6),
      R => Bus2IIC_Reset
    );
\RD_FIFO_CNTRL.Rc_fifo_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus2IIC_RdCE(0),
      Q => \^rc_fifo_rd\,
      R => Bus2IIC_Reset
    );
\RD_FIFO_CNTRL.Rc_fifo_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Rc_fifo_wr0,
      Q => \^rc_fifo_wr\,
      R => Bus2IIC_Reset
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(8),
      D => s_axi_wdata(3),
      Q => \^rd_fifo_cntrl.rc_fifo_pirq_i_reg[4]_0\(3),
      R => Bus2IIC_Reset
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(8),
      D => s_axi_wdata(2),
      Q => \^rd_fifo_cntrl.rc_fifo_pirq_i_reg[4]_0\(2),
      R => Bus2IIC_Reset
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(8),
      D => s_axi_wdata(1),
      Q => \^rd_fifo_cntrl.rc_fifo_pirq_i_reg[4]_0\(1),
      R => Bus2IIC_Reset
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(8),
      D => s_axi_wdata(0),
      Q => \^rd_fifo_cntrl.rc_fifo_pirq_i_reg[4]_0\(0),
      R => Bus2IIC_Reset
    );
\RD_FIFO_CNTRL.ro_prev_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001001"
    )
        port map (
      I0 => \RD_FIFO_CNTRL.ro_prev_i_i_2_n_0\,
      I1 => \RD_FIFO_CNTRL.ro_prev_i_reg_0\,
      I2 => \^rd_fifo_cntrl.rc_fifo_pirq_i_reg[4]_0\(3),
      I3 => Rc_addr(3),
      I4 => Bus2IIC_Reset,
      I5 => \^msms_set\,
      O => \RD_FIFO_CNTRL.ro_prev_i_i_1_n_0\
    );
\RD_FIFO_CNTRL.ro_prev_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^rd_fifo_cntrl.rc_fifo_pirq_i_reg[4]_0\(2),
      I1 => Rc_addr(2),
      I2 => \^rd_fifo_cntrl.rc_fifo_pirq_i_reg[4]_0\(1),
      I3 => Rc_addr(1),
      O => \RD_FIFO_CNTRL.ro_prev_i_i_2_n_0\
    );
\RD_FIFO_CNTRL.ro_prev_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RD_FIFO_CNTRL.ro_prev_i_i_1_n_0\,
      Q => \^d\(0),
      R => '0'
    );
\adr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(7),
      Q => \^adr_i_reg[0]_0\(6),
      R => Bus2IIC_Reset
    );
\adr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(6),
      Q => \^adr_i_reg[0]_0\(5),
      R => Bus2IIC_Reset
    );
\adr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(5),
      Q => \^adr_i_reg[0]_0\(4),
      R => Bus2IIC_Reset
    );
\adr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(4),
      Q => \^adr_i_reg[0]_0\(3),
      R => Bus2IIC_Reset
    );
\adr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(3),
      Q => \^adr_i_reg[0]_0\(2),
      R => Bus2IIC_Reset
    );
\adr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(2),
      Q => \^adr_i_reg[0]_0\(1),
      R => Bus2IIC_Reset
    );
\adr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(1),
      Q => \^adr_i_reg[0]_0\(0),
      R => Bus2IIC_Reset
    );
\cr_i[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^tx_fifo_rd\,
      I1 => Tx_fifo_rd_d,
      O => \Tx_fifo_rd_i__0\
    );
\cr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(11),
      D => s_axi_wdata(7),
      Q => \^q\(7),
      R => Bus2IIC_Reset
    );
\cr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(11),
      D => s_axi_wdata(6),
      Q => \^q\(6),
      R => Bus2IIC_Reset
    );
\cr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cr_i_reg[2]_1\(2),
      Q => \^q\(5),
      R => Bus2IIC_Reset
    );
\cr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(11),
      D => s_axi_wdata(4),
      Q => \^q\(4),
      R => Bus2IIC_Reset
    );
\cr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cr_i_reg[2]_1\(1),
      Q => \^q\(3),
      R => Bus2IIC_Reset
    );
\cr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cr_i_reg[2]_1\(0),
      Q => \^q\(2),
      R => Bus2IIC_Reset
    );
\cr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(11),
      D => s_axi_wdata(1),
      Q => \^q\(1),
      R => Bus2IIC_Reset
    );
\cr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(11),
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => Bus2IIC_Reset
    );
firstDynStartSeen_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => \^tx_fifo_rst\,
      I1 => \^q\(2),
      I2 => firstDynStartSeen,
      I3 => p_3_in,
      O => \FIFO_GEN_DTR.Tx_fifo_rst_reg_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^timing_param_tbuf_i_reg[7]_0\(7),
      I1 => \clk_cnt_en1_inferred__2/i__carry\(7),
      I2 => \^timing_param_tbuf_i_reg[7]_0\(6),
      I3 => \clk_cnt_en1_inferred__2/i__carry\(6),
      O => S(3)
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^timing_param_tbuf_i_reg[7]_0\(5),
      I1 => \clk_cnt_en1_inferred__2/i__carry\(5),
      I2 => \^timing_param_tbuf_i_reg[7]_0\(4),
      I3 => \clk_cnt_en1_inferred__2/i__carry\(4),
      O => S(2)
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^timing_param_tbuf_i_reg[7]_0\(3),
      I1 => \clk_cnt_en1_inferred__2/i__carry\(3),
      I2 => \^timing_param_tbuf_i_reg[7]_0\(2),
      I3 => \clk_cnt_en1_inferred__2/i__carry\(2),
      O => S(1)
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^timing_param_tbuf_i_reg[7]_0\(1),
      I1 => \clk_cnt_en1_inferred__2/i__carry\(1),
      I2 => \^timing_param_tbuf_i_reg[7]_0\(0),
      I3 => \clk_cnt_en1_inferred__2/i__carry\(0),
      O => S(0)
    );
msms_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(2),
      Q => msms_d1,
      R => Bus2IIC_Reset
    );
msms_set_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88EA00C0"
    )
        port map (
      I0 => \sr_i_reg[1]_1\(1),
      I1 => msms_d1,
      I2 => \^d\(0),
      I3 => \^q\(2),
      I4 => \^msms_set\,
      O => msms_set_i_i_1_n_0
    );
msms_set_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => msms_set_i_i_1_n_0,
      Q => \^msms_set\,
      R => Bus2IIC_Reset
    );
new_rcv_dta_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => New_rcv_dta,
      Q => new_rcv_dta_d1,
      R => Bus2IIC_Reset
    );
\s_axi_rdata_i[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => Rc_fifo_data(0),
      I1 => \^timing_param_tsusto_i_reg[7]_0\(0),
      I2 => \^timing_param_thigh_i_reg[7]_0\(0),
      I3 => \s_axi_rdata_i[0]_i_5\(1),
      I4 => \s_axi_rdata_i[0]_i_5\(0),
      O => \FIFO_RAM[7].SRL16E_I\
    );
\s_axi_rdata_i[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => \^timing_param_tsusta_i_reg[7]_0\(0),
      I1 => \^timing_param_tbuf_i_reg[7]_0\(0),
      I2 => Tx_fifo_data_0(0),
      I3 => \s_axi_rdata_i[0]_i_5\(0),
      I4 => \s_axi_rdata_i[0]_i_5\(1),
      I5 => Rc_addr(0),
      O => \timing_param_tsusta_i_reg[0]_0\
    );
\s_axi_rdata_i[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^rd_fifo_cntrl.rc_fifo_pirq_i_reg[4]_0\(0),
      I2 => \^timing_param_tlow_i_reg[7]_0\(0),
      I3 => \s_axi_rdata_i[0]_i_5\(2),
      I4 => \s_axi_rdata_i[0]_i_5\(1),
      O => \cr_i_reg[7]_1\
    );
\s_axi_rdata_i[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => \^timing_param_tsusta_i_reg[7]_0\(1),
      I1 => \^timing_param_tbuf_i_reg[7]_0\(1),
      I2 => Tx_fifo_data_0(1),
      I3 => \s_axi_rdata_i[0]_i_5\(0),
      I4 => \s_axi_rdata_i[0]_i_5\(1),
      I5 => Rc_addr(1),
      O => \timing_param_tsusta_i_reg[1]_0\
    );
\s_axi_rdata_i[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => \^timing_param_tsusta_i_reg[7]_0\(2),
      I1 => \^timing_param_tbuf_i_reg[7]_0\(2),
      I2 => Tx_fifo_data_0(2),
      I3 => \s_axi_rdata_i[0]_i_5\(0),
      I4 => \s_axi_rdata_i[0]_i_5\(1),
      I5 => Rc_addr(2),
      O => \timing_param_tsusta_i_reg[2]_0\
    );
\s_axi_rdata_i[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => \^timing_param_tsusta_i_reg[7]_0\(3),
      I1 => \^timing_param_tbuf_i_reg[7]_0\(3),
      I2 => Tx_fifo_data_0(3),
      I3 => \s_axi_rdata_i[0]_i_5\(0),
      I4 => \s_axi_rdata_i[0]_i_5\(1),
      I5 => Rc_addr(3),
      O => \timing_param_tsusta_i_reg[3]_0\
    );
\s_axi_rdata_i[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000CCF00000AA"
    )
        port map (
      I0 => sr_i(3),
      I1 => \^timing_param_thddat_i_reg[5]_0\(4),
      I2 => \^timing_param_tsudat_i_reg[7]_0\(4),
      I3 => \s_axi_rdata_i[0]_i_5\(0),
      I4 => \s_axi_rdata_i[0]_i_5\(1),
      I5 => \s_axi_rdata_i[0]_i_5\(2),
      O => \sr_i_reg[3]_0\
    );
\s_axi_rdata_i[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000CCF00000AA"
    )
        port map (
      I0 => sr_i(2),
      I1 => \^timing_param_thddat_i_reg[5]_0\(5),
      I2 => \^timing_param_tsudat_i_reg[7]_0\(5),
      I3 => \s_axi_rdata_i[0]_i_5\(0),
      I4 => \s_axi_rdata_i[0]_i_5\(1),
      I5 => \s_axi_rdata_i[0]_i_5\(2),
      O => \sr_i_reg[2]_0\
    );
\s_axi_rdata_i[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000CCF00000AA"
    )
        port map (
      I0 => sr_i(1),
      I1 => timing_param_thddat_i(6),
      I2 => \^timing_param_tsudat_i_reg[7]_0\(6),
      I3 => \s_axi_rdata_i[0]_i_5\(0),
      I4 => \s_axi_rdata_i[0]_i_5\(1),
      I5 => \s_axi_rdata_i[0]_i_5\(2),
      O => \sr_i_reg[1]_0\
    );
\s_axi_rdata_i[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000CCF00000AA"
    )
        port map (
      I0 => \^sr_i_reg[0]_0\(3),
      I1 => timing_param_thddat_i(7),
      I2 => \^timing_param_tsudat_i_reg[7]_0\(7),
      I3 => \s_axi_rdata_i[0]_i_5\(0),
      I4 => \s_axi_rdata_i[0]_i_5\(1),
      I5 => \s_axi_rdata_i[0]_i_5\(2),
      O => \sr_i_reg[0]_1\
    );
slave_sda_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80080000"
    )
        port map (
      I0 => slave_sda_i_3_n_0,
      I1 => slave_sda_reg,
      I2 => slave_sda_i_2_0(3),
      I3 => \^adr_i_reg[0]_0\(3),
      I4 => slave_sda_i_5_n_0,
      I5 => \sr_i_reg[1]_1\(0),
      O => \^addr_match__0\
    );
slave_sda_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^adr_i_reg[0]_0\(0),
      I1 => slave_sda_i_2_0(0),
      I2 => \^adr_i_reg[0]_0\(1),
      I3 => slave_sda_i_2_0(1),
      I4 => \^adr_i_reg[0]_0\(2),
      I5 => slave_sda_i_2_0(2),
      O => slave_sda_i_3_n_0
    );
slave_sda_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^adr_i_reg[0]_0\(4),
      I1 => slave_sda_i_2_0(4),
      O => slave_sda_i_5_n_0
    );
\sr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sr_i_reg[0]_2\,
      Q => \^sr_i_reg[0]_0\(3),
      R => Bus2IIC_Reset
    );
\sr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sr_i_reg[1]_1\(5),
      Q => sr_i(1),
      R => Bus2IIC_Reset
    );
\sr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sr_i_reg[1]_1\(4),
      Q => sr_i(2),
      R => Bus2IIC_Reset
    );
\sr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sr_i_reg[1]_1\(3),
      Q => sr_i(3),
      R => Bus2IIC_Reset
    );
\sr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sr_i_reg[1]_1\(2),
      Q => \^sr_i_reg[0]_0\(2),
      R => Bus2IIC_Reset
    );
\sr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sr_i_reg[1]_1\(1),
      Q => \^sr_i_reg[0]_0\(1),
      R => Bus2IIC_Reset
    );
\sr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sr_i_reg[1]_1\(0),
      Q => \^sr_i_reg[0]_0\(0),
      R => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(0),
      Q => \^timing_param_tbuf_i_reg[7]_0\(0),
      R => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(1),
      Q => \^timing_param_tbuf_i_reg[7]_0\(1),
      R => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(2),
      Q => \^timing_param_tbuf_i_reg[7]_0\(2),
      R => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(3),
      Q => \^timing_param_tbuf_i_reg[7]_0\(3),
      R => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(4),
      Q => \^timing_param_tbuf_i_reg[7]_0\(4),
      S => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(5),
      Q => \^timing_param_tbuf_i_reg[7]_0\(5),
      R => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(6),
      Q => \^timing_param_tbuf_i_reg[7]_0\(6),
      S => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(7),
      Q => \^timing_param_tbuf_i_reg[7]_0\(7),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(0),
      Q => \^timing_param_thddat_i_reg[5]_0\(0),
      S => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(1),
      Q => \^timing_param_thddat_i_reg[5]_0\(1),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(2),
      Q => \^timing_param_thddat_i_reg[5]_0\(2),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(3),
      Q => \^timing_param_thddat_i_reg[5]_0\(3),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(4),
      Q => \^timing_param_thddat_i_reg[5]_0\(4),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(5),
      Q => \^timing_param_thddat_i_reg[5]_0\(5),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(6),
      Q => timing_param_thddat_i(6),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(7),
      Q => timing_param_thddat_i(7),
      R => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(0),
      Q => \timing_param_thdsta_i_reg[7]_0\(0),
      S => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(1),
      Q => \timing_param_thdsta_i_reg[7]_0\(1),
      R => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(2),
      Q => \timing_param_thdsta_i_reg[7]_0\(2),
      S => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(3),
      Q => \timing_param_thdsta_i_reg[7]_0\(3),
      S => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(4),
      Q => \timing_param_thdsta_i_reg[7]_0\(4),
      R => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(5),
      Q => \timing_param_thdsta_i_reg[7]_0\(5),
      S => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(6),
      Q => \timing_param_thdsta_i_reg[7]_0\(6),
      R => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(7),
      Q => \timing_param_thdsta_i_reg[7]_0\(7),
      R => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(0),
      Q => \^timing_param_thigh_i_reg[7]_0\(0),
      S => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(1),
      Q => \^timing_param_thigh_i_reg[7]_0\(1),
      S => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(2),
      Q => \^timing_param_thigh_i_reg[7]_0\(2),
      S => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(3),
      Q => \^timing_param_thigh_i_reg[7]_0\(3),
      R => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(4),
      Q => \^timing_param_thigh_i_reg[7]_0\(4),
      S => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(5),
      Q => \^timing_param_thigh_i_reg[7]_0\(5),
      S => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(6),
      Q => \^timing_param_thigh_i_reg[7]_0\(6),
      R => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(7),
      Q => \^timing_param_thigh_i_reg[7]_0\(7),
      R => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(0),
      Q => \^timing_param_tlow_i_reg[7]_0\(0),
      S => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(1),
      Q => \^timing_param_tlow_i_reg[7]_0\(1),
      S => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(2),
      Q => \^timing_param_tlow_i_reg[7]_0\(2),
      S => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(3),
      Q => \^timing_param_tlow_i_reg[7]_0\(3),
      R => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(4),
      Q => \^timing_param_tlow_i_reg[7]_0\(4),
      S => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(5),
      Q => \^timing_param_tlow_i_reg[7]_0\(5),
      S => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(6),
      Q => \^timing_param_tlow_i_reg[7]_0\(6),
      R => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(7),
      Q => \^timing_param_tlow_i_reg[7]_0\(7),
      R => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(0),
      Q => \^timing_param_tsudat_i_reg[7]_0\(0),
      R => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(1),
      Q => \^timing_param_tsudat_i_reg[7]_0\(1),
      R => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(2),
      Q => \^timing_param_tsudat_i_reg[7]_0\(2),
      S => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(3),
      Q => \^timing_param_tsudat_i_reg[7]_0\(3),
      R => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(4),
      Q => \^timing_param_tsudat_i_reg[7]_0\(4),
      S => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(5),
      Q => \^timing_param_tsudat_i_reg[7]_0\(5),
      R => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(6),
      Q => \^timing_param_tsudat_i_reg[7]_0\(6),
      R => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(7),
      Q => \^timing_param_tsudat_i_reg[7]_0\(7),
      R => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(0),
      Q => \^timing_param_tsusta_i_reg[7]_0\(0),
      S => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(1),
      Q => \^timing_param_tsusta_i_reg[7]_0\(1),
      R => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(2),
      Q => \^timing_param_tsusta_i_reg[7]_0\(2),
      S => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(3),
      Q => \^timing_param_tsusta_i_reg[7]_0\(3),
      S => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(4),
      Q => \^timing_param_tsusta_i_reg[7]_0\(4),
      R => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(5),
      Q => \^timing_param_tsusta_i_reg[7]_0\(5),
      S => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(6),
      Q => \^timing_param_tsusta_i_reg[7]_0\(6),
      R => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(7),
      Q => \^timing_param_tsusta_i_reg[7]_0\(7),
      R => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(0),
      Q => \^timing_param_tsusto_i_reg[7]_0\(0),
      S => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(1),
      Q => \^timing_param_tsusto_i_reg[7]_0\(1),
      R => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(2),
      Q => \^timing_param_tsusto_i_reg[7]_0\(2),
      S => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(3),
      Q => \^timing_param_tsusto_i_reg[7]_0\(3),
      S => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(4),
      Q => \^timing_param_tsusto_i_reg[7]_0\(4),
      R => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(5),
      Q => \^timing_param_tsusto_i_reg[7]_0\(5),
      S => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(6),
      Q => \^timing_param_tsusto_i_reg[7]_0\(6),
      R => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(7),
      Q => \^timing_param_tsusto_i_reg[7]_0\(7),
      R => Bus2IIC_Reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift8 is
  port (
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \data_int_reg[7]_0\ : out STD_LOGIC;
    \addr_match__0\ : in STD_LOGIC;
    \state__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txak : in STD_LOGIC;
    \data_int_reg[1]_0\ : in STD_LOGIC;
    shift_reg_en : in STD_LOGIC;
    \LEVEL_1_GEN.master_sda_reg\ : in STD_LOGIC;
    Tx_fifo_data_0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \data_int_reg[7]_1\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \data_int_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift8 is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_int[7]_i_1_n_0\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_int[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_int[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_int[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_int[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_int[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_int[7]_i_2\ : label is "soft_lutpair10";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\LEVEL_1_GEN.master_sda_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAFFFFF0EAFFF"
    )
        port map (
      I0 => \^q\(7),
      I1 => \LEVEL_1_GEN.master_sda_reg\,
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      I5 => txak,
      O => \data_int_reg[7]_0\
    );
\data_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data_0(0),
      I1 => \data_int_reg[1]_0\,
      I2 => \^q\(0),
      O => p_2_in(1)
    );
\data_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data_0(1),
      I1 => \data_int_reg[1]_0\,
      I2 => \^q\(1),
      O => p_2_in(2)
    );
\data_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data_0(2),
      I1 => \data_int_reg[1]_0\,
      I2 => \^q\(2),
      O => p_2_in(3)
    );
\data_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data_0(3),
      I1 => \data_int_reg[1]_0\,
      I2 => \^q\(3),
      O => p_2_in(4)
    );
\data_int[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data_0(4),
      I1 => \data_int_reg[1]_0\,
      I2 => \^q\(4),
      O => p_2_in(5)
    );
\data_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data_0(5),
      I1 => \data_int_reg[1]_0\,
      I2 => \^q\(5),
      O => p_2_in(6)
    );
\data_int[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \data_int_reg[1]_0\,
      I1 => shift_reg_en,
      O => \data_int[7]_i_1_n_0\
    );
\data_int[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data_0(6),
      I1 => \data_int_reg[1]_0\,
      I2 => \^q\(6),
      O => p_2_in(7)
    );
\data_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => \data_int_reg[0]_0\(0),
      Q => \^q\(0),
      R => \data_int_reg[7]_1\
    );
\data_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => p_2_in(1),
      Q => \^q\(1),
      R => \data_int_reg[7]_1\
    );
\data_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => p_2_in(2),
      Q => \^q\(2),
      R => \data_int_reg[7]_1\
    );
\data_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => p_2_in(3),
      Q => \^q\(3),
      R => \data_int_reg[7]_1\
    );
\data_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => p_2_in(4),
      Q => \^q\(4),
      R => \data_int_reg[7]_1\
    );
\data_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => p_2_in(5),
      Q => \^q\(5),
      R => \data_int_reg[7]_1\
    );
\data_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => p_2_in(6),
      Q => \^q\(6),
      R => \data_int_reg[7]_1\
    );
\data_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => p_2_in(7),
      Q => \^q\(7),
      R => \data_int_reg[7]_1\
    );
slave_sda_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFCFFD3FFD0FF"
    )
        port map (
      I0 => \addr_match__0\,
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \^q\(7),
      I5 => txak,
      O => \FSM_sequential_state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift8_1 is
  port (
    detect_start_reg : out STD_LOGIC;
    \cr_i_reg[4]\ : out STD_LOGIC;
    \data_int_reg[5]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    shift_reg_ld0 : out STD_LOGIC;
    \cr_i_reg[4]_0\ : out STD_LOGIC;
    \data_int_reg[7]_0\ : out STD_LOGIC;
    \data_int_reg[0]_0\ : out STD_LOGIC;
    detect_start : in STD_LOGIC;
    srw_i_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    abgc_i_reg : in STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : in STD_LOGIC;
    \addr_match__0\ : in STD_LOGIC;
    shift_reg_ld_reg : in STD_LOGIC;
    \state__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sda_sample : in STD_LOGIC;
    arb_lost : in STD_LOGIC;
    shift_reg_ld_reg_0 : in STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : in STD_LOGIC;
    slave_sda_i_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_int_reg[0]_1\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    scndry_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift8_1 : entity is "shift8";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift8_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift8_1 is
  signal \FSM_sequential_state[2]_i_8_n_0\ : STD_LOGIC;
  signal abgc_i_i_2_n_0 : STD_LOGIC;
  signal abgc_i_i_3_n_0 : STD_LOGIC;
  signal \^data_int_reg[5]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal i2c_header : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shift_reg_ld_i_2_n_0 : STD_LOGIC;
  signal shift_reg_ld_i_3_n_0 : STD_LOGIC;
begin
  \data_int_reg[5]_0\(4 downto 0) <= \^data_int_reg[5]_0\(4 downto 0);
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EECCFCCCEECCCCCC"
    )
        port map (
      I0 => Q(1),
      I1 => \FSM_sequential_state_reg[1]\,
      I2 => \addr_match__0\,
      I3 => \FSM_sequential_state_reg[1]_0\,
      I4 => shift_reg_ld_reg,
      I5 => i2c_header(0),
      O => \cr_i_reg[4]_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBAAFAAA"
    )
        port map (
      I0 => \FSM_sequential_state_reg[2]\,
      I1 => Q(1),
      I2 => \addr_match__0\,
      I3 => \FSM_sequential_state[2]_i_8_n_0\,
      I4 => shift_reg_ld_reg,
      I5 => \state__0\(0),
      O => \cr_i_reg[4]\
    );
\FSM_sequential_state[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000080008"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => sda_sample,
      I3 => arb_lost,
      I4 => shift_reg_ld_reg,
      I5 => i2c_header(0),
      O => \FSM_sequential_state[2]_i_8_n_0\
    );
abgc_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055400000"
    )
        port map (
      I0 => detect_start,
      I1 => abgc_i_i_2_n_0,
      I2 => abgc_i_i_3_n_0,
      I3 => srw_i_reg(0),
      I4 => Q(0),
      I5 => abgc_i_reg,
      O => detect_start_reg
    );
abgc_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \^data_int_reg[5]_0\(2),
      I1 => \^data_int_reg[5]_0\(3),
      I2 => \^data_int_reg[5]_0\(4),
      I3 => i2c_header(6),
      I4 => i2c_header(7),
      I5 => Q(2),
      O => abgc_i_i_2_n_0
    );
abgc_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => i2c_header(0),
      I4 => \^data_int_reg[5]_0\(0),
      I5 => \^data_int_reg[5]_0\(1),
      O => abgc_i_i_3_n_0
    );
\data_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => scndry_out,
      Q => i2c_header(0),
      R => \data_int_reg[0]_1\
    );
\data_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => i2c_header(0),
      Q => \^data_int_reg[5]_0\(0),
      R => \data_int_reg[0]_1\
    );
\data_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^data_int_reg[5]_0\(0),
      Q => \^data_int_reg[5]_0\(1),
      R => \data_int_reg[0]_1\
    );
\data_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^data_int_reg[5]_0\(1),
      Q => \^data_int_reg[5]_0\(2),
      R => \data_int_reg[0]_1\
    );
\data_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^data_int_reg[5]_0\(2),
      Q => \^data_int_reg[5]_0\(3),
      R => \data_int_reg[0]_1\
    );
\data_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^data_int_reg[5]_0\(3),
      Q => \^data_int_reg[5]_0\(4),
      R => \data_int_reg[0]_1\
    );
\data_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^data_int_reg[5]_0\(4),
      Q => i2c_header(6),
      R => \data_int_reg[0]_1\
    );
\data_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => i2c_header(6),
      Q => i2c_header(7),
      R => \data_int_reg[0]_1\
    );
shift_reg_ld_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAABAAAAAAABAAAA"
    )
        port map (
      I0 => shift_reg_ld_i_2_n_0,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => shift_reg_ld_reg,
      I5 => Q(1),
      O => shift_reg_ld0
    );
shift_reg_ld_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0A000CF0"
    )
        port map (
      I0 => shift_reg_ld_i_3_n_0,
      I1 => detect_start,
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      I5 => shift_reg_ld_reg_0,
      O => shift_reg_ld_i_2_n_0
    );
shift_reg_ld_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i2c_header(0),
      I1 => shift_reg_ld_reg,
      O => shift_reg_ld_i_3_n_0
    );
slave_sda_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i2c_header(7),
      I1 => slave_sda_i_2(1),
      I2 => i2c_header(6),
      I3 => slave_sda_i_2(0),
      O => \data_int_reg[7]_0\
    );
srw_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => i2c_header(0),
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => srw_i_reg(1),
      O => \data_int_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_soft_reset is
  port (
    sw_rst_cond_d1 : out STD_LOGIC;
    AXI_Bus2IP_Reset : out STD_LOGIC;
    ctrlFifoDin : out STD_LOGIC_VECTOR ( 0 to 1 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    sw_rst_cond : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    reset_trig0 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Tx_fifo_rst : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_soft_reset;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_soft_reset is
  signal \^axi_bus2ip_reset\ : STD_LOGIC;
  signal \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[3].RST_FLOPS_n_0\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal flop_q_chain_1 : STD_LOGIC;
  signal flop_q_chain_2 : STD_LOGIC;
  signal flop_q_chain_3 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FIFO_RAM[0].SRL16E_I_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \FIFO_RAM[1].SRL16E_I_i_1\ : label is "soft_lutpair73";
  attribute IS_CE_INVERTED : string;
  attribute IS_CE_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED : string;
  attribute IS_S_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute box_type : string;
  attribute box_type of \RESET_FLOPS[0].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[1].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[1].RST_FLOPS_i_1\ : label is "soft_lutpair74";
  attribute IS_CE_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[2].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[2].RST_FLOPS_i_1\ : label is "soft_lutpair74";
  attribute IS_CE_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[3].RST_FLOPS\ : label is "PRIMITIVE";
begin
  AXI_Bus2IP_Reset <= \^axi_bus2ip_reset\;
  SR(0) <= \^sr\(0);
\FIFO_RAM[0].SRL16E_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \^sr\(0),
      I2 => Tx_fifo_rst,
      O => ctrlFifoDin(0)
    );
\FIFO_RAM[1].SRL16E_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \^sr\(0),
      I2 => Tx_fifo_rst,
      O => ctrlFifoDin(1)
    );
\GPO_GEN.gpo_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \RESET_FLOPS[3].RST_FLOPS_n_0\,
      I1 => s_axi_aresetn,
      O => \^sr\(0)
    );
\RESET_FLOPS[0].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => S,
      Q => flop_q_chain_3,
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[1].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_2,
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[1].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_3,
      O => \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[2].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_1,
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[2].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_2,
      O => \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[3].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\,
      Q => \RESET_FLOPS[3].RST_FLOPS_n_0\,
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[3].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_1,
      O => \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\
    );
reset_trig_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => reset_trig0,
      Q => S,
      R => \^axi_bus2ip_reset\
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^axi_bus2ip_reset\
    );
sw_rst_cond_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sw_rst_cond,
      Q => sw_rst_cond_d1,
      R => \^axi_bus2ip_reset\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upcnt_n is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_int_reg[0]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_onehot_scl_state_reg[7]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_scl_state_reg[4]\ : out STD_LOGIC;
    \FSM_onehot_scl_state_reg[5]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \FSM_onehot_scl_state_reg[0]\ : in STD_LOGIC;
    \FSM_onehot_scl_state_reg[0]_0\ : in STD_LOGIC;
    arb_lost : in STD_LOGIC;
    \q_int_reg[0]_1\ : in STD_LOGIC;
    \FSM_onehot_scl_state[9]_i_12_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \FSM_onehot_scl_state[9]_i_4_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    stop_scl_reg : in STD_LOGIC;
    sda_cout_reg_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    sda_cout_reg_reg_0 : in STD_LOGIC;
    \FSM_onehot_scl_state[9]_i_11_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_onehot_scl_state_reg[2]\ : in STD_LOGIC;
    gen_start : in STD_LOGIC;
    \FSM_onehot_scl_state_reg[2]_0\ : in STD_LOGIC;
    \FSM_onehot_scl_state_reg[2]_1\ : in STD_LOGIC;
    \FSM_onehot_scl_state_reg[4]_0\ : in STD_LOGIC;
    \q_int_reg[0]_2\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_scl_state_reg[6]\ : in STD_LOGIC;
    \FSM_onehot_scl_state_reg[5]_0\ : in STD_LOGIC;
    \q_int[0]_i_10_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \FSM_onehot_scl_state_reg[2]_2\ : in STD_LOGIC;
    \FSM_onehot_scl_state_reg[1]\ : in STD_LOGIC;
    \clk_cnt_en1_inferred__2/i__carry\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_onehot_scl_state_reg[6]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    scndry_out : in STD_LOGIC;
    \FSM_onehot_scl_state_reg[3]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_onehot_scl_state_reg[1]_0\ : in STD_LOGIC;
    \stop_start_wait1__4\ : in STD_LOGIC;
    stop_scl_reg_reg : in STD_LOGIC;
    stop_scl_reg_reg_0 : in STD_LOGIC;
    stop_scl_reg_reg_1 : in STD_LOGIC;
    sda_cout_reg : in STD_LOGIC;
    \q_int_reg[7]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upcnt_n;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upcnt_n is
  signal \FSM_onehot_scl_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[4]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[5]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[5]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[5]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[6]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[6]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[6]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[6]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_20_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_21_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_22_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_23_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_24_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_25_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_9_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_scl_state_reg[7]\ : STD_LOGIC;
  signal clk_cnt_en11_out : STD_LOGIC;
  signal \clk_cnt_en132_out__0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \q_int[0]_i_10_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_11_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_4_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_6_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_8_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_9_n_0\ : STD_LOGIC;
  signal \q_int[1]_i_2_n_0\ : STD_LOGIC;
  signal \q_int[2]_i_2_n_0\ : STD_LOGIC;
  signal \q_int[3]_i_2_n_0\ : STD_LOGIC;
  signal \q_int[4]_i_2_n_0\ : STD_LOGIC;
  signal \q_int[5]_i_2_n_0\ : STD_LOGIC;
  signal \^q_int_reg[0]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sda_cout_reg_i_2_n_0 : STD_LOGIC;
  signal stop_scl_reg_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[5]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[5]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[9]_i_20\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[9]_i_22\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q_int[0]_i_10\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q_int[0]_i_5__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q_int[0]_i_8\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q_int[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q_int[3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q_int[4]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q_int[5]_i_2\ : label is "soft_lutpair8";
begin
  \FSM_onehot_scl_state_reg[7]\ <= \^fsm_onehot_scl_state_reg[7]\;
  \q_int_reg[0]_0\(7 downto 0) <= \^q_int_reg[0]_0\(7 downto 0);
\FSM_onehot_scl_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE0E0"
    )
        port map (
      I0 => \FSM_onehot_scl_state[1]_i_2_n_0\,
      I1 => \FSM_onehot_scl_state_reg[1]\,
      I2 => \FSM_onehot_scl_state_reg[1]_0\,
      I3 => \stop_start_wait1__4\,
      I4 => Q(1),
      O => D(0)
    );
\FSM_onehot_scl_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0A0"
    )
        port map (
      I0 => Q(9),
      I1 => CO(0),
      I2 => \q_int_reg[0]_2\,
      I3 => Q(0),
      O => \FSM_onehot_scl_state[1]_i_2_n_0\
    );
\FSM_onehot_scl_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg[2]\,
      I1 => \FSM_onehot_scl_state[2]_i_3_n_0\,
      I2 => gen_start,
      I3 => \FSM_onehot_scl_state_reg[2]_0\,
      I4 => \FSM_onehot_scl_state_reg[2]_1\,
      I5 => Q(0),
      O => D(1)
    );
\FSM_onehot_scl_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFAAEEAA"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg[2]_2\,
      I1 => Q(9),
      I2 => CO(0),
      I3 => \q_int_reg[0]_2\,
      I4 => Q(0),
      I5 => \FSM_onehot_scl_state_reg[1]\,
      O => \FSM_onehot_scl_state[2]_i_3_n_0\
    );
\FSM_onehot_scl_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => Q(3),
      I1 => \FSM_onehot_scl_state[4]_i_2_n_0\,
      I2 => scndry_out,
      I3 => Q(2),
      O => D(2)
    );
\FSM_onehot_scl_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FFF2F2"
    )
        port map (
      I0 => Q(3),
      I1 => \FSM_onehot_scl_state[4]_i_2_n_0\,
      I2 => \FSM_onehot_scl_state_reg[4]_0\,
      I3 => \clk_cnt_en132_out__0\,
      I4 => Q(4),
      O => D(3)
    );
\FSM_onehot_scl_state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEFFFFBE"
    )
        port map (
      I0 => \FSM_onehot_scl_state[4]_i_4_n_0\,
      I1 => \^q_int_reg[0]_0\(7),
      I2 => \FSM_onehot_scl_state_reg[3]\(7),
      I3 => \^q_int_reg[0]_0\(6),
      I4 => \FSM_onehot_scl_state_reg[3]\(6),
      I5 => \FSM_onehot_scl_state[4]_i_5_n_0\,
      O => \FSM_onehot_scl_state[4]_i_2_n_0\
    );
\FSM_onehot_scl_state[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(1),
      I1 => \FSM_onehot_scl_state_reg[3]\(1),
      I2 => \^q_int_reg[0]_0\(0),
      I3 => \FSM_onehot_scl_state_reg[3]\(0),
      O => \FSM_onehot_scl_state[4]_i_4_n_0\
    );
\FSM_onehot_scl_state[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg[3]\(3),
      I1 => \^q_int_reg[0]_0\(3),
      I2 => \FSM_onehot_scl_state_reg[3]\(4),
      I3 => \^q_int_reg[0]_0\(4),
      I4 => \FSM_onehot_scl_state[4]_i_6_n_0\,
      O => \FSM_onehot_scl_state[4]_i_5_n_0\
    );
\FSM_onehot_scl_state[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(5),
      I1 => \FSM_onehot_scl_state_reg[3]\(5),
      I2 => \^q_int_reg[0]_0\(2),
      I3 => \FSM_onehot_scl_state_reg[3]\(2),
      O => \FSM_onehot_scl_state[4]_i_6_n_0\
    );
\FSM_onehot_scl_state[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Q(5),
      I1 => \FSM_onehot_scl_state[6]_i_2_n_0\,
      I2 => \clk_cnt_en132_out__0\,
      I3 => Q(4),
      O => D(4)
    );
\FSM_onehot_scl_state[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg[5]_0\,
      I1 => \FSM_onehot_scl_state[5]_i_4_n_0\,
      I2 => \FSM_onehot_scl_state[5]_i_5_n_0\,
      I3 => \FSM_onehot_scl_state[5]_i_6_n_0\,
      O => \clk_cnt_en132_out__0\
    );
\FSM_onehot_scl_state[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(5),
      I1 => \q_int[0]_i_10_0\(5),
      I2 => \^q_int_reg[0]_0\(2),
      I3 => \q_int[0]_i_10_0\(2),
      O => \FSM_onehot_scl_state[5]_i_4_n_0\
    );
\FSM_onehot_scl_state[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(1),
      I1 => \q_int[0]_i_10_0\(1),
      I2 => \^q_int_reg[0]_0\(0),
      I3 => \q_int[0]_i_10_0\(0),
      O => \FSM_onehot_scl_state[5]_i_5_n_0\
    );
\FSM_onehot_scl_state[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(4),
      I1 => \q_int[0]_i_10_0\(4),
      I2 => \^q_int_reg[0]_0\(3),
      I3 => \q_int[0]_i_10_0\(3),
      O => \FSM_onehot_scl_state[5]_i_6_n_0\
    );
\FSM_onehot_scl_state[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \FSM_onehot_scl_state[6]_i_2_n_0\,
      I1 => Q(5),
      I2 => \FSM_onehot_scl_state_reg[6]\,
      I3 => Q(6),
      O => D(5)
    );
\FSM_onehot_scl_state[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEFFFFBE"
    )
        port map (
      I0 => \FSM_onehot_scl_state[6]_i_3_n_0\,
      I1 => \^q_int_reg[0]_0\(7),
      I2 => \FSM_onehot_scl_state_reg[6]_0\(7),
      I3 => \^q_int_reg[0]_0\(6),
      I4 => \FSM_onehot_scl_state_reg[6]_0\(6),
      I5 => \FSM_onehot_scl_state[6]_i_4_n_0\,
      O => \FSM_onehot_scl_state[6]_i_2_n_0\
    );
\FSM_onehot_scl_state[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(1),
      I1 => \FSM_onehot_scl_state_reg[6]_0\(1),
      I2 => \^q_int_reg[0]_0\(0),
      I3 => \FSM_onehot_scl_state_reg[6]_0\(0),
      O => \FSM_onehot_scl_state[6]_i_3_n_0\
    );
\FSM_onehot_scl_state[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg[6]_0\(3),
      I1 => \^q_int_reg[0]_0\(3),
      I2 => \FSM_onehot_scl_state_reg[6]_0\(4),
      I3 => \^q_int_reg[0]_0\(4),
      I4 => \FSM_onehot_scl_state[6]_i_5_n_0\,
      O => \FSM_onehot_scl_state[6]_i_4_n_0\
    );
\FSM_onehot_scl_state[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(5),
      I1 => \FSM_onehot_scl_state_reg[6]_0\(5),
      I2 => \^q_int_reg[0]_0\(2),
      I3 => \FSM_onehot_scl_state_reg[6]_0\(2),
      O => \FSM_onehot_scl_state[6]_i_5_n_0\
    );
\FSM_onehot_scl_state[9]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => stop_scl_reg,
      I1 => sda_cout_reg_reg(0),
      O => \FSM_onehot_scl_state[9]_i_10_n_0\
    );
\FSM_onehot_scl_state[9]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \FSM_onehot_scl_state[9]_i_20_n_0\,
      I1 => \FSM_onehot_scl_state[9]_i_21_n_0\,
      I2 => \FSM_onehot_scl_state[9]_i_22_n_0\,
      I3 => \FSM_onehot_scl_state[9]_i_23_n_0\,
      O => clk_cnt_en11_out
    );
\FSM_onehot_scl_state[9]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEFFFFBE"
    )
        port map (
      I0 => \FSM_onehot_scl_state[9]_i_24_n_0\,
      I1 => \^q_int_reg[0]_0\(1),
      I2 => \FSM_onehot_scl_state[9]_i_12_0\(1),
      I3 => \^q_int_reg[0]_0\(0),
      I4 => \FSM_onehot_scl_state[9]_i_12_0\(0),
      I5 => \FSM_onehot_scl_state[9]_i_25_n_0\,
      O => \FSM_onehot_scl_state[9]_i_12_n_0\
    );
\FSM_onehot_scl_state[9]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(4),
      I1 => \FSM_onehot_scl_state[9]_i_4_0\(4),
      I2 => \^q_int_reg[0]_0\(3),
      I3 => \FSM_onehot_scl_state[9]_i_4_0\(3),
      O => \FSM_onehot_scl_state[9]_i_18_n_0\
    );
\FSM_onehot_scl_state[9]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(5),
      I1 => \FSM_onehot_scl_state[9]_i_4_0\(5),
      I2 => \^q_int_reg[0]_0\(2),
      I3 => \FSM_onehot_scl_state[9]_i_4_0\(2),
      O => \FSM_onehot_scl_state[9]_i_19_n_0\
    );
\FSM_onehot_scl_state[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => Q(7),
      I1 => \FSM_onehot_scl_state[9]_i_4_n_0\,
      I2 => \FSM_onehot_scl_state_reg[0]\,
      I3 => Q(0),
      I4 => Q(9),
      I5 => \FSM_onehot_scl_state_reg[0]_0\,
      O => E(0)
    );
\FSM_onehot_scl_state[9]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(7),
      I1 => \FSM_onehot_scl_state[9]_i_11_0\(7),
      I2 => \^q_int_reg[0]_0\(6),
      I3 => \FSM_onehot_scl_state[9]_i_11_0\(6),
      O => \FSM_onehot_scl_state[9]_i_20_n_0\
    );
\FSM_onehot_scl_state[9]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(5),
      I1 => \FSM_onehot_scl_state[9]_i_11_0\(5),
      I2 => \^q_int_reg[0]_0\(2),
      I3 => \FSM_onehot_scl_state[9]_i_11_0\(2),
      O => \FSM_onehot_scl_state[9]_i_21_n_0\
    );
\FSM_onehot_scl_state[9]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(1),
      I1 => \FSM_onehot_scl_state[9]_i_11_0\(1),
      I2 => \^q_int_reg[0]_0\(0),
      I3 => \FSM_onehot_scl_state[9]_i_11_0\(0),
      O => \FSM_onehot_scl_state[9]_i_22_n_0\
    );
\FSM_onehot_scl_state[9]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(4),
      I1 => \FSM_onehot_scl_state[9]_i_11_0\(4),
      I2 => \^q_int_reg[0]_0\(3),
      I3 => \FSM_onehot_scl_state[9]_i_11_0\(3),
      O => \FSM_onehot_scl_state[9]_i_23_n_0\
    );
\FSM_onehot_scl_state[9]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(4),
      I1 => \FSM_onehot_scl_state[9]_i_12_0\(4),
      I2 => \^q_int_reg[0]_0\(3),
      I3 => \FSM_onehot_scl_state[9]_i_12_0\(3),
      O => \FSM_onehot_scl_state[9]_i_24_n_0\
    );
\FSM_onehot_scl_state[9]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(5),
      I1 => \FSM_onehot_scl_state[9]_i_12_0\(5),
      I2 => \^q_int_reg[0]_0\(2),
      I3 => \FSM_onehot_scl_state[9]_i_12_0\(2),
      O => \FSM_onehot_scl_state[9]_i_25_n_0\
    );
\FSM_onehot_scl_state[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222FFFFF222F222"
    )
        port map (
      I0 => \FSM_onehot_scl_state[9]_i_8_n_0\,
      I1 => \FSM_onehot_scl_state[9]_i_9_n_0\,
      I2 => \FSM_onehot_scl_state[9]_i_10_n_0\,
      I3 => clk_cnt_en11_out,
      I4 => \FSM_onehot_scl_state[9]_i_12_n_0\,
      I5 => \q_int_reg[0]_1\,
      O => \FSM_onehot_scl_state[9]_i_4_n_0\
    );
\FSM_onehot_scl_state[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1001000000001001"
    )
        port map (
      I0 => stop_scl_reg,
      I1 => sda_cout_reg_reg(0),
      I2 => \FSM_onehot_scl_state[9]_i_4_0\(6),
      I3 => \^q_int_reg[0]_0\(6),
      I4 => \FSM_onehot_scl_state[9]_i_4_0\(7),
      I5 => \^q_int_reg[0]_0\(7),
      O => \FSM_onehot_scl_state[9]_i_8_n_0\
    );
\FSM_onehot_scl_state[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEFFFFBE"
    )
        port map (
      I0 => \FSM_onehot_scl_state[9]_i_18_n_0\,
      I1 => \^q_int_reg[0]_0\(1),
      I2 => \FSM_onehot_scl_state[9]_i_4_0\(1),
      I3 => \^q_int_reg[0]_0\(0),
      I4 => \FSM_onehot_scl_state[9]_i_4_0\(0),
      I5 => \FSM_onehot_scl_state[9]_i_19_n_0\,
      O => \FSM_onehot_scl_state[9]_i_9_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(6),
      I1 => \clk_cnt_en1_inferred__2/i__carry\(6),
      I2 => \clk_cnt_en1_inferred__2/i__carry\(7),
      I3 => \^q_int_reg[0]_0\(7),
      O => DI(3)
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(4),
      I1 => \clk_cnt_en1_inferred__2/i__carry\(4),
      I2 => \clk_cnt_en1_inferred__2/i__carry\(5),
      I3 => \^q_int_reg[0]_0\(5),
      O => DI(2)
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(2),
      I1 => \clk_cnt_en1_inferred__2/i__carry\(2),
      I2 => \clk_cnt_en1_inferred__2/i__carry\(3),
      I3 => \^q_int_reg[0]_0\(3),
      O => DI(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(0),
      I1 => \clk_cnt_en1_inferred__2/i__carry\(0),
      I2 => \clk_cnt_en1_inferred__2/i__carry\(1),
      I3 => \^q_int_reg[0]_0\(1),
      O => DI(0)
    );
\q_int[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => \FSM_onehot_scl_state[5]_i_6_n_0\,
      I1 => \FSM_onehot_scl_state[5]_i_5_n_0\,
      I2 => \FSM_onehot_scl_state[5]_i_4_n_0\,
      I3 => \FSM_onehot_scl_state_reg[5]_0\,
      I4 => \FSM_onehot_scl_state_reg[6]\,
      O => \q_int[0]_i_10_n_0\
    );
\q_int[0]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Q(8),
      I1 => Q(2),
      I2 => Q(6),
      O => \q_int[0]_i_11_n_0\
    );
\q_int[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \q_int[0]_i_3__0_n_0\,
      I1 => \q_int[0]_i_4_n_0\,
      I2 => Q(7),
      I3 => Q(1),
      O => \q_int[0]_i_1__1_n_0\
    );
\q_int[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011101110000"
    )
        port map (
      I0 => \q_int[0]_i_5__0_n_0\,
      I1 => \q_int[0]_i_6_n_0\,
      I2 => \FSM_onehot_scl_state[9]_i_4_n_0\,
      I3 => \^fsm_onehot_scl_state_reg[7]\,
      I4 => \q_int[0]_i_8_n_0\,
      I5 => \^q_int_reg[0]_0\(7),
      O => p_0_in(7)
    );
\q_int[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08FFFFFF08FF08"
    )
        port map (
      I0 => Q(0),
      I1 => \q_int_reg[0]_2\,
      I2 => CO(0),
      I3 => \q_int[0]_i_9_n_0\,
      I4 => \q_int[0]_i_10_n_0\,
      I5 => Q(4),
      O => \q_int[0]_i_3__0_n_0\
    );
\q_int[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFD0FFD0FFD0"
    )
        port map (
      I0 => \q_int_reg[0]_2\,
      I1 => CO(0),
      I2 => Q(0),
      I3 => \q_int[0]_i_11_n_0\,
      I4 => Q(4),
      I5 => \q_int[0]_i_10_n_0\,
      O => \q_int[0]_i_4_n_0\
    );
\q_int[0]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg[6]\,
      I1 => \clk_cnt_en132_out__0\,
      I2 => Q(4),
      O => \q_int[0]_i_5__0_n_0\
    );
\q_int[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFFFEFFFE"
    )
        port map (
      I0 => Q(6),
      I1 => Q(2),
      I2 => Q(8),
      I3 => Q(0),
      I4 => CO(0),
      I5 => \q_int_reg[0]_2\,
      O => \q_int[0]_i_6_n_0\
    );
\q_int[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(7),
      I1 => arb_lost,
      O => \^fsm_onehot_scl_state_reg[7]\
    );
\q_int[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(6),
      I1 => \q_int[1]_i_2_n_0\,
      O => \q_int[0]_i_8_n_0\
    );
\q_int[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Q(3),
      I1 => Q(9),
      I2 => Q(5),
      O => \q_int[0]_i_9_n_0\
    );
\q_int[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011101110000"
    )
        port map (
      I0 => \q_int[0]_i_5__0_n_0\,
      I1 => \q_int[0]_i_6_n_0\,
      I2 => \FSM_onehot_scl_state[9]_i_4_n_0\,
      I3 => \^fsm_onehot_scl_state_reg[7]\,
      I4 => \q_int[1]_i_2_n_0\,
      I5 => \^q_int_reg[0]_0\(6),
      O => p_0_in(6)
    );
\q_int[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(5),
      I1 => \^q_int_reg[0]_0\(3),
      I2 => \^q_int_reg[0]_0\(1),
      I3 => \^q_int_reg[0]_0\(0),
      I4 => \^q_int_reg[0]_0\(2),
      I5 => \^q_int_reg[0]_0\(4),
      O => \q_int[1]_i_2_n_0\
    );
\q_int[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011101110000"
    )
        port map (
      I0 => \q_int[0]_i_5__0_n_0\,
      I1 => \q_int[0]_i_6_n_0\,
      I2 => \FSM_onehot_scl_state[9]_i_4_n_0\,
      I3 => \^fsm_onehot_scl_state_reg[7]\,
      I4 => \q_int[2]_i_2_n_0\,
      I5 => \^q_int_reg[0]_0\(5),
      O => p_0_in(5)
    );
\q_int[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(4),
      I1 => \^q_int_reg[0]_0\(2),
      I2 => \^q_int_reg[0]_0\(0),
      I3 => \^q_int_reg[0]_0\(1),
      I4 => \^q_int_reg[0]_0\(3),
      O => \q_int[2]_i_2_n_0\
    );
\q_int[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011101110000"
    )
        port map (
      I0 => \q_int[0]_i_5__0_n_0\,
      I1 => \q_int[0]_i_6_n_0\,
      I2 => \FSM_onehot_scl_state[9]_i_4_n_0\,
      I3 => \^fsm_onehot_scl_state_reg[7]\,
      I4 => \q_int[3]_i_2_n_0\,
      I5 => \^q_int_reg[0]_0\(4),
      O => p_0_in(4)
    );
\q_int[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(3),
      I1 => \^q_int_reg[0]_0\(1),
      I2 => \^q_int_reg[0]_0\(0),
      I3 => \^q_int_reg[0]_0\(2),
      O => \q_int[3]_i_2_n_0\
    );
\q_int[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011101110000"
    )
        port map (
      I0 => \q_int[0]_i_5__0_n_0\,
      I1 => \q_int[0]_i_6_n_0\,
      I2 => \FSM_onehot_scl_state[9]_i_4_n_0\,
      I3 => \^fsm_onehot_scl_state_reg[7]\,
      I4 => \q_int[4]_i_2_n_0\,
      I5 => \^q_int_reg[0]_0\(3),
      O => p_0_in(3)
    );
\q_int[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(2),
      I1 => \^q_int_reg[0]_0\(0),
      I2 => \^q_int_reg[0]_0\(1),
      O => \q_int[4]_i_2_n_0\
    );
\q_int[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011101110000"
    )
        port map (
      I0 => \q_int[0]_i_5__0_n_0\,
      I1 => \q_int[0]_i_6_n_0\,
      I2 => \FSM_onehot_scl_state[9]_i_4_n_0\,
      I3 => \^fsm_onehot_scl_state_reg[7]\,
      I4 => \q_int[5]_i_2_n_0\,
      I5 => \^q_int_reg[0]_0\(2),
      O => p_0_in(2)
    );
\q_int[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(1),
      I1 => \^q_int_reg[0]_0\(0),
      O => \q_int[5]_i_2_n_0\
    );
\q_int[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011101110000"
    )
        port map (
      I0 => \q_int[0]_i_5__0_n_0\,
      I1 => \q_int[0]_i_6_n_0\,
      I2 => \FSM_onehot_scl_state[9]_i_4_n_0\,
      I3 => \^fsm_onehot_scl_state_reg[7]\,
      I4 => \^q_int_reg[0]_0\(0),
      I5 => \^q_int_reg[0]_0\(1),
      O => p_0_in(1)
    );
\q_int[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000BF"
    )
        port map (
      I0 => arb_lost,
      I1 => Q(7),
      I2 => \FSM_onehot_scl_state[9]_i_4_n_0\,
      I3 => \q_int[0]_i_6_n_0\,
      I4 => \q_int[0]_i_5__0_n_0\,
      I5 => \^q_int_reg[0]_0\(0),
      O => p_0_in(0)
    );
\q_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__1_n_0\,
      D => p_0_in(7),
      Q => \^q_int_reg[0]_0\(7),
      R => \q_int_reg[7]_0\
    );
\q_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__1_n_0\,
      D => p_0_in(6),
      Q => \^q_int_reg[0]_0\(6),
      R => \q_int_reg[7]_0\
    );
\q_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__1_n_0\,
      D => p_0_in(5),
      Q => \^q_int_reg[0]_0\(5),
      R => \q_int_reg[7]_0\
    );
\q_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__1_n_0\,
      D => p_0_in(4),
      Q => \^q_int_reg[0]_0\(4),
      R => \q_int_reg[7]_0\
    );
\q_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__1_n_0\,
      D => p_0_in(3),
      Q => \^q_int_reg[0]_0\(3),
      R => \q_int_reg[7]_0\
    );
\q_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__1_n_0\,
      D => p_0_in(2),
      Q => \^q_int_reg[0]_0\(2),
      R => \q_int_reg[7]_0\
    );
\q_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__1_n_0\,
      D => p_0_in(1),
      Q => \^q_int_reg[0]_0\(1),
      R => \q_int_reg[7]_0\
    );
\q_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__1_n_0\,
      D => p_0_in(0),
      Q => \^q_int_reg[0]_0\(0),
      R => \q_int_reg[7]_0\
    );
sda_cout_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => sda_cout_reg_i_2_n_0,
      I1 => Q(5),
      I2 => Q(6),
      I3 => Q(0),
      I4 => stop_scl_reg_i_4_n_0,
      I5 => sda_cout_reg,
      O => \FSM_onehot_scl_state_reg[5]\
    );
sda_cout_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEAAFEAAFEAA"
    )
        port map (
      I0 => Q(0),
      I1 => Q(6),
      I2 => Q(5),
      I3 => sda_cout_reg_reg_0,
      I4 => clk_cnt_en11_out,
      I5 => Q(7),
      O => sda_cout_reg_i_2_n_0
    );
stop_scl_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA03AA00AA00"
    )
        port map (
      I0 => stop_scl_reg_reg,
      I1 => stop_scl_reg_reg_0,
      I2 => stop_scl_reg_i_4_n_0,
      I3 => stop_scl_reg_reg_1,
      I4 => Q(4),
      I5 => stop_scl_reg,
      O => \FSM_onehot_scl_state_reg[4]\
    );
stop_scl_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => clk_cnt_en11_out,
      I1 => sda_cout_reg_reg(0),
      I2 => stop_scl_reg,
      I3 => arb_lost,
      I4 => Q(7),
      I5 => Q(2),
      O => stop_scl_reg_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upcnt_n_2 is
  port (
    tx_under_prev_i_reg : out STD_LOGIC;
    sda_setup : in STD_LOGIC;
    sda_rin_d1 : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    sda_setup_reg : in STD_LOGIC;
    tx_under_prev_d1 : in STD_LOGIC;
    rsta_d1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    gen_stop_d1 : in STD_LOGIC;
    gen_stop : in STD_LOGIC;
    sda_setup_reg_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sda_setup_reg_1 : in STD_LOGIC;
    \q_int_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upcnt_n_2 : entity is "upcnt_n";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upcnt_n_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upcnt_n_2 is
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_4_in5_in : STD_LOGIC;
  signal \q_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_5_n_0\ : STD_LOGIC;
  signal \q_int[2]_i_2__0_n_0\ : STD_LOGIC;
  signal q_int_reg : STD_LOGIC_VECTOR ( 0 to 7 );
  signal sda_setup_i_2_n_0 : STD_LOGIC;
  signal sda_setup_i_3_n_0 : STD_LOGIC;
  signal sda_setup_i_4_n_0 : STD_LOGIC;
  signal sda_setup_i_5_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q_int[0]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q_int[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q_int[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q_int[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q_int[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q_int[7]_i_1\ : label is "soft_lutpair15";
begin
\q_int[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_4_in5_in,
      I1 => sda_setup,
      O => \q_int[0]_i_1_n_0\
    );
\q_int[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => q_int_reg(1),
      I1 => \q_int[0]_i_4__0_n_0\,
      I2 => p_4_in5_in,
      I3 => q_int_reg(0),
      O => \p_0_in__0\(7)
    );
\q_int[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6F66"
    )
        port map (
      I0 => sda_rin_d1,
      I1 => scndry_out,
      I2 => sda_setup_reg,
      I3 => tx_under_prev_d1,
      I4 => \q_int[0]_i_5_n_0\,
      O => p_4_in5_in
    );
\q_int[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => q_int_reg(2),
      I1 => q_int_reg(4),
      I2 => q_int_reg(6),
      I3 => q_int_reg(7),
      I4 => q_int_reg(5),
      I5 => q_int_reg(3),
      O => \q_int[0]_i_4__0_n_0\
    );
\q_int[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => rsta_d1,
      I1 => Q(0),
      I2 => gen_stop_d1,
      I3 => gen_stop,
      O => \q_int[0]_i_5_n_0\
    );
\q_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \q_int[0]_i_4__0_n_0\,
      I1 => p_4_in5_in,
      I2 => q_int_reg(1),
      O => \p_0_in__0\(6)
    );
\q_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \q_int[2]_i_2__0_n_0\,
      I1 => p_4_in5_in,
      I2 => q_int_reg(2),
      O => \p_0_in__0\(5)
    );
\q_int[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => q_int_reg(3),
      I1 => q_int_reg(5),
      I2 => q_int_reg(7),
      I3 => q_int_reg(6),
      I4 => q_int_reg(4),
      O => \q_int[2]_i_2__0_n_0\
    );
\q_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => p_4_in5_in,
      I1 => q_int_reg(5),
      I2 => q_int_reg(7),
      I3 => q_int_reg(6),
      I4 => q_int_reg(4),
      I5 => q_int_reg(3),
      O => \p_0_in__0\(4)
    );
\q_int[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => p_4_in5_in,
      I1 => q_int_reg(6),
      I2 => q_int_reg(7),
      I3 => q_int_reg(5),
      I4 => q_int_reg(4),
      O => \p_0_in__0\(3)
    );
\q_int[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => p_4_in5_in,
      I1 => q_int_reg(7),
      I2 => q_int_reg(6),
      I3 => q_int_reg(5),
      O => \p_0_in__0\(2)
    );
\q_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => p_4_in5_in,
      I1 => q_int_reg(7),
      I2 => q_int_reg(6),
      O => \p_0_in__0\(1)
    );
\q_int[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_4_in5_in,
      I1 => q_int_reg(7),
      O => \p_0_in__0\(0)
    );
\q_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(7),
      Q => q_int_reg(0),
      R => \q_int_reg[0]_0\
    );
\q_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(6),
      Q => q_int_reg(1),
      R => \q_int_reg[0]_0\
    );
\q_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(5),
      Q => q_int_reg(2),
      R => \q_int_reg[0]_0\
    );
\q_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(4),
      Q => q_int_reg(3),
      R => \q_int_reg[0]_0\
    );
\q_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => q_int_reg(4),
      R => \q_int_reg[0]_0\
    );
\q_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => q_int_reg(5),
      R => \q_int_reg[0]_0\
    );
\q_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => q_int_reg(6),
      R => \q_int_reg[0]_0\
    );
\q_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(0),
      Q => q_int_reg(7),
      R => \q_int_reg[0]_0\
    );
sda_setup_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEEFE00FF00F0"
    )
        port map (
      I0 => sda_setup_i_2_n_0,
      I1 => sda_setup_i_3_n_0,
      I2 => sda_setup_reg,
      I3 => sda_setup_reg_1,
      I4 => p_4_in5_in,
      I5 => sda_setup,
      O => tx_under_prev_i_reg
    );
sda_setup_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEFFFFBE"
    )
        port map (
      I0 => sda_setup_i_4_n_0,
      I1 => q_int_reg(6),
      I2 => sda_setup_reg_0(1),
      I3 => q_int_reg(7),
      I4 => sda_setup_reg_0(0),
      I5 => sda_setup_i_5_n_0,
      O => sda_setup_i_2_n_0
    );
sda_setup_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => q_int_reg(0),
      I1 => sda_setup_reg_0(7),
      I2 => q_int_reg(1),
      I3 => sda_setup_reg_0(6),
      O => sda_setup_i_3_n_0
    );
sda_setup_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => q_int_reg(3),
      I1 => sda_setup_reg_0(4),
      I2 => q_int_reg(4),
      I3 => sda_setup_reg_0(3),
      O => sda_setup_i_4_n_0
    );
sda_setup_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => q_int_reg(2),
      I1 => sda_setup_reg_0(5),
      I2 => q_int_reg(5),
      I3 => sda_setup_reg_0(2),
      O => sda_setup_i_5_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upcnt_n__parameterized0\ is
  port (
    EarlyAckDataState0 : out STD_LOGIC;
    \q_int_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC;
    \state1__1\ : in STD_LOGIC;
    \state__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    detect_start : in STD_LOGIC;
    EarlyAckDataState_reg : in STD_LOGIC;
    p_1_in6_in : in STD_LOGIC;
    bit_cnt_en : in STD_LOGIC;
    scl_falling_edge : in STD_LOGIC;
    dtc_i : in STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[2]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[2]_2\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC;
    \state123_out__0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_1\ : in STD_LOGIC;
    state0 : in STD_LOGIC;
    \q_int_reg[0]_1\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upcnt_n__parameterized0\ : entity is "upcnt_n";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upcnt_n__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upcnt_n__parameterized0\ is
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal bit_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \bit_cnt_ld__1\ : STD_LOGIC;
  signal \q_int[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \q_int[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_int[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_int[3]_i_1__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q_int[0]_i_2__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q_int[0]_i_3__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q_int[1]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q_int[3]_i_1__1\ : label is "soft_lutpair3";
begin
EarlyAckDataState_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555DD5555555"
    )
        port map (
      I0 => EarlyAckDataState_reg,
      I1 => p_1_in6_in,
      I2 => bit_cnt(1),
      I3 => bit_cnt(0),
      I4 => bit_cnt(2),
      I5 => bit_cnt(3),
      O => EarlyAckDataState0
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002EEE2222"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => \FSM_sequential_state_reg[0]_0\,
      I3 => \state123_out__0\,
      I4 => \FSM_sequential_state_reg[0]_1\,
      I5 => state0,
      O => \FSM_sequential_state_reg[0]\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA620000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => \FSM_sequential_state_reg[1]_0\,
      I3 => \FSM_sequential_state_reg[1]_1\,
      I4 => Q(0),
      I5 => \FSM_sequential_state_reg[2]_2\,
      O => \FSM_sequential_state_reg[1]\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE20000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => \FSM_sequential_state_reg[2]_0\,
      I3 => \FSM_sequential_state_reg[2]_1\,
      I4 => Q(0),
      I5 => \FSM_sequential_state_reg[2]_2\,
      O => \FSM_sequential_state_reg[2]\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2A2A28AAA82A08"
    )
        port map (
      I0 => \state1__1\,
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => detect_start,
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      I5 => \state__0\(1),
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => bit_cnt(1),
      I1 => bit_cnt(0),
      I2 => bit_cnt(2),
      I3 => bit_cnt(3),
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
dtc_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40000000"
    )
        port map (
      I0 => bit_cnt(3),
      I1 => bit_cnt(2),
      I2 => bit_cnt(0),
      I3 => bit_cnt(1),
      I4 => scl_falling_edge,
      I5 => dtc_i,
      O => \q_int_reg[0]_0\
    );
\q_int[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF63"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => detect_start,
      I4 => bit_cnt_en,
      O => \q_int[0]_i_1__0_n_0\
    );
\q_int[0]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => \bit_cnt_ld__1\,
      I1 => bit_cnt(1),
      I2 => bit_cnt(0),
      I3 => bit_cnt(2),
      I4 => bit_cnt(3),
      O => \q_int[0]_i_2__1_n_0\
    );
\q_int[0]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AFEB"
    )
        port map (
      I0 => detect_start,
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      O => \bit_cnt_ld__1\
    );
\q_int[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => \bit_cnt_ld__1\,
      I1 => bit_cnt(0),
      I2 => bit_cnt(1),
      I3 => bit_cnt(2),
      O => \q_int[1]_i_1__1_n_0\
    );
\q_int[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000501450140000"
    )
        port map (
      I0 => detect_start,
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      I4 => bit_cnt(0),
      I5 => bit_cnt(1),
      O => \q_int[2]_i_1__1_n_0\
    );
\q_int[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000009C"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => detect_start,
      I4 => bit_cnt(0),
      O => \q_int[3]_i_1__1_n_0\
    );
\q_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \q_int[0]_i_2__1_n_0\,
      Q => bit_cnt(3),
      R => \q_int_reg[0]_1\
    );
\q_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \q_int[1]_i_1__1_n_0\,
      Q => bit_cnt(2),
      R => \q_int_reg[0]_1\
    );
\q_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \q_int[2]_i_1__1_n_0\,
      Q => bit_cnt(1),
      R => \q_int_reg[0]_1\
    );
\q_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \q_int[3]_i_1__1_n_0\,
      Q => bit_cnt(0),
      R => \q_int_reg[0]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce is
  port (
    scl_rising_edge0 : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : out STD_LOGIC;
    scl_rin_d1 : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce is
begin
INPUT_DOUBLE_REGS: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_4
     port map (
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      s_axi_aclk => s_axi_aclk,
      scl_i => scl_i,
      scl_rin_d1 => scl_rin_d1,
      scl_rising_edge0 => scl_rising_edge0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_3 is
  port (
    \sda_rising__0\ : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    sda_rin_d1 : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_3 : entity is "debounce";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_3 is
begin
INPUT_DOUBLE_REGS: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync
     port map (
      s_axi_aclk => s_axi_aclk,
      scndry_out => scndry_out,
      sda_i => sda_i,
      sda_rin_d1 => sda_rin_d1,
      \sda_rising__0\ => \sda_rising__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iic_control is
  port (
    sda_t : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    New_rcv_dta : out STD_LOGIC;
    shift_reg_ld : out STD_LOGIC;
    sda_rin_d1 : out STD_LOGIC;
    scl_rin_d1 : out STD_LOGIC;
    Tx_under_prev : out STD_LOGIC;
    Bb : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    earlyAckHdr : out STD_LOGIC;
    earlyAckDataState : out STD_LOGIC;
    ackDataState : out STD_LOGIC;
    rdy_new_xmt_i : out STD_LOGIC;
    master_slave : out STD_LOGIC;
    srw_i_reg_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Aas : out STD_LOGIC;
    detect_stop_b_reg_0 : out STD_LOGIC;
    \q_int_reg[0]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_onehot_scl_state_reg[3]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_int_reg[5]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \data_int_reg[7]\ : out STD_LOGIC;
    Msms_rst : out STD_LOGIC;
    Rc_fifo_wr0 : out STD_LOGIC;
    \data_i2c_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \q_int_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    scl_rin_d1_reg_0 : in STD_LOGIC;
    scl_rising_edge0 : in STD_LOGIC;
    Ro_prev : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    sr_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \addr_match__0\ : in STD_LOGIC;
    txak : in STD_LOGIC;
    \q_int_reg[0]_1\ : in STD_LOGIC;
    \FSM_onehot_scl_state[9]_i_12\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \FSM_onehot_scl_state[9]_i_4\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_onehot_scl_state[9]_i_11\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \stop_start_wait1__4\ : in STD_LOGIC;
    \FSM_onehot_scl_state_reg[5]_0\ : in STD_LOGIC;
    \q_int[0]_i_10\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \FSM_onehot_scl_state_reg[2]_0\ : in STD_LOGIC;
    slave_sda_i_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sda_setup_reg_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rxCntDone : in STD_LOGIC;
    \Tx_data_exists__4\ : in STD_LOGIC;
    \Tx_fifo_rd_i__0\ : in STD_LOGIC;
    dynamic_MSMS : in STD_LOGIC_VECTOR ( 0 to 0 );
    \clk_cnt_en1_inferred__2/i__carry_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Msms_set : in STD_LOGIC;
    \data_int_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_fifo_data_0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \FSM_onehot_scl_state_reg[6]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_onehot_scl_state_reg[3]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    new_rcv_dta_d1 : in STD_LOGIC;
    \sda_rising__0\ : in STD_LOGIC;
    \state123_out__0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iic_control;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iic_control is
  signal \^aas\ : STD_LOGIC;
  signal AckDataState_i_1_n_0 : STD_LOGIC;
  signal BITCNT_n_1 : STD_LOGIC;
  signal BITCNT_n_2 : STD_LOGIC;
  signal BITCNT_n_3 : STD_LOGIC;
  signal BITCNT_n_4 : STD_LOGIC;
  signal \^bb\ : STD_LOGIC;
  signal CLKCNT_n_0 : STD_LOGIC;
  signal CLKCNT_n_10 : STD_LOGIC;
  signal CLKCNT_n_11 : STD_LOGIC;
  signal CLKCNT_n_12 : STD_LOGIC;
  signal CLKCNT_n_13 : STD_LOGIC;
  signal CLKCNT_n_14 : STD_LOGIC;
  signal CLKCNT_n_15 : STD_LOGIC;
  signal CLKCNT_n_16 : STD_LOGIC;
  signal CLKCNT_n_17 : STD_LOGIC;
  signal CLKCNT_n_18 : STD_LOGIC;
  signal CLKCNT_n_19 : STD_LOGIC;
  signal CLKCNT_n_20 : STD_LOGIC;
  signal CLKCNT_n_21 : STD_LOGIC;
  signal CLKCNT_n_9 : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal EarlyAckDataState0 : STD_LOGIC;
  signal EarlyAckDataState_i_2_n_0 : STD_LOGIC;
  signal EarlyAckHdr0 : STD_LOGIC;
  signal \FSM_onehot_scl_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_6_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_scl_state_reg[3]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \FSM_onehot_scl_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_scl_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_scl_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_scl_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_scl_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_scl_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_scl_state_reg_n_0_[9]\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal I2CDATA_REG_n_0 : STD_LOGIC;
  signal I2CDATA_REG_n_2 : STD_LOGIC;
  signal I2CDATA_REG_n_3 : STD_LOGIC;
  signal I2CDATA_REG_n_4 : STD_LOGIC;
  signal I2CDATA_REG_n_5 : STD_LOGIC;
  signal I2CDATA_REG_n_6 : STD_LOGIC;
  signal I2CDATA_REG_n_7 : STD_LOGIC;
  signal I2CDATA_REG_n_8 : STD_LOGIC;
  signal I2CDATA_REG_n_9 : STD_LOGIC;
  signal I2CHEADER_REG_n_0 : STD_LOGIC;
  signal I2CHEADER_REG_n_1 : STD_LOGIC;
  signal I2CHEADER_REG_n_10 : STD_LOGIC;
  signal I2CHEADER_REG_n_8 : STD_LOGIC;
  signal \LEVEL_1_GEN.master_sda_reg_n_0\ : STD_LOGIC;
  signal \^new_rcv_dta\ : STD_LOGIC;
  signal SETUP_CNT_n_0 : STD_LOGIC;
  signal \^tx_under_prev\ : STD_LOGIC;
  signal aas_i : STD_LOGIC;
  signal aas_i_i_1_n_0 : STD_LOGIC;
  signal \al_i0__4\ : STD_LOGIC;
  signal al_i_i_1_n_0 : STD_LOGIC;
  signal al_prevent : STD_LOGIC;
  signal al_prevent_i_1_n_0 : STD_LOGIC;
  signal arb_lost : STD_LOGIC;
  signal arb_lost034_out : STD_LOGIC;
  signal \arb_lost0__0\ : STD_LOGIC;
  signal arb_lost6_out : STD_LOGIC;
  signal arb_lost_i_1_n_0 : STD_LOGIC;
  signal bit_cnt_en : STD_LOGIC;
  signal bit_cnt_en0 : STD_LOGIC;
  signal bus_busy_d1 : STD_LOGIC;
  signal bus_busy_i_1_n_0 : STD_LOGIC;
  signal \clk_cnt_en1_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \clk_cnt_en1_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \clk_cnt_en1_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \clk_cnt_en1_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal data_i2c_i0 : STD_LOGIC;
  signal detect_start : STD_LOGIC;
  signal detect_start_i_1_n_0 : STD_LOGIC;
  signal detect_stop0 : STD_LOGIC;
  signal detect_stop_b : STD_LOGIC;
  signal detect_stop_b_i_1_n_0 : STD_LOGIC;
  signal \^detect_stop_b_reg_0\ : STD_LOGIC;
  signal detect_stop_i_1_n_0 : STD_LOGIC;
  signal detect_stop_reg_n_0 : STD_LOGIC;
  signal dtc_i : STD_LOGIC;
  signal dtc_i_d1 : STD_LOGIC;
  signal dtc_i_d2 : STD_LOGIC;
  signal dtre_d1 : STD_LOGIC;
  signal gen_start : STD_LOGIC;
  signal gen_start_i_1_n_0 : STD_LOGIC;
  signal gen_stop : STD_LOGIC;
  signal gen_stop_d1 : STD_LOGIC;
  signal gen_stop_i_1_n_0 : STD_LOGIC;
  signal i2c_header_en : STD_LOGIC;
  signal i2c_header_en0 : STD_LOGIC;
  signal \^master_slave\ : STD_LOGIC;
  signal master_slave_i_1_n_0 : STD_LOGIC;
  signal msms_d1 : STD_LOGIC;
  signal msms_d10 : STD_LOGIC;
  signal msms_d1_i_2_n_0 : STD_LOGIC;
  signal msms_d2 : STD_LOGIC;
  signal msms_rst_i : STD_LOGIC;
  signal msms_rst_i_i_1_n_0 : STD_LOGIC;
  signal msms_rst_i_i_4_n_0 : STD_LOGIC;
  signal \next_scl_state1__1\ : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal p_1_in6_in : STD_LOGIC;
  signal p_2_in_1 : STD_LOGIC;
  signal \^rdy_new_xmt_i\ : STD_LOGIC;
  signal rdy_new_xmt_i_i_1_n_0 : STD_LOGIC;
  signal ro_prev_d1 : STD_LOGIC;
  signal rsta_d1 : STD_LOGIC;
  signal rsta_tx_under_prev : STD_LOGIC;
  signal rsta_tx_under_prev_i_1_n_0 : STD_LOGIC;
  signal scl_cout_reg : STD_LOGIC;
  signal scl_cout_reg0 : STD_LOGIC;
  signal scl_cout_reg_i_2_n_0 : STD_LOGIC;
  signal scl_f_edg_d1 : STD_LOGIC;
  signal scl_f_edg_d2 : STD_LOGIC;
  signal scl_f_edg_d3 : STD_LOGIC;
  signal scl_falling_edge : STD_LOGIC;
  signal scl_falling_edge0 : STD_LOGIC;
  signal \^scl_rin_d1\ : STD_LOGIC;
  signal scl_rising_edge : STD_LOGIC;
  signal sda_cout_reg : STD_LOGIC;
  signal sda_cout_reg_i_3_n_0 : STD_LOGIC;
  signal \^sda_rin_d1\ : STD_LOGIC;
  signal sda_sample : STD_LOGIC;
  signal sda_sample_i_1_n_0 : STD_LOGIC;
  signal sda_setup : STD_LOGIC;
  signal shift_reg : STD_LOGIC_VECTOR ( 7 to 7 );
  signal shift_reg_en : STD_LOGIC;
  signal shift_reg_en0 : STD_LOGIC;
  signal shift_reg_en_i_2_n_0 : STD_LOGIC;
  signal \^shift_reg_ld\ : STD_LOGIC;
  signal shift_reg_ld0 : STD_LOGIC;
  signal shift_reg_ld_d1 : STD_LOGIC;
  signal slave_sda_reg_n_0 : STD_LOGIC;
  signal sm_stop_i_1_n_0 : STD_LOGIC;
  signal sm_stop_i_2_n_0 : STD_LOGIC;
  signal sm_stop_i_3_n_0 : STD_LOGIC;
  signal sm_stop_reg_n_0 : STD_LOGIC;
  signal \^srw_i_reg_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state0 : STD_LOGIC;
  signal \state1__1\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal stop_scl_reg : STD_LOGIC;
  signal stop_scl_reg_i_2_n_0 : STD_LOGIC;
  signal stop_scl_reg_i_3_n_0 : STD_LOGIC;
  signal stop_scl_reg_i_5_n_0 : STD_LOGIC;
  signal tx_under_prev_d1 : STD_LOGIC;
  signal tx_under_prev_i0 : STD_LOGIC;
  signal \tx_under_prev_i4__0\ : STD_LOGIC;
  signal tx_under_prev_i_i_1_n_0 : STD_LOGIC;
  signal txer_edge_i_1_n_0 : STD_LOGIC;
  signal txer_i : STD_LOGIC;
  signal txer_i_i_1_n_0 : STD_LOGIC;
  signal txer_i_reg_n_0 : STD_LOGIC;
  signal \NLW_clk_cnt_en1_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of AckDataState_i_1 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of EarlyAckDataState_i_2 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of EarlyAckDataState_i_3 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of EarlyAckHdr_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[0]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[1]_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[9]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[9]_i_5\ : label is "soft_lutpair31";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_scl_state_reg[0]\ : label is "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_scl_state_reg[1]\ : label is "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_scl_state_reg[2]\ : label is "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_scl_state_reg[3]\ : label is "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_scl_state_reg[4]\ : label is "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_scl_state_reg[5]\ : label is "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_scl_state_reg[6]\ : label is "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_scl_state_reg[7]\ : label is "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_scl_state_reg[8]\ : label is "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_scl_state_reg[9]\ : label is "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_5\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_6\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_5\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_7\ : label is "soft_lutpair18";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ack_header:110,wait_ack:001,header:101,ack_data:011,rcv_data:100,xmit_data:010,idle:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ack_header:110,wait_ack:001,header:101,ack_data:011,rcv_data:100,xmit_data:010,idle:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "ack_header:110,wait_ack:001,header:101,ack_data:011,rcv_data:100,xmit_data:010,idle:000";
  attribute SOFT_HLUTNM of \IIC2Bus_IntrEvent[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of aas_i_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of aas_i_i_2 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of al_i_i_1 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of arb_lost_i_2 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of bit_cnt_en_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of bus_busy_i_1 : label is "soft_lutpair27";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \clk_cnt_en1_inferred__2/i__carry\ : label is 11;
  attribute SOFT_HLUTNM of detect_stop_i_2 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of gen_start_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of gen_stop_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of i2c_header_en_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of master_slave_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of msms_rst_i_i_2 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of msms_rst_i_i_3 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of msms_rst_i_i_4 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of rdy_new_xmt_i_i_2 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of sda_cout_reg_i_3 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of sda_sample_i_1 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of shift_reg_en_i_2 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of shift_reg_en_i_3 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of sm_stop_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of stop_scl_reg_i_2 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of stop_scl_reg_i_5 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of tx_under_prev_i_i_3 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of txer_edge_i_2 : label is "soft_lutpair25";
begin
  Aas <= \^aas\;
  Bb <= \^bb\;
  D(3 downto 0) <= \^d\(3 downto 0);
  \FSM_onehot_scl_state_reg[3]_0\(1 downto 0) <= \^fsm_onehot_scl_state_reg[3]_0\(1 downto 0);
  New_rcv_dta <= \^new_rcv_dta\;
  Tx_under_prev <= \^tx_under_prev\;
  detect_stop_b_reg_0 <= \^detect_stop_b_reg_0\;
  master_slave <= \^master_slave\;
  rdy_new_xmt_i <= \^rdy_new_xmt_i\;
  scl_rin_d1 <= \^scl_rin_d1\;
  sda_rin_d1 <= \^sda_rin_d1\;
  shift_reg_ld <= \^shift_reg_ld\;
  srw_i_reg_0(1 downto 0) <= \^srw_i_reg_0\(1 downto 0);
AckDataState_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => AckDataState_i_1_n_0
    );
AckDataState_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AckDataState_i_1_n_0,
      Q => ackDataState,
      R => \q_int_reg[0]_0\
    );
BITCNT: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upcnt_n__parameterized0\
     port map (
      EarlyAckDataState0 => EarlyAckDataState0,
      EarlyAckDataState_reg => EarlyAckDataState_i_2_n_0,
      \FSM_sequential_state_reg[0]\ => BITCNT_n_4,
      \FSM_sequential_state_reg[0]_0\ => \FSM_sequential_state[0]_i_2_n_0\,
      \FSM_sequential_state_reg[0]_1\ => \FSM_sequential_state[0]_i_4_n_0\,
      \FSM_sequential_state_reg[1]\ => BITCNT_n_3,
      \FSM_sequential_state_reg[1]_0\ => \FSM_sequential_state[1]_i_2_n_0\,
      \FSM_sequential_state_reg[1]_1\ => I2CHEADER_REG_n_8,
      \FSM_sequential_state_reg[2]\ => BITCNT_n_2,
      \FSM_sequential_state_reg[2]_0\ => I2CHEADER_REG_n_1,
      \FSM_sequential_state_reg[2]_1\ => \FSM_sequential_state[2]_i_4_n_0\,
      \FSM_sequential_state_reg[2]_2\ => detect_stop_reg_n_0,
      Q(0) => Q(0),
      bit_cnt_en => bit_cnt_en,
      detect_start => detect_start,
      dtc_i => dtc_i,
      p_1_in6_in => p_1_in6_in,
      \q_int_reg[0]_0\ => BITCNT_n_1,
      \q_int_reg[0]_1\ => \q_int_reg[0]_0\,
      s_axi_aclk => s_axi_aclk,
      scl_falling_edge => scl_falling_edge,
      state0 => state0,
      \state123_out__0\ => \state123_out__0\,
      \state1__1\ => \state1__1\,
      \state__0\(2 downto 0) => \state__0\(2 downto 0)
    );
CLKCNT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upcnt_n
     port map (
      CO(0) => \clk_cnt_en1_inferred__2/i__carry_n_0\,
      D(5) => CLKCNT_n_10,
      D(4) => CLKCNT_n_11,
      D(3) => CLKCNT_n_12,
      D(2) => CLKCNT_n_13,
      D(1) => CLKCNT_n_14,
      D(0) => CLKCNT_n_15,
      DI(3) => CLKCNT_n_16,
      DI(2) => CLKCNT_n_17,
      DI(1) => CLKCNT_n_18,
      DI(0) => CLKCNT_n_19,
      E(0) => CLKCNT_n_0,
      \FSM_onehot_scl_state[9]_i_11_0\(7 downto 0) => \FSM_onehot_scl_state[9]_i_11\(7 downto 0),
      \FSM_onehot_scl_state[9]_i_12_0\(5 downto 0) => \FSM_onehot_scl_state[9]_i_12\(5 downto 0),
      \FSM_onehot_scl_state[9]_i_4_0\(7 downto 0) => \FSM_onehot_scl_state[9]_i_4\(7 downto 0),
      \FSM_onehot_scl_state_reg[0]\ => \FSM_onehot_scl_state[9]_i_5_n_0\,
      \FSM_onehot_scl_state_reg[0]_0\ => \FSM_onehot_scl_state[9]_i_6_n_0\,
      \FSM_onehot_scl_state_reg[1]\ => \FSM_onehot_scl_state[1]_i_3_n_0\,
      \FSM_onehot_scl_state_reg[1]_0\ => \FSM_onehot_scl_state[1]_i_4_n_0\,
      \FSM_onehot_scl_state_reg[2]\ => \FSM_onehot_scl_state[2]_i_2_n_0\,
      \FSM_onehot_scl_state_reg[2]_0\ => \^master_slave\,
      \FSM_onehot_scl_state_reg[2]_1\ => \^bb\,
      \FSM_onehot_scl_state_reg[2]_2\ => \FSM_onehot_scl_state_reg[2]_0\,
      \FSM_onehot_scl_state_reg[3]\(7 downto 0) => \FSM_onehot_scl_state_reg[3]_1\(7 downto 0),
      \FSM_onehot_scl_state_reg[4]\ => CLKCNT_n_20,
      \FSM_onehot_scl_state_reg[4]_0\ => \FSM_onehot_scl_state[4]_i_3_n_0\,
      \FSM_onehot_scl_state_reg[5]\ => CLKCNT_n_21,
      \FSM_onehot_scl_state_reg[5]_0\ => \FSM_onehot_scl_state_reg[5]_0\,
      \FSM_onehot_scl_state_reg[6]\ => scl_rin_d1_reg_0,
      \FSM_onehot_scl_state_reg[6]_0\(7 downto 0) => \FSM_onehot_scl_state_reg[6]_0\(7 downto 0),
      \FSM_onehot_scl_state_reg[7]\ => CLKCNT_n_9,
      Q(9) => \FSM_onehot_scl_state_reg_n_0_[9]\,
      Q(8) => \FSM_onehot_scl_state_reg_n_0_[8]\,
      Q(7) => \FSM_onehot_scl_state_reg_n_0_[7]\,
      Q(6) => \FSM_onehot_scl_state_reg_n_0_[6]\,
      Q(5) => \FSM_onehot_scl_state_reg_n_0_[5]\,
      Q(4) => \FSM_onehot_scl_state_reg_n_0_[4]\,
      Q(3) => \^fsm_onehot_scl_state_reg[3]_0\(1),
      Q(2) => detect_stop_b,
      Q(1) => \^fsm_onehot_scl_state_reg[3]_0\(0),
      Q(0) => \FSM_onehot_scl_state_reg_n_0_[0]\,
      arb_lost => arb_lost,
      \clk_cnt_en1_inferred__2/i__carry\(7 downto 0) => \clk_cnt_en1_inferred__2/i__carry_0\(7 downto 0),
      gen_start => gen_start,
      \q_int[0]_i_10_0\(5 downto 0) => \q_int[0]_i_10\(5 downto 0),
      \q_int_reg[0]_0\(7 downto 0) => \q_int_reg[0]\(7 downto 0),
      \q_int_reg[0]_1\ => \q_int_reg[0]_1\,
      \q_int_reg[0]_2\ => \^detect_stop_b_reg_0\,
      \q_int_reg[7]_0\ => \q_int_reg[0]_0\,
      s_axi_aclk => s_axi_aclk,
      scndry_out => scndry_out,
      sda_cout_reg => sda_cout_reg,
      sda_cout_reg_reg(0) => Q(3),
      sda_cout_reg_reg_0 => sda_cout_reg_i_3_n_0,
      stop_scl_reg => stop_scl_reg,
      stop_scl_reg_reg => stop_scl_reg_i_2_n_0,
      stop_scl_reg_reg_0 => stop_scl_reg_i_3_n_0,
      stop_scl_reg_reg_1 => stop_scl_reg_i_5_n_0,
      \stop_start_wait1__4\ => \stop_start_wait1__4\
    );
EarlyAckDataState_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      O => EarlyAckDataState_i_2_n_0
    );
EarlyAckDataState_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      O => p_1_in6_in
    );
EarlyAckDataState_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => EarlyAckDataState0,
      Q => earlyAckDataState,
      R => \q_int_reg[0]_0\
    );
EarlyAckHdr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => scl_f_edg_d3,
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      O => EarlyAckHdr0
    );
EarlyAckHdr_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => EarlyAckHdr0,
      Q => earlyAckHdr,
      R => \q_int_reg[0]_0\
    );
\FSM_onehot_scl_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg_n_0_[7]\,
      I1 => arb_lost,
      I2 => \FSM_onehot_scl_state_reg_n_0_[0]\,
      I3 => \next_scl_state1__1\,
      I4 => \stop_start_wait1__4\,
      I5 => \FSM_onehot_scl_state_reg_n_0_[9]\,
      O => \FSM_onehot_scl_state[0]_i_1_n_0\
    );
\FSM_onehot_scl_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bb\,
      I1 => \^master_slave\,
      I2 => gen_start,
      O => \next_scl_state1__1\
    );
\FSM_onehot_scl_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCCCCCCC8"
    )
        port map (
      I0 => \FSM_onehot_scl_state[9]_i_5_n_0\,
      I1 => \^detect_stop_b_reg_0\,
      I2 => \^fsm_onehot_scl_state_reg[3]_0\(1),
      I3 => detect_stop_b,
      I4 => \FSM_onehot_scl_state_reg_n_0_[8]\,
      I5 => \FSM_onehot_scl_state_reg_n_0_[7]\,
      O => \FSM_onehot_scl_state[1]_i_3_n_0\
    );
\FSM_onehot_scl_state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => gen_start,
      I1 => \^master_slave\,
      I2 => \^bb\,
      I3 => \FSM_onehot_scl_state_reg_n_0_[0]\,
      O => \FSM_onehot_scl_state[1]_i_4_n_0\
    );
\FSM_onehot_scl_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => detect_stop_b,
      I1 => scndry_out,
      I2 => CLKCNT_n_9,
      I3 => Q(3),
      I4 => \^fsm_onehot_scl_state_reg[3]_0\(0),
      I5 => \stop_start_wait1__4\,
      O => \FSM_onehot_scl_state[2]_i_2_n_0\
    );
\FSM_onehot_scl_state[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => Q(3),
      I1 => stop_scl_reg,
      I2 => arb_lost,
      I3 => \FSM_onehot_scl_state_reg_n_0_[7]\,
      O => \FSM_onehot_scl_state[4]_i_3_n_0\
    );
\FSM_onehot_scl_state[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg_n_0_[6]\,
      I1 => scl_rin_d1_reg_0,
      O => \FSM_onehot_scl_state[7]_i_1_n_0\
    );
\FSM_onehot_scl_state[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444F44444"
    )
        port map (
      I0 => scndry_out,
      I1 => \FSM_onehot_scl_state_reg_n_0_[8]\,
      I2 => \FSM_onehot_scl_state_reg_n_0_[7]\,
      I3 => arb_lost,
      I4 => stop_scl_reg,
      I5 => Q(3),
      O => \FSM_onehot_scl_state[8]_i_1_n_0\
    );
\FSM_onehot_scl_state[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \stop_start_wait1__4\,
      I1 => \FSM_onehot_scl_state_reg_n_0_[9]\,
      I2 => scndry_out,
      I3 => \FSM_onehot_scl_state_reg_n_0_[8]\,
      O => \FSM_onehot_scl_state[9]_i_3_n_0\
    );
\FSM_onehot_scl_state[9]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg_n_0_[6]\,
      I1 => \FSM_onehot_scl_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_scl_state_reg_n_0_[4]\,
      O => \FSM_onehot_scl_state[9]_i_5_n_0\
    );
\FSM_onehot_scl_state[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFE"
    )
        port map (
      I0 => \^fsm_onehot_scl_state_reg[3]_0\(1),
      I1 => detect_stop_b,
      I2 => \FSM_onehot_scl_state_reg_n_0_[8]\,
      I3 => \^fsm_onehot_scl_state_reg[3]_0\(0),
      I4 => \FSM_onehot_scl_state_reg_n_0_[7]\,
      I5 => arb_lost,
      O => \FSM_onehot_scl_state[9]_i_6_n_0\
    );
\FSM_onehot_scl_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => CLKCNT_n_0,
      D => \FSM_onehot_scl_state[0]_i_1_n_0\,
      Q => \FSM_onehot_scl_state_reg_n_0_[0]\,
      S => \q_int_reg[0]_0\
    );
\FSM_onehot_scl_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CLKCNT_n_0,
      D => CLKCNT_n_15,
      Q => \^fsm_onehot_scl_state_reg[3]_0\(0),
      R => \q_int_reg[0]_0\
    );
\FSM_onehot_scl_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CLKCNT_n_0,
      D => CLKCNT_n_14,
      Q => detect_stop_b,
      R => \q_int_reg[0]_0\
    );
\FSM_onehot_scl_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CLKCNT_n_0,
      D => CLKCNT_n_13,
      Q => \^fsm_onehot_scl_state_reg[3]_0\(1),
      R => \q_int_reg[0]_0\
    );
\FSM_onehot_scl_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CLKCNT_n_0,
      D => CLKCNT_n_12,
      Q => \FSM_onehot_scl_state_reg_n_0_[4]\,
      R => \q_int_reg[0]_0\
    );
\FSM_onehot_scl_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CLKCNT_n_0,
      D => CLKCNT_n_11,
      Q => \FSM_onehot_scl_state_reg_n_0_[5]\,
      R => \q_int_reg[0]_0\
    );
\FSM_onehot_scl_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CLKCNT_n_0,
      D => CLKCNT_n_10,
      Q => \FSM_onehot_scl_state_reg_n_0_[6]\,
      R => \q_int_reg[0]_0\
    );
\FSM_onehot_scl_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CLKCNT_n_0,
      D => \FSM_onehot_scl_state[7]_i_1_n_0\,
      Q => \FSM_onehot_scl_state_reg_n_0_[7]\,
      R => \q_int_reg[0]_0\
    );
\FSM_onehot_scl_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CLKCNT_n_0,
      D => \FSM_onehot_scl_state[8]_i_1_n_0\,
      Q => \FSM_onehot_scl_state_reg_n_0_[8]\,
      R => \q_int_reg[0]_0\
    );
\FSM_onehot_scl_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CLKCNT_n_0,
      D => \FSM_onehot_scl_state[9]_i_3_n_0\,
      Q => \FSM_onehot_scl_state_reg_n_0_[9]\,
      R => \q_int_reg[0]_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(2),
      I1 => detect_start,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D55"
    )
        port map (
      I0 => \state__0\(0),
      I1 => Ro_prev,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      O => \FSM_sequential_state[0]_i_4_n_0\
    );
\FSM_sequential_state[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => detect_stop_reg_n_0,
      I1 => Q(0),
      O => state0
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAAAAA22202220"
    )
        port map (
      I0 => \state__0\(2),
      I1 => detect_start,
      I2 => \addr_match__0\,
      I3 => \^master_slave\,
      I4 => \FSM_sequential_state[1]_i_4_n_0\,
      I5 => \state__0\(0),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sda_sample,
      I1 => arb_lost,
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \state__0\(2),
      I1 => Ro_prev,
      I2 => \state__0\(0),
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \state__0\(0),
      I1 => sda_sample,
      I2 => arb_lost,
      I3 => \state__0\(2),
      O => \FSM_sequential_state[1]_i_6_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04C0"
    )
        port map (
      I0 => Ro_prev,
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => Ro_prev,
      I1 => ro_prev_d1,
      I2 => scl_f_edg_d2,
      O => \state1__1\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => detect_start,
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => BITCNT_n_4,
      Q => \state__0\(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => BITCNT_n_3,
      Q => \state__0\(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => BITCNT_n_2,
      Q => \state__0\(2),
      R => '0'
    );
I2CDATA_REG: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift8
     port map (
      \FSM_sequential_state_reg[0]\ => I2CDATA_REG_n_0,
      \LEVEL_1_GEN.master_sda_reg\ => \^tx_under_prev\,
      Q(7) => shift_reg(7),
      Q(6) => I2CDATA_REG_n_2,
      Q(5) => I2CDATA_REG_n_3,
      Q(4) => I2CDATA_REG_n_4,
      Q(3) => I2CDATA_REG_n_5,
      Q(2) => I2CDATA_REG_n_6,
      Q(1) => I2CDATA_REG_n_7,
      Q(0) => I2CDATA_REG_n_8,
      Tx_fifo_data_0(6 downto 0) => Tx_fifo_data_0(6 downto 0),
      \addr_match__0\ => \addr_match__0\,
      \data_int_reg[0]_0\(0) => \data_int_reg[0]\(0),
      \data_int_reg[1]_0\ => \^shift_reg_ld\,
      \data_int_reg[7]_0\ => I2CDATA_REG_n_9,
      \data_int_reg[7]_1\ => \q_int_reg[0]_0\,
      s_axi_aclk => s_axi_aclk,
      shift_reg_en => shift_reg_en,
      \state__0\(2 downto 0) => \state__0\(2 downto 0),
      txak => txak
    );
I2CHEADER_REG: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift8_1
     port map (
      E(0) => i2c_header_en,
      \FSM_sequential_state_reg[1]\ => \FSM_sequential_state[1]_i_5_n_0\,
      \FSM_sequential_state_reg[1]_0\ => \FSM_sequential_state[1]_i_6_n_0\,
      \FSM_sequential_state_reg[2]\ => \FSM_sequential_state[2]_i_7_n_0\,
      Q(2) => Q(4),
      Q(1) => Q(2),
      Q(0) => Q(0),
      abgc_i_reg => detect_stop_reg_n_0,
      \addr_match__0\ => \addr_match__0\,
      arb_lost => arb_lost,
      \cr_i_reg[4]\ => I2CHEADER_REG_n_1,
      \cr_i_reg[4]_0\ => I2CHEADER_REG_n_8,
      \data_int_reg[0]_0\ => I2CHEADER_REG_n_10,
      \data_int_reg[0]_1\ => \q_int_reg[0]_0\,
      \data_int_reg[5]_0\(4 downto 0) => \data_int_reg[5]\(4 downto 0),
      \data_int_reg[7]_0\ => \data_int_reg[7]\,
      detect_start => detect_start,
      detect_start_reg => I2CHEADER_REG_n_0,
      s_axi_aclk => s_axi_aclk,
      scndry_out => scndry_out,
      sda_sample => sda_sample,
      shift_reg_ld0 => shift_reg_ld0,
      shift_reg_ld_reg => \^master_slave\,
      shift_reg_ld_reg_0 => \^tx_under_prev\,
      slave_sda_i_2(1 downto 0) => slave_sda_i_2(1 downto 0),
      srw_i_reg(1 downto 0) => \^srw_i_reg_0\(1 downto 0),
      \state__0\(2 downto 0) => \state__0\(2 downto 0)
    );
\IIC2Bus_IntrEvent[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bb\,
      O => \^d\(1)
    );
\IIC2Bus_IntrEvent[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aas\,
      O => \^d\(0)
    );
\LEVEL_1_GEN.master_sda_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2CDATA_REG_n_9,
      Q => \LEVEL_1_GEN.master_sda_reg_n_0\,
      S => \q_int_reg[0]_0\
    );
\RD_FIFO_CNTRL.Rc_fifo_wr_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^new_rcv_dta\,
      I1 => new_rcv_dta_d1,
      O => Rc_fifo_wr0
    );
SETUP_CNT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upcnt_n_2
     port map (
      Q(0) => Q(3),
      gen_stop => gen_stop,
      gen_stop_d1 => gen_stop_d1,
      \q_int_reg[0]_0\ => \q_int_reg[0]_0\,
      rsta_d1 => rsta_d1,
      s_axi_aclk => s_axi_aclk,
      scndry_out => scndry_out,
      sda_rin_d1 => \^sda_rin_d1\,
      sda_setup => sda_setup,
      sda_setup_reg => \^tx_under_prev\,
      sda_setup_reg_0(7 downto 0) => sda_setup_reg_0(7 downto 0),
      sda_setup_reg_1 => scl_rin_d1_reg_0,
      tx_under_prev_d1 => tx_under_prev_d1,
      tx_under_prev_i_reg => SETUP_CNT_n_0
    );
Scl_T_inferred_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => rsta_tx_under_prev,
      I1 => scl_cout_reg,
      I2 => Ro_prev,
      I3 => sda_setup,
      O => scl_t
    );
Sda_T_inferred_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54545404"
    )
        port map (
      I0 => stop_scl_reg,
      I1 => slave_sda_reg_n_0,
      I2 => \^master_slave\,
      I3 => arb_lost,
      I4 => sda_cout_reg,
      O => sda_t
    );
aas_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400000"
    )
        port map (
      I0 => detect_stop_reg_n_0,
      I1 => Q(0),
      I2 => aas_i,
      I3 => \^aas\,
      I4 => \addr_match__0\,
      O => aas_i_i_1_n_0
    );
aas_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => aas_i
    );
aas_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => aas_i_i_1_n_0,
      Q => \^aas\,
      R => '0'
    );
abgc_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2CHEADER_REG_n_0,
      Q => \^srw_i_reg_0\(0),
      R => '0'
    );
al_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \al_i0__4\,
      I1 => \^master_slave\,
      I2 => Q(3),
      O => al_i_i_1_n_0
    );
al_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAEAEAFFEAEA"
    )
        port map (
      I0 => arb_lost,
      I1 => bus_busy_d1,
      I2 => gen_start,
      I3 => al_prevent,
      I4 => detect_stop_reg_n_0,
      I5 => sm_stop_reg_n_0,
      O => \al_i0__4\
    );
al_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => al_i_i_1_n_0,
      Q => \^d\(3),
      R => \q_int_reg[0]_0\
    );
al_prevent_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0E"
    )
        port map (
      I0 => gen_stop,
      I1 => sm_stop_reg_n_0,
      I2 => detect_start,
      I3 => al_prevent,
      O => al_prevent_i_1_n_0
    );
al_prevent_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => al_prevent_i_1_n_0,
      Q => al_prevent,
      R => \q_int_reg[0]_0\
    );
arb_lost_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008AA0800"
    )
        port map (
      I0 => Q(0),
      I1 => sda_cout_reg,
      I2 => scndry_out,
      I3 => arb_lost6_out,
      I4 => arb_lost,
      I5 => msms_rst_i_i_4_n_0,
      O => arb_lost_i_1_n_0
    );
arb_lost_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00088000"
    )
        port map (
      I0 => \^master_slave\,
      I1 => scl_rising_edge,
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      O => arb_lost6_out
    );
arb_lost_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => arb_lost_i_1_n_0,
      Q => arb_lost,
      R => '0'
    );
bit_cnt_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2028"
    )
        port map (
      I0 => scl_falling_edge,
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      O => bit_cnt_en0
    );
bit_cnt_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bit_cnt_en0,
      Q => bit_cnt_en,
      R => \q_int_reg[0]_0\
    );
bus_busy_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^bb\,
      Q => bus_busy_d1,
      R => \q_int_reg[0]_0\
    );
bus_busy_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \^bb\,
      I1 => detect_start,
      I2 => Q(0),
      I3 => detect_stop_reg_n_0,
      O => bus_busy_i_1_n_0
    );
bus_busy_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus_busy_i_1_n_0,
      Q => \^bb\,
      R => '0'
    );
\clk_cnt_en1_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clk_cnt_en1_inferred__2/i__carry_n_0\,
      CO(2) => \clk_cnt_en1_inferred__2/i__carry_n_1\,
      CO(1) => \clk_cnt_en1_inferred__2/i__carry_n_2\,
      CO(0) => \clk_cnt_en1_inferred__2/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => CLKCNT_n_16,
      DI(2) => CLKCNT_n_17,
      DI(1) => CLKCNT_n_18,
      DI(0) => CLKCNT_n_19,
      O(3 downto 0) => \NLW_clk_cnt_en1_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\cr_i[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => rxCntDone,
      I1 => sm_stop_reg_n_0,
      I2 => msms_rst_i,
      I3 => \Tx_data_exists__4\,
      I4 => \Tx_fifo_rd_i__0\,
      I5 => dynamic_MSMS(0),
      O => Msms_rst
    );
\data_i2c_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_8,
      Q => \data_i2c_i_reg[7]_0\(0),
      R => \q_int_reg[0]_0\
    );
\data_i2c_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_7,
      Q => \data_i2c_i_reg[7]_0\(1),
      R => \q_int_reg[0]_0\
    );
\data_i2c_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_6,
      Q => \data_i2c_i_reg[7]_0\(2),
      R => \q_int_reg[0]_0\
    );
\data_i2c_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_5,
      Q => \data_i2c_i_reg[7]_0\(3),
      R => \q_int_reg[0]_0\
    );
\data_i2c_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_4,
      Q => \data_i2c_i_reg[7]_0\(4),
      R => \q_int_reg[0]_0\
    );
\data_i2c_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_3,
      Q => \data_i2c_i_reg[7]_0\(5),
      R => \q_int_reg[0]_0\
    );
\data_i2c_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_2,
      Q => \data_i2c_i_reg[7]_0\(6),
      R => \q_int_reg[0]_0\
    );
\data_i2c_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => shift_reg(7),
      Q => \data_i2c_i_reg[7]_0\(7),
      R => \q_int_reg[0]_0\
    );
detect_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA8A0080"
    )
        port map (
      I0 => Q(0),
      I1 => scl_rin_d1_reg_0,
      I2 => \^sda_rin_d1\,
      I3 => scndry_out,
      I4 => detect_start,
      I5 => p_2_in_1,
      O => detect_start_i_1_n_0
    );
detect_start_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => detect_start_i_1_n_0,
      Q => detect_start,
      R => '0'
    );
detect_stop_b_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F2020000"
    )
        port map (
      I0 => \^detect_stop_b_reg_0\,
      I1 => detect_stop_b,
      I2 => \sda_rising__0\,
      I3 => scl_rin_d1_reg_0,
      I4 => Q(0),
      I5 => detect_start,
      O => detect_stop_b_i_1_n_0
    );
detect_stop_b_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => detect_stop_b_i_1_n_0,
      Q => \^detect_stop_b_reg_0\,
      R => '0'
    );
detect_stop_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F2020000"
    )
        port map (
      I0 => detect_stop_reg_n_0,
      I1 => detect_stop0,
      I2 => \sda_rising__0\,
      I3 => scl_rin_d1_reg_0,
      I4 => Q(0),
      I5 => detect_start,
      O => detect_stop_i_1_n_0
    );
detect_stop_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => msms_d1,
      I1 => msms_d2,
      O => detect_stop0
    );
detect_stop_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => detect_stop_i_1_n_0,
      Q => detect_stop_reg_n_0,
      R => '0'
    );
dtc_i_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dtc_i,
      Q => dtc_i_d1,
      R => \q_int_reg[0]_0\
    );
dtc_i_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dtc_i_d1,
      Q => dtc_i_d2,
      R => \q_int_reg[0]_0\
    );
dtc_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => BITCNT_n_1,
      Q => dtc_i,
      R => \q_int_reg[0]_0\
    );
dtre_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sr_i(0),
      Q => dtre_d1,
      R => \q_int_reg[0]_0\
    );
gen_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => msms_d2,
      I1 => msms_d1,
      I2 => detect_start,
      I3 => gen_start,
      O => gen_start_i_1_n_0
    );
gen_start_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_start_i_1_n_0,
      Q => gen_start,
      R => \q_int_reg[0]_0\
    );
gen_stop_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_stop,
      Q => gen_stop_d1,
      R => \q_int_reg[0]_0\
    );
gen_stop_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0404"
    )
        port map (
      I0 => msms_d1,
      I1 => msms_d2,
      I2 => arb_lost,
      I3 => detect_stop_reg_n_0,
      I4 => gen_stop,
      O => gen_stop_i_1_n_0
    );
gen_stop_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_stop_i_1_n_0,
      Q => gen_stop,
      R => \q_int_reg[0]_0\
    );
i2c_header_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => scl_rising_edge,
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      O => i2c_header_en0
    );
i2c_header_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => i2c_header_en0,
      Q => i2c_header_en,
      R => \q_int_reg[0]_0\
    );
master_slave_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C0A0A0"
    )
        port map (
      I0 => msms_d1,
      I1 => \^master_slave\,
      I2 => Q(0),
      I3 => arb_lost,
      I4 => \^bb\,
      O => master_slave_i_1_n_0
    );
master_slave_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => master_slave_i_1_n_0,
      Q => \^master_slave\,
      R => '0'
    );
msms_d1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => msms_d1_i_2_n_0,
      I1 => msms_rst_i,
      I2 => Q(1),
      O => msms_d10
    );
msms_d1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000400000004"
    )
        port map (
      I0 => msms_rst_i,
      I1 => msms_d1,
      I2 => txer_i_reg_n_0,
      I3 => Msms_set,
      I4 => dtc_i_d1,
      I5 => dtc_i_d2,
      O => msms_d1_i_2_n_0
    );
msms_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => msms_d10,
      Q => msms_d1,
      R => \q_int_reg[0]_0\
    );
msms_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => msms_d1,
      Q => msms_d2,
      R => \q_int_reg[0]_0\
    );
msms_rst_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CA0A00000000"
    )
        port map (
      I0 => msms_rst_i,
      I1 => arb_lost034_out,
      I2 => \^master_slave\,
      I3 => \arb_lost0__0\,
      I4 => msms_rst_i_i_4_n_0,
      I5 => Q(0),
      O => msms_rst_i_i_1_n_0
    );
msms_rst_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sda_cout_reg,
      I1 => scndry_out,
      O => arb_lost034_out
    );
msms_rst_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4200"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => scl_rising_edge,
      O => \arb_lost0__0\
    );
msms_rst_i_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_scl_state_reg_n_0_[0]\,
      O => msms_rst_i_i_4_n_0
    );
msms_rst_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => msms_rst_i_i_1_n_0,
      Q => msms_rst_i,
      R => '0'
    );
new_rcv_dta_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => Ro_prev,
      I1 => scl_falling_edge,
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      O => data_i2c_i0
    );
new_rcv_dta_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => data_i2c_i0,
      Q => \^new_rcv_dta\,
      R => \q_int_reg[0]_0\
    );
rdy_new_xmt_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222FFF22222000"
    )
        port map (
      I0 => shift_reg_ld_d1,
      I1 => \^shift_reg_ld\,
      I2 => p_2_in_1,
      I3 => Q(1),
      I4 => p_0_in_0,
      I5 => \^rdy_new_xmt_i\,
      O => rdy_new_xmt_i_i_1_n_0
    );
rdy_new_xmt_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      O => p_0_in_0
    );
rdy_new_xmt_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdy_new_xmt_i_i_1_n_0,
      Q => \^rdy_new_xmt_i\,
      R => \q_int_reg[0]_0\
    );
ro_prev_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Ro_prev,
      Q => ro_prev_d1,
      R => \q_int_reg[0]_0\
    );
rsta_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(3),
      Q => rsta_d1,
      R => \q_int_reg[0]_0\
    );
rsta_tx_under_prev_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDD00C0"
    )
        port map (
      I0 => dtre_d1,
      I1 => sr_i(0),
      I2 => Q(3),
      I3 => rsta_d1,
      I4 => rsta_tx_under_prev,
      O => rsta_tx_under_prev_i_1_n_0
    );
rsta_tx_under_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rsta_tx_under_prev_i_1_n_0,
      Q => rsta_tx_under_prev,
      R => \q_int_reg[0]_0\
    );
scl_cout_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg_n_0_[6]\,
      I1 => \FSM_onehot_scl_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_scl_state_reg_n_0_[9]\,
      I3 => \^fsm_onehot_scl_state_reg[3]_0\(0),
      I4 => scl_cout_reg_i_2_n_0,
      I5 => Ro_prev,
      O => scl_cout_reg0
    );
scl_cout_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^fsm_onehot_scl_state_reg[3]_0\(1),
      I1 => detect_stop_b,
      I2 => \FSM_onehot_scl_state_reg_n_0_[8]\,
      I3 => \FSM_onehot_scl_state_reg_n_0_[7]\,
      O => scl_cout_reg_i_2_n_0
    );
scl_cout_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_cout_reg0,
      Q => scl_cout_reg,
      S => \q_int_reg[0]_0\
    );
scl_f_edg_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_falling_edge,
      Q => scl_f_edg_d1,
      R => \q_int_reg[0]_0\
    );
scl_f_edg_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_f_edg_d1,
      Q => scl_f_edg_d2,
      R => \q_int_reg[0]_0\
    );
scl_f_edg_d3_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_f_edg_d2,
      Q => scl_f_edg_d3,
      R => \q_int_reg[0]_0\
    );
scl_falling_edge_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^scl_rin_d1\,
      I1 => scl_rin_d1_reg_0,
      O => scl_falling_edge0
    );
scl_falling_edge_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_falling_edge0,
      Q => scl_falling_edge,
      R => \q_int_reg[0]_0\
    );
scl_rin_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_rin_d1_reg_0,
      Q => \^scl_rin_d1\,
      R => '0'
    );
scl_rising_edge_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_rising_edge0,
      Q => scl_rising_edge,
      R => \q_int_reg[0]_0\
    );
sda_cout_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => Q(3),
      I1 => stop_scl_reg_i_2_n_0,
      I2 => \LEVEL_1_GEN.master_sda_reg_n_0\,
      O => sda_cout_reg_i_3_n_0
    );
sda_cout_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => CLKCNT_n_21,
      Q => sda_cout_reg,
      S => \q_int_reg[0]_0\
    );
sda_rin_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scndry_out,
      Q => \^sda_rin_d1\,
      R => '0'
    );
sda_sample_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => scndry_out,
      I1 => scl_rising_edge,
      I2 => sda_sample,
      O => sda_sample_i_1_n_0
    );
sda_sample_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sda_sample_i_1_n_0,
      Q => sda_sample,
      R => \q_int_reg[0]_0\
    );
sda_setup_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => SETUP_CNT_n_0,
      Q => sda_setup,
      R => \q_int_reg[0]_0\
    );
shift_reg_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAAAAAFFEAAAAA"
    )
        port map (
      I0 => shift_reg_en_i_2_n_0,
      I1 => \^master_slave\,
      I2 => p_2_in_1,
      I3 => p_1_in6_in,
      I4 => scl_rising_edge,
      I5 => detect_start,
      O => shift_reg_en0
    );
shift_reg_en_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => detect_start,
      I1 => scl_f_edg_d2,
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      O => shift_reg_en_i_2_n_0
    );
shift_reg_en_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      O => p_2_in_1
    );
shift_reg_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => shift_reg_en0,
      Q => shift_reg_en,
      R => \q_int_reg[0]_0\
    );
shift_reg_ld_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^shift_reg_ld\,
      Q => shift_reg_ld_d1,
      R => \q_int_reg[0]_0\
    );
shift_reg_ld_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => shift_reg_ld0,
      Q => \^shift_reg_ld\,
      R => \q_int_reg[0]_0\
    );
slave_sda_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2CDATA_REG_n_0,
      Q => slave_sda_reg_n_0,
      S => \q_int_reg[0]_0\
    );
sm_stop_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sm_stop_i_2_n_0,
      I1 => Q(0),
      I2 => detect_stop_reg_n_0,
      O => sm_stop_i_1_n_0
    );
sm_stop_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBBFFF00088000"
    )
        port map (
      I0 => \^master_slave\,
      I1 => sm_stop_i_3_n_0,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      I5 => sm_stop_reg_n_0,
      O => sm_stop_i_2_n_0
    );
sm_stop_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080008080800"
    )
        port map (
      I0 => sda_sample,
      I1 => \^master_slave\,
      I2 => arb_lost,
      I3 => scl_f_edg_d2,
      I4 => ro_prev_d1,
      I5 => Ro_prev,
      O => sm_stop_i_3_n_0
    );
sm_stop_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sm_stop_i_1_n_0,
      Q => sm_stop_reg_n_0,
      R => '0'
    );
srw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2CHEADER_REG_n_10,
      Q => \^srw_i_reg_0\(1),
      R => \q_int_reg[0]_0\
    );
stop_scl_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E00EEE0E"
    )
        port map (
      I0 => sm_stop_reg_n_0,
      I1 => gen_stop,
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      O => stop_scl_reg_i_2_n_0
    );
stop_scl_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^fsm_onehot_scl_state_reg[3]_0\(0),
      I1 => \FSM_onehot_scl_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_scl_state_reg_n_0_[9]\,
      O => stop_scl_reg_i_3_n_0
    );
stop_scl_reg_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_scl_state_reg_n_0_[6]\,
      O => stop_scl_reg_i_5_n_0
    );
stop_scl_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => CLKCNT_n_20,
      Q => stop_scl_reg,
      R => \q_int_reg[0]_0\
    );
tx_under_prev_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^tx_under_prev\,
      Q => tx_under_prev_d1,
      R => \q_int_reg[0]_0\
    );
tx_under_prev_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE0FF00"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => sr_i(0),
      I3 => tx_under_prev_i0,
      I4 => \^tx_under_prev\,
      O => tx_under_prev_i_i_1_n_0
    );
tx_under_prev_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000000000000"
    )
        port map (
      I0 => \^srw_i_reg_0\(1),
      I1 => \^aas\,
      I2 => gen_stop,
      I3 => sr_i(0),
      I4 => scl_falling_edge,
      I5 => \tx_under_prev_i4__0\,
      O => tx_under_prev_i0
    );
tx_under_prev_i_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      O => \tx_under_prev_i4__0\
    );
tx_under_prev_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_under_prev_i_i_1_n_0,
      Q => \^tx_under_prev\,
      R => \q_int_reg[0]_0\
    );
txer_edge_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E2000000E200"
    )
        port map (
      I0 => \^d\(2),
      I1 => txer_i,
      I2 => sda_sample,
      I3 => Q(0),
      I4 => scl_f_edg_d2,
      I5 => scl_falling_edge,
      O => txer_edge_i_1_n_0
    );
txer_edge_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => scl_falling_edge,
      O => txer_i
    );
txer_edge_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => txer_edge_i_1_n_0,
      Q => \^d\(2),
      R => '0'
    );
txer_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FABFFFFF0A800000"
    )
        port map (
      I0 => sda_sample,
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      I4 => scl_falling_edge,
      I5 => txer_i_reg_n_0,
      O => txer_i_i_1_n_0
    );
txer_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => txer_i_i_1_n_0,
      Q => txer_i_reg_n_0,
      R => \q_int_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  port (
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg_0 : out STD_LOGIC;
    s_axi_bvalid_i_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    is_write_reg_0 : out STD_LOGIC;
    is_read_reg_0 : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wdata[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus2IIC_WrCE : out STD_LOGIC_VECTOR ( 11 downto 0 );
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_IP2Bus_RdAck20 : out STD_LOGIC;
    AXI_IP2Bus_WrAck20 : out STD_LOGIC;
    \s_axi_wdata[31]\ : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 8 downto 0 );
    AXI_Bus2IP_Reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    AXI_IP2Bus_WrAck1 : in STD_LOGIC;
    AXI_IP2Bus_WrAck2 : in STD_LOGIC;
    AXI_IP2Bus_RdAck1 : in STD_LOGIC;
    AXI_IP2Bus_RdAck2 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \cr_i_reg[5]\ : in STD_LOGIC;
    Msms_rst : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_axi_rdata_i_reg[0]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_1\ : in STD_LOGIC;
    \s_axi_rdata_i[0]_i_2_0\ : in STD_LOGIC;
    \s_axi_rdata_i[0]_i_2_1\ : in STD_LOGIC;
    p_1_in16_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[1]_0\ : in STD_LOGIC;
    p_1_in13_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[2]_0\ : in STD_LOGIC;
    p_1_in10_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[3]_0\ : in STD_LOGIC;
    \s_axi_rdata_i[3]_i_3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Tx_addr_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i[3]_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IIC2Bus_IntrEvent : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[7]_i_4_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_axi_rdata_i[7]_i_4_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \s_axi_rdata_i[3]_i_2_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_1_in7_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]_0\ : in STD_LOGIC;
    p_1_in4_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]_0\ : in STD_LOGIC;
    p_1_in1_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]_0\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]_1\ : in STD_LOGIC;
    \s_axi_rdata_i[7]_i_4_2\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \s_axi_rdata_i[7]_i_4_3\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Rc_fifo_data : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \s_axi_rdata_i[7]_i_4_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i[7]_i_4_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Tx_fifo_data_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i[7]_i_8_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \s_axi_rdata_i[7]_i_8_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[3]_i_6_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  signal AXI_IP2Bus_Data : STD_LOGIC_VECTOR ( 24 to 31 );
  signal AXI_IP2Bus_Error : STD_LOGIC;
  signal Bus2IIC_Addr : STD_LOGIC_VECTOR ( 0 to 6 );
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal I_DECODER_n_3 : STD_LOGIC;
  signal I_DECODER_n_33 : STD_LOGIC;
  signal I_DECODER_n_34 : STD_LOGIC;
  signal I_DECODER_n_35 : STD_LOGIC;
  signal Intr2Bus_DBus : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \bus2ip_addr_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[1]\ : STD_LOGIC;
  signal bus2ip_rnw_i_reg_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal \^is_read_reg_0\ : STD_LOGIC;
  signal is_read_reg_n_0 : STD_LOGIC;
  signal is_write_i_1_n_0 : STD_LOGIC;
  signal is_write_i_2_n_0 : STD_LOGIC;
  signal \^is_write_reg_0\ : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_bresp_i : STD_LOGIC;
  signal \s_axi_bresp_i[1]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid_i_reg_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_8_n_0\ : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal \state1__2\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[1]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[2]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[4]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[5]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[6]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[7]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[8]_i_1\ : label is "soft_lutpair68";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  is_read_reg_0 <= \^is_read_reg_0\;
  is_write_reg_0 <= \^is_write_reg_0\;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid_i_reg_0 <= \^s_axi_bvalid_i_reg_0\;
  s_axi_rvalid_i_reg_0 <= \^s_axi_rvalid_i_reg_0\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF007000700070"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => s_axi_arvalid,
      I4 => \state1__2\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^is_read_reg_0\,
      I1 => s_axi_rresp_i,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444F4444444"
    )
        port map (
      I0 => \^is_write_reg_0\,
      I1 => s_axi_bresp_i,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => s_axi_arvalid,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => s_axi_bresp_i,
      I1 => \^is_write_reg_0\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \state1__2\,
      I4 => \^is_read_reg_0\,
      I5 => s_axi_rresp_i,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid_i_reg_0\,
      I2 => s_axi_bready,
      I3 => \^s_axi_bvalid_i_reg_0\,
      O => \state1__2\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => rst
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => s_axi_rresp_i,
      R => rst
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => s_axi_bresp_i,
      R => rst
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => rst
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      R => clear
    );
I_DECODER: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
     port map (
      AXI_IP2Bus_Error => AXI_IP2Bus_Error,
      AXI_IP2Bus_RdAck1 => AXI_IP2Bus_RdAck1,
      AXI_IP2Bus_RdAck2 => AXI_IP2Bus_RdAck2,
      AXI_IP2Bus_RdAck20 => AXI_IP2Bus_RdAck20,
      AXI_IP2Bus_RdAck2_reg => bus2ip_rnw_i_reg_n_0,
      AXI_IP2Bus_WrAck1 => AXI_IP2Bus_WrAck1,
      AXI_IP2Bus_WrAck2 => AXI_IP2Bus_WrAck2,
      AXI_IP2Bus_WrAck20 => AXI_IP2Bus_WrAck20,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(0),
      Bus2IIC_WrCE(11 downto 0) => Bus2IIC_WrCE(11 downto 0),
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg,
      D(8) => Intr2Bus_DBus(0),
      D(7) => AXI_IP2Bus_Data(24),
      D(6) => AXI_IP2Bus_Data(25),
      D(5) => AXI_IP2Bus_Data(26),
      D(4) => AXI_IP2Bus_Data(27),
      D(3) => AXI_IP2Bus_Data(28),
      D(2) => AXI_IP2Bus_Data(29),
      D(1) => AXI_IP2Bus_Data(30),
      D(0) => AXI_IP2Bus_Data(31),
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]_0\ => \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      Msms_rst => Msms_rst,
      Q(8) => Bus2IIC_Addr(0),
      Q(7) => Bus2IIC_Addr(1),
      Q(6 downto 4) => \^q\(2 downto 0),
      Q(3) => Bus2IIC_Addr(5),
      Q(2) => Bus2IIC_Addr(6),
      Q(1) => \bus2ip_addr_i_reg_n_0_[1]\,
      Q(0) => \bus2ip_addr_i_reg_n_0_[0]\,
      \bus2ip_addr_i_reg[2]\ => I_DECODER_n_35,
      \bus2ip_addr_i_reg[3]\ => I_DECODER_n_3,
      \bus2ip_addr_i_reg[5]\ => I_DECODER_n_33,
      \bus2ip_addr_i_reg[6]\ => I_DECODER_n_34,
      \cr_i_reg[5]\ => \cr_i_reg[5]\,
      gpo(0) => gpo(0),
      irpt_wrack => irpt_wrack,
      is_read_reg => \^is_read_reg_0\,
      is_write_reg => \^is_write_reg_0\,
      p_0_in(0) => p_0_in(0),
      p_1_in => p_1_in,
      p_1_in10_in => p_1_in10_in,
      p_1_in13_in => p_1_in13_in,
      p_1_in16_in => p_1_in16_in,
      p_1_in1_in => p_1_in1_in,
      p_1_in4_in => p_1_in4_in,
      p_1_in7_in => p_1_in7_in,
      reset_trig0 => reset_trig0,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => is_read_reg_n_0,
      s_axi_arready_0(3 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3 downto 0),
      s_axi_awready => is_write_reg_n_0,
      \s_axi_rdata_i_reg[0]\ => \s_axi_rdata_i_reg[0]_0\,
      \s_axi_rdata_i_reg[0]_0\ => \s_axi_rdata_i[0]_i_2_n_0\,
      \s_axi_rdata_i_reg[1]\ => \s_axi_rdata_i[1]_i_2_n_0\,
      \s_axi_rdata_i_reg[2]\ => \s_axi_rdata_i[2]_i_2_n_0\,
      \s_axi_rdata_i_reg[3]\ => \s_axi_rdata_i[3]_i_2_n_0\,
      \s_axi_rdata_i_reg[4]\ => \s_axi_rdata_i[4]_i_2_n_0\,
      \s_axi_rdata_i_reg[5]\ => \s_axi_rdata_i[5]_i_2_n_0\,
      \s_axi_rdata_i_reg[6]\ => \s_axi_rdata_i[6]_i_2_n_0\,
      \s_axi_rdata_i_reg[7]\(7 downto 0) => \s_axi_rdata_i_reg[7]_0\(7 downto 0),
      \s_axi_rdata_i_reg[7]_0\ => \s_axi_rdata_i[7]_i_4_n_0\,
      s_axi_wdata(4 downto 0) => s_axi_wdata(4 downto 0),
      \s_axi_wdata[2]\(0) => \s_axi_wdata[2]\(0),
      \s_axi_wdata[31]\ => \s_axi_wdata[31]\,
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      start2 => start2,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1
    );
\bus2ip_addr_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(0),
      O => \bus2ip_addr_i[0]_i_1_n_0\
    );
\bus2ip_addr_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(1),
      O => \bus2ip_addr_i[1]_i_1_n_0\
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(2),
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(3),
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(4),
      O => \bus2ip_addr_i[4]_i_1_n_0\
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(5),
      O => \bus2ip_addr_i[5]_i_1_n_0\
    );
\bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(6),
      O => \bus2ip_addr_i[6]_i_1_n_0\
    );
\bus2ip_addr_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(7),
      O => \bus2ip_addr_i[7]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(8),
      O => \bus2ip_addr_i[8]_i_1_n_0\
    );
\bus2ip_addr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[0]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[0]\,
      R => rst
    );
\bus2ip_addr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[1]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[1]\,
      R => rst
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => Bus2IIC_Addr(6),
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => Bus2IIC_Addr(5),
      R => rst
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[4]_i_1_n_0\,
      Q => \^q\(0),
      R => rst
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[5]_i_1_n_0\,
      Q => \^q\(1),
      R => rst
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[6]_i_1_n_0\,
      Q => \^q\(2),
      R => rst
    );
\bus2ip_addr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[7]_i_1_n_0\,
      Q => Bus2IIC_Addr(1),
      R => rst
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[8]_i_1_n_0\,
      Q => Bus2IIC_Addr(0),
      R => rst
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => s_axi_arvalid,
      Q => bus2ip_rnw_i_reg_n_0,
      R => rst
    );
is_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA3FAA00"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \state1__2\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => is_read_reg_n_0,
      O => is_read_i_1_n_0
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_read_i_1_n_0,
      Q => is_read_reg_n_0,
      R => rst
    );
is_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40000000"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => is_write_i_2_n_0,
      I5 => is_write_reg_n_0,
      O => is_write_i_1_n_0
    );
is_write_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8880000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid_i_reg_0\,
      I2 => s_axi_bready,
      I3 => \^s_axi_bvalid_i_reg_0\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => is_write_i_2_n_0
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_write_i_1_n_0,
      Q => is_write_reg_n_0,
      R => rst
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_Bus2IP_Reset,
      Q => rst,
      R => '0'
    );
\s_axi_bresp_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_IP2Bus_Error,
      I1 => s_axi_bresp_i,
      I2 => \^s_axi_bresp\(0),
      O => \s_axi_bresp_i[1]_i_1_n_0\
    );
\s_axi_bresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_bresp_i[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => rst
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^is_write_reg_0\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid_i_reg_0\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid_i_reg_0\,
      R => rst
    );
\s_axi_rdata_i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7520FFFF75200000"
    )
        port map (
      I0 => Bus2IIC_Addr(5),
      I1 => \^q\(2),
      I2 => \s_axi_rdata_i_reg[0]_1\,
      I3 => \s_axi_rdata_i[0]_i_4_n_0\,
      I4 => Bus2IIC_Addr(6),
      I5 => \s_axi_rdata_i[0]_i_5_n_0\,
      O => \s_axi_rdata_i[0]_i_2_n_0\
    );
\s_axi_rdata_i[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF50104000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \s_axi_rdata_i[3]_i_3_0\(0),
      I4 => Tx_addr_0(3),
      I5 => \s_axi_rdata_i[0]_i_6_n_0\,
      O => \s_axi_rdata_i[0]_i_4_n_0\
    );
\s_axi_rdata_i[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F0F0F4F4FFF0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \s_axi_rdata_i[0]_i_2_0\,
      I2 => \s_axi_rdata_i[0]_i_8_n_0\,
      I3 => \s_axi_rdata_i[0]_i_2_1\,
      I4 => Bus2IIC_Addr(5),
      I5 => \^q\(0),
      O => \s_axi_rdata_i[0]_i_5_n_0\
    );
\s_axi_rdata_i[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \s_axi_rdata_i[3]_i_2_0\(0),
      I3 => gpo(0),
      I4 => \s_axi_rdata_i[3]_i_2_1\(0),
      I5 => \^q\(0),
      O => \s_axi_rdata_i[0]_i_6_n_0\
    );
\s_axi_rdata_i[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => Bus2IIC_Addr(5),
      I1 => \s_axi_rdata_i[7]_i_4_0\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => \s_axi_rdata_i[0]_i_8_n_0\
    );
\s_axi_rdata_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \s_axi_rdata_i[1]_i_3_n_0\,
      I1 => \s_axi_rdata_i[1]_i_4_n_0\,
      I2 => \s_axi_rdata_i_reg[1]_0\,
      I3 => I_DECODER_n_34,
      I4 => \s_axi_rdata_i[1]_i_6_n_0\,
      I5 => I_DECODER_n_3,
      O => \s_axi_rdata_i[1]_i_2_n_0\
    );
\s_axi_rdata_i[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA008800A0"
    )
        port map (
      I0 => I_DECODER_n_35,
      I1 => \s_axi_rdata_i[3]_i_2_0\(1),
      I2 => IIC2Bus_IntrEvent(0),
      I3 => I_DECODER_n_33,
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i[1]_i_7_n_0\,
      O => \s_axi_rdata_i[1]_i_3_n_0\
    );
\s_axi_rdata_i[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2228202A0208000"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_13_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \s_axi_rdata_i[7]_i_4_2\(0),
      I4 => \s_axi_rdata_i[7]_i_4_3\(0),
      I5 => Rc_fifo_data(0),
      O => \s_axi_rdata_i[1]_i_4_n_0\
    );
\s_axi_rdata_i[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF50104000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \s_axi_rdata_i[7]_i_4_0\(1),
      I4 => \s_axi_rdata_i[7]_i_4_1\(0),
      I5 => \s_axi_rdata_i[1]_i_8_n_0\,
      O => \s_axi_rdata_i[1]_i_6_n_0\
    );
\s_axi_rdata_i[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AC00"
    )
        port map (
      I0 => \s_axi_rdata_i[3]_i_3_0\(1),
      I1 => Tx_addr_0(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \s_axi_rdata_i[1]_i_7_n_0\
    );
\s_axi_rdata_i[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \s_axi_rdata_i[7]_i_8_0\(0),
      I3 => \s_axi_rdata_i[3]_i_6_0\(0),
      I4 => \s_axi_rdata_i[7]_i_8_1\(0),
      I5 => \^q\(0),
      O => \s_axi_rdata_i[1]_i_8_n_0\
    );
\s_axi_rdata_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \s_axi_rdata_i[2]_i_3_n_0\,
      I1 => \s_axi_rdata_i[2]_i_4_n_0\,
      I2 => \s_axi_rdata_i_reg[2]_0\,
      I3 => I_DECODER_n_34,
      I4 => \s_axi_rdata_i[2]_i_6_n_0\,
      I5 => I_DECODER_n_3,
      O => \s_axi_rdata_i[2]_i_2_n_0\
    );
\s_axi_rdata_i[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA008800A0"
    )
        port map (
      I0 => I_DECODER_n_35,
      I1 => \s_axi_rdata_i[3]_i_2_0\(2),
      I2 => \s_axi_rdata_i[3]_i_2_1\(1),
      I3 => I_DECODER_n_33,
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i[2]_i_7_n_0\,
      O => \s_axi_rdata_i[2]_i_3_n_0\
    );
\s_axi_rdata_i[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2228202A0208000"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_13_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \s_axi_rdata_i[7]_i_4_2\(1),
      I4 => \s_axi_rdata_i[7]_i_4_3\(1),
      I5 => Rc_fifo_data(1),
      O => \s_axi_rdata_i[2]_i_4_n_0\
    );
\s_axi_rdata_i[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF50104000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \s_axi_rdata_i[7]_i_4_0\(2),
      I4 => \s_axi_rdata_i[7]_i_4_1\(1),
      I5 => \s_axi_rdata_i[2]_i_8_n_0\,
      O => \s_axi_rdata_i[2]_i_6_n_0\
    );
\s_axi_rdata_i[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AC00"
    )
        port map (
      I0 => \s_axi_rdata_i[3]_i_3_0\(2),
      I1 => Tx_addr_0(1),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \s_axi_rdata_i[2]_i_7_n_0\
    );
\s_axi_rdata_i[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \s_axi_rdata_i[7]_i_8_0\(1),
      I3 => \s_axi_rdata_i[3]_i_6_0\(1),
      I4 => \s_axi_rdata_i[7]_i_8_1\(1),
      I5 => \^q\(0),
      O => \s_axi_rdata_i[2]_i_8_n_0\
    );
\s_axi_rdata_i[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \s_axi_rdata_i[3]_i_3_n_0\,
      I1 => \s_axi_rdata_i[3]_i_4_n_0\,
      I2 => \s_axi_rdata_i_reg[3]_0\,
      I3 => I_DECODER_n_34,
      I4 => \s_axi_rdata_i[3]_i_6_n_0\,
      I5 => I_DECODER_n_3,
      O => \s_axi_rdata_i[3]_i_2_n_0\
    );
\s_axi_rdata_i[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA008800A0"
    )
        port map (
      I0 => I_DECODER_n_35,
      I1 => \s_axi_rdata_i[3]_i_2_0\(3),
      I2 => \s_axi_rdata_i[3]_i_2_1\(2),
      I3 => I_DECODER_n_33,
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i[3]_i_7_n_0\,
      O => \s_axi_rdata_i[3]_i_3_n_0\
    );
\s_axi_rdata_i[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2228202A0208000"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_13_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \s_axi_rdata_i[7]_i_4_2\(2),
      I4 => \s_axi_rdata_i[7]_i_4_3\(2),
      I5 => Rc_fifo_data(2),
      O => \s_axi_rdata_i[3]_i_4_n_0\
    );
\s_axi_rdata_i[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF50104000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \s_axi_rdata_i[7]_i_4_0\(3),
      I4 => \s_axi_rdata_i[7]_i_4_1\(2),
      I5 => \s_axi_rdata_i[3]_i_8_n_0\,
      O => \s_axi_rdata_i[3]_i_6_n_0\
    );
\s_axi_rdata_i[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AC00"
    )
        port map (
      I0 => \s_axi_rdata_i[3]_i_3_0\(3),
      I1 => Tx_addr_0(0),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \s_axi_rdata_i[3]_i_7_n_0\
    );
\s_axi_rdata_i[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \s_axi_rdata_i[7]_i_8_0\(2),
      I3 => \s_axi_rdata_i[3]_i_6_0\(2),
      I4 => \s_axi_rdata_i[7]_i_8_1\(2),
      I5 => \^q\(0),
      O => \s_axi_rdata_i[3]_i_8_n_0\
    );
\s_axi_rdata_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEEFEEEEFEEEE"
    )
        port map (
      I0 => \s_axi_rdata_i[4]_i_3_n_0\,
      I1 => \s_axi_rdata_i[4]_i_4_n_0\,
      I2 => Bus2IIC_Addr(6),
      I3 => Bus2IIC_Addr(5),
      I4 => \s_axi_rdata_i[4]_i_5_n_0\,
      I5 => \s_axi_rdata_i_reg[4]_0\,
      O => \s_axi_rdata_i[4]_i_2_n_0\
    );
\s_axi_rdata_i[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2228202A0208000"
    )
        port map (
      I0 => I_DECODER_n_34,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \s_axi_rdata_i[7]_i_4_4\(0),
      I4 => \s_axi_rdata_i[7]_i_4_5\(0),
      I5 => Tx_fifo_data_0(0),
      O => \s_axi_rdata_i[4]_i_3_n_0\
    );
\s_axi_rdata_i[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2228202A0208000"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_13_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \s_axi_rdata_i[7]_i_4_2\(3),
      I4 => \s_axi_rdata_i[7]_i_4_3\(3),
      I5 => Rc_fifo_data(3),
      O => \s_axi_rdata_i[4]_i_4_n_0\
    );
\s_axi_rdata_i[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF44400400"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \s_axi_rdata_i[7]_i_4_1\(3),
      I4 => \s_axi_rdata_i[7]_i_4_0\(4),
      I5 => \s_axi_rdata_i[4]_i_7_n_0\,
      O => \s_axi_rdata_i[4]_i_5_n_0\
    );
\s_axi_rdata_i[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_8_0\(3),
      I1 => \s_axi_rdata_i[7]_i_8_1\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \s_axi_rdata_i[4]_i_7_n_0\
    );
\s_axi_rdata_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEEFEEEEFEEEE"
    )
        port map (
      I0 => \s_axi_rdata_i[5]_i_3_n_0\,
      I1 => \s_axi_rdata_i[5]_i_4_n_0\,
      I2 => Bus2IIC_Addr(6),
      I3 => Bus2IIC_Addr(5),
      I4 => \s_axi_rdata_i[5]_i_5_n_0\,
      I5 => \s_axi_rdata_i_reg[5]_0\,
      O => \s_axi_rdata_i[5]_i_2_n_0\
    );
\s_axi_rdata_i[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2228202A0208000"
    )
        port map (
      I0 => I_DECODER_n_34,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \s_axi_rdata_i[7]_i_4_4\(1),
      I4 => \s_axi_rdata_i[7]_i_4_5\(1),
      I5 => Tx_fifo_data_0(1),
      O => \s_axi_rdata_i[5]_i_3_n_0\
    );
\s_axi_rdata_i[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2228202A0208000"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_13_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \s_axi_rdata_i[7]_i_4_2\(4),
      I4 => \s_axi_rdata_i[7]_i_4_3\(4),
      I5 => Rc_fifo_data(4),
      O => \s_axi_rdata_i[5]_i_4_n_0\
    );
\s_axi_rdata_i[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF44400400"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \s_axi_rdata_i[7]_i_4_1\(4),
      I4 => \s_axi_rdata_i[7]_i_4_0\(5),
      I5 => \s_axi_rdata_i[5]_i_7_n_0\,
      O => \s_axi_rdata_i[5]_i_5_n_0\
    );
\s_axi_rdata_i[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_8_0\(4),
      I1 => \s_axi_rdata_i[7]_i_8_1\(4),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \s_axi_rdata_i[5]_i_7_n_0\
    );
\s_axi_rdata_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEEFEEEEFEEEE"
    )
        port map (
      I0 => \s_axi_rdata_i[6]_i_3_n_0\,
      I1 => \s_axi_rdata_i[6]_i_4_n_0\,
      I2 => Bus2IIC_Addr(6),
      I3 => Bus2IIC_Addr(5),
      I4 => \s_axi_rdata_i[6]_i_5_n_0\,
      I5 => \s_axi_rdata_i_reg[6]_0\,
      O => \s_axi_rdata_i[6]_i_2_n_0\
    );
\s_axi_rdata_i[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2228202A0208000"
    )
        port map (
      I0 => I_DECODER_n_34,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \s_axi_rdata_i[7]_i_4_4\(2),
      I4 => \s_axi_rdata_i[7]_i_4_5\(2),
      I5 => Tx_fifo_data_0(2),
      O => \s_axi_rdata_i[6]_i_3_n_0\
    );
\s_axi_rdata_i[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2228202A0208000"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_13_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \s_axi_rdata_i[7]_i_4_2\(5),
      I4 => \s_axi_rdata_i[7]_i_4_3\(5),
      I5 => Rc_fifo_data(5),
      O => \s_axi_rdata_i[6]_i_4_n_0\
    );
\s_axi_rdata_i[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF44400400"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \s_axi_rdata_i[7]_i_4_1\(5),
      I4 => \s_axi_rdata_i[7]_i_4_0\(6),
      I5 => \s_axi_rdata_i[6]_i_7_n_0\,
      O => \s_axi_rdata_i[6]_i_5_n_0\
    );
\s_axi_rdata_i[6]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_8_0\(5),
      I1 => \s_axi_rdata_i[7]_i_8_1\(5),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \s_axi_rdata_i[6]_i_7_n_0\
    );
\s_axi_rdata_i[7]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(2),
      I1 => Bus2IIC_Addr(5),
      I2 => Bus2IIC_Addr(6),
      O => \s_axi_rdata_i[7]_i_13_n_0\
    );
\s_axi_rdata_i[7]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_8_0\(6),
      I1 => \s_axi_rdata_i[7]_i_8_1\(6),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \s_axi_rdata_i[7]_i_14_n_0\
    );
\s_axi_rdata_i[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEEFEEEEFEEEE"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_6_n_0\,
      I1 => \s_axi_rdata_i[7]_i_7_n_0\,
      I2 => Bus2IIC_Addr(6),
      I3 => Bus2IIC_Addr(5),
      I4 => \s_axi_rdata_i[7]_i_8_n_0\,
      I5 => \s_axi_rdata_i_reg[7]_1\,
      O => \s_axi_rdata_i[7]_i_4_n_0\
    );
\s_axi_rdata_i[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2228202A0208000"
    )
        port map (
      I0 => I_DECODER_n_34,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \s_axi_rdata_i[7]_i_4_4\(3),
      I4 => \s_axi_rdata_i[7]_i_4_5\(3),
      I5 => Tx_fifo_data_0(3),
      O => \s_axi_rdata_i[7]_i_6_n_0\
    );
\s_axi_rdata_i[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2228202A0208000"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_13_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \s_axi_rdata_i[7]_i_4_2\(6),
      I4 => \s_axi_rdata_i[7]_i_4_3\(6),
      I5 => Rc_fifo_data(6),
      O => \s_axi_rdata_i[7]_i_7_n_0\
    );
\s_axi_rdata_i[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF44400400"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \s_axi_rdata_i[7]_i_4_1\(6),
      I4 => \s_axi_rdata_i[7]_i_4_0\(7),
      I5 => \s_axi_rdata_i[7]_i_14_n_0\,
      O => \s_axi_rdata_i[7]_i_8_n_0\
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => AXI_IP2Bus_Data(31),
      Q => s_axi_rdata(0),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => AXI_IP2Bus_Data(30),
      Q => s_axi_rdata(1),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => AXI_IP2Bus_Data(29),
      Q => s_axi_rdata(2),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => Intr2Bus_DBus(0),
      Q => s_axi_rdata(8),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => AXI_IP2Bus_Data(28),
      Q => s_axi_rdata(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => AXI_IP2Bus_Data(27),
      Q => s_axi_rdata(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => AXI_IP2Bus_Data(26),
      Q => s_axi_rdata(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => AXI_IP2Bus_Data(25),
      Q => s_axi_rdata(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => AXI_IP2Bus_Data(24),
      Q => s_axi_rdata(7),
      R => rst
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => AXI_IP2Bus_Error,
      Q => s_axi_rresp(0),
      R => rst
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^is_read_reg_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid_i_reg_0\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid_i_reg_0\,
      R => rst
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => rst
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F3FAFA0"
    )
        port map (
      I0 => \^is_write_reg_0\,
      I1 => \state1__2\,
      I2 => \state_reg_n_0_[1]\,
      I3 => s_axi_arvalid,
      I4 => \state_reg_n_0_[0]\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFFFF220F00FF22"
    )
        port map (
      I0 => p_5_in,
      I1 => s_axi_arvalid,
      I2 => \state1__2\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \^is_read_reg_0\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      O => p_5_in
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
  port (
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ : out STD_LOGIC;
    p_26_in : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    is_write_reg : out STD_LOGIC;
    is_read_reg : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wdata[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus2IIC_WrCE : out STD_LOGIC_VECTOR ( 11 downto 0 );
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_IP2Bus_RdAck20 : out STD_LOGIC;
    AXI_IP2Bus_WrAck20 : out STD_LOGIC;
    \s_axi_wdata[31]\ : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 8 downto 0 );
    AXI_Bus2IP_Reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    AXI_IP2Bus_WrAck1 : in STD_LOGIC;
    AXI_IP2Bus_WrAck2 : in STD_LOGIC;
    AXI_IP2Bus_RdAck1 : in STD_LOGIC;
    AXI_IP2Bus_RdAck2 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \cr_i_reg[5]\ : in STD_LOGIC;
    Msms_rst : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_axi_rdata_i_reg[0]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_0\ : in STD_LOGIC;
    \s_axi_rdata_i[0]_i_2\ : in STD_LOGIC;
    \s_axi_rdata_i[0]_i_2_0\ : in STD_LOGIC;
    p_1_in16_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[1]\ : in STD_LOGIC;
    p_1_in13_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[2]\ : in STD_LOGIC;
    p_1_in10_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[3]\ : in STD_LOGIC;
    \s_axi_rdata_i[3]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Tx_addr_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i[3]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IIC2Bus_IntrEvent : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[7]_i_4\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_axi_rdata_i[7]_i_4_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \s_axi_rdata_i[3]_i_2_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_1_in7_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]\ : in STD_LOGIC;
    p_1_in4_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]\ : in STD_LOGIC;
    p_1_in1_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]_0\ : in STD_LOGIC;
    \s_axi_rdata_i[7]_i_4_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \s_axi_rdata_i[7]_i_4_2\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Rc_fifo_data : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \s_axi_rdata_i[7]_i_4_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i[7]_i_4_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Tx_fifo_data_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i[7]_i_8\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \s_axi_rdata_i[7]_i_8_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[3]_i_6\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
begin
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
I_SLAVE_ATTACHMENT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
     port map (
      AXI_Bus2IP_Reset => AXI_Bus2IP_Reset,
      AXI_IP2Bus_RdAck1 => AXI_IP2Bus_RdAck1,
      AXI_IP2Bus_RdAck2 => AXI_IP2Bus_RdAck2,
      AXI_IP2Bus_RdAck20 => AXI_IP2Bus_RdAck20,
      AXI_IP2Bus_WrAck1 => AXI_IP2Bus_WrAck1,
      AXI_IP2Bus_WrAck2 => AXI_IP2Bus_WrAck2,
      AXI_IP2Bus_WrAck20 => AXI_IP2Bus_WrAck20,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(0),
      Bus2IIC_WrCE(11 downto 0) => Bus2IIC_WrCE(11 downto 0),
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ => \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ => p_26_in,
      IIC2Bus_IntrEvent(0) => IIC2Bus_IntrEvent(0),
      Msms_rst => Msms_rst,
      Q(2 downto 0) => Q(2 downto 0),
      Rc_fifo_data(6 downto 0) => Rc_fifo_data(6 downto 0),
      Tx_addr_0(3 downto 0) => Tx_addr_0(3 downto 0),
      Tx_fifo_data_0(3 downto 0) => Tx_fifo_data_0(3 downto 0),
      \cr_i_reg[5]\ => \cr_i_reg[5]\,
      gpo(0) => gpo(0),
      irpt_wrack => irpt_wrack,
      is_read_reg_0 => is_read_reg,
      is_write_reg_0 => is_write_reg,
      p_0_in(0) => p_0_in(0),
      p_1_in => p_1_in,
      p_1_in10_in => p_1_in10_in,
      p_1_in13_in => p_1_in13_in,
      p_1_in16_in => p_1_in16_in,
      p_1_in1_in => p_1_in1_in,
      p_1_in4_in => p_1_in4_in,
      p_1_in7_in => p_1_in7_in,
      reset_trig0 => reset_trig0,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid_i_reg_0 => s_axi_bvalid_i_reg,
      s_axi_rdata(8 downto 0) => s_axi_rdata(8 downto 0),
      \s_axi_rdata_i[0]_i_2_0\ => \s_axi_rdata_i[0]_i_2\,
      \s_axi_rdata_i[0]_i_2_1\ => \s_axi_rdata_i[0]_i_2_0\,
      \s_axi_rdata_i[3]_i_2_0\(3 downto 0) => \s_axi_rdata_i[3]_i_2\(3 downto 0),
      \s_axi_rdata_i[3]_i_2_1\(2 downto 0) => \s_axi_rdata_i[3]_i_2_0\(2 downto 0),
      \s_axi_rdata_i[3]_i_3_0\(3 downto 0) => \s_axi_rdata_i[3]_i_3\(3 downto 0),
      \s_axi_rdata_i[3]_i_6_0\(2 downto 0) => \s_axi_rdata_i[3]_i_6\(2 downto 0),
      \s_axi_rdata_i[7]_i_4_0\(7 downto 0) => \s_axi_rdata_i[7]_i_4\(7 downto 0),
      \s_axi_rdata_i[7]_i_4_1\(6 downto 0) => \s_axi_rdata_i[7]_i_4_0\(6 downto 0),
      \s_axi_rdata_i[7]_i_4_2\(6 downto 0) => \s_axi_rdata_i[7]_i_4_1\(6 downto 0),
      \s_axi_rdata_i[7]_i_4_3\(6 downto 0) => \s_axi_rdata_i[7]_i_4_2\(6 downto 0),
      \s_axi_rdata_i[7]_i_4_4\(3 downto 0) => \s_axi_rdata_i[7]_i_4_3\(3 downto 0),
      \s_axi_rdata_i[7]_i_4_5\(3 downto 0) => \s_axi_rdata_i[7]_i_4_4\(3 downto 0),
      \s_axi_rdata_i[7]_i_8_0\(6 downto 0) => \s_axi_rdata_i[7]_i_8\(6 downto 0),
      \s_axi_rdata_i[7]_i_8_1\(6 downto 0) => \s_axi_rdata_i[7]_i_8_0\(6 downto 0),
      \s_axi_rdata_i_reg[0]_0\ => \s_axi_rdata_i_reg[0]\,
      \s_axi_rdata_i_reg[0]_1\ => \s_axi_rdata_i_reg[0]_0\,
      \s_axi_rdata_i_reg[1]_0\ => \s_axi_rdata_i_reg[1]\,
      \s_axi_rdata_i_reg[2]_0\ => \s_axi_rdata_i_reg[2]\,
      \s_axi_rdata_i_reg[3]_0\ => \s_axi_rdata_i_reg[3]\,
      \s_axi_rdata_i_reg[4]_0\ => \s_axi_rdata_i_reg[4]\,
      \s_axi_rdata_i_reg[5]_0\ => \s_axi_rdata_i_reg[5]\,
      \s_axi_rdata_i_reg[6]_0\ => \s_axi_rdata_i_reg[6]\,
      \s_axi_rdata_i_reg[7]_0\(7 downto 0) => \s_axi_rdata_i_reg[7]\(7 downto 0),
      \s_axi_rdata_i_reg[7]_1\ => \s_axi_rdata_i_reg[7]_0\,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid_i_reg_0 => s_axi_rvalid_i_reg,
      s_axi_wdata(4 downto 0) => s_axi_wdata(4 downto 0),
      \s_axi_wdata[2]\(0) => \s_axi_wdata[2]\(0),
      \s_axi_wdata[31]\ => \s_axi_wdata[31]\,
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      s_axi_wvalid => s_axi_wvalid,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_filter is
  port (
    \sda_rising__0\ : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    scl_rising_edge0 : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : out STD_LOGIC;
    sda_rin_d1 : in STD_LOGIC;
    scl_rin_d1 : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    sda_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_filter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_filter is
begin
SCL_DEBOUNCE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce
     port map (
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      s_axi_aclk => s_axi_aclk,
      scl_i => scl_i,
      scl_rin_d1 => scl_rin_d1,
      scl_rising_edge0 => scl_rising_edge0
    );
SDA_DEBOUNCE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_3
     port map (
      s_axi_aclk => s_axi_aclk,
      scndry_out => scndry_out,
      sda_i => sda_i,
      sda_rin_d1 => sda_rin_d1,
      \sda_rising__0\ => \sda_rising__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ipif_ssp1 is
  port (
    p_17_in : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus2IIC_Reset : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    is_write_reg : out STD_LOGIC;
    is_read_reg : out STD_LOGIC;
    \s_axi_wdata[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus2IIC_WrCE : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ctrlFifoDin : out STD_LOGIC_VECTOR ( 0 to 1 );
    iic2intc_irpt : out STD_LOGIC;
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 10 downto 0 );
    IIC2Bus_IntrEvent : in STD_LOGIC_VECTOR ( 0 to 7 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \cr_i_reg[5]\ : in STD_LOGIC;
    Msms_rst : in STD_LOGIC;
    Tx_fifo_rst : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]\ : in STD_LOGIC;
    \s_axi_rdata_i[0]_i_2\ : in STD_LOGIC;
    \s_axi_rdata_i[0]_i_2_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[1]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[2]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[3]\ : in STD_LOGIC;
    \s_axi_rdata_i[3]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Tx_addr_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i[3]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i[7]_i_4\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_axi_rdata_i[7]_i_4_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \s_axi_rdata_i[3]_i_2_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axi_rdata_i_reg[4]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]\ : in STD_LOGIC;
    \s_axi_rdata_i[7]_i_4_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \s_axi_rdata_i[7]_i_4_2\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Rc_fifo_data : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \s_axi_rdata_i[7]_i_4_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i[7]_i_4_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Tx_fifo_data_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i[7]_i_8\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \s_axi_rdata_i[7]_i_8_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[3]_i_6\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ipif_ssp1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ipif_ssp1 is
  signal AXI_Bus2IP_Reset : STD_LOGIC;
  signal AXI_Bus2IP_WrCE : STD_LOGIC_VECTOR ( 10 to 10 );
  signal AXI_IP2Bus_RdAck1 : STD_LOGIC;
  signal AXI_IP2Bus_RdAck2 : STD_LOGIC;
  signal AXI_IP2Bus_RdAck20 : STD_LOGIC;
  signal AXI_IP2Bus_WrAck1 : STD_LOGIC;
  signal AXI_IP2Bus_WrAck2 : STD_LOGIC;
  signal AXI_IP2Bus_WrAck20 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_31 : STD_LOGIC;
  signal \^bus2iic_reset\ : STD_LOGIC;
  signal \^bus_rnw_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_26_in\ : STD_LOGIC;
  signal X_INTERRUPT_CONTROL_n_0 : STD_LOGIC;
  signal X_INTERRUPT_CONTROL_n_17 : STD_LOGIC;
  signal irpt_wrack : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 to 31 );
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in11_in : STD_LOGIC;
  signal p_0_in14_in : STD_LOGIC;
  signal p_0_in17_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in10_in : STD_LOGIC;
  signal p_1_in13_in : STD_LOGIC;
  signal p_1_in16_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal p_1_in4_in : STD_LOGIC;
  signal p_1_in7_in : STD_LOGIC;
  signal reset_trig0 : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal sw_rst_cond : STD_LOGIC;
  signal sw_rst_cond_d1 : STD_LOGIC;
begin
  Bus2IIC_Reset <= \^bus2iic_reset\;
  Bus_RNW_reg <= \^bus_rnw_reg\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
AXI_IP2Bus_RdAck1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_IP2Bus_RdAck2,
      Q => AXI_IP2Bus_RdAck1,
      R => '0'
    );
AXI_IP2Bus_RdAck2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_IP2Bus_RdAck20,
      Q => AXI_IP2Bus_RdAck2,
      R => '0'
    );
AXI_IP2Bus_WrAck1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_IP2Bus_WrAck2,
      Q => AXI_IP2Bus_WrAck1,
      R => '0'
    );
AXI_IP2Bus_WrAck2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_IP2Bus_WrAck20,
      Q => AXI_IP2Bus_WrAck2,
      R => '0'
    );
AXI_LITE_IPIF_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
     port map (
      AXI_Bus2IP_Reset => AXI_Bus2IP_Reset,
      AXI_IP2Bus_RdAck1 => AXI_IP2Bus_RdAck1,
      AXI_IP2Bus_RdAck2 => AXI_IP2Bus_RdAck2,
      AXI_IP2Bus_RdAck20 => AXI_IP2Bus_RdAck20,
      AXI_IP2Bus_WrAck1 => AXI_IP2Bus_WrAck1,
      AXI_IP2Bus_WrAck2 => AXI_IP2Bus_WrAck2,
      AXI_IP2Bus_WrAck20 => AXI_IP2Bus_WrAck20,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(0),
      Bus2IIC_WrCE(11 downto 0) => Bus2IIC_WrCE(11 downto 0),
      Bus_RNW_reg_reg => \^bus_rnw_reg\,
      E(0) => AXI_Bus2IP_WrCE(10),
      \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ => p_17_in,
      IIC2Bus_IntrEvent(0) => IIC2Bus_IntrEvent(5),
      Msms_rst => Msms_rst,
      Q(2 downto 0) => Q(2 downto 0),
      Rc_fifo_data(6 downto 0) => Rc_fifo_data(6 downto 0),
      Tx_addr_0(3 downto 0) => Tx_addr_0(3 downto 0),
      Tx_fifo_data_0(3 downto 0) => Tx_fifo_data_0(3 downto 0),
      \cr_i_reg[5]\ => \cr_i_reg[5]\,
      gpo(0) => gpo(0),
      irpt_wrack => irpt_wrack,
      is_read_reg => is_read_reg,
      is_write_reg => is_write_reg,
      p_0_in(0) => p_0_in(31),
      p_1_in => p_1_in,
      p_1_in10_in => p_1_in10_in,
      p_1_in13_in => p_1_in13_in,
      p_1_in16_in => p_1_in16_in,
      p_1_in1_in => p_1_in1_in,
      p_1_in4_in => p_1_in4_in,
      p_1_in7_in => p_1_in7_in,
      p_26_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_26_in\,
      reset_trig0 => reset_trig0,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid_i_reg => s_axi_bvalid_i_reg,
      s_axi_rdata(8 downto 0) => s_axi_rdata(8 downto 0),
      \s_axi_rdata_i[0]_i_2\ => \s_axi_rdata_i[0]_i_2\,
      \s_axi_rdata_i[0]_i_2_0\ => \s_axi_rdata_i[0]_i_2_0\,
      \s_axi_rdata_i[3]_i_2\(3 downto 0) => \s_axi_rdata_i[3]_i_2\(3 downto 0),
      \s_axi_rdata_i[3]_i_2_0\(2 downto 0) => \s_axi_rdata_i[3]_i_2_0\(2 downto 0),
      \s_axi_rdata_i[3]_i_3\(3 downto 0) => \s_axi_rdata_i[3]_i_3\(3 downto 0),
      \s_axi_rdata_i[3]_i_6\(2 downto 0) => \s_axi_rdata_i[3]_i_6\(2 downto 0),
      \s_axi_rdata_i[7]_i_4\(7 downto 0) => \s_axi_rdata_i[7]_i_4\(7 downto 0),
      \s_axi_rdata_i[7]_i_4_0\(6 downto 0) => \s_axi_rdata_i[7]_i_4_0\(6 downto 0),
      \s_axi_rdata_i[7]_i_4_1\(6 downto 0) => \s_axi_rdata_i[7]_i_4_1\(6 downto 0),
      \s_axi_rdata_i[7]_i_4_2\(6 downto 0) => \s_axi_rdata_i[7]_i_4_2\(6 downto 0),
      \s_axi_rdata_i[7]_i_4_3\(3 downto 0) => \s_axi_rdata_i[7]_i_4_3\(3 downto 0),
      \s_axi_rdata_i[7]_i_4_4\(3 downto 0) => \s_axi_rdata_i[7]_i_4_4\(3 downto 0),
      \s_axi_rdata_i[7]_i_8\(6 downto 0) => \s_axi_rdata_i[7]_i_8\(6 downto 0),
      \s_axi_rdata_i[7]_i_8_0\(6 downto 0) => \s_axi_rdata_i[7]_i_8_0\(6 downto 0),
      \s_axi_rdata_i_reg[0]\ => X_INTERRUPT_CONTROL_n_0,
      \s_axi_rdata_i_reg[0]_0\ => \s_axi_rdata_i_reg[0]\,
      \s_axi_rdata_i_reg[1]\ => \s_axi_rdata_i_reg[1]\,
      \s_axi_rdata_i_reg[2]\ => \s_axi_rdata_i_reg[2]\,
      \s_axi_rdata_i_reg[3]\ => \s_axi_rdata_i_reg[3]\,
      \s_axi_rdata_i_reg[4]\ => \s_axi_rdata_i_reg[4]\,
      \s_axi_rdata_i_reg[5]\ => \s_axi_rdata_i_reg[5]\,
      \s_axi_rdata_i_reg[6]\ => \s_axi_rdata_i_reg[6]\,
      \s_axi_rdata_i_reg[7]\(7) => p_0_in17_in,
      \s_axi_rdata_i_reg[7]\(6) => p_0_in14_in,
      \s_axi_rdata_i_reg[7]\(5) => p_0_in11_in,
      \s_axi_rdata_i_reg[7]\(4) => p_0_in8_in,
      \s_axi_rdata_i_reg[7]\(3) => p_0_in5_in,
      \s_axi_rdata_i_reg[7]\(2) => p_0_in2_in,
      \s_axi_rdata_i_reg[7]\(1) => p_0_in0_in,
      \s_axi_rdata_i_reg[7]\(0) => X_INTERRUPT_CONTROL_n_17,
      \s_axi_rdata_i_reg[7]_0\ => \s_axi_rdata_i_reg[7]\,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid_i_reg => s_axi_rvalid_i_reg,
      s_axi_wdata(4) => s_axi_wdata(10),
      s_axi_wdata(3 downto 0) => s_axi_wdata(3 downto 0),
      \s_axi_wdata[2]\(0) => \s_axi_wdata[2]\(0),
      \s_axi_wdata[31]\ => AXI_LITE_IPIF_I_n_31,
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      s_axi_wvalid => s_axi_wvalid,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1
    );
X_INTERRUPT_CONTROL: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interrupt_control
     port map (
      E(0) => AXI_Bus2IP_WrCE(10),
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => X_INTERRUPT_CONTROL_n_0,
      \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\ => \^bus_rnw_reg\,
      IIC2Bus_IntrEvent(0 to 7) => IIC2Bus_IntrEvent(0 to 7),
      Q(7) => p_0_in17_in,
      Q(6) => p_0_in14_in,
      Q(5) => p_0_in11_in,
      Q(4) => p_0_in8_in,
      Q(3) => p_0_in5_in,
      Q(2) => p_0_in2_in,
      Q(1) => p_0_in0_in,
      Q(0) => X_INTERRUPT_CONTROL_n_17,
      SR(0) => \^bus2iic_reset\,
      iic2intc_irpt => iic2intc_irpt,
      ipif_glbl_irpt_enable_reg_reg_0 => AXI_LITE_IPIF_I_n_31,
      irpt_wrack => irpt_wrack,
      p_0_in(0) => p_0_in(31),
      p_1_in => p_1_in,
      p_1_in10_in => p_1_in10_in,
      p_1_in13_in => p_1_in13_in,
      p_1_in16_in => p_1_in16_in,
      p_1_in1_in => p_1_in1_in,
      p_1_in4_in => p_1_in4_in,
      p_1_in7_in => p_1_in7_in,
      p_26_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_26_in\,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0)
    );
X_SOFT_RESET: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_soft_reset
     port map (
      AXI_Bus2IP_Reset => AXI_Bus2IP_Reset,
      SR(0) => \^bus2iic_reset\,
      Tx_fifo_rst => Tx_fifo_rst,
      ctrlFifoDin(0 to 1) => ctrlFifoDin(0 to 1),
      reset_trig0 => reset_trig0,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(1 downto 0) => s_axi_wdata(9 downto 8),
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iic is
  port (
    sda_t : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    is_write_reg : out STD_LOGIC;
    is_read_reg : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iic is
  signal \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_17_in\ : STD_LOGIC;
  signal Aas : STD_LOGIC;
  signal Abgc : STD_LOGIC;
  signal Al : STD_LOGIC;
  signal Bb : STD_LOGIC;
  signal Bus2IIC_Addr : STD_LOGIC_VECTOR ( 2 to 4 );
  signal Bus2IIC_RdCE : STD_LOGIC_VECTOR ( 3 to 3 );
  signal Bus2IIC_Reset : STD_LOGIC;
  signal Bus2IIC_WrCE : STD_LOGIC_VECTOR ( 0 to 17 );
  signal CI : STD_LOGIC;
  signal \CLKCNT/q_int_reg\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal Cr : STD_LOGIC_VECTOR ( 0 to 7 );
  signal D : STD_LOGIC;
  signal DYN_MASTER_I_n_3 : STD_LOGIC;
  signal DYN_MASTER_I_n_4 : STD_LOGIC;
  signal Data_i2c : STD_LOGIC_VECTOR ( 0 to 7 );
  signal IIC2Bus_IntrEvent : STD_LOGIC_VECTOR ( 0 to 7 );
  signal IIC_CONTROL_I_n_10 : STD_LOGIC;
  signal IIC_CONTROL_I_n_11 : STD_LOGIC;
  signal IIC_CONTROL_I_n_20 : STD_LOGIC;
  signal IIC_CONTROL_I_n_29 : STD_LOGIC;
  signal IIC_CONTROL_I_n_30 : STD_LOGIC;
  signal IIC_CONTROL_I_n_36 : STD_LOGIC;
  signal Msms_rst : STD_LOGIC;
  signal Msms_set : STD_LOGIC;
  signal New_rcv_dta : STD_LOGIC;
  signal READ_FIFO_I_n_14 : STD_LOGIC;
  signal REG_INTERFACE_I_n_106 : STD_LOGIC;
  signal REG_INTERFACE_I_n_107 : STD_LOGIC;
  signal REG_INTERFACE_I_n_108 : STD_LOGIC;
  signal REG_INTERFACE_I_n_109 : STD_LOGIC;
  signal REG_INTERFACE_I_n_118 : STD_LOGIC;
  signal REG_INTERFACE_I_n_119 : STD_LOGIC;
  signal REG_INTERFACE_I_n_120 : STD_LOGIC;
  signal REG_INTERFACE_I_n_121 : STD_LOGIC;
  signal REG_INTERFACE_I_n_29 : STD_LOGIC;
  signal REG_INTERFACE_I_n_32 : STD_LOGIC;
  signal REG_INTERFACE_I_n_33 : STD_LOGIC;
  signal REG_INTERFACE_I_n_39 : STD_LOGIC;
  signal REG_INTERFACE_I_n_48 : STD_LOGIC;
  signal REG_INTERFACE_I_n_55 : STD_LOGIC;
  signal REG_INTERFACE_I_n_66 : STD_LOGIC;
  signal REG_INTERFACE_I_n_76 : STD_LOGIC;
  signal REG_INTERFACE_I_n_77 : STD_LOGIC;
  signal REG_INTERFACE_I_n_78 : STD_LOGIC;
  signal REG_INTERFACE_I_n_79 : STD_LOGIC;
  signal REG_INTERFACE_I_n_80 : STD_LOGIC;
  signal REG_INTERFACE_I_n_97 : STD_LOGIC;
  signal Rc_addr : STD_LOGIC_VECTOR ( 0 to 3 );
  signal Rc_fifo_data : STD_LOGIC_VECTOR ( 0 to 7 );
  signal Rc_fifo_full : STD_LOGIC;
  signal Rc_fifo_rd : STD_LOGIC;
  signal Rc_fifo_rd_d : STD_LOGIC;
  signal Rc_fifo_wr : STD_LOGIC;
  signal Rc_fifo_wr0 : STD_LOGIC;
  signal Rc_fifo_wr_d : STD_LOGIC;
  signal Ro_prev : STD_LOGIC;
  signal Srw : STD_LOGIC;
  signal Tx_addr_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Tx_data_exists__4\ : STD_LOGIC;
  signal Tx_fifo_data_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Tx_fifo_full : STD_LOGIC;
  signal Tx_fifo_rd : STD_LOGIC;
  signal Tx_fifo_rd_d : STD_LOGIC;
  signal \Tx_fifo_rd_i__0\ : STD_LOGIC;
  signal Tx_fifo_rst : STD_LOGIC;
  signal Tx_fifo_wr : STD_LOGIC;
  signal Tx_fifo_wr_d : STD_LOGIC;
  signal \Tx_fifo_wr_i__0\ : STD_LOGIC;
  signal Tx_under_prev : STD_LOGIC;
  signal Txer : STD_LOGIC;
  signal WRITE_FIFO_CTRL_I_n_0 : STD_LOGIC;
  signal WRITE_FIFO_I_n_13 : STD_LOGIC;
  signal WRITE_FIFO_I_n_15 : STD_LOGIC;
  signal WRITE_FIFO_I_n_16 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_11 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_28 : STD_LOGIC;
  signal ackDataState : STD_LOGIC;
  signal \addr_match__0\ : STD_LOGIC;
  signal \buffer_Empty__2\ : STD_LOGIC;
  signal ctrlFifoDin : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \ctrl_fifo_wr_i__1\ : STD_LOGIC;
  signal data4 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal dynamic_MSMS : STD_LOGIC_VECTOR ( 0 to 1 );
  signal earlyAckDataState : STD_LOGIC;
  signal earlyAckHdr : STD_LOGIC;
  signal firstDynStartSeen : STD_LOGIC;
  signal \^gpo\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i2c_header : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal master_slave : STD_LOGIC;
  signal new_rcv_dta_d1 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 6 to 6 );
  signal p_1_in2_in : STD_LOGIC;
  signal p_1_in3_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_3_in : STD_LOGIC;
  signal rdCntrFrmTxFifo : STD_LOGIC;
  signal rdy_new_xmt_i : STD_LOGIC;
  signal rxCntDone : STD_LOGIC;
  signal scl_clean : STD_LOGIC;
  signal scl_rin_d1 : STD_LOGIC;
  signal scl_rising_edge0 : STD_LOGIC;
  signal sda_clean : STD_LOGIC;
  signal sda_rin_d1 : STD_LOGIC;
  signal \sda_rising__0\ : STD_LOGIC;
  signal shift_reg_ld : STD_LOGIC;
  signal sr_i : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \state123_out__0\ : STD_LOGIC;
  signal \stop_start_wait1__4\ : STD_LOGIC;
  signal timing_param_tbuf_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal timing_param_thddat_i : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal timing_param_thdsta_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal timing_param_thigh_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal timing_param_tlow_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal timing_param_tsudat_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal timing_param_tsusta_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal timing_param_tsusto_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal txFifoRd : STD_LOGIC;
  signal txak : STD_LOGIC;
begin
  gpo(0) <= \^gpo\(0);
DYN_MASTER_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dynamic_master
     port map (
      Bus_RNW_reg => \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      D(1) => DYN_MASTER_I_n_3,
      D(0) => DYN_MASTER_I_n_4,
      E(0) => Bus2IIC_WrCE(0),
      Q(2) => Cr(2),
      Q(1) => Cr(3),
      Q(0) => Cr(4),
      \Tx_data_exists__4\ => \Tx_data_exists__4\,
      Tx_fifo_data_0(7 downto 0) => Tx_fifo_data_0(7 downto 0),
      Tx_fifo_rst => Tx_fifo_rst,
      ackDataState => ackDataState,
      \cr_i_reg[2]\(0) => IIC_CONTROL_I_n_29,
      earlyAckDataState => earlyAckDataState,
      earlyAckHdr => earlyAckHdr,
      firstDynStartSeen => firstDynStartSeen,
      firstDynStartSeen_reg_0 => REG_INTERFACE_I_n_29,
      p_17_in => \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_17_in\,
      p_3_in => p_3_in,
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      rxCntDone => rxCntDone,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(1) => s_axi_wdata(5),
      s_axi_wdata(0) => s_axi_wdata(3),
      txak => txak
    );
FILTER_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_filter
     port map (
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => scl_clean,
      s_axi_aclk => s_axi_aclk,
      scl_i => scl_i,
      scl_rin_d1 => scl_rin_d1,
      scl_rising_edge0 => scl_rising_edge0,
      scndry_out => sda_clean,
      sda_i => sda_i,
      sda_rin_d1 => sda_rin_d1,
      \sda_rising__0\ => \sda_rising__0\
    );
IIC_CONTROL_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iic_control
     port map (
      Aas => Aas,
      Bb => Bb,
      D(3) => Al,
      D(2) => Txer,
      D(1) => IIC_CONTROL_I_n_10,
      D(0) => IIC_CONTROL_I_n_11,
      \FSM_onehot_scl_state[9]_i_11\(7 downto 0) => timing_param_tsusto_i(7 downto 0),
      \FSM_onehot_scl_state[9]_i_12\(5 downto 0) => timing_param_tsusta_i(5 downto 0),
      \FSM_onehot_scl_state[9]_i_4\(7 downto 0) => timing_param_thigh_i(7 downto 0),
      \FSM_onehot_scl_state_reg[2]_0\ => REG_INTERFACE_I_n_66,
      \FSM_onehot_scl_state_reg[3]_0\(1) => IIC_CONTROL_I_n_29,
      \FSM_onehot_scl_state_reg[3]_0\(0) => IIC_CONTROL_I_n_30,
      \FSM_onehot_scl_state_reg[3]_1\(7 downto 0) => timing_param_thdsta_i(7 downto 0),
      \FSM_onehot_scl_state_reg[5]_0\ => REG_INTERFACE_I_n_48,
      \FSM_onehot_scl_state_reg[6]_0\(7 downto 0) => timing_param_tlow_i(7 downto 0),
      Msms_rst => Msms_rst,
      Msms_set => Msms_set,
      New_rcv_dta => New_rcv_dta,
      Q(4) => Cr(1),
      Q(3) => Cr(2),
      Q(2) => Cr(4),
      Q(1) => Cr(5),
      Q(0) => Cr(7),
      Rc_fifo_wr0 => Rc_fifo_wr0,
      Ro_prev => Ro_prev,
      S(3) => REG_INTERFACE_I_n_118,
      S(2) => REG_INTERFACE_I_n_119,
      S(1) => REG_INTERFACE_I_n_120,
      S(0) => REG_INTERFACE_I_n_121,
      \Tx_data_exists__4\ => \Tx_data_exists__4\,
      Tx_fifo_data_0(6 downto 0) => Tx_fifo_data_0(7 downto 1),
      \Tx_fifo_rd_i__0\ => \Tx_fifo_rd_i__0\,
      Tx_under_prev => Tx_under_prev,
      ackDataState => ackDataState,
      \addr_match__0\ => \addr_match__0\,
      \clk_cnt_en1_inferred__2/i__carry_0\(7 downto 0) => timing_param_tbuf_i(7 downto 0),
      \data_i2c_i_reg[7]_0\(7) => Data_i2c(0),
      \data_i2c_i_reg[7]_0\(6) => Data_i2c(1),
      \data_i2c_i_reg[7]_0\(5) => Data_i2c(2),
      \data_i2c_i_reg[7]_0\(4) => Data_i2c(3),
      \data_i2c_i_reg[7]_0\(3) => Data_i2c(4),
      \data_i2c_i_reg[7]_0\(2) => Data_i2c(5),
      \data_i2c_i_reg[7]_0\(1) => Data_i2c(6),
      \data_i2c_i_reg[7]_0\(0) => Data_i2c(7),
      \data_int_reg[0]\(0) => p_2_in(0),
      \data_int_reg[5]\(4 downto 0) => i2c_header(5 downto 1),
      \data_int_reg[7]\ => IIC_CONTROL_I_n_36,
      detect_stop_b_reg_0 => IIC_CONTROL_I_n_20,
      dynamic_MSMS(0) => dynamic_MSMS(0),
      earlyAckDataState => earlyAckDataState,
      earlyAckHdr => earlyAckHdr,
      master_slave => master_slave,
      new_rcv_dta_d1 => new_rcv_dta_d1,
      \q_int[0]_i_10\(5 downto 0) => timing_param_thddat_i(5 downto 0),
      \q_int_reg[0]\(7) => \CLKCNT/q_int_reg\(0),
      \q_int_reg[0]\(6) => \CLKCNT/q_int_reg\(1),
      \q_int_reg[0]\(5) => \CLKCNT/q_int_reg\(2),
      \q_int_reg[0]\(4) => \CLKCNT/q_int_reg\(3),
      \q_int_reg[0]\(3) => \CLKCNT/q_int_reg\(4),
      \q_int_reg[0]\(2) => \CLKCNT/q_int_reg\(5),
      \q_int_reg[0]\(1) => \CLKCNT/q_int_reg\(6),
      \q_int_reg[0]\(0) => \CLKCNT/q_int_reg\(7),
      \q_int_reg[0]_0\ => REG_INTERFACE_I_n_55,
      \q_int_reg[0]_1\ => REG_INTERFACE_I_n_39,
      rdy_new_xmt_i => rdy_new_xmt_i,
      rxCntDone => rxCntDone,
      s_axi_aclk => s_axi_aclk,
      scl_rin_d1 => scl_rin_d1,
      scl_rin_d1_reg_0 => scl_clean,
      scl_rising_edge0 => scl_rising_edge0,
      scl_t => scl_t,
      scndry_out => sda_clean,
      sda_rin_d1 => sda_rin_d1,
      \sda_rising__0\ => \sda_rising__0\,
      sda_setup_reg_0(7 downto 0) => timing_param_tsudat_i(7 downto 0),
      sda_t => sda_t,
      shift_reg_ld => shift_reg_ld,
      slave_sda_i_2(1 downto 0) => data4(7 downto 6),
      sr_i(0) => sr_i(0),
      srw_i_reg_0(1) => Srw,
      srw_i_reg_0(0) => Abgc,
      \state123_out__0\ => \state123_out__0\,
      \stop_start_wait1__4\ => \stop_start_wait1__4\,
      txak => txak
    );
READ_FIFO_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO
     port map (
      Bus2IIC_Reset => Bus2IIC_Reset,
      CI => CI,
      D(1) => p_0_out(6),
      D(0) => Rc_fifo_full,
      \FIFO_RAM[0].SRL16E_I_0\(7) => Data_i2c(0),
      \FIFO_RAM[0].SRL16E_I_0\(6) => Data_i2c(1),
      \FIFO_RAM[0].SRL16E_I_0\(5) => Data_i2c(2),
      \FIFO_RAM[0].SRL16E_I_0\(4) => Data_i2c(3),
      \FIFO_RAM[0].SRL16E_I_0\(3) => Data_i2c(4),
      \FIFO_RAM[0].SRL16E_I_0\(2) => Data_i2c(5),
      \FIFO_RAM[0].SRL16E_I_0\(1) => Data_i2c(6),
      \FIFO_RAM[0].SRL16E_I_0\(0) => Data_i2c(7),
      Q(0) => REG_INTERFACE_I_n_33,
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\ => READ_FIFO_I_n_14,
      Rc_addr(0 to 3) => Rc_addr(0 to 3),
      Rc_fifo_data(0 to 7) => Rc_fifo_data(0 to 7),
      Rc_fifo_rd => Rc_fifo_rd,
      Rc_fifo_rd_d => Rc_fifo_rd_d,
      Rc_fifo_wr => Rc_fifo_wr,
      Rc_fifo_wr_d => Rc_fifo_wr_d,
      s_axi_aclk => s_axi_aclk
    );
REG_INTERFACE_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reg_interface
     port map (
      Aas => Aas,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(3),
      Bus2IIC_Reset => Bus2IIC_Reset,
      Bus2IIC_WrCE(11) => Bus2IIC_WrCE(0),
      Bus2IIC_WrCE(10) => Bus2IIC_WrCE(2),
      Bus2IIC_WrCE(9) => Bus2IIC_WrCE(4),
      Bus2IIC_WrCE(8) => Bus2IIC_WrCE(8),
      Bus2IIC_WrCE(7) => Bus2IIC_WrCE(10),
      Bus2IIC_WrCE(6) => Bus2IIC_WrCE(11),
      Bus2IIC_WrCE(5) => Bus2IIC_WrCE(12),
      Bus2IIC_WrCE(4) => Bus2IIC_WrCE(13),
      Bus2IIC_WrCE(3) => Bus2IIC_WrCE(14),
      Bus2IIC_WrCE(2) => Bus2IIC_WrCE(15),
      Bus2IIC_WrCE(1) => Bus2IIC_WrCE(16),
      Bus2IIC_WrCE(0) => Bus2IIC_WrCE(17),
      CI => CI,
      D(0) => Ro_prev,
      D_0 => D,
      Data_Exists_DFF => WRITE_FIFO_CTRL_I_n_0,
      \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7]_0\ => WRITE_FIFO_I_n_16,
      \FIFO_GEN_DTR.Tx_fifo_rst_reg_0\ => REG_INTERFACE_I_n_29,
      \FIFO_RAM[7].SRL16E_I\ => REG_INTERFACE_I_n_80,
      \FSM_onehot_scl_state[2]_i_3\(0) => IIC_CONTROL_I_n_30,
      \FSM_onehot_scl_state[2]_i_3_0\ => IIC_CONTROL_I_n_20,
      \FSM_onehot_scl_state_reg[1]\ => REG_INTERFACE_I_n_66,
      \GPO_GEN.gpo_i_reg[31]_0\ => X_AXI_IPIF_SSP1_n_28,
      IIC2Bus_IntrEvent(0 to 7) => IIC2Bus_IntrEvent(0 to 7),
      \IIC2Bus_IntrEvent_reg[0]_0\(4) => Al,
      \IIC2Bus_IntrEvent_reg[0]_0\(3) => Txer,
      \IIC2Bus_IntrEvent_reg[0]_0\(2) => Tx_under_prev,
      \IIC2Bus_IntrEvent_reg[0]_0\(1) => IIC_CONTROL_I_n_10,
      \IIC2Bus_IntrEvent_reg[0]_0\(0) => IIC_CONTROL_I_n_11,
      Msms_set => Msms_set,
      New_rcv_dta => New_rcv_dta,
      Q(7) => Cr(0),
      Q(6) => Cr(1),
      Q(5) => Cr(2),
      Q(4) => Cr(3),
      Q(3) => Cr(4),
      Q(2) => Cr(5),
      Q(1) => Cr(6),
      Q(0) => Cr(7),
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]_0\(3) => p_1_in3_in,
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]_0\(2) => p_1_in2_in,
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]_0\(1) => REG_INTERFACE_I_n_32,
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]_0\(0) => REG_INTERFACE_I_n_33,
      \RD_FIFO_CNTRL.ro_prev_i_reg_0\ => READ_FIFO_I_n_14,
      Rc_addr(0 to 3) => Rc_addr(0 to 3),
      Rc_fifo_data(0) => Rc_fifo_data(7),
      Rc_fifo_rd => Rc_fifo_rd,
      Rc_fifo_rd_d => Rc_fifo_rd_d,
      Rc_fifo_wr => Rc_fifo_wr,
      Rc_fifo_wr0 => Rc_fifo_wr0,
      Rc_fifo_wr_d => Rc_fifo_wr_d,
      S(3) => REG_INTERFACE_I_n_118,
      S(2) => REG_INTERFACE_I_n_119,
      S(1) => REG_INTERFACE_I_n_120,
      S(0) => REG_INTERFACE_I_n_121,
      Tx_fifo_data_0(3 downto 0) => Tx_fifo_data_0(3 downto 0),
      Tx_fifo_rd => Tx_fifo_rd,
      Tx_fifo_rd_d => Tx_fifo_rd_d,
      \Tx_fifo_rd_i__0\ => \Tx_fifo_rd_i__0\,
      Tx_fifo_rst => Tx_fifo_rst,
      Tx_fifo_wr => Tx_fifo_wr,
      Tx_fifo_wr_d => Tx_fifo_wr_d,
      \Tx_fifo_wr_i__0\ => \Tx_fifo_wr_i__0\,
      \addr_match__0\ => \addr_match__0\,
      \adr_i_reg[0]_0\(6 downto 0) => data4(7 downto 1),
      \buffer_Empty__2\ => \buffer_Empty__2\,
      \clk_cnt_en1_inferred__2/i__carry\(7) => \CLKCNT/q_int_reg\(0),
      \clk_cnt_en1_inferred__2/i__carry\(6) => \CLKCNT/q_int_reg\(1),
      \clk_cnt_en1_inferred__2/i__carry\(5) => \CLKCNT/q_int_reg\(2),
      \clk_cnt_en1_inferred__2/i__carry\(4) => \CLKCNT/q_int_reg\(3),
      \clk_cnt_en1_inferred__2/i__carry\(3) => \CLKCNT/q_int_reg\(4),
      \clk_cnt_en1_inferred__2/i__carry\(2) => \CLKCNT/q_int_reg\(5),
      \clk_cnt_en1_inferred__2/i__carry\(1) => \CLKCNT/q_int_reg\(6),
      \clk_cnt_en1_inferred__2/i__carry\(0) => \CLKCNT/q_int_reg\(7),
      \cr_i_reg[2]_0\ => REG_INTERFACE_I_n_39,
      \cr_i_reg[2]_1\(2) => DYN_MASTER_I_n_3,
      \cr_i_reg[2]_1\(1) => DYN_MASTER_I_n_4,
      \cr_i_reg[2]_1\(0) => X_AXI_IPIF_SSP1_n_11,
      \cr_i_reg[7]_0\ => REG_INTERFACE_I_n_55,
      \cr_i_reg[7]_1\ => REG_INTERFACE_I_n_109,
      \ctrl_fifo_wr_i__1\ => \ctrl_fifo_wr_i__1\,
      firstDynStartSeen => firstDynStartSeen,
      gpo(0) => \^gpo\(0),
      master_slave => master_slave,
      new_rcv_dta_d1 => new_rcv_dta_d1,
      p_3_in => p_3_in,
      \q_int[0]_i_10\ => scl_clean,
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      rdy_new_xmt_i => rdy_new_xmt_i,
      s_axi_aclk => s_axi_aclk,
      \s_axi_rdata_i[0]_i_5\(2) => Bus2IIC_Addr(2),
      \s_axi_rdata_i[0]_i_5\(1) => Bus2IIC_Addr(3),
      \s_axi_rdata_i[0]_i_5\(0) => Bus2IIC_Addr(4),
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      slave_sda_i_2_0(4 downto 0) => i2c_header(5 downto 1),
      slave_sda_reg => IIC_CONTROL_I_n_36,
      \sr_i_reg[0]_0\(3) => sr_i(0),
      \sr_i_reg[0]_0\(2) => sr_i(4),
      \sr_i_reg[0]_0\(1) => sr_i(5),
      \sr_i_reg[0]_0\(0) => sr_i(7),
      \sr_i_reg[0]_1\ => REG_INTERFACE_I_n_108,
      \sr_i_reg[0]_2\ => WRITE_FIFO_I_n_15,
      \sr_i_reg[1]_0\ => REG_INTERFACE_I_n_107,
      \sr_i_reg[1]_1\(5) => p_0_out(6),
      \sr_i_reg[1]_1\(4) => Rc_fifo_full,
      \sr_i_reg[1]_1\(3) => Tx_fifo_full,
      \sr_i_reg[1]_1\(2) => Srw,
      \sr_i_reg[1]_1\(1) => Bb,
      \sr_i_reg[1]_1\(0) => Abgc,
      \sr_i_reg[2]_0\ => REG_INTERFACE_I_n_106,
      \sr_i_reg[3]_0\ => REG_INTERFACE_I_n_97,
      \state123_out__0\ => \state123_out__0\,
      \stop_start_wait1__4\ => \stop_start_wait1__4\,
      \timing_param_tbuf_i_reg[7]_0\(7 downto 0) => timing_param_tbuf_i(7 downto 0),
      \timing_param_thddat_i_reg[5]_0\(5 downto 0) => timing_param_thddat_i(5 downto 0),
      \timing_param_thddat_i_reg[6]_0\ => REG_INTERFACE_I_n_48,
      \timing_param_thdsta_i_reg[7]_0\(7 downto 0) => timing_param_thdsta_i(7 downto 0),
      \timing_param_thigh_i_reg[7]_0\(7 downto 0) => timing_param_thigh_i(7 downto 0),
      \timing_param_tlow_i_reg[7]_0\(7 downto 0) => timing_param_tlow_i(7 downto 0),
      \timing_param_tsudat_i_reg[7]_0\(7 downto 0) => timing_param_tsudat_i(7 downto 0),
      \timing_param_tsusta_i_reg[0]_0\ => REG_INTERFACE_I_n_76,
      \timing_param_tsusta_i_reg[1]_0\ => REG_INTERFACE_I_n_77,
      \timing_param_tsusta_i_reg[2]_0\ => REG_INTERFACE_I_n_78,
      \timing_param_tsusta_i_reg[3]_0\ => REG_INTERFACE_I_n_79,
      \timing_param_tsusta_i_reg[7]_0\(7 downto 0) => timing_param_tsusta_i(7 downto 0),
      \timing_param_tsusto_i_reg[7]_0\(7 downto 0) => timing_param_tsusto_i(7 downto 0),
      txFifoRd => txFifoRd
    );
Rc_fifo_rd_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Rc_fifo_rd,
      Q => Rc_fifo_rd_d,
      R => Bus2IIC_Reset
    );
Rc_fifo_wr_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Rc_fifo_wr,
      Q => Rc_fifo_wr_d,
      R => Bus2IIC_Reset
    );
Tx_fifo_rd_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Tx_fifo_rd,
      Q => Tx_fifo_rd_d,
      R => Bus2IIC_Reset
    );
Tx_fifo_wr_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Tx_fifo_wr,
      Q => Tx_fifo_wr_d,
      R => Bus2IIC_Reset
    );
WRITE_FIFO_CTRL_I: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO__parameterized0\
     port map (
      D => D,
      Data_Exists_DFF_0 => WRITE_FIFO_CTRL_I_n_0,
      \Tx_data_exists__4\ => \Tx_data_exists__4\,
      Tx_fifo_rd => Tx_fifo_rd,
      Tx_fifo_rd_d => Tx_fifo_rd_d,
      Tx_fifo_rst => Tx_fifo_rst,
      \buffer_Empty__2\ => \buffer_Empty__2\,
      ctrlFifoDin(0 to 1) => ctrlFifoDin(0 to 1),
      \ctrl_fifo_wr_i__1\ => \ctrl_fifo_wr_i__1\,
      dynamic_MSMS(0 to 1) => dynamic_MSMS(0 to 1),
      p_3_in => p_3_in,
      s_axi_aclk => s_axi_aclk,
      txFifoRd => txFifoRd
    );
WRITE_FIFO_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO_0
     port map (
      \Addr_Counters[1].FDRE_I_0\(0) => Tx_fifo_full,
      \Addr_Counters[3].FDRE_I_0\ => WRITE_FIFO_I_n_16,
      Bb => Bb,
      \FIFO_RAM[0].SRL16E_I_0\ => WRITE_FIFO_I_n_15,
      \FIFO_RAM[1].SRL16E_I_0\ => WRITE_FIFO_I_n_13,
      \FIFO_RAM[7].SRL16E_I_0\(0) => p_2_in(0),
      Q(0) => Cr(5),
      Tx_addr_0(3 downto 0) => Tx_addr_0(3 downto 0),
      \Tx_data_exists__4\ => \Tx_data_exists__4\,
      Tx_fifo_data_0(7 downto 0) => Tx_fifo_data_0(7 downto 0),
      Tx_fifo_rst => Tx_fifo_rst,
      Tx_fifo_wr => Tx_fifo_wr,
      Tx_fifo_wr_d => Tx_fifo_wr_d,
      \Tx_fifo_wr_i__0\ => \Tx_fifo_wr_i__0\,
      dynamic_MSMS(0 to 1) => dynamic_MSMS(0 to 1),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      scndry_out => sda_clean,
      shift_reg_ld => shift_reg_ld,
      txFifoRd => txFifoRd
    );
X_AXI_IPIF_SSP1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ipif_ssp1
     port map (
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(3),
      Bus2IIC_Reset => Bus2IIC_Reset,
      Bus2IIC_WrCE(11) => Bus2IIC_WrCE(0),
      Bus2IIC_WrCE(10) => Bus2IIC_WrCE(2),
      Bus2IIC_WrCE(9) => Bus2IIC_WrCE(4),
      Bus2IIC_WrCE(8) => Bus2IIC_WrCE(8),
      Bus2IIC_WrCE(7) => Bus2IIC_WrCE(10),
      Bus2IIC_WrCE(6) => Bus2IIC_WrCE(11),
      Bus2IIC_WrCE(5) => Bus2IIC_WrCE(12),
      Bus2IIC_WrCE(4) => Bus2IIC_WrCE(13),
      Bus2IIC_WrCE(3) => Bus2IIC_WrCE(14),
      Bus2IIC_WrCE(2) => Bus2IIC_WrCE(15),
      Bus2IIC_WrCE(1) => Bus2IIC_WrCE(16),
      Bus2IIC_WrCE(0) => Bus2IIC_WrCE(17),
      Bus_RNW_reg => \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      IIC2Bus_IntrEvent(0 to 7) => IIC2Bus_IntrEvent(0 to 7),
      Msms_rst => Msms_rst,
      Q(2) => Bus2IIC_Addr(2),
      Q(1) => Bus2IIC_Addr(3),
      Q(0) => Bus2IIC_Addr(4),
      Rc_fifo_data(6) => Rc_fifo_data(0),
      Rc_fifo_data(5) => Rc_fifo_data(1),
      Rc_fifo_data(4) => Rc_fifo_data(2),
      Rc_fifo_data(3) => Rc_fifo_data(3),
      Rc_fifo_data(2) => Rc_fifo_data(4),
      Rc_fifo_data(1) => Rc_fifo_data(5),
      Rc_fifo_data(0) => Rc_fifo_data(6),
      Tx_addr_0(3 downto 0) => Tx_addr_0(3 downto 0),
      Tx_fifo_data_0(3 downto 0) => Tx_fifo_data_0(7 downto 4),
      Tx_fifo_rst => Tx_fifo_rst,
      \cr_i_reg[5]\ => WRITE_FIFO_I_n_13,
      ctrlFifoDin(0 to 1) => ctrlFifoDin(0 to 1),
      gpo(0) => \^gpo\(0),
      iic2intc_irpt => iic2intc_irpt,
      is_read_reg => is_read_reg,
      is_write_reg => is_write_reg,
      p_17_in => \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_17_in\,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid_i_reg => s_axi_bvalid_i_reg,
      s_axi_rdata(8 downto 0) => s_axi_rdata(8 downto 0),
      \s_axi_rdata_i[0]_i_2\ => REG_INTERFACE_I_n_76,
      \s_axi_rdata_i[0]_i_2_0\ => REG_INTERFACE_I_n_109,
      \s_axi_rdata_i[3]_i_2\(3 downto 0) => timing_param_thddat_i(3 downto 0),
      \s_axi_rdata_i[3]_i_2_0\(2) => sr_i(4),
      \s_axi_rdata_i[3]_i_2_0\(1) => sr_i(5),
      \s_axi_rdata_i[3]_i_2_0\(0) => sr_i(7),
      \s_axi_rdata_i[3]_i_3\(3 downto 0) => timing_param_tsudat_i(3 downto 0),
      \s_axi_rdata_i[3]_i_6\(2) => p_1_in3_in,
      \s_axi_rdata_i[3]_i_6\(1) => p_1_in2_in,
      \s_axi_rdata_i[3]_i_6\(0) => REG_INTERFACE_I_n_32,
      \s_axi_rdata_i[7]_i_4\(7 downto 0) => timing_param_thdsta_i(7 downto 0),
      \s_axi_rdata_i[7]_i_4_0\(6 downto 0) => data4(7 downto 1),
      \s_axi_rdata_i[7]_i_4_1\(6 downto 0) => timing_param_thigh_i(7 downto 1),
      \s_axi_rdata_i[7]_i_4_2\(6 downto 0) => timing_param_tsusto_i(7 downto 1),
      \s_axi_rdata_i[7]_i_4_3\(3 downto 0) => timing_param_tbuf_i(7 downto 4),
      \s_axi_rdata_i[7]_i_4_4\(3 downto 0) => timing_param_tsusta_i(7 downto 4),
      \s_axi_rdata_i[7]_i_8\(6 downto 0) => timing_param_tlow_i(7 downto 1),
      \s_axi_rdata_i[7]_i_8_0\(6) => Cr(0),
      \s_axi_rdata_i[7]_i_8_0\(5) => Cr(1),
      \s_axi_rdata_i[7]_i_8_0\(4) => Cr(2),
      \s_axi_rdata_i[7]_i_8_0\(3) => Cr(3),
      \s_axi_rdata_i[7]_i_8_0\(2) => Cr(4),
      \s_axi_rdata_i[7]_i_8_0\(1) => Cr(5),
      \s_axi_rdata_i[7]_i_8_0\(0) => Cr(6),
      \s_axi_rdata_i_reg[0]\ => REG_INTERFACE_I_n_80,
      \s_axi_rdata_i_reg[1]\ => REG_INTERFACE_I_n_77,
      \s_axi_rdata_i_reg[2]\ => REG_INTERFACE_I_n_78,
      \s_axi_rdata_i_reg[3]\ => REG_INTERFACE_I_n_79,
      \s_axi_rdata_i_reg[4]\ => REG_INTERFACE_I_n_97,
      \s_axi_rdata_i_reg[5]\ => REG_INTERFACE_I_n_106,
      \s_axi_rdata_i_reg[6]\ => REG_INTERFACE_I_n_107,
      \s_axi_rdata_i_reg[7]\ => REG_INTERFACE_I_n_108,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid_i_reg => s_axi_rvalid_i_reg,
      s_axi_wdata(10 downto 0) => s_axi_wdata(10 downto 0),
      \s_axi_wdata[2]\(0) => X_AXI_IPIF_SSP1_n_11,
      s_axi_wdata_0_sp_1 => X_AXI_IPIF_SSP1_n_28,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_iic is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_iic : entity is "8'b00000000";
  attribute C_DISABLE_SETUP_VIOLATION_CHECK : integer;
  attribute C_DISABLE_SETUP_VIOLATION_CHECK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_iic : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_iic : entity is "zynq";
  attribute C_GPO_WIDTH : integer;
  attribute C_GPO_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_iic : entity is 1;
  attribute C_IIC_FREQ : integer;
  attribute C_IIC_FREQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_iic : entity is 400000;
  attribute C_SCL_INERTIAL_DELAY : integer;
  attribute C_SCL_INERTIAL_DELAY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_iic : entity is 0;
  attribute C_SDA_INERTIAL_DELAY : integer;
  attribute C_SDA_INERTIAL_DELAY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_iic : entity is 0;
  attribute C_SDA_LEVEL : integer;
  attribute C_SDA_LEVEL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_iic : entity is 1;
  attribute C_SMBUS_PMBUS_HOST : integer;
  attribute C_SMBUS_PMBUS_HOST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_iic : entity is 0;
  attribute C_STATIC_TIMING_REG_WIDTH : integer;
  attribute C_STATIC_TIMING_REG_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_iic : entity is 0;
  attribute C_S_AXI_ACLK_FREQ_HZ : integer;
  attribute C_S_AXI_ACLK_FREQ_HZ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_iic : entity is 50000000;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_iic : entity is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_iic : entity is 32;
  attribute C_TEN_BIT_ADR : integer;
  attribute C_TEN_BIT_ADR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_iic : entity is 0;
  attribute C_TIMING_REG_WIDTH : integer;
  attribute C_TIMING_REG_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_iic : entity is 32;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_iic : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_iic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_iic is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(31);
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7 downto 0) <= \^s_axi_rdata\(7 downto 0);
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_awready\;
  scl_o <= \<const0>\;
  sda_o <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
X_IIC: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iic
     port map (
      gpo(0) => gpo(0),
      iic2intc_irpt => iic2intc_irpt,
      is_read_reg => s_axi_arready,
      is_write_reg => \^s_axi_awready\,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid_i_reg => s_axi_bvalid,
      s_axi_rdata(8) => \^s_axi_rdata\(31),
      s_axi_rdata(7 downto 0) => \^s_axi_rdata\(7 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid_i_reg => s_axi_rvalid,
      s_axi_wdata(10) => s_axi_wdata(31),
      s_axi_wdata(9 downto 0) => s_axi_wdata(9 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      scl_i => scl_i,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_t => sda_t
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "kf_bd_axi_iic_0_0,axi_iic,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_iic,Vivado 2024.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_U0_scl_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sda_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 30 downto 8 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "8'b00000000";
  attribute C_DISABLE_SETUP_VIOLATION_CHECK : integer;
  attribute C_DISABLE_SETUP_VIOLATION_CHECK of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_GPO_WIDTH : integer;
  attribute C_GPO_WIDTH of U0 : label is 1;
  attribute C_IIC_FREQ : integer;
  attribute C_IIC_FREQ of U0 : label is 400000;
  attribute C_SCL_INERTIAL_DELAY : integer;
  attribute C_SCL_INERTIAL_DELAY of U0 : label is 0;
  attribute C_SDA_INERTIAL_DELAY : integer;
  attribute C_SDA_INERTIAL_DELAY of U0 : label is 0;
  attribute C_SDA_LEVEL : integer;
  attribute C_SDA_LEVEL of U0 : label is 1;
  attribute C_SMBUS_PMBUS_HOST : integer;
  attribute C_SMBUS_PMBUS_HOST of U0 : label is 0;
  attribute C_STATIC_TIMING_REG_WIDTH : integer;
  attribute C_STATIC_TIMING_REG_WIDTH of U0 : label is 0;
  attribute C_S_AXI_ACLK_FREQ_HZ : integer;
  attribute C_S_AXI_ACLK_FREQ_HZ of U0 : label is 50000000;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_TEN_BIT_ADR : integer;
  attribute C_TEN_BIT_ADR of U0 : label is 0;
  attribute C_TIMING_REG_WIDTH : integer;
  attribute C_TIMING_REG_WIDTH of U0 : label is 32;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of iic2intc_irpt : signal is "xilinx.com:signal:interrupt:1.0 INTERRUPT INTERRUPT";
  attribute x_interface_mode : string;
  attribute x_interface_mode of iic2intc_irpt : signal is "master INTERRUPT";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of iic2intc_irpt : signal is "XIL_INTERFACENAME INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute x_interface_mode of s_axi_aclk : signal is "slave S_AXI_ACLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN kf_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute x_interface_mode of s_axi_aresetn : signal is "slave S_AXI_ARESETN";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of scl_i : signal is "xilinx.com:interface:iic:1.0 IIC SCL_I";
  attribute x_interface_info of scl_o : signal is "xilinx.com:interface:iic:1.0 IIC SCL_O";
  attribute x_interface_info of scl_t : signal is "xilinx.com:interface:iic:1.0 IIC SCL_T";
  attribute x_interface_info of sda_i : signal is "xilinx.com:interface:iic:1.0 IIC SDA_I";
  attribute x_interface_mode of sda_i : signal is "master IIC";
  attribute x_interface_parameter of sda_i : signal is "XIL_INTERFACENAME IIC, BOARD.ASSOCIATED_PARAM IIC_BOARD_INTERFACE";
  attribute x_interface_info of sda_o : signal is "xilinx.com:interface:iic:1.0 IIC SDA_O";
  attribute x_interface_info of sda_t : signal is "xilinx.com:interface:iic:1.0 IIC SDA_T";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_mode of s_axi_awaddr : signal is "slave S_AXI";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN kf_bd_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(31);
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7 downto 0) <= \^s_axi_rdata\(7 downto 0);
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  scl_o <= \<const0>\;
  sda_o <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_iic
     port map (
      gpo(0) => gpo(0),
      iic2intc_irpt => iic2intc_irpt,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1) => \^s_axi_bresp\(1),
      s_axi_bresp(0) => NLW_U0_s_axi_bresp_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31) => \^s_axi_rdata\(31),
      s_axi_rdata(30 downto 8) => NLW_U0_s_axi_rdata_UNCONNECTED(30 downto 8),
      s_axi_rdata(7 downto 0) => \^s_axi_rdata\(7 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1) => \^s_axi_rresp\(1),
      s_axi_rresp(0) => NLW_U0_s_axi_rresp_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31) => s_axi_wdata(31),
      s_axi_wdata(30 downto 10) => B"000000000000000000000",
      s_axi_wdata(9 downto 0) => s_axi_wdata(9 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wvalid => s_axi_wvalid,
      scl_i => scl_i,
      scl_o => NLW_U0_scl_o_UNCONNECTED,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_o => NLW_U0_sda_o_UNCONNECTED,
      sda_t => sda_t
    );
end STRUCTURE;
