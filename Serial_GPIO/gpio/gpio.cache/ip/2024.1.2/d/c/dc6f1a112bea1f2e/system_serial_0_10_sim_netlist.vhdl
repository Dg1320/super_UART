-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (lin64) Build 5164865 Thu Sep  5 14:36:28 MDT 2024
-- Date        : Wed Nov 13 19:43:03 2024
-- Host        : clutch13 running 64-bit Ubuntu 24.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_serial_0_10_sim_netlist.vhdl
-- Design      : system_serial_0_10
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_aclk : in STD_LOGIC;
    p_0_in_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_arvalid : in STD_LOGIC;
    in_delay_reg_0 : in STD_LOGIC;
    in_delay_reg_1 : in STD_LOGIC;
    empty : in STD_LOGIC;
    write_request : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect is
  signal fifoRead : STD_LOGIC;
  signal in_delay : STD_LOGIC;
  signal \outReg_i_1__0_n_0\ : STD_LOGIC;
  signal read_request : STD_LOGIC;
begin
\in_delay_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => in_delay_reg_1,
      I1 => in_delay_reg_0,
      I2 => axi_arvalid,
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      O => fifoRead
    );
in_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => fifoRead,
      Q => in_delay,
      R => '0'
    );
\outReg_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(1),
      I2 => axi_arvalid,
      I3 => in_delay_reg_0,
      I4 => in_delay_reg_1,
      I5 => in_delay,
      O => \outReg_i_1__0_n_0\
    );
outReg_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \outReg_i_1__0_n_0\,
      Q => read_request,
      R => '0'
    );
\rd_index[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => empty,
      I1 => read_request,
      I2 => write_request,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0 is
  port (
    write_request : out STD_LOGIC;
    \wr_index_reg[3]\ : out STD_LOGIC;
    \wr_index_reg[2]\ : out STD_LOGIC;
    \wr_index_reg[2]_0\ : out STD_LOGIC;
    \wr_index_reg[0]\ : out STD_LOGIC;
    \wr_index_reg[3]_0\ : out STD_LOGIC;
    \wr_index_reg[0]_0\ : out STD_LOGIC;
    \wr_index_reg[1]\ : out STD_LOGIC;
    \wr_index_reg[0]_1\ : out STD_LOGIC;
    \wr_index_reg[2]_1\ : out STD_LOGIC;
    \wr_index_reg[3]_1\ : out STD_LOGIC;
    \wr_index_reg[3]_2\ : out STD_LOGIC;
    \wr_index_reg[3]_3\ : out STD_LOGIC;
    \wr_index_reg[3]_4\ : out STD_LOGIC;
    \wr_index_reg[3]_5\ : out STD_LOGIC;
    \wr_index_reg[3]_6\ : out STD_LOGIC;
    \wr_index_reg[3]_7\ : out STD_LOGIC;
    \wr_index_reg[1]_0\ : out STD_LOGIC;
    \wr_index_reg[1]_1\ : out STD_LOGIC;
    \wr_index_reg[1]_2\ : out STD_LOGIC;
    \wr_index_reg[1]_3\ : out STD_LOGIC;
    \wr_index_reg[1]_4\ : out STD_LOGIC;
    \wr_index_reg[1]_5\ : out STD_LOGIC;
    \wr_index_reg[1]_6\ : out STD_LOGIC;
    \wr_index_reg[1]_7\ : out STD_LOGIC;
    \wr_index_reg[1]_8\ : out STD_LOGIC;
    \wr_index_reg[1]_9\ : out STD_LOGIC;
    \wr_index_reg[1]_10\ : out STD_LOGIC;
    \wr_index_reg[1]_11\ : out STD_LOGIC;
    \wr_index_reg[1]_12\ : out STD_LOGIC;
    \wr_index_reg[1]_13\ : out STD_LOGIC;
    \wr_index_reg[1]_14\ : out STD_LOGIC;
    \wr_index_reg[1]_15\ : out STD_LOGIC;
    \wr_index_reg[1]_16\ : out STD_LOGIC;
    \wr_index_reg[1]_17\ : out STD_LOGIC;
    \wr_index_reg[1]_18\ : out STD_LOGIC;
    \wr_index_reg[1]_19\ : out STD_LOGIC;
    \wr_index_reg[1]_20\ : out STD_LOGIC;
    \wr_index_reg[1]_21\ : out STD_LOGIC;
    \wr_index_reg[1]_22\ : out STD_LOGIC;
    \wr_index_reg[1]_23\ : out STD_LOGIC;
    \wr_index_reg[1]_24\ : out STD_LOGIC;
    \wr_index_reg[1]_25\ : out STD_LOGIC;
    \wr_index_reg[1]_26\ : out STD_LOGIC;
    \wr_index_reg[3]_8\ : out STD_LOGIC;
    \wr_index_reg[3]_9\ : out STD_LOGIC;
    \wr_index_reg[3]_10\ : out STD_LOGIC;
    \wr_index_reg[3]_11\ : out STD_LOGIC;
    \wr_index_reg[3]_12\ : out STD_LOGIC;
    \wr_index_reg[3]_13\ : out STD_LOGIC;
    \wr_index_reg[3]_14\ : out STD_LOGIC;
    \wr_index_reg[3]_15\ : out STD_LOGIC;
    \wr_index_reg[3]_16\ : out STD_LOGIC;
    \wr_index_reg[0]_2\ : out STD_LOGIC;
    \wr_index_reg[0]_3\ : out STD_LOGIC;
    \wr_index_reg[0]_4\ : out STD_LOGIC;
    \wr_index_reg[0]_5\ : out STD_LOGIC;
    \wr_index_reg[0]_6\ : out STD_LOGIC;
    \wr_index_reg[0]_7\ : out STD_LOGIC;
    \wr_index_reg[0]_8\ : out STD_LOGIC;
    \wr_index_reg[0]_9\ : out STD_LOGIC;
    \wr_index_reg[0]_10\ : out STD_LOGIC;
    \wr_index_reg[3]_17\ : out STD_LOGIC;
    \wr_index_reg[3]_18\ : out STD_LOGIC;
    \wr_index_reg[3]_19\ : out STD_LOGIC;
    \wr_index_reg[3]_20\ : out STD_LOGIC;
    \wr_index_reg[3]_21\ : out STD_LOGIC;
    \wr_index_reg[3]_22\ : out STD_LOGIC;
    \wr_index_reg[3]_23\ : out STD_LOGIC;
    \wr_index_reg[3]_24\ : out STD_LOGIC;
    \wr_index_reg[3]_25\ : out STD_LOGIC;
    \wr_index_reg[2]_2\ : out STD_LOGIC;
    \wr_index_reg[2]_3\ : out STD_LOGIC;
    \wr_index_reg[2]_4\ : out STD_LOGIC;
    \wr_index_reg[2]_5\ : out STD_LOGIC;
    \wr_index_reg[2]_6\ : out STD_LOGIC;
    \wr_index_reg[2]_7\ : out STD_LOGIC;
    \wr_index_reg[2]_8\ : out STD_LOGIC;
    \wr_index_reg[2]_9\ : out STD_LOGIC;
    \wr_index_reg[2]_10\ : out STD_LOGIC;
    \wr_index_reg[3]_26\ : out STD_LOGIC;
    \wr_index_reg[3]_27\ : out STD_LOGIC;
    \wr_index_reg[3]_28\ : out STD_LOGIC;
    \wr_index_reg[3]_29\ : out STD_LOGIC;
    \wr_index_reg[3]_30\ : out STD_LOGIC;
    \wr_index_reg[3]_31\ : out STD_LOGIC;
    \wr_index_reg[3]_32\ : out STD_LOGIC;
    \wr_index_reg[3]_33\ : out STD_LOGIC;
    \wr_index_reg[3]_34\ : out STD_LOGIC;
    \wr_index_reg[0]_11\ : out STD_LOGIC;
    \wr_index_reg[0]_12\ : out STD_LOGIC;
    \wr_index_reg[0]_13\ : out STD_LOGIC;
    \wr_index_reg[0]_14\ : out STD_LOGIC;
    \wr_index_reg[0]_15\ : out STD_LOGIC;
    \wr_index_reg[0]_16\ : out STD_LOGIC;
    \wr_index_reg[0]_17\ : out STD_LOGIC;
    \wr_index_reg[0]_18\ : out STD_LOGIC;
    \wr_index_reg[0]_19\ : out STD_LOGIC;
    \wr_index_reg[2]_11\ : out STD_LOGIC;
    \wr_index_reg[2]_12\ : out STD_LOGIC;
    \wr_index_reg[2]_13\ : out STD_LOGIC;
    \wr_index_reg[2]_14\ : out STD_LOGIC;
    \wr_index_reg[2]_15\ : out STD_LOGIC;
    \wr_index_reg[2]_16\ : out STD_LOGIC;
    \wr_index_reg[2]_17\ : out STD_LOGIC;
    \wr_index_reg[2]_18\ : out STD_LOGIC;
    \wr_index_reg[2]_19\ : out STD_LOGIC;
    \wr_index_reg[1]_27\ : out STD_LOGIC;
    \wr_index_reg[1]_28\ : out STD_LOGIC;
    \wr_index_reg[1]_29\ : out STD_LOGIC;
    \wr_index_reg[1]_30\ : out STD_LOGIC;
    \wr_index_reg[1]_31\ : out STD_LOGIC;
    \wr_index_reg[1]_32\ : out STD_LOGIC;
    \wr_index_reg[1]_33\ : out STD_LOGIC;
    \wr_index_reg[1]_34\ : out STD_LOGIC;
    \wr_index_reg[1]_35\ : out STD_LOGIC;
    \wr_index_reg[0]_20\ : out STD_LOGIC;
    \wr_index_reg[0]_21\ : out STD_LOGIC;
    \wr_index_reg[0]_22\ : out STD_LOGIC;
    \wr_index_reg[0]_23\ : out STD_LOGIC;
    \wr_index_reg[0]_24\ : out STD_LOGIC;
    \wr_index_reg[0]_25\ : out STD_LOGIC;
    \wr_index_reg[0]_26\ : out STD_LOGIC;
    \wr_index_reg[0]_27\ : out STD_LOGIC;
    \wr_index_reg[0]_28\ : out STD_LOGIC;
    \wr_index_reg[3]_35\ : out STD_LOGIC;
    \wr_index_reg[3]_36\ : out STD_LOGIC;
    \wr_index_reg[3]_37\ : out STD_LOGIC;
    \wr_index_reg[3]_38\ : out STD_LOGIC;
    \wr_index_reg[3]_39\ : out STD_LOGIC;
    \wr_index_reg[3]_40\ : out STD_LOGIC;
    \wr_index_reg[3]_41\ : out STD_LOGIC;
    \wr_index_reg[3]_42\ : out STD_LOGIC;
    \wr_index_reg[3]_43\ : out STD_LOGIC;
    \wr_index_reg[2]_20\ : out STD_LOGIC;
    \wr_index_reg[2]_21\ : out STD_LOGIC;
    \wr_index_reg[2]_22\ : out STD_LOGIC;
    \wr_index_reg[2]_23\ : out STD_LOGIC;
    \wr_index_reg[2]_24\ : out STD_LOGIC;
    \wr_index_reg[2]_25\ : out STD_LOGIC;
    \wr_index_reg[2]_26\ : out STD_LOGIC;
    \wr_index_reg[2]_27\ : out STD_LOGIC;
    \wr_index_reg[2]_28\ : out STD_LOGIC;
    \wr_index_reg[1]_36\ : out STD_LOGIC;
    \wr_index_reg[1]_37\ : out STD_LOGIC;
    \wr_index_reg[1]_38\ : out STD_LOGIC;
    \wr_index_reg[1]_39\ : out STD_LOGIC;
    \wr_index_reg[1]_40\ : out STD_LOGIC;
    \wr_index_reg[1]_41\ : out STD_LOGIC;
    \wr_index_reg[1]_42\ : out STD_LOGIC;
    \wr_index_reg[1]_43\ : out STD_LOGIC;
    \wr_index_reg[1]_44\ : out STD_LOGIC;
    \wr_index_reg[0]_29\ : out STD_LOGIC;
    \wr_index_reg[0]_30\ : out STD_LOGIC;
    \wr_index_reg[0]_31\ : out STD_LOGIC;
    \wr_index_reg[0]_32\ : out STD_LOGIC;
    \wr_index_reg[0]_33\ : out STD_LOGIC;
    \wr_index_reg[0]_34\ : out STD_LOGIC;
    \wr_index_reg[0]_35\ : out STD_LOGIC;
    \wr_index_reg[0]_36\ : out STD_LOGIC;
    \wr_index_reg[0]_37\ : out STD_LOGIC;
    p_10_in : out STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    officialData : in STD_LOGIC_VECTOR ( 8 downto 0 );
    waddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_delay_reg_0 : in STD_LOGIC;
    in_delay_reg_1 : in STD_LOGIC;
    axi_awvalid : in STD_LOGIC;
    axi_wvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0 : entity is "edge_detect";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0 is
  signal fifoWrite : STD_LOGIC;
  signal in_delay : STD_LOGIC;
  signal outReg_i_1_n_0 : STD_LOGIC;
  signal \^p_10_in\ : STD_LOGIC;
  signal \^write_request\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FIFO_DATA[0][8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][8]_i_1\ : label is "soft_lutpair3";
begin
  p_10_in <= \^p_10_in\;
  write_request <= \^write_request\;
\FIFO_DATA[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(0),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_9\
    );
\FIFO_DATA[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(1),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_10\
    );
\FIFO_DATA[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(2),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_11\
    );
\FIFO_DATA[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(3),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_12\
    );
\FIFO_DATA[0][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(4),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_13\
    );
\FIFO_DATA[0][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(5),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_14\
    );
\FIFO_DATA[0][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(6),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_15\
    );
\FIFO_DATA[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(7),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_16\
    );
\FIFO_DATA[0][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^write_request\,
      O => \wr_index_reg[3]_7\
    );
\FIFO_DATA[0][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(8),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_17\
    );
\FIFO_DATA[10][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(0),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_11\
    );
\FIFO_DATA[10][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(1),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_12\
    );
\FIFO_DATA[10][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(2),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_13\
    );
\FIFO_DATA[10][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(3),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_14\
    );
\FIFO_DATA[10][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(4),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_15\
    );
\FIFO_DATA[10][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(5),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_16\
    );
\FIFO_DATA[10][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(6),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_17\
    );
\FIFO_DATA[10][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(7),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_18\
    );
\FIFO_DATA[10][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => \^write_request\,
      O => \wr_index_reg[0]_0\
    );
\FIFO_DATA[10][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(8),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_19\
    );
\FIFO_DATA[11][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(0),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_11\
    );
\FIFO_DATA[11][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(1),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_12\
    );
\FIFO_DATA[11][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(2),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_13\
    );
\FIFO_DATA[11][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(3),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_14\
    );
\FIFO_DATA[11][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(4),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_15\
    );
\FIFO_DATA[11][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(5),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_16\
    );
\FIFO_DATA[11][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(6),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_17\
    );
\FIFO_DATA[11][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(7),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_18\
    );
\FIFO_DATA[11][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^write_request\,
      O => \wr_index_reg[3]_0\
    );
\FIFO_DATA[11][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(8),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_19\
    );
\FIFO_DATA[12][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(0),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_0\
    );
\FIFO_DATA[12][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(1),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_1\
    );
\FIFO_DATA[12][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(2),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_2\
    );
\FIFO_DATA[12][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(3),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_3\
    );
\FIFO_DATA[12][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(4),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_4\
    );
\FIFO_DATA[12][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(5),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_5\
    );
\FIFO_DATA[12][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(6),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_6\
    );
\FIFO_DATA[12][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(7),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_7\
    );
\FIFO_DATA[12][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => \^write_request\,
      O => \wr_index_reg[0]\
    );
\FIFO_DATA[12][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(8),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_8\
    );
\FIFO_DATA[13][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(0),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_20\
    );
\FIFO_DATA[13][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(1),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_21\
    );
\FIFO_DATA[13][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(2),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_22\
    );
\FIFO_DATA[13][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(3),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_23\
    );
\FIFO_DATA[13][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(4),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_24\
    );
\FIFO_DATA[13][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(5),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_25\
    );
\FIFO_DATA[13][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(6),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_26\
    );
\FIFO_DATA[13][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(7),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_27\
    );
\FIFO_DATA[13][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(3),
      I4 => \^write_request\,
      O => \wr_index_reg[2]_0\
    );
\FIFO_DATA[13][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(8),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_28\
    );
\FIFO_DATA[14][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(0),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_27\
    );
\FIFO_DATA[14][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(1),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_28\
    );
\FIFO_DATA[14][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(2),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_29\
    );
\FIFO_DATA[14][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(3),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_30\
    );
\FIFO_DATA[14][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(4),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_31\
    );
\FIFO_DATA[14][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(5),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_32\
    );
\FIFO_DATA[14][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(6),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_33\
    );
\FIFO_DATA[14][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(7),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_34\
    );
\FIFO_DATA[14][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => \^write_request\,
      O => \wr_index_reg[2]\
    );
\FIFO_DATA[14][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(8),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_35\
    );
\FIFO_DATA[15][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(0),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_18\
    );
\FIFO_DATA[15][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(1),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_19\
    );
\FIFO_DATA[15][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(2),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_20\
    );
\FIFO_DATA[15][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(3),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_21\
    );
\FIFO_DATA[15][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(4),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_22\
    );
\FIFO_DATA[15][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(5),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_23\
    );
\FIFO_DATA[15][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(6),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_24\
    );
\FIFO_DATA[15][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(7),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_25\
    );
\FIFO_DATA[15][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^write_request\,
      O => \wr_index_reg[3]\
    );
\FIFO_DATA[15][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(8),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_26\
    );
\FIFO_DATA[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(0),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_29\
    );
\FIFO_DATA[1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(1),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_30\
    );
\FIFO_DATA[1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(2),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_31\
    );
\FIFO_DATA[1][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(3),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_32\
    );
\FIFO_DATA[1][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(4),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_33\
    );
\FIFO_DATA[1][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(5),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_34\
    );
\FIFO_DATA[1][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(6),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_35\
    );
\FIFO_DATA[1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(7),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_36\
    );
\FIFO_DATA[1][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^write_request\,
      O => \wr_index_reg[3]_6\
    );
\FIFO_DATA[1][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(8),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_37\
    );
\FIFO_DATA[2][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(0),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_36\
    );
\FIFO_DATA[2][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(1),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_37\
    );
\FIFO_DATA[2][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(2),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_38\
    );
\FIFO_DATA[2][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(3),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_39\
    );
\FIFO_DATA[2][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(4),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_40\
    );
\FIFO_DATA[2][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(5),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_41\
    );
\FIFO_DATA[2][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(6),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_42\
    );
\FIFO_DATA[2][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(7),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_43\
    );
\FIFO_DATA[2][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => \^write_request\,
      O => \wr_index_reg[3]_5\
    );
\FIFO_DATA[2][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => officialData(8),
      I5 => \^write_request\,
      O => \wr_index_reg[1]_44\
    );
\FIFO_DATA[3][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => officialData(0),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_8\
    );
\FIFO_DATA[3][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => officialData(1),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_9\
    );
\FIFO_DATA[3][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => officialData(2),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_10\
    );
\FIFO_DATA[3][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => officialData(3),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_11\
    );
\FIFO_DATA[3][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => officialData(4),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_12\
    );
\FIFO_DATA[3][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => officialData(5),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_13\
    );
\FIFO_DATA[3][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => officialData(6),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_14\
    );
\FIFO_DATA[3][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => officialData(7),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_15\
    );
\FIFO_DATA[3][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^write_request\,
      O => \wr_index_reg[3]_4\
    );
\FIFO_DATA[3][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => officialData(8),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_16\
    );
\FIFO_DATA[4][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(0),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_20\
    );
\FIFO_DATA[4][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(1),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_21\
    );
\FIFO_DATA[4][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(2),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_22\
    );
\FIFO_DATA[4][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(3),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_23\
    );
\FIFO_DATA[4][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(4),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_24\
    );
\FIFO_DATA[4][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(5),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_25\
    );
\FIFO_DATA[4][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(6),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_26\
    );
\FIFO_DATA[4][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(7),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_27\
    );
\FIFO_DATA[4][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \^write_request\,
      O => \wr_index_reg[3]_3\
    );
\FIFO_DATA[4][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => officialData(8),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_28\
    );
\FIFO_DATA[5][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => officialData(0),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_35\
    );
\FIFO_DATA[5][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => officialData(1),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_36\
    );
\FIFO_DATA[5][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => officialData(2),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_37\
    );
\FIFO_DATA[5][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => officialData(3),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_38\
    );
\FIFO_DATA[5][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => officialData(4),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_39\
    );
\FIFO_DATA[5][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => officialData(5),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_40\
    );
\FIFO_DATA[5][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => officialData(6),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_41\
    );
\FIFO_DATA[5][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => officialData(7),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_42\
    );
\FIFO_DATA[5][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => \^write_request\,
      O => \wr_index_reg[3]_2\
    );
\FIFO_DATA[5][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => officialData(8),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_43\
    );
\FIFO_DATA[6][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(0),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_17\
    );
\FIFO_DATA[6][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(1),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_18\
    );
\FIFO_DATA[6][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(2),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_19\
    );
\FIFO_DATA[6][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(3),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_20\
    );
\FIFO_DATA[6][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(4),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_21\
    );
\FIFO_DATA[6][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(5),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_22\
    );
\FIFO_DATA[6][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(6),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_23\
    );
\FIFO_DATA[6][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(7),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_24\
    );
\FIFO_DATA[6][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => \^write_request\,
      O => \wr_index_reg[3]_1\
    );
\FIFO_DATA[6][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(8),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_25\
    );
\FIFO_DATA[7][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(0),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_2\
    );
\FIFO_DATA[7][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(1),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_3\
    );
\FIFO_DATA[7][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(2),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_4\
    );
\FIFO_DATA[7][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(3),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_5\
    );
\FIFO_DATA[7][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(4),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_6\
    );
\FIFO_DATA[7][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(5),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_7\
    );
\FIFO_DATA[7][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(6),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_8\
    );
\FIFO_DATA[7][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(7),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_9\
    );
\FIFO_DATA[7][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^write_request\,
      O => \wr_index_reg[2]_1\
    );
\FIFO_DATA[7][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(8),
      I5 => \^write_request\,
      O => \wr_index_reg[0]_10\
    );
\FIFO_DATA[8][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(0),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_26\
    );
\FIFO_DATA[8][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(1),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_27\
    );
\FIFO_DATA[8][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(2),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_28\
    );
\FIFO_DATA[8][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(3),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_29\
    );
\FIFO_DATA[8][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(4),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_30\
    );
\FIFO_DATA[8][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(5),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_31\
    );
\FIFO_DATA[8][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(6),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_32\
    );
\FIFO_DATA[8][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(7),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_33\
    );
\FIFO_DATA[8][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => \^write_request\,
      O => \wr_index_reg[0]_1\
    );
\FIFO_DATA[8][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => officialData(8),
      I5 => \^write_request\,
      O => \wr_index_reg[3]_34\
    );
\FIFO_DATA[9][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(0),
      I4 => officialData(0),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_2\
    );
\FIFO_DATA[9][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(0),
      I4 => officialData(1),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_3\
    );
\FIFO_DATA[9][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(0),
      I4 => officialData(2),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_4\
    );
\FIFO_DATA[9][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(0),
      I4 => officialData(3),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_5\
    );
\FIFO_DATA[9][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(0),
      I4 => officialData(4),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_6\
    );
\FIFO_DATA[9][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(0),
      I4 => officialData(5),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_7\
    );
\FIFO_DATA[9][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(0),
      I4 => officialData(6),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_8\
    );
\FIFO_DATA[9][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(0),
      I4 => officialData(7),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_9\
    );
\FIFO_DATA[9][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(3),
      I4 => \^write_request\,
      O => \wr_index_reg[1]\
    );
\FIFO_DATA[9][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(0),
      I4 => officialData(8),
      I5 => \^write_request\,
      O => \wr_index_reg[2]_10\
    );
in_delay_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => in_delay_reg_0,
      I1 => in_delay_reg_1,
      I2 => axi_awvalid,
      I3 => axi_wvalid,
      I4 => waddr(1),
      I5 => waddr(0),
      O => fifoWrite
    );
in_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => fifoWrite,
      Q => in_delay,
      R => '0'
    );
\officialControl[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => axi_wvalid,
      I1 => axi_awvalid,
      I2 => in_delay_reg_1,
      I3 => in_delay_reg_0,
      O => \^p_10_in\
    );
outReg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => waddr(0),
      I1 => waddr(1),
      I2 => \^p_10_in\,
      I3 => in_delay,
      O => outReg_i_1_n_0
    );
outReg_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => outReg_i_1_n_0,
      Q => \^write_request\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my9x16Fifo is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \rd_index_reg[4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    empty : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_data : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \count_reg[3]\ : out STD_LOGIC;
    watermark : out STD_LOGIC_VECTOR ( 4 downto 0 );
    full : out STD_LOGIC;
    axi_aresetn_0 : out STD_LOGIC;
    p_10_in : out STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    p_0_in_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_arvalid : in STD_LOGIC;
    in_delay_reg : in STD_LOGIC;
    in_delay_reg_0 : in STD_LOGIC;
    \axi_rdata_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \axi_rdata_reg[8]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \axi_rdata_reg[8]_1\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    count : in STD_LOGIC_VECTOR ( 3 downto 0 );
    state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_aresetn : in STD_LOGIC;
    officialData : in STD_LOGIC_VECTOR ( 8 downto 0 );
    waddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_delay_reg_1 : in STD_LOGIC;
    in_delay_reg_2 : in STD_LOGIC;
    axi_awvalid : in STD_LOGIC;
    axi_wvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my9x16Fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my9x16Fifo is
  signal \FIFO_DATA_reg[0]_15\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[10]_5\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[11]_4\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[12]_3\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[13]_2\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[14]_1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[15]_0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[1]_14\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[2]_13\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[3]_12\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[4]_11\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[5]_10\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[6]_9\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[7]_8\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[8]_7\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[9]_6\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^axi_aresetn_0\ : STD_LOGIC;
  signal \^empty\ : STD_LOGIC;
  signal empty_INST_0_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^rd_data\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \rd_data[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_data[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_data[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_data[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_data[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_data[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_data[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_data[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_data[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_data[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_data[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_data[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_data[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_data[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_data[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_data[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_data[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_data[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_data[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_data[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_data[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_data[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_data[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_data[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_data[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_data[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_data[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_data[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_data[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_data[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_data[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_data[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_data[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_data[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_data[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_data[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_data[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_data[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_data[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_data[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_data[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_data[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_data[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_data[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_data[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal rd_edge_n_0 : STD_LOGIC;
  signal \rd_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \^rd_index_reg[4]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal shiftOut_reg_i_5_n_0 : STD_LOGIC;
  signal shiftOut_reg_i_6_n_0 : STD_LOGIC;
  signal shiftOut_reg_i_7_n_0 : STD_LOGIC;
  signal \watermark[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal wr_edge_n_1 : STD_LOGIC;
  signal wr_edge_n_10 : STD_LOGIC;
  signal wr_edge_n_100 : STD_LOGIC;
  signal wr_edge_n_101 : STD_LOGIC;
  signal wr_edge_n_102 : STD_LOGIC;
  signal wr_edge_n_103 : STD_LOGIC;
  signal wr_edge_n_104 : STD_LOGIC;
  signal wr_edge_n_105 : STD_LOGIC;
  signal wr_edge_n_106 : STD_LOGIC;
  signal wr_edge_n_107 : STD_LOGIC;
  signal wr_edge_n_108 : STD_LOGIC;
  signal wr_edge_n_109 : STD_LOGIC;
  signal wr_edge_n_11 : STD_LOGIC;
  signal wr_edge_n_110 : STD_LOGIC;
  signal wr_edge_n_111 : STD_LOGIC;
  signal wr_edge_n_112 : STD_LOGIC;
  signal wr_edge_n_113 : STD_LOGIC;
  signal wr_edge_n_114 : STD_LOGIC;
  signal wr_edge_n_115 : STD_LOGIC;
  signal wr_edge_n_116 : STD_LOGIC;
  signal wr_edge_n_117 : STD_LOGIC;
  signal wr_edge_n_118 : STD_LOGIC;
  signal wr_edge_n_119 : STD_LOGIC;
  signal wr_edge_n_12 : STD_LOGIC;
  signal wr_edge_n_120 : STD_LOGIC;
  signal wr_edge_n_121 : STD_LOGIC;
  signal wr_edge_n_122 : STD_LOGIC;
  signal wr_edge_n_123 : STD_LOGIC;
  signal wr_edge_n_124 : STD_LOGIC;
  signal wr_edge_n_125 : STD_LOGIC;
  signal wr_edge_n_126 : STD_LOGIC;
  signal wr_edge_n_127 : STD_LOGIC;
  signal wr_edge_n_128 : STD_LOGIC;
  signal wr_edge_n_129 : STD_LOGIC;
  signal wr_edge_n_13 : STD_LOGIC;
  signal wr_edge_n_130 : STD_LOGIC;
  signal wr_edge_n_131 : STD_LOGIC;
  signal wr_edge_n_132 : STD_LOGIC;
  signal wr_edge_n_133 : STD_LOGIC;
  signal wr_edge_n_134 : STD_LOGIC;
  signal wr_edge_n_135 : STD_LOGIC;
  signal wr_edge_n_136 : STD_LOGIC;
  signal wr_edge_n_137 : STD_LOGIC;
  signal wr_edge_n_138 : STD_LOGIC;
  signal wr_edge_n_139 : STD_LOGIC;
  signal wr_edge_n_14 : STD_LOGIC;
  signal wr_edge_n_140 : STD_LOGIC;
  signal wr_edge_n_141 : STD_LOGIC;
  signal wr_edge_n_142 : STD_LOGIC;
  signal wr_edge_n_143 : STD_LOGIC;
  signal wr_edge_n_144 : STD_LOGIC;
  signal wr_edge_n_145 : STD_LOGIC;
  signal wr_edge_n_146 : STD_LOGIC;
  signal wr_edge_n_147 : STD_LOGIC;
  signal wr_edge_n_148 : STD_LOGIC;
  signal wr_edge_n_149 : STD_LOGIC;
  signal wr_edge_n_15 : STD_LOGIC;
  signal wr_edge_n_150 : STD_LOGIC;
  signal wr_edge_n_151 : STD_LOGIC;
  signal wr_edge_n_152 : STD_LOGIC;
  signal wr_edge_n_153 : STD_LOGIC;
  signal wr_edge_n_154 : STD_LOGIC;
  signal wr_edge_n_155 : STD_LOGIC;
  signal wr_edge_n_156 : STD_LOGIC;
  signal wr_edge_n_157 : STD_LOGIC;
  signal wr_edge_n_158 : STD_LOGIC;
  signal wr_edge_n_159 : STD_LOGIC;
  signal wr_edge_n_16 : STD_LOGIC;
  signal wr_edge_n_160 : STD_LOGIC;
  signal wr_edge_n_17 : STD_LOGIC;
  signal wr_edge_n_18 : STD_LOGIC;
  signal wr_edge_n_19 : STD_LOGIC;
  signal wr_edge_n_2 : STD_LOGIC;
  signal wr_edge_n_20 : STD_LOGIC;
  signal wr_edge_n_21 : STD_LOGIC;
  signal wr_edge_n_22 : STD_LOGIC;
  signal wr_edge_n_23 : STD_LOGIC;
  signal wr_edge_n_24 : STD_LOGIC;
  signal wr_edge_n_25 : STD_LOGIC;
  signal wr_edge_n_26 : STD_LOGIC;
  signal wr_edge_n_27 : STD_LOGIC;
  signal wr_edge_n_28 : STD_LOGIC;
  signal wr_edge_n_29 : STD_LOGIC;
  signal wr_edge_n_3 : STD_LOGIC;
  signal wr_edge_n_30 : STD_LOGIC;
  signal wr_edge_n_31 : STD_LOGIC;
  signal wr_edge_n_32 : STD_LOGIC;
  signal wr_edge_n_33 : STD_LOGIC;
  signal wr_edge_n_34 : STD_LOGIC;
  signal wr_edge_n_35 : STD_LOGIC;
  signal wr_edge_n_36 : STD_LOGIC;
  signal wr_edge_n_37 : STD_LOGIC;
  signal wr_edge_n_38 : STD_LOGIC;
  signal wr_edge_n_39 : STD_LOGIC;
  signal wr_edge_n_4 : STD_LOGIC;
  signal wr_edge_n_40 : STD_LOGIC;
  signal wr_edge_n_41 : STD_LOGIC;
  signal wr_edge_n_42 : STD_LOGIC;
  signal wr_edge_n_43 : STD_LOGIC;
  signal wr_edge_n_44 : STD_LOGIC;
  signal wr_edge_n_45 : STD_LOGIC;
  signal wr_edge_n_46 : STD_LOGIC;
  signal wr_edge_n_47 : STD_LOGIC;
  signal wr_edge_n_48 : STD_LOGIC;
  signal wr_edge_n_49 : STD_LOGIC;
  signal wr_edge_n_5 : STD_LOGIC;
  signal wr_edge_n_50 : STD_LOGIC;
  signal wr_edge_n_51 : STD_LOGIC;
  signal wr_edge_n_52 : STD_LOGIC;
  signal wr_edge_n_53 : STD_LOGIC;
  signal wr_edge_n_54 : STD_LOGIC;
  signal wr_edge_n_55 : STD_LOGIC;
  signal wr_edge_n_56 : STD_LOGIC;
  signal wr_edge_n_57 : STD_LOGIC;
  signal wr_edge_n_58 : STD_LOGIC;
  signal wr_edge_n_59 : STD_LOGIC;
  signal wr_edge_n_6 : STD_LOGIC;
  signal wr_edge_n_60 : STD_LOGIC;
  signal wr_edge_n_61 : STD_LOGIC;
  signal wr_edge_n_62 : STD_LOGIC;
  signal wr_edge_n_63 : STD_LOGIC;
  signal wr_edge_n_64 : STD_LOGIC;
  signal wr_edge_n_65 : STD_LOGIC;
  signal wr_edge_n_66 : STD_LOGIC;
  signal wr_edge_n_67 : STD_LOGIC;
  signal wr_edge_n_68 : STD_LOGIC;
  signal wr_edge_n_69 : STD_LOGIC;
  signal wr_edge_n_7 : STD_LOGIC;
  signal wr_edge_n_70 : STD_LOGIC;
  signal wr_edge_n_71 : STD_LOGIC;
  signal wr_edge_n_72 : STD_LOGIC;
  signal wr_edge_n_73 : STD_LOGIC;
  signal wr_edge_n_74 : STD_LOGIC;
  signal wr_edge_n_75 : STD_LOGIC;
  signal wr_edge_n_76 : STD_LOGIC;
  signal wr_edge_n_77 : STD_LOGIC;
  signal wr_edge_n_78 : STD_LOGIC;
  signal wr_edge_n_79 : STD_LOGIC;
  signal wr_edge_n_8 : STD_LOGIC;
  signal wr_edge_n_80 : STD_LOGIC;
  signal wr_edge_n_81 : STD_LOGIC;
  signal wr_edge_n_82 : STD_LOGIC;
  signal wr_edge_n_83 : STD_LOGIC;
  signal wr_edge_n_84 : STD_LOGIC;
  signal wr_edge_n_85 : STD_LOGIC;
  signal wr_edge_n_86 : STD_LOGIC;
  signal wr_edge_n_87 : STD_LOGIC;
  signal wr_edge_n_88 : STD_LOGIC;
  signal wr_edge_n_89 : STD_LOGIC;
  signal wr_edge_n_9 : STD_LOGIC;
  signal wr_edge_n_90 : STD_LOGIC;
  signal wr_edge_n_91 : STD_LOGIC;
  signal wr_edge_n_92 : STD_LOGIC;
  signal wr_edge_n_93 : STD_LOGIC;
  signal wr_edge_n_94 : STD_LOGIC;
  signal wr_edge_n_95 : STD_LOGIC;
  signal wr_edge_n_96 : STD_LOGIC;
  signal wr_edge_n_97 : STD_LOGIC;
  signal wr_edge_n_98 : STD_LOGIC;
  signal wr_edge_n_99 : STD_LOGIC;
  signal \wr_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \wr_index[2]_i_1_n_0\ : STD_LOGIC;
  signal write_request : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of empty_INST_0 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of full_INST_0 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rd_index[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rd_index[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rd_index[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rd_index[4]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \watermark[0]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \watermark[1]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \watermark[3]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \watermark[4]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \wr_index[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \wr_index[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \wr_index[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \wr_index[4]_i_2\ : label is "soft_lutpair8";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  axi_aresetn_0 <= \^axi_aresetn_0\;
  empty <= \^empty\;
  rd_data(8 downto 0) <= \^rd_data\(8 downto 0);
  \rd_index_reg[4]_0\(4 downto 0) <= \^rd_index_reg[4]_0\(4 downto 0);
\FIFO_DATA_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_16,
      D => wr_edge_n_26,
      Q => \FIFO_DATA_reg[0]_15\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_16,
      D => wr_edge_n_27,
      Q => \FIFO_DATA_reg[0]_15\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_16,
      D => wr_edge_n_28,
      Q => \FIFO_DATA_reg[0]_15\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_16,
      D => wr_edge_n_29,
      Q => \FIFO_DATA_reg[0]_15\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_16,
      D => wr_edge_n_30,
      Q => \FIFO_DATA_reg[0]_15\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_16,
      D => wr_edge_n_31,
      Q => \FIFO_DATA_reg[0]_15\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_16,
      D => wr_edge_n_32,
      Q => \FIFO_DATA_reg[0]_15\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_16,
      D => wr_edge_n_33,
      Q => \FIFO_DATA_reg[0]_15\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_16,
      D => wr_edge_n_34,
      Q => \FIFO_DATA_reg[0]_15\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_6,
      D => wr_edge_n_98,
      Q => \FIFO_DATA_reg[10]_5\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_6,
      D => wr_edge_n_99,
      Q => \FIFO_DATA_reg[10]_5\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[10][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_6,
      D => wr_edge_n_100,
      Q => \FIFO_DATA_reg[10]_5\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[10][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_6,
      D => wr_edge_n_101,
      Q => \FIFO_DATA_reg[10]_5\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[10][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_6,
      D => wr_edge_n_102,
      Q => \FIFO_DATA_reg[10]_5\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[10][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_6,
      D => wr_edge_n_103,
      Q => \FIFO_DATA_reg[10]_5\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[10][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_6,
      D => wr_edge_n_104,
      Q => \FIFO_DATA_reg[10]_5\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[10][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_6,
      D => wr_edge_n_105,
      Q => \FIFO_DATA_reg[10]_5\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[10][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_6,
      D => wr_edge_n_106,
      Q => \FIFO_DATA_reg[10]_5\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_5,
      D => wr_edge_n_89,
      Q => \FIFO_DATA_reg[11]_4\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_5,
      D => wr_edge_n_90,
      Q => \FIFO_DATA_reg[11]_4\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_5,
      D => wr_edge_n_91,
      Q => \FIFO_DATA_reg[11]_4\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_5,
      D => wr_edge_n_92,
      Q => \FIFO_DATA_reg[11]_4\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[11][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_5,
      D => wr_edge_n_93,
      Q => \FIFO_DATA_reg[11]_4\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[11][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_5,
      D => wr_edge_n_94,
      Q => \FIFO_DATA_reg[11]_4\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[11][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_5,
      D => wr_edge_n_95,
      Q => \FIFO_DATA_reg[11]_4\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[11][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_5,
      D => wr_edge_n_96,
      Q => \FIFO_DATA_reg[11]_4\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[11][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_5,
      D => wr_edge_n_97,
      Q => \FIFO_DATA_reg[11]_4\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_4,
      D => wr_edge_n_17,
      Q => \FIFO_DATA_reg[12]_3\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_4,
      D => wr_edge_n_18,
      Q => \FIFO_DATA_reg[12]_3\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[12][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_4,
      D => wr_edge_n_19,
      Q => \FIFO_DATA_reg[12]_3\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[12][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_4,
      D => wr_edge_n_20,
      Q => \FIFO_DATA_reg[12]_3\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[12][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_4,
      D => wr_edge_n_21,
      Q => \FIFO_DATA_reg[12]_3\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[12][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_4,
      D => wr_edge_n_22,
      Q => \FIFO_DATA_reg[12]_3\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[12][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_4,
      D => wr_edge_n_23,
      Q => \FIFO_DATA_reg[12]_3\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[12][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_4,
      D => wr_edge_n_24,
      Q => \FIFO_DATA_reg[12]_3\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[12][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_4,
      D => wr_edge_n_25,
      Q => \FIFO_DATA_reg[12]_3\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_3,
      D => wr_edge_n_116,
      Q => \FIFO_DATA_reg[13]_2\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[13][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_3,
      D => wr_edge_n_117,
      Q => \FIFO_DATA_reg[13]_2\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[13][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_3,
      D => wr_edge_n_118,
      Q => \FIFO_DATA_reg[13]_2\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[13][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_3,
      D => wr_edge_n_119,
      Q => \FIFO_DATA_reg[13]_2\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[13][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_3,
      D => wr_edge_n_120,
      Q => \FIFO_DATA_reg[13]_2\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[13][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_3,
      D => wr_edge_n_121,
      Q => \FIFO_DATA_reg[13]_2\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[13][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_3,
      D => wr_edge_n_122,
      Q => \FIFO_DATA_reg[13]_2\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[13][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_3,
      D => wr_edge_n_123,
      Q => \FIFO_DATA_reg[13]_2\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[13][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_3,
      D => wr_edge_n_124,
      Q => \FIFO_DATA_reg[13]_2\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_2,
      D => wr_edge_n_107,
      Q => \FIFO_DATA_reg[14]_1\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[14][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_2,
      D => wr_edge_n_108,
      Q => \FIFO_DATA_reg[14]_1\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[14][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_2,
      D => wr_edge_n_109,
      Q => \FIFO_DATA_reg[14]_1\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[14][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_2,
      D => wr_edge_n_110,
      Q => \FIFO_DATA_reg[14]_1\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[14][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_2,
      D => wr_edge_n_111,
      Q => \FIFO_DATA_reg[14]_1\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[14][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_2,
      D => wr_edge_n_112,
      Q => \FIFO_DATA_reg[14]_1\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[14][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_2,
      D => wr_edge_n_113,
      Q => \FIFO_DATA_reg[14]_1\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[14][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_2,
      D => wr_edge_n_114,
      Q => \FIFO_DATA_reg[14]_1\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[14][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_2,
      D => wr_edge_n_115,
      Q => \FIFO_DATA_reg[14]_1\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[15][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_1,
      D => wr_edge_n_35,
      Q => \FIFO_DATA_reg[15]_0\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[15][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_1,
      D => wr_edge_n_36,
      Q => \FIFO_DATA_reg[15]_0\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[15][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_1,
      D => wr_edge_n_37,
      Q => \FIFO_DATA_reg[15]_0\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[15][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_1,
      D => wr_edge_n_38,
      Q => \FIFO_DATA_reg[15]_0\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[15][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_1,
      D => wr_edge_n_39,
      Q => \FIFO_DATA_reg[15]_0\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[15][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_1,
      D => wr_edge_n_40,
      Q => \FIFO_DATA_reg[15]_0\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[15][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_1,
      D => wr_edge_n_41,
      Q => \FIFO_DATA_reg[15]_0\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[15][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_1,
      D => wr_edge_n_42,
      Q => \FIFO_DATA_reg[15]_0\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[15][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_1,
      D => wr_edge_n_43,
      Q => \FIFO_DATA_reg[15]_0\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_15,
      D => wr_edge_n_152,
      Q => \FIFO_DATA_reg[1]_14\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_15,
      D => wr_edge_n_153,
      Q => \FIFO_DATA_reg[1]_14\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_15,
      D => wr_edge_n_154,
      Q => \FIFO_DATA_reg[1]_14\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_15,
      D => wr_edge_n_155,
      Q => \FIFO_DATA_reg[1]_14\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_15,
      D => wr_edge_n_156,
      Q => \FIFO_DATA_reg[1]_14\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_15,
      D => wr_edge_n_157,
      Q => \FIFO_DATA_reg[1]_14\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_15,
      D => wr_edge_n_158,
      Q => \FIFO_DATA_reg[1]_14\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_15,
      D => wr_edge_n_159,
      Q => \FIFO_DATA_reg[1]_14\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_15,
      D => wr_edge_n_160,
      Q => \FIFO_DATA_reg[1]_14\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_14,
      D => wr_edge_n_143,
      Q => \FIFO_DATA_reg[2]_13\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_14,
      D => wr_edge_n_144,
      Q => \FIFO_DATA_reg[2]_13\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_14,
      D => wr_edge_n_145,
      Q => \FIFO_DATA_reg[2]_13\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_14,
      D => wr_edge_n_146,
      Q => \FIFO_DATA_reg[2]_13\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_14,
      D => wr_edge_n_147,
      Q => \FIFO_DATA_reg[2]_13\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_14,
      D => wr_edge_n_148,
      Q => \FIFO_DATA_reg[2]_13\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_14,
      D => wr_edge_n_149,
      Q => \FIFO_DATA_reg[2]_13\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_14,
      D => wr_edge_n_150,
      Q => \FIFO_DATA_reg[2]_13\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_14,
      D => wr_edge_n_151,
      Q => \FIFO_DATA_reg[2]_13\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_44,
      Q => \FIFO_DATA_reg[3]_12\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_45,
      Q => \FIFO_DATA_reg[3]_12\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_46,
      Q => \FIFO_DATA_reg[3]_12\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_47,
      Q => \FIFO_DATA_reg[3]_12\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_48,
      Q => \FIFO_DATA_reg[3]_12\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_49,
      Q => \FIFO_DATA_reg[3]_12\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_50,
      Q => \FIFO_DATA_reg[3]_12\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_51,
      Q => \FIFO_DATA_reg[3]_12\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_52,
      Q => \FIFO_DATA_reg[3]_12\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_12,
      D => wr_edge_n_134,
      Q => \FIFO_DATA_reg[4]_11\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_12,
      D => wr_edge_n_135,
      Q => \FIFO_DATA_reg[4]_11\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_12,
      D => wr_edge_n_136,
      Q => \FIFO_DATA_reg[4]_11\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_12,
      D => wr_edge_n_137,
      Q => \FIFO_DATA_reg[4]_11\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[4][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_12,
      D => wr_edge_n_138,
      Q => \FIFO_DATA_reg[4]_11\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[4][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_12,
      D => wr_edge_n_139,
      Q => \FIFO_DATA_reg[4]_11\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[4][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_12,
      D => wr_edge_n_140,
      Q => \FIFO_DATA_reg[4]_11\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[4][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_12,
      D => wr_edge_n_141,
      Q => \FIFO_DATA_reg[4]_11\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[4][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_12,
      D => wr_edge_n_142,
      Q => \FIFO_DATA_reg[4]_11\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_11,
      D => wr_edge_n_125,
      Q => \FIFO_DATA_reg[5]_10\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_11,
      D => wr_edge_n_126,
      Q => \FIFO_DATA_reg[5]_10\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_11,
      D => wr_edge_n_127,
      Q => \FIFO_DATA_reg[5]_10\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_11,
      D => wr_edge_n_128,
      Q => \FIFO_DATA_reg[5]_10\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[5][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_11,
      D => wr_edge_n_129,
      Q => \FIFO_DATA_reg[5]_10\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[5][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_11,
      D => wr_edge_n_130,
      Q => \FIFO_DATA_reg[5]_10\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[5][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_11,
      D => wr_edge_n_131,
      Q => \FIFO_DATA_reg[5]_10\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[5][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_11,
      D => wr_edge_n_132,
      Q => \FIFO_DATA_reg[5]_10\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[5][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_11,
      D => wr_edge_n_133,
      Q => \FIFO_DATA_reg[5]_10\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_10,
      D => wr_edge_n_62,
      Q => \FIFO_DATA_reg[6]_9\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_10,
      D => wr_edge_n_63,
      Q => \FIFO_DATA_reg[6]_9\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_10,
      D => wr_edge_n_64,
      Q => \FIFO_DATA_reg[6]_9\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_10,
      D => wr_edge_n_65,
      Q => \FIFO_DATA_reg[6]_9\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[6][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_10,
      D => wr_edge_n_66,
      Q => \FIFO_DATA_reg[6]_9\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[6][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_10,
      D => wr_edge_n_67,
      Q => \FIFO_DATA_reg[6]_9\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[6][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_10,
      D => wr_edge_n_68,
      Q => \FIFO_DATA_reg[6]_9\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[6][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_10,
      D => wr_edge_n_69,
      Q => \FIFO_DATA_reg[6]_9\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[6][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_10,
      D => wr_edge_n_70,
      Q => \FIFO_DATA_reg[6]_9\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_9,
      D => wr_edge_n_53,
      Q => \FIFO_DATA_reg[7]_8\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_9,
      D => wr_edge_n_54,
      Q => \FIFO_DATA_reg[7]_8\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_9,
      D => wr_edge_n_55,
      Q => \FIFO_DATA_reg[7]_8\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_9,
      D => wr_edge_n_56,
      Q => \FIFO_DATA_reg[7]_8\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[7][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_9,
      D => wr_edge_n_57,
      Q => \FIFO_DATA_reg[7]_8\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[7][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_9,
      D => wr_edge_n_58,
      Q => \FIFO_DATA_reg[7]_8\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[7][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_9,
      D => wr_edge_n_59,
      Q => \FIFO_DATA_reg[7]_8\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[7][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_9,
      D => wr_edge_n_60,
      Q => \FIFO_DATA_reg[7]_8\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[7][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_9,
      D => wr_edge_n_61,
      Q => \FIFO_DATA_reg[7]_8\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_8,
      D => wr_edge_n_80,
      Q => \FIFO_DATA_reg[8]_7\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_8,
      D => wr_edge_n_81,
      Q => \FIFO_DATA_reg[8]_7\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[8][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_8,
      D => wr_edge_n_82,
      Q => \FIFO_DATA_reg[8]_7\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[8][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_8,
      D => wr_edge_n_83,
      Q => \FIFO_DATA_reg[8]_7\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[8][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_8,
      D => wr_edge_n_84,
      Q => \FIFO_DATA_reg[8]_7\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[8][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_8,
      D => wr_edge_n_85,
      Q => \FIFO_DATA_reg[8]_7\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[8][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_8,
      D => wr_edge_n_86,
      Q => \FIFO_DATA_reg[8]_7\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[8][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_8,
      D => wr_edge_n_87,
      Q => \FIFO_DATA_reg[8]_7\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[8][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_8,
      D => wr_edge_n_88,
      Q => \FIFO_DATA_reg[8]_7\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_7,
      D => wr_edge_n_71,
      Q => \FIFO_DATA_reg[9]_6\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_7,
      D => wr_edge_n_72,
      Q => \FIFO_DATA_reg[9]_6\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_7,
      D => wr_edge_n_73,
      Q => \FIFO_DATA_reg[9]_6\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_7,
      D => wr_edge_n_74,
      Q => \FIFO_DATA_reg[9]_6\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[9][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_7,
      D => wr_edge_n_75,
      Q => \FIFO_DATA_reg[9]_6\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[9][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_7,
      D => wr_edge_n_76,
      Q => \FIFO_DATA_reg[9]_6\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[9][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_7,
      D => wr_edge_n_77,
      Q => \FIFO_DATA_reg[9]_6\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[9][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_7,
      D => wr_edge_n_78,
      Q => \FIFO_DATA_reg[9]_6\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[9][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_7,
      D => wr_edge_n_79,
      Q => \FIFO_DATA_reg[9]_6\(8),
      R => \^axi_aresetn_0\
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \axi_rdata_reg[8]\(0),
      I1 => \axi_rdata_reg[8]_0\(0),
      I2 => \axi_rdata_reg[8]_1\(0),
      I3 => p_0_in_0(1),
      I4 => \^rd_data\(0),
      I5 => p_0_in_0(0),
      O => D(0)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \axi_rdata_reg[8]\(1),
      I1 => \axi_rdata_reg[8]_0\(1),
      I2 => \axi_rdata_reg[8]_1\(1),
      I3 => p_0_in_0(1),
      I4 => \^rd_data\(1),
      I5 => p_0_in_0(0),
      O => D(1)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \axi_rdata_reg[8]\(2),
      I1 => \axi_rdata_reg[8]_0\(2),
      I2 => \axi_rdata_reg[8]_1\(2),
      I3 => p_0_in_0(1),
      I4 => \^rd_data\(2),
      I5 => p_0_in_0(0),
      O => D(2)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \axi_rdata_reg[8]\(3),
      I1 => \axi_rdata_reg[8]_0\(3),
      I2 => \axi_rdata_reg[8]_1\(3),
      I3 => p_0_in_0(1),
      I4 => \^rd_data\(3),
      I5 => p_0_in_0(0),
      O => D(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \axi_rdata_reg[8]\(4),
      I1 => \axi_rdata_reg[8]_0\(4),
      I2 => \axi_rdata_reg[8]_1\(4),
      I3 => p_0_in_0(1),
      I4 => \^rd_data\(4),
      I5 => p_0_in_0(0),
      O => D(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \axi_rdata_reg[8]\(5),
      I1 => \axi_rdata_reg[8]_0\(5),
      I2 => \axi_rdata_reg[8]_1\(5),
      I3 => p_0_in_0(1),
      I4 => \^rd_data\(5),
      I5 => p_0_in_0(0),
      O => D(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \axi_rdata_reg[8]\(6),
      I1 => \axi_rdata_reg[8]_0\(6),
      I2 => \axi_rdata_reg[8]_1\(6),
      I3 => p_0_in_0(1),
      I4 => \^rd_data\(6),
      I5 => p_0_in_0(0),
      O => D(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \axi_rdata_reg[8]\(7),
      I1 => \axi_rdata_reg[8]_0\(7),
      I2 => \axi_rdata_reg[8]_1\(7),
      I3 => p_0_in_0(1),
      I4 => \^rd_data\(7),
      I5 => p_0_in_0(0),
      O => D(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \axi_rdata_reg[8]\(8),
      I1 => \axi_rdata_reg[8]_0\(8),
      I2 => \axi_rdata_reg[8]_1\(8),
      I3 => p_0_in_0(1),
      I4 => \^rd_data\(8),
      I5 => p_0_in_0(0),
      O => D(8)
    );
empty_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000090"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^rd_index_reg[4]_0\(3),
      I2 => empty_INST_0_i_1_n_0,
      I3 => \^rd_index_reg[4]_0\(4),
      I4 => \^q\(4),
      O => \^empty\
    );
empty_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^rd_index_reg[4]_0\(0),
      I2 => \^rd_index_reg[4]_0\(2),
      I3 => \^q\(2),
      I4 => \^rd_index_reg[4]_0\(1),
      I5 => \^q\(1),
      O => empty_INST_0_i_1_n_0
    );
full_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00828200"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^rd_index_reg[4]_0\(3),
      I2 => \^q\(3),
      I3 => \^q\(4),
      I4 => \^rd_index_reg[4]_0\(4),
      O => full
    );
\rd_data[0]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rd_data[0]_INST_0_i_1_n_0\,
      I1 => \rd_data[0]_INST_0_i_2_n_0\,
      O => \^rd_data\(0),
      S => \^rd_index_reg[4]_0\(3)
    );
\rd_data[0]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rd_data[0]_INST_0_i_3_n_0\,
      I1 => \rd_data[0]_INST_0_i_4_n_0\,
      O => \rd_data[0]_INST_0_i_1_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\rd_data[0]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rd_data[0]_INST_0_i_5_n_0\,
      I1 => \rd_data[0]_INST_0_i_6_n_0\,
      O => \rd_data[0]_INST_0_i_2_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\rd_data[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[3]_12\(0),
      I1 => \FIFO_DATA_reg[2]_13\(0),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[1]_14\(0),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[0]_15\(0),
      O => \rd_data[0]_INST_0_i_3_n_0\
    );
\rd_data[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[7]_8\(0),
      I1 => \FIFO_DATA_reg[6]_9\(0),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[5]_10\(0),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[4]_11\(0),
      O => \rd_data[0]_INST_0_i_4_n_0\
    );
\rd_data[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[11]_4\(0),
      I1 => \FIFO_DATA_reg[10]_5\(0),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[9]_6\(0),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[8]_7\(0),
      O => \rd_data[0]_INST_0_i_5_n_0\
    );
\rd_data[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[15]_0\(0),
      I1 => \FIFO_DATA_reg[14]_1\(0),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[13]_2\(0),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[12]_3\(0),
      O => \rd_data[0]_INST_0_i_6_n_0\
    );
\rd_data[1]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rd_data[1]_INST_0_i_1_n_0\,
      I1 => \rd_data[1]_INST_0_i_2_n_0\,
      O => \^rd_data\(1),
      S => \^rd_index_reg[4]_0\(3)
    );
\rd_data[1]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rd_data[1]_INST_0_i_3_n_0\,
      I1 => \rd_data[1]_INST_0_i_4_n_0\,
      O => \rd_data[1]_INST_0_i_1_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\rd_data[1]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rd_data[1]_INST_0_i_5_n_0\,
      I1 => \rd_data[1]_INST_0_i_6_n_0\,
      O => \rd_data[1]_INST_0_i_2_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\rd_data[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[3]_12\(1),
      I1 => \FIFO_DATA_reg[2]_13\(1),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[1]_14\(1),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[0]_15\(1),
      O => \rd_data[1]_INST_0_i_3_n_0\
    );
\rd_data[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[7]_8\(1),
      I1 => \FIFO_DATA_reg[6]_9\(1),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[5]_10\(1),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[4]_11\(1),
      O => \rd_data[1]_INST_0_i_4_n_0\
    );
\rd_data[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[11]_4\(1),
      I1 => \FIFO_DATA_reg[10]_5\(1),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[9]_6\(1),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[8]_7\(1),
      O => \rd_data[1]_INST_0_i_5_n_0\
    );
\rd_data[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[15]_0\(1),
      I1 => \FIFO_DATA_reg[14]_1\(1),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[13]_2\(1),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[12]_3\(1),
      O => \rd_data[1]_INST_0_i_6_n_0\
    );
\rd_data[2]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rd_data[2]_INST_0_i_1_n_0\,
      I1 => \rd_data[2]_INST_0_i_2_n_0\,
      O => \^rd_data\(2),
      S => \^rd_index_reg[4]_0\(3)
    );
\rd_data[2]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rd_data[2]_INST_0_i_3_n_0\,
      I1 => \rd_data[2]_INST_0_i_4_n_0\,
      O => \rd_data[2]_INST_0_i_1_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\rd_data[2]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rd_data[2]_INST_0_i_5_n_0\,
      I1 => \rd_data[2]_INST_0_i_6_n_0\,
      O => \rd_data[2]_INST_0_i_2_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\rd_data[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[3]_12\(2),
      I1 => \FIFO_DATA_reg[2]_13\(2),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[1]_14\(2),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[0]_15\(2),
      O => \rd_data[2]_INST_0_i_3_n_0\
    );
\rd_data[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[7]_8\(2),
      I1 => \FIFO_DATA_reg[6]_9\(2),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[5]_10\(2),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[4]_11\(2),
      O => \rd_data[2]_INST_0_i_4_n_0\
    );
\rd_data[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[11]_4\(2),
      I1 => \FIFO_DATA_reg[10]_5\(2),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[9]_6\(2),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[8]_7\(2),
      O => \rd_data[2]_INST_0_i_5_n_0\
    );
\rd_data[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[15]_0\(2),
      I1 => \FIFO_DATA_reg[14]_1\(2),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[13]_2\(2),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[12]_3\(2),
      O => \rd_data[2]_INST_0_i_6_n_0\
    );
\rd_data[3]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rd_data[3]_INST_0_i_1_n_0\,
      I1 => \rd_data[3]_INST_0_i_2_n_0\,
      O => \^rd_data\(3),
      S => \^rd_index_reg[4]_0\(3)
    );
\rd_data[3]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rd_data[3]_INST_0_i_3_n_0\,
      I1 => \rd_data[3]_INST_0_i_4_n_0\,
      O => \rd_data[3]_INST_0_i_1_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\rd_data[3]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rd_data[3]_INST_0_i_5_n_0\,
      I1 => \rd_data[3]_INST_0_i_6_n_0\,
      O => \rd_data[3]_INST_0_i_2_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\rd_data[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[3]_12\(3),
      I1 => \FIFO_DATA_reg[2]_13\(3),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[1]_14\(3),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[0]_15\(3),
      O => \rd_data[3]_INST_0_i_3_n_0\
    );
\rd_data[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[7]_8\(3),
      I1 => \FIFO_DATA_reg[6]_9\(3),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[5]_10\(3),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[4]_11\(3),
      O => \rd_data[3]_INST_0_i_4_n_0\
    );
\rd_data[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[11]_4\(3),
      I1 => \FIFO_DATA_reg[10]_5\(3),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[9]_6\(3),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[8]_7\(3),
      O => \rd_data[3]_INST_0_i_5_n_0\
    );
\rd_data[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[15]_0\(3),
      I1 => \FIFO_DATA_reg[14]_1\(3),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[13]_2\(3),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[12]_3\(3),
      O => \rd_data[3]_INST_0_i_6_n_0\
    );
\rd_data[4]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rd_data[4]_INST_0_i_1_n_0\,
      I1 => \rd_data[4]_INST_0_i_2_n_0\,
      O => \^rd_data\(4),
      S => \^rd_index_reg[4]_0\(3)
    );
\rd_data[4]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rd_data[4]_INST_0_i_3_n_0\,
      I1 => \rd_data[4]_INST_0_i_4_n_0\,
      O => \rd_data[4]_INST_0_i_1_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\rd_data[4]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rd_data[4]_INST_0_i_5_n_0\,
      I1 => \rd_data[4]_INST_0_i_6_n_0\,
      O => \rd_data[4]_INST_0_i_2_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\rd_data[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[3]_12\(4),
      I1 => \FIFO_DATA_reg[2]_13\(4),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[1]_14\(4),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[0]_15\(4),
      O => \rd_data[4]_INST_0_i_3_n_0\
    );
\rd_data[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[7]_8\(4),
      I1 => \FIFO_DATA_reg[6]_9\(4),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[5]_10\(4),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[4]_11\(4),
      O => \rd_data[4]_INST_0_i_4_n_0\
    );
\rd_data[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[11]_4\(4),
      I1 => \FIFO_DATA_reg[10]_5\(4),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[9]_6\(4),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[8]_7\(4),
      O => \rd_data[4]_INST_0_i_5_n_0\
    );
\rd_data[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[15]_0\(4),
      I1 => \FIFO_DATA_reg[14]_1\(4),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[13]_2\(4),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[12]_3\(4),
      O => \rd_data[4]_INST_0_i_6_n_0\
    );
\rd_data[5]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rd_data[5]_INST_0_i_1_n_0\,
      I1 => \rd_data[5]_INST_0_i_2_n_0\,
      O => \^rd_data\(5),
      S => \^rd_index_reg[4]_0\(3)
    );
\rd_data[5]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rd_data[5]_INST_0_i_3_n_0\,
      I1 => \rd_data[5]_INST_0_i_4_n_0\,
      O => \rd_data[5]_INST_0_i_1_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\rd_data[5]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rd_data[5]_INST_0_i_5_n_0\,
      I1 => \rd_data[5]_INST_0_i_6_n_0\,
      O => \rd_data[5]_INST_0_i_2_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\rd_data[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[3]_12\(5),
      I1 => \FIFO_DATA_reg[2]_13\(5),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[1]_14\(5),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[0]_15\(5),
      O => \rd_data[5]_INST_0_i_3_n_0\
    );
\rd_data[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[7]_8\(5),
      I1 => \FIFO_DATA_reg[6]_9\(5),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[5]_10\(5),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[4]_11\(5),
      O => \rd_data[5]_INST_0_i_4_n_0\
    );
\rd_data[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[11]_4\(5),
      I1 => \FIFO_DATA_reg[10]_5\(5),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[9]_6\(5),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[8]_7\(5),
      O => \rd_data[5]_INST_0_i_5_n_0\
    );
\rd_data[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[15]_0\(5),
      I1 => \FIFO_DATA_reg[14]_1\(5),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[13]_2\(5),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[12]_3\(5),
      O => \rd_data[5]_INST_0_i_6_n_0\
    );
\rd_data[6]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rd_data[6]_INST_0_i_1_n_0\,
      I1 => \rd_data[6]_INST_0_i_2_n_0\,
      O => \^rd_data\(6),
      S => \^rd_index_reg[4]_0\(3)
    );
\rd_data[6]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rd_data[6]_INST_0_i_3_n_0\,
      I1 => \rd_data[6]_INST_0_i_4_n_0\,
      O => \rd_data[6]_INST_0_i_1_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\rd_data[6]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rd_data[6]_INST_0_i_5_n_0\,
      I1 => \rd_data[6]_INST_0_i_6_n_0\,
      O => \rd_data[6]_INST_0_i_2_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\rd_data[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[3]_12\(6),
      I1 => \FIFO_DATA_reg[2]_13\(6),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[1]_14\(6),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[0]_15\(6),
      O => \rd_data[6]_INST_0_i_3_n_0\
    );
\rd_data[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[7]_8\(6),
      I1 => \FIFO_DATA_reg[6]_9\(6),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[5]_10\(6),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[4]_11\(6),
      O => \rd_data[6]_INST_0_i_4_n_0\
    );
\rd_data[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[11]_4\(6),
      I1 => \FIFO_DATA_reg[10]_5\(6),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[9]_6\(6),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[8]_7\(6),
      O => \rd_data[6]_INST_0_i_5_n_0\
    );
\rd_data[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[15]_0\(6),
      I1 => \FIFO_DATA_reg[14]_1\(6),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[13]_2\(6),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[12]_3\(6),
      O => \rd_data[6]_INST_0_i_6_n_0\
    );
\rd_data[7]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rd_data[7]_INST_0_i_1_n_0\,
      I1 => \rd_data[7]_INST_0_i_2_n_0\,
      O => \^rd_data\(7),
      S => \^rd_index_reg[4]_0\(3)
    );
\rd_data[7]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rd_data[7]_INST_0_i_3_n_0\,
      I1 => \rd_data[7]_INST_0_i_4_n_0\,
      O => \rd_data[7]_INST_0_i_1_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\rd_data[7]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rd_data[7]_INST_0_i_5_n_0\,
      I1 => \rd_data[7]_INST_0_i_6_n_0\,
      O => \rd_data[7]_INST_0_i_2_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\rd_data[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[3]_12\(7),
      I1 => \FIFO_DATA_reg[2]_13\(7),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[1]_14\(7),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[0]_15\(7),
      O => \rd_data[7]_INST_0_i_3_n_0\
    );
\rd_data[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[7]_8\(7),
      I1 => \FIFO_DATA_reg[6]_9\(7),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[5]_10\(7),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[4]_11\(7),
      O => \rd_data[7]_INST_0_i_4_n_0\
    );
\rd_data[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[11]_4\(7),
      I1 => \FIFO_DATA_reg[10]_5\(7),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[9]_6\(7),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[8]_7\(7),
      O => \rd_data[7]_INST_0_i_5_n_0\
    );
\rd_data[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[15]_0\(7),
      I1 => \FIFO_DATA_reg[14]_1\(7),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[13]_2\(7),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[12]_3\(7),
      O => \rd_data[7]_INST_0_i_6_n_0\
    );
\rd_data[8]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rd_data[8]_INST_0_i_1_n_0\,
      I1 => \rd_data[8]_INST_0_i_2_n_0\,
      O => \^rd_data\(8),
      S => \^rd_index_reg[4]_0\(3)
    );
\rd_data[8]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rd_data[8]_INST_0_i_3_n_0\,
      I1 => \rd_data[8]_INST_0_i_4_n_0\,
      O => \rd_data[8]_INST_0_i_1_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\rd_data[8]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rd_data[8]_INST_0_i_5_n_0\,
      I1 => \rd_data[8]_INST_0_i_6_n_0\,
      O => \rd_data[8]_INST_0_i_2_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\rd_data[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[3]_12\(8),
      I1 => \FIFO_DATA_reg[2]_13\(8),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[1]_14\(8),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[0]_15\(8),
      O => \rd_data[8]_INST_0_i_3_n_0\
    );
\rd_data[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[7]_8\(8),
      I1 => \FIFO_DATA_reg[6]_9\(8),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[5]_10\(8),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[4]_11\(8),
      O => \rd_data[8]_INST_0_i_4_n_0\
    );
\rd_data[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[11]_4\(8),
      I1 => \FIFO_DATA_reg[10]_5\(8),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[9]_6\(8),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[8]_7\(8),
      O => \rd_data[8]_INST_0_i_5_n_0\
    );
\rd_data[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[15]_0\(8),
      I1 => \FIFO_DATA_reg[14]_1\(8),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[13]_2\(8),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[12]_3\(8),
      O => \rd_data[8]_INST_0_i_6_n_0\
    );
rd_edge: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect
     port map (
      E(0) => rd_edge_n_0,
      axi_aclk => axi_aclk,
      axi_arvalid => axi_arvalid,
      empty => \^empty\,
      in_delay_reg_0 => in_delay_reg,
      in_delay_reg_1 => in_delay_reg_0,
      p_0_in_0(1 downto 0) => p_0_in_0(1 downto 0),
      write_request => write_request
    );
\rd_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(0),
      O => \rd_index[0]_i_1_n_0\
    );
\rd_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(0),
      I1 => \^rd_index_reg[4]_0\(1),
      O => \p_0_in__0\(1)
    );
\rd_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(0),
      I1 => \^rd_index_reg[4]_0\(1),
      I2 => \^rd_index_reg[4]_0\(2),
      O => \p_0_in__0\(2)
    );
\rd_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(1),
      I1 => \^rd_index_reg[4]_0\(0),
      I2 => \^rd_index_reg[4]_0\(2),
      I3 => \^rd_index_reg[4]_0\(3),
      O => \p_0_in__0\(3)
    );
\rd_index[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(2),
      I1 => \^rd_index_reg[4]_0\(0),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \^rd_index_reg[4]_0\(3),
      I4 => \^rd_index_reg[4]_0\(4),
      O => \p_0_in__0\(4)
    );
\rd_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd_edge_n_0,
      D => \rd_index[0]_i_1_n_0\,
      Q => \^rd_index_reg[4]_0\(0),
      R => \^axi_aresetn_0\
    );
\rd_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd_edge_n_0,
      D => \p_0_in__0\(1),
      Q => \^rd_index_reg[4]_0\(1),
      R => \^axi_aresetn_0\
    );
\rd_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd_edge_n_0,
      D => \p_0_in__0\(2),
      Q => \^rd_index_reg[4]_0\(2),
      R => \^axi_aresetn_0\
    );
\rd_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd_edge_n_0,
      D => \p_0_in__0\(3),
      Q => \^rd_index_reg[4]_0\(3),
      R => \^axi_aresetn_0\
    );
\rd_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd_edge_n_0,
      D => \p_0_in__0\(4),
      Q => \^rd_index_reg[4]_0\(4),
      R => \^axi_aresetn_0\
    );
shiftOut_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF00E2E2FFFF"
    )
        port map (
      I0 => shiftOut_reg_i_5_n_0,
      I1 => count(3),
      I2 => \^rd_data\(8),
      I3 => state(0),
      I4 => state(2),
      I5 => state(1),
      O => \count_reg[3]\
    );
shiftOut_reg_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => shiftOut_reg_i_6_n_0,
      I1 => shiftOut_reg_i_7_n_0,
      O => shiftOut_reg_i_5_n_0,
      S => count(2)
    );
shiftOut_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^rd_data\(3),
      I1 => \^rd_data\(2),
      I2 => count(1),
      I3 => \^rd_data\(1),
      I4 => count(0),
      I5 => \^rd_data\(0),
      O => shiftOut_reg_i_6_n_0
    );
shiftOut_reg_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^rd_data\(7),
      I1 => \^rd_data\(6),
      I2 => count(1),
      I3 => \^rd_data\(5),
      I4 => count(0),
      I5 => \^rd_data\(4),
      O => shiftOut_reg_i_7_n_0
    );
\watermark[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^rd_index_reg[4]_0\(0),
      O => watermark(0)
    );
\watermark[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(0),
      I1 => \^q\(0),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \^q\(1),
      O => watermark(1)
    );
\watermark[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F04B0FBB0FB4F04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^rd_index_reg[4]_0\(0),
      I2 => \^q\(1),
      I3 => \^rd_index_reg[4]_0\(1),
      I4 => \^rd_index_reg[4]_0\(2),
      I5 => \^q\(2),
      O => watermark(2)
    );
\watermark[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \watermark[4]_INST_0_i_1_n_0\,
      I1 => \^rd_index_reg[4]_0\(3),
      I2 => \^q\(3),
      O => watermark(3)
    );
\watermark[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \watermark[4]_INST_0_i_1_n_0\,
      I1 => \^q\(3),
      I2 => \^rd_index_reg[4]_0\(3),
      I3 => \^rd_index_reg[4]_0\(4),
      I4 => \^q\(4),
      O => watermark(4)
    );
\watermark[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D4DD4444DDDDD4DD"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(2),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^rd_index_reg[4]_0\(0),
      I4 => \^q\(1),
      I5 => \^rd_index_reg[4]_0\(1),
      O => \watermark[4]_INST_0_i_1_n_0\
    );
wr_edge: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0
     port map (
      Q(3 downto 0) => \^q\(3 downto 0),
      axi_aclk => axi_aclk,
      axi_awvalid => axi_awvalid,
      axi_wvalid => axi_wvalid,
      in_delay_reg_0 => in_delay_reg_1,
      in_delay_reg_1 => in_delay_reg_2,
      officialData(8 downto 0) => officialData(8 downto 0),
      p_10_in => p_10_in,
      waddr(1 downto 0) => waddr(1 downto 0),
      \wr_index_reg[0]\ => wr_edge_n_4,
      \wr_index_reg[0]_0\ => wr_edge_n_6,
      \wr_index_reg[0]_1\ => wr_edge_n_8,
      \wr_index_reg[0]_10\ => wr_edge_n_61,
      \wr_index_reg[0]_11\ => wr_edge_n_89,
      \wr_index_reg[0]_12\ => wr_edge_n_90,
      \wr_index_reg[0]_13\ => wr_edge_n_91,
      \wr_index_reg[0]_14\ => wr_edge_n_92,
      \wr_index_reg[0]_15\ => wr_edge_n_93,
      \wr_index_reg[0]_16\ => wr_edge_n_94,
      \wr_index_reg[0]_17\ => wr_edge_n_95,
      \wr_index_reg[0]_18\ => wr_edge_n_96,
      \wr_index_reg[0]_19\ => wr_edge_n_97,
      \wr_index_reg[0]_2\ => wr_edge_n_53,
      \wr_index_reg[0]_20\ => wr_edge_n_116,
      \wr_index_reg[0]_21\ => wr_edge_n_117,
      \wr_index_reg[0]_22\ => wr_edge_n_118,
      \wr_index_reg[0]_23\ => wr_edge_n_119,
      \wr_index_reg[0]_24\ => wr_edge_n_120,
      \wr_index_reg[0]_25\ => wr_edge_n_121,
      \wr_index_reg[0]_26\ => wr_edge_n_122,
      \wr_index_reg[0]_27\ => wr_edge_n_123,
      \wr_index_reg[0]_28\ => wr_edge_n_124,
      \wr_index_reg[0]_29\ => wr_edge_n_152,
      \wr_index_reg[0]_3\ => wr_edge_n_54,
      \wr_index_reg[0]_30\ => wr_edge_n_153,
      \wr_index_reg[0]_31\ => wr_edge_n_154,
      \wr_index_reg[0]_32\ => wr_edge_n_155,
      \wr_index_reg[0]_33\ => wr_edge_n_156,
      \wr_index_reg[0]_34\ => wr_edge_n_157,
      \wr_index_reg[0]_35\ => wr_edge_n_158,
      \wr_index_reg[0]_36\ => wr_edge_n_159,
      \wr_index_reg[0]_37\ => wr_edge_n_160,
      \wr_index_reg[0]_4\ => wr_edge_n_55,
      \wr_index_reg[0]_5\ => wr_edge_n_56,
      \wr_index_reg[0]_6\ => wr_edge_n_57,
      \wr_index_reg[0]_7\ => wr_edge_n_58,
      \wr_index_reg[0]_8\ => wr_edge_n_59,
      \wr_index_reg[0]_9\ => wr_edge_n_60,
      \wr_index_reg[1]\ => wr_edge_n_7,
      \wr_index_reg[1]_0\ => wr_edge_n_17,
      \wr_index_reg[1]_1\ => wr_edge_n_18,
      \wr_index_reg[1]_10\ => wr_edge_n_27,
      \wr_index_reg[1]_11\ => wr_edge_n_28,
      \wr_index_reg[1]_12\ => wr_edge_n_29,
      \wr_index_reg[1]_13\ => wr_edge_n_30,
      \wr_index_reg[1]_14\ => wr_edge_n_31,
      \wr_index_reg[1]_15\ => wr_edge_n_32,
      \wr_index_reg[1]_16\ => wr_edge_n_33,
      \wr_index_reg[1]_17\ => wr_edge_n_34,
      \wr_index_reg[1]_18\ => wr_edge_n_35,
      \wr_index_reg[1]_19\ => wr_edge_n_36,
      \wr_index_reg[1]_2\ => wr_edge_n_19,
      \wr_index_reg[1]_20\ => wr_edge_n_37,
      \wr_index_reg[1]_21\ => wr_edge_n_38,
      \wr_index_reg[1]_22\ => wr_edge_n_39,
      \wr_index_reg[1]_23\ => wr_edge_n_40,
      \wr_index_reg[1]_24\ => wr_edge_n_41,
      \wr_index_reg[1]_25\ => wr_edge_n_42,
      \wr_index_reg[1]_26\ => wr_edge_n_43,
      \wr_index_reg[1]_27\ => wr_edge_n_107,
      \wr_index_reg[1]_28\ => wr_edge_n_108,
      \wr_index_reg[1]_29\ => wr_edge_n_109,
      \wr_index_reg[1]_3\ => wr_edge_n_20,
      \wr_index_reg[1]_30\ => wr_edge_n_110,
      \wr_index_reg[1]_31\ => wr_edge_n_111,
      \wr_index_reg[1]_32\ => wr_edge_n_112,
      \wr_index_reg[1]_33\ => wr_edge_n_113,
      \wr_index_reg[1]_34\ => wr_edge_n_114,
      \wr_index_reg[1]_35\ => wr_edge_n_115,
      \wr_index_reg[1]_36\ => wr_edge_n_143,
      \wr_index_reg[1]_37\ => wr_edge_n_144,
      \wr_index_reg[1]_38\ => wr_edge_n_145,
      \wr_index_reg[1]_39\ => wr_edge_n_146,
      \wr_index_reg[1]_4\ => wr_edge_n_21,
      \wr_index_reg[1]_40\ => wr_edge_n_147,
      \wr_index_reg[1]_41\ => wr_edge_n_148,
      \wr_index_reg[1]_42\ => wr_edge_n_149,
      \wr_index_reg[1]_43\ => wr_edge_n_150,
      \wr_index_reg[1]_44\ => wr_edge_n_151,
      \wr_index_reg[1]_5\ => wr_edge_n_22,
      \wr_index_reg[1]_6\ => wr_edge_n_23,
      \wr_index_reg[1]_7\ => wr_edge_n_24,
      \wr_index_reg[1]_8\ => wr_edge_n_25,
      \wr_index_reg[1]_9\ => wr_edge_n_26,
      \wr_index_reg[2]\ => wr_edge_n_2,
      \wr_index_reg[2]_0\ => wr_edge_n_3,
      \wr_index_reg[2]_1\ => wr_edge_n_9,
      \wr_index_reg[2]_10\ => wr_edge_n_79,
      \wr_index_reg[2]_11\ => wr_edge_n_98,
      \wr_index_reg[2]_12\ => wr_edge_n_99,
      \wr_index_reg[2]_13\ => wr_edge_n_100,
      \wr_index_reg[2]_14\ => wr_edge_n_101,
      \wr_index_reg[2]_15\ => wr_edge_n_102,
      \wr_index_reg[2]_16\ => wr_edge_n_103,
      \wr_index_reg[2]_17\ => wr_edge_n_104,
      \wr_index_reg[2]_18\ => wr_edge_n_105,
      \wr_index_reg[2]_19\ => wr_edge_n_106,
      \wr_index_reg[2]_2\ => wr_edge_n_71,
      \wr_index_reg[2]_20\ => wr_edge_n_134,
      \wr_index_reg[2]_21\ => wr_edge_n_135,
      \wr_index_reg[2]_22\ => wr_edge_n_136,
      \wr_index_reg[2]_23\ => wr_edge_n_137,
      \wr_index_reg[2]_24\ => wr_edge_n_138,
      \wr_index_reg[2]_25\ => wr_edge_n_139,
      \wr_index_reg[2]_26\ => wr_edge_n_140,
      \wr_index_reg[2]_27\ => wr_edge_n_141,
      \wr_index_reg[2]_28\ => wr_edge_n_142,
      \wr_index_reg[2]_3\ => wr_edge_n_72,
      \wr_index_reg[2]_4\ => wr_edge_n_73,
      \wr_index_reg[2]_5\ => wr_edge_n_74,
      \wr_index_reg[2]_6\ => wr_edge_n_75,
      \wr_index_reg[2]_7\ => wr_edge_n_76,
      \wr_index_reg[2]_8\ => wr_edge_n_77,
      \wr_index_reg[2]_9\ => wr_edge_n_78,
      \wr_index_reg[3]\ => wr_edge_n_1,
      \wr_index_reg[3]_0\ => wr_edge_n_5,
      \wr_index_reg[3]_1\ => wr_edge_n_10,
      \wr_index_reg[3]_10\ => wr_edge_n_46,
      \wr_index_reg[3]_11\ => wr_edge_n_47,
      \wr_index_reg[3]_12\ => wr_edge_n_48,
      \wr_index_reg[3]_13\ => wr_edge_n_49,
      \wr_index_reg[3]_14\ => wr_edge_n_50,
      \wr_index_reg[3]_15\ => wr_edge_n_51,
      \wr_index_reg[3]_16\ => wr_edge_n_52,
      \wr_index_reg[3]_17\ => wr_edge_n_62,
      \wr_index_reg[3]_18\ => wr_edge_n_63,
      \wr_index_reg[3]_19\ => wr_edge_n_64,
      \wr_index_reg[3]_2\ => wr_edge_n_11,
      \wr_index_reg[3]_20\ => wr_edge_n_65,
      \wr_index_reg[3]_21\ => wr_edge_n_66,
      \wr_index_reg[3]_22\ => wr_edge_n_67,
      \wr_index_reg[3]_23\ => wr_edge_n_68,
      \wr_index_reg[3]_24\ => wr_edge_n_69,
      \wr_index_reg[3]_25\ => wr_edge_n_70,
      \wr_index_reg[3]_26\ => wr_edge_n_80,
      \wr_index_reg[3]_27\ => wr_edge_n_81,
      \wr_index_reg[3]_28\ => wr_edge_n_82,
      \wr_index_reg[3]_29\ => wr_edge_n_83,
      \wr_index_reg[3]_3\ => wr_edge_n_12,
      \wr_index_reg[3]_30\ => wr_edge_n_84,
      \wr_index_reg[3]_31\ => wr_edge_n_85,
      \wr_index_reg[3]_32\ => wr_edge_n_86,
      \wr_index_reg[3]_33\ => wr_edge_n_87,
      \wr_index_reg[3]_34\ => wr_edge_n_88,
      \wr_index_reg[3]_35\ => wr_edge_n_125,
      \wr_index_reg[3]_36\ => wr_edge_n_126,
      \wr_index_reg[3]_37\ => wr_edge_n_127,
      \wr_index_reg[3]_38\ => wr_edge_n_128,
      \wr_index_reg[3]_39\ => wr_edge_n_129,
      \wr_index_reg[3]_4\ => wr_edge_n_13,
      \wr_index_reg[3]_40\ => wr_edge_n_130,
      \wr_index_reg[3]_41\ => wr_edge_n_131,
      \wr_index_reg[3]_42\ => wr_edge_n_132,
      \wr_index_reg[3]_43\ => wr_edge_n_133,
      \wr_index_reg[3]_5\ => wr_edge_n_14,
      \wr_index_reg[3]_6\ => wr_edge_n_15,
      \wr_index_reg[3]_7\ => wr_edge_n_16,
      \wr_index_reg[3]_8\ => wr_edge_n_44,
      \wr_index_reg[3]_9\ => wr_edge_n_45,
      write_request => write_request
    );
\wr_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \wr_index[0]_i_1_n_0\
    );
\wr_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => p_0_in(1)
    );
\wr_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \wr_index[2]_i_1_n_0\
    );
\wr_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => p_0_in(3)
    );
\wr_index[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => \^axi_aresetn_0\
    );
\wr_index[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => p_0_in(4)
    );
\wr_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => write_request,
      D => \wr_index[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \^axi_aresetn_0\
    );
\wr_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => write_request,
      D => p_0_in(1),
      Q => \^q\(1),
      R => \^axi_aresetn_0\
    );
\wr_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => write_request,
      D => \wr_index[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \^axi_aresetn_0\
    );
\wr_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => write_request,
      D => p_0_in(3),
      Q => \^q\(3),
      R => \^axi_aresetn_0\
    );
\wr_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => write_request,
      D => p_0_in(4),
      Q => \^q\(4),
      R => \^axi_aresetn_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI is
  port (
    tx_out : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    outSignal2 : out STD_LOGIC;
    outSignal_reg_0 : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_bvalid : out STD_LOGIC;
    aw_en_reg_0 : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \rd_index_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \officialControl_reg[5]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    baudClockOut : out STD_LOGIC;
    empty : out STD_LOGIC;
    rd_data : out STD_LOGIC_VECTOR ( 8 downto 0 );
    watermark : out STD_LOGIC_VECTOR ( 4 downto 0 );
    full : out STD_LOGIC;
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_aclk : in STD_LOGIC;
    outSignal2_reg_0 : in STD_LOGIC;
    outSignal_reg_1 : in STD_LOGIC;
    axi_bvalid_reg_0 : in STD_LOGIC;
    aw_en_reg_1 : in STD_LOGIC;
    axi_rvalid_reg_1 : in STD_LOGIC;
    axi_arvalid : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    rd_request : in STD_LOGIC;
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_wvalid : in STD_LOGIC;
    axi_awvalid : in STD_LOGIC;
    axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal PARITY_CONTROL : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \^aw_en_reg_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_2_n_0\ : STD_LOGIC;
  signal \count[3]_i_3_n_0\ : STD_LOGIC;
  signal \keepCount0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \keepCount0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \keepCount0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \keepCount0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \keepCount0_carry__0_n_0\ : STD_LOGIC;
  signal \keepCount0_carry__0_n_1\ : STD_LOGIC;
  signal \keepCount0_carry__0_n_2\ : STD_LOGIC;
  signal \keepCount0_carry__0_n_3\ : STD_LOGIC;
  signal \keepCount0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \keepCount0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \keepCount0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \keepCount0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \keepCount0_carry__1_n_0\ : STD_LOGIC;
  signal \keepCount0_carry__1_n_1\ : STD_LOGIC;
  signal \keepCount0_carry__1_n_2\ : STD_LOGIC;
  signal \keepCount0_carry__1_n_3\ : STD_LOGIC;
  signal \keepCount0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \keepCount0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \keepCount0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \keepCount0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \keepCount0_carry__2_n_0\ : STD_LOGIC;
  signal \keepCount0_carry__2_n_1\ : STD_LOGIC;
  signal \keepCount0_carry__2_n_2\ : STD_LOGIC;
  signal \keepCount0_carry__2_n_3\ : STD_LOGIC;
  signal \keepCount0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal keepCount0_carry_i_1_n_0 : STD_LOGIC;
  signal keepCount0_carry_i_2_n_0 : STD_LOGIC;
  signal keepCount0_carry_i_3_n_0 : STD_LOGIC;
  signal keepCount0_carry_i_4_n_0 : STD_LOGIC;
  signal keepCount0_carry_n_0 : STD_LOGIC;
  signal keepCount0_carry_n_1 : STD_LOGIC;
  signal keepCount0_carry_n_2 : STD_LOGIC;
  signal keepCount0_carry_n_3 : STD_LOGIC;
  signal \keepCount20_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \keepCount20_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \keepCount20_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \keepCount20_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \keepCount20_carry__0_n_0\ : STD_LOGIC;
  signal \keepCount20_carry__0_n_1\ : STD_LOGIC;
  signal \keepCount20_carry__0_n_2\ : STD_LOGIC;
  signal \keepCount20_carry__0_n_3\ : STD_LOGIC;
  signal \keepCount20_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \keepCount20_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \keepCount20_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \keepCount20_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \keepCount20_carry__1_n_0\ : STD_LOGIC;
  signal \keepCount20_carry__1_n_1\ : STD_LOGIC;
  signal \keepCount20_carry__1_n_2\ : STD_LOGIC;
  signal \keepCount20_carry__1_n_3\ : STD_LOGIC;
  signal \keepCount20_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \keepCount20_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \keepCount20_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \keepCount20_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \keepCount20_carry__2_n_0\ : STD_LOGIC;
  signal \keepCount20_carry__2_n_1\ : STD_LOGIC;
  signal \keepCount20_carry__2_n_2\ : STD_LOGIC;
  signal \keepCount20_carry__2_n_3\ : STD_LOGIC;
  signal \keepCount20_carry__3_i_1_n_0\ : STD_LOGIC;
  signal keepCount20_carry_i_1_n_0 : STD_LOGIC;
  signal keepCount20_carry_i_2_n_0 : STD_LOGIC;
  signal keepCount20_carry_i_3_n_0 : STD_LOGIC;
  signal keepCount20_carry_i_4_n_0 : STD_LOGIC;
  signal keepCount20_carry_n_0 : STD_LOGIC;
  signal keepCount20_carry_n_1 : STD_LOGIC;
  signal keepCount20_carry_n_2 : STD_LOGIC;
  signal keepCount20_carry_n_3 : STD_LOGIC;
  signal \keepCount2[3]_i_2_n_0\ : STD_LOGIC;
  signal keepCount2_reg : STD_LOGIC_VECTOR ( 50 downto 3 );
  signal \keepCount2_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount2_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount2_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount2_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount2_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount2_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount2_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount2_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount2_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount2_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount2_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount2_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount2_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount2_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount2_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount2_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount2_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount2_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount2_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount2_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount2_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount2_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount2_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount2_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount2_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount2_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount2_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount2_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount2_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount2_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount2_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount2_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount2_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount2_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount2_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount2_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount2_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount2_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount2_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount2_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount2_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount2_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount2_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount2_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount2_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount2_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount2_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount2_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount2_reg[35]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount2_reg[35]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount2_reg[35]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount2_reg[35]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount2_reg[35]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount2_reg[35]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount2_reg[35]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount2_reg[35]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount2_reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount2_reg[39]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount2_reg[39]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount2_reg[39]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount2_reg[39]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount2_reg[39]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount2_reg[39]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount2_reg[39]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount2_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount2_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount2_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount2_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount2_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount2_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount2_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount2_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount2_reg[43]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount2_reg[43]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount2_reg[43]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount2_reg[43]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount2_reg[43]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount2_reg[43]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount2_reg[43]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount2_reg[43]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount2_reg[47]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount2_reg[47]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount2_reg[47]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount2_reg[47]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount2_reg[47]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount2_reg[47]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount2_reg[47]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount2_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount2_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount2_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount2_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount2_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount2_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount2_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount2_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount[0]_i_3_n_0\ : STD_LOGIC;
  signal \keepCount[0]_i_4_n_0\ : STD_LOGIC;
  signal \keepCount[0]_i_5_n_0\ : STD_LOGIC;
  signal \keepCount[0]_i_6_n_0\ : STD_LOGIC;
  signal \keepCount[12]_i_2_n_0\ : STD_LOGIC;
  signal \keepCount[12]_i_3_n_0\ : STD_LOGIC;
  signal \keepCount[12]_i_4_n_0\ : STD_LOGIC;
  signal \keepCount[12]_i_5_n_0\ : STD_LOGIC;
  signal \keepCount[16]_i_2_n_0\ : STD_LOGIC;
  signal \keepCount[16]_i_3_n_0\ : STD_LOGIC;
  signal \keepCount[16]_i_4_n_0\ : STD_LOGIC;
  signal \keepCount[16]_i_5_n_0\ : STD_LOGIC;
  signal \keepCount[20]_i_2_n_0\ : STD_LOGIC;
  signal \keepCount[20]_i_3_n_0\ : STD_LOGIC;
  signal \keepCount[20]_i_4_n_0\ : STD_LOGIC;
  signal \keepCount[20]_i_5_n_0\ : STD_LOGIC;
  signal \keepCount[24]_i_2_n_0\ : STD_LOGIC;
  signal \keepCount[24]_i_3_n_0\ : STD_LOGIC;
  signal \keepCount[24]_i_4_n_0\ : STD_LOGIC;
  signal \keepCount[24]_i_5_n_0\ : STD_LOGIC;
  signal \keepCount[28]_i_2_n_0\ : STD_LOGIC;
  signal \keepCount[28]_i_3_n_0\ : STD_LOGIC;
  signal \keepCount[28]_i_4_n_0\ : STD_LOGIC;
  signal \keepCount[4]_i_2_n_0\ : STD_LOGIC;
  signal \keepCount[4]_i_3_n_0\ : STD_LOGIC;
  signal \keepCount[4]_i_4_n_0\ : STD_LOGIC;
  signal \keepCount[4]_i_5_n_0\ : STD_LOGIC;
  signal \keepCount[8]_i_2_n_0\ : STD_LOGIC;
  signal \keepCount[8]_i_3_n_0\ : STD_LOGIC;
  signal \keepCount[8]_i_4_n_0\ : STD_LOGIC;
  signal \keepCount[8]_i_5_n_0\ : STD_LOGIC;
  signal \keepCount_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \keepCount_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \keepCount_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \keepCount_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \keepCount_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \keepCount_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \keepCount_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \keepCount_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \keepCount_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount_reg[32]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount_reg[32]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount_reg[32]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount_reg[36]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount_reg[36]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount_reg[36]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount_reg[36]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount_reg[36]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount_reg[36]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount_reg[36]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount_reg[36]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount_reg[40]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount_reg[40]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount_reg[40]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount_reg[40]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount_reg[40]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount_reg[44]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount_reg[44]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount_reg[44]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount_reg[44]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount_reg[44]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount_reg[44]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount_reg[44]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount_reg[44]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount_reg[48]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount_reg[48]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount_reg[48]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount_reg[48]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount_reg[48]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \keepCount_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \keepCount_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \keepCount_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \keepCount_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \keepCount_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \keepCount_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \keepCount_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \keepCount_reg_n_0_[0]\ : STD_LOGIC;
  signal \keepCount_reg_n_0_[1]\ : STD_LOGIC;
  signal \keepCount_reg_n_0_[2]\ : STD_LOGIC;
  signal \keepCount_reg_n_0_[3]\ : STD_LOGIC;
  signal \keepCount_reg_n_0_[4]\ : STD_LOGIC;
  signal \keepCount_reg_n_0_[5]\ : STD_LOGIC;
  signal \keepCount_reg_n_0_[6]\ : STD_LOGIC;
  signal \keepCount_reg_n_0_[7]\ : STD_LOGIC;
  signal my9x16Fifo_inst_n_11 : STD_LOGIC;
  signal my9x16Fifo_inst_n_12 : STD_LOGIC;
  signal my9x16Fifo_inst_n_13 : STD_LOGIC;
  signal my9x16Fifo_inst_n_14 : STD_LOGIC;
  signal my9x16Fifo_inst_n_15 : STD_LOGIC;
  signal my9x16Fifo_inst_n_16 : STD_LOGIC;
  signal my9x16Fifo_inst_n_17 : STD_LOGIC;
  signal my9x16Fifo_inst_n_18 : STD_LOGIC;
  signal my9x16Fifo_inst_n_19 : STD_LOGIC;
  signal my9x16Fifo_inst_n_29 : STD_LOGIC;
  signal my9x16Fifo_inst_n_36 : STD_LOGIC;
  signal officialBaudRate : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \officialBaudRate[15]_i_1_n_0\ : STD_LOGIC;
  signal \officialBaudRate[23]_i_1_n_0\ : STD_LOGIC;
  signal \officialBaudRate[31]_i_1_n_0\ : STD_LOGIC;
  signal \officialBaudRate[7]_i_1_n_0\ : STD_LOGIC;
  signal \^officialcontrol_reg[5]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \officialControl_reg_n_0_[0]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[10]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[11]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[12]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[13]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[14]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[15]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[16]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[17]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[18]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[19]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[1]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[20]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[21]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[22]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[23]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[24]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[25]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[26]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[27]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[28]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[29]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[30]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[31]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[6]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[7]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[8]\ : STD_LOGIC;
  signal \officialControl_reg_n_0_[9]\ : STD_LOGIC;
  signal officialData : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \officialData[7]_i_1_n_0\ : STD_LOGIC;
  signal \officialData[8]_i_1_n_0\ : STD_LOGIC;
  signal officialStatus : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \officialStatus[15]_i_1_n_0\ : STD_LOGIC;
  signal \officialStatus[23]_i_1_n_0\ : STD_LOGIC;
  signal \officialStatus[31]_i_1_n_0\ : STD_LOGIC;
  signal \officialStatus[7]_i_1_n_0\ : STD_LOGIC;
  signal \officialStatus__0\ : STD_LOGIC_VECTOR ( 29 to 29 );
  signal outSignal : STD_LOGIC;
  signal \^outsignal2\ : STD_LOGIC;
  signal \^outsignal_reg_0\ : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__0_1\ : STD_LOGIC_VECTOR ( 42 downto 0 );
  signal p_10_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 5 );
  signal p_8_in : STD_LOGIC;
  signal \raddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[3]_i_1_n_0\ : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal shiftOut_reg_i_2_n_0 : STD_LOGIC;
  signal shiftOut_reg_i_3_n_0 : STD_LOGIC;
  signal shiftOut_reg_i_4_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ticks2[0]_i_2_n_0\ : STD_LOGIC;
  signal ticks2_reg : STD_LOGIC_VECTOR ( 50 downto 0 );
  signal \ticks2_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ticks2_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \ticks2_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \ticks2_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \ticks2_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \ticks2_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \ticks2_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \ticks2_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \ticks2_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \ticks2_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ticks2_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ticks2_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ticks2_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ticks2_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ticks2_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ticks2_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ticks2_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \ticks2_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \ticks2_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \ticks2_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \ticks2_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \ticks2_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \ticks2_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \ticks2_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \ticks2_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \ticks2_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \ticks2_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \ticks2_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \ticks2_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \ticks2_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \ticks2_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \ticks2_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \ticks2_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \ticks2_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \ticks2_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \ticks2_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \ticks2_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \ticks2_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \ticks2_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \ticks2_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \ticks2_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \ticks2_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \ticks2_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \ticks2_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \ticks2_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \ticks2_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \ticks2_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \ticks2_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \ticks2_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \ticks2_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \ticks2_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \ticks2_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \ticks2_reg[32]_i_1_n_4\ : STD_LOGIC;
  signal \ticks2_reg[32]_i_1_n_5\ : STD_LOGIC;
  signal \ticks2_reg[32]_i_1_n_6\ : STD_LOGIC;
  signal \ticks2_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \ticks2_reg[36]_i_1_n_0\ : STD_LOGIC;
  signal \ticks2_reg[36]_i_1_n_1\ : STD_LOGIC;
  signal \ticks2_reg[36]_i_1_n_2\ : STD_LOGIC;
  signal \ticks2_reg[36]_i_1_n_3\ : STD_LOGIC;
  signal \ticks2_reg[36]_i_1_n_4\ : STD_LOGIC;
  signal \ticks2_reg[36]_i_1_n_5\ : STD_LOGIC;
  signal \ticks2_reg[36]_i_1_n_6\ : STD_LOGIC;
  signal \ticks2_reg[36]_i_1_n_7\ : STD_LOGIC;
  signal \ticks2_reg[40]_i_1_n_0\ : STD_LOGIC;
  signal \ticks2_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \ticks2_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \ticks2_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \ticks2_reg[40]_i_1_n_4\ : STD_LOGIC;
  signal \ticks2_reg[40]_i_1_n_5\ : STD_LOGIC;
  signal \ticks2_reg[40]_i_1_n_6\ : STD_LOGIC;
  signal \ticks2_reg[40]_i_1_n_7\ : STD_LOGIC;
  signal \ticks2_reg[44]_i_1_n_0\ : STD_LOGIC;
  signal \ticks2_reg[44]_i_1_n_1\ : STD_LOGIC;
  signal \ticks2_reg[44]_i_1_n_2\ : STD_LOGIC;
  signal \ticks2_reg[44]_i_1_n_3\ : STD_LOGIC;
  signal \ticks2_reg[44]_i_1_n_4\ : STD_LOGIC;
  signal \ticks2_reg[44]_i_1_n_5\ : STD_LOGIC;
  signal \ticks2_reg[44]_i_1_n_6\ : STD_LOGIC;
  signal \ticks2_reg[44]_i_1_n_7\ : STD_LOGIC;
  signal \ticks2_reg[48]_i_1_n_2\ : STD_LOGIC;
  signal \ticks2_reg[48]_i_1_n_3\ : STD_LOGIC;
  signal \ticks2_reg[48]_i_1_n_5\ : STD_LOGIC;
  signal \ticks2_reg[48]_i_1_n_6\ : STD_LOGIC;
  signal \ticks2_reg[48]_i_1_n_7\ : STD_LOGIC;
  signal \ticks2_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ticks2_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ticks2_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ticks2_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ticks2_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ticks2_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ticks2_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ticks2_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ticks2_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ticks2_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ticks2_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ticks2_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ticks2_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ticks2_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ticks2_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ticks2_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \ticks[0]_i_2_n_0\ : STD_LOGIC;
  signal ticks_reg : STD_LOGIC_VECTOR ( 50 downto 0 );
  signal \ticks_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[32]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[32]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[32]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[36]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[36]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[36]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[36]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[36]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[36]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[36]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[36]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[40]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[40]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[40]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[40]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[40]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[44]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[44]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[44]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[44]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[44]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[44]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[44]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[44]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[48]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[48]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[48]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[48]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[48]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal waddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \waddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[3]_i_1_n_0\ : STD_LOGIC;
  signal NLW_keepCount0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_keepCount0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_keepCount0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_keepCount0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_keepCount0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_keepCount0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_keepCount20_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_keepCount20_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_keepCount20_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_keepCount20_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_keepCount20_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_keepCount20_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_keepCount2_reg[47]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_keepCount_reg[48]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_keepCount_reg[48]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ticks2_reg[48]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ticks2_reg[48]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ticks_reg[48]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ticks_reg[48]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair16";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "IDLE:000,START:001,STOP:011,LAST_BIT:101,DATA:100,PARITY:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "IDLE:000,START:001,STOP:011,LAST_BIT:101,DATA:100,PARITY:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "IDLE:000,START:001,STOP:011,LAST_BIT:101,DATA:100,PARITY:010";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count[3]_i_3\ : label is "soft_lutpair15";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \keepCount2_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount2_reg[15]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount2_reg[19]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount2_reg[23]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount2_reg[27]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount2_reg[31]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount2_reg[35]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount2_reg[39]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount2_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount2_reg[43]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount2_reg[47]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount2_reg[7]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount_reg[32]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount_reg[36]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount_reg[40]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount_reg[44]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount_reg[48]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \keepCount_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \raddr[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of shiftOut_reg_i_2 : label is "soft_lutpair17";
  attribute ADDER_THRESHOLD of \ticks2_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks2_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks2_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks2_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks2_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks2_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks2_reg[32]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks2_reg[36]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks2_reg[40]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks2_reg[44]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks2_reg[48]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks2_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks2_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks_reg[32]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks_reg[36]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks_reg[40]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks_reg[44]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks_reg[48]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks_reg[8]_i_1\ : label is 11;
begin
  CO(0) <= \^co\(0);
  aw_en_reg_0 <= \^aw_en_reg_0\;
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  \officialControl_reg[5]_0\(1 downto 0) <= \^officialcontrol_reg[5]_0\(1 downto 0);
  outSignal2 <= \^outsignal2\;
  outSignal_reg_0 <= \^outsignal_reg_0\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D9D80000"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => rd_request,
      I4 => axi_aresetn,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EC00"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => axi_aresetn,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D200"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => axi_aresetn,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal2\,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal2\,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal2\,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => axi_aclk,
      CE => '1',
      D => aw_en_reg_1,
      Q => \^aw_en_reg_0\,
      S => my9x16Fifo_inst_n_36
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => my9x16Fifo_inst_n_36
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => axi_wvalid,
      I1 => axi_awvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \^aw_en_reg_0\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => my9x16Fifo_inst_n_36
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_bvalid_reg_0,
      Q => axi_bvalid,
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(10),
      I1 => officialStatus(10),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[10]\,
      O => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(11),
      I1 => officialStatus(11),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[11]\,
      O => \axi_rdata[11]_i_1_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(12),
      I1 => officialStatus(12),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[12]\,
      O => \axi_rdata[12]_i_1_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(13),
      I1 => officialStatus(13),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[13]\,
      O => \axi_rdata[13]_i_1_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(14),
      I1 => officialStatus(14),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[14]\,
      O => \axi_rdata[14]_i_1_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(15),
      I1 => officialStatus(15),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[15]\,
      O => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(16),
      I1 => officialStatus(16),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[16]\,
      O => \axi_rdata[16]_i_1_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(17),
      I1 => officialStatus(17),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[17]\,
      O => \axi_rdata[17]_i_1_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(18),
      I1 => officialStatus(18),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[18]\,
      O => \axi_rdata[18]_i_1_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(19),
      I1 => officialStatus(19),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[19]\,
      O => \axi_rdata[19]_i_1_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(20),
      I1 => officialStatus(20),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[20]\,
      O => \axi_rdata[20]_i_1_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(21),
      I1 => officialStatus(21),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[21]\,
      O => \axi_rdata[21]_i_1_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(22),
      I1 => officialStatus(22),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[22]\,
      O => \axi_rdata[22]_i_1_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(23),
      I1 => officialStatus(23),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[23]\,
      O => \axi_rdata[23]_i_1_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(24),
      I1 => officialStatus(24),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[24]\,
      O => \axi_rdata[24]_i_1_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(25),
      I1 => officialStatus(25),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[25]\,
      O => \axi_rdata[25]_i_1_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(26),
      I1 => officialStatus(26),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[26]\,
      O => \axi_rdata[26]_i_1_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(27),
      I1 => officialStatus(27),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[27]\,
      O => \axi_rdata[27]_i_1_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(28),
      I1 => officialStatus(28),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[28]\,
      O => \axi_rdata[28]_i_1_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(29),
      I1 => \officialStatus__0\(29),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[29]\,
      O => \axi_rdata[29]_i_1_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(30),
      I1 => officialStatus(30),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[30]\,
      O => \axi_rdata[30]_i_1_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => axi_arvalid,
      I1 => \^axi_rvalid_reg_0\,
      I2 => \^axi_arready_reg_0\,
      O => p_8_in
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(31),
      I1 => officialStatus(31),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[31]\,
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(9),
      I1 => officialStatus(9),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[9]\,
      O => \axi_rdata[9]_i_1_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => my9x16Fifo_inst_n_19,
      Q => axi_rdata(0),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[10]_i_1_n_0\,
      Q => axi_rdata(10),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[11]_i_1_n_0\,
      Q => axi_rdata(11),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[12]_i_1_n_0\,
      Q => axi_rdata(12),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[13]_i_1_n_0\,
      Q => axi_rdata(13),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[14]_i_1_n_0\,
      Q => axi_rdata(14),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[15]_i_1_n_0\,
      Q => axi_rdata(15),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[16]_i_1_n_0\,
      Q => axi_rdata(16),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[17]_i_1_n_0\,
      Q => axi_rdata(17),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[18]_i_1_n_0\,
      Q => axi_rdata(18),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[19]_i_1_n_0\,
      Q => axi_rdata(19),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => my9x16Fifo_inst_n_18,
      Q => axi_rdata(1),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[20]_i_1_n_0\,
      Q => axi_rdata(20),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[21]_i_1_n_0\,
      Q => axi_rdata(21),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[22]_i_1_n_0\,
      Q => axi_rdata(22),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[23]_i_1_n_0\,
      Q => axi_rdata(23),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[24]_i_1_n_0\,
      Q => axi_rdata(24),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[25]_i_1_n_0\,
      Q => axi_rdata(25),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[26]_i_1_n_0\,
      Q => axi_rdata(26),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[27]_i_1_n_0\,
      Q => axi_rdata(27),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[28]_i_1_n_0\,
      Q => axi_rdata(28),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[29]_i_1_n_0\,
      Q => axi_rdata(29),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => my9x16Fifo_inst_n_17,
      Q => axi_rdata(2),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[30]_i_1_n_0\,
      Q => axi_rdata(30),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[31]_i_2_n_0\,
      Q => axi_rdata(31),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => my9x16Fifo_inst_n_16,
      Q => axi_rdata(3),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => my9x16Fifo_inst_n_15,
      Q => axi_rdata(4),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => my9x16Fifo_inst_n_14,
      Q => axi_rdata(5),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => my9x16Fifo_inst_n_13,
      Q => axi_rdata(6),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => my9x16Fifo_inst_n_12,
      Q => axi_rdata(7),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => my9x16Fifo_inst_n_11,
      Q => axi_rdata(8),
      R => my9x16Fifo_inst_n_36
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_8_in,
      D => \axi_rdata[9]_i_1_n_0\,
      Q => axi_rdata(9),
      R => my9x16Fifo_inst_n_36
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_rvalid_reg_1,
      Q => \^axi_rvalid_reg_0\,
      R => my9x16Fifo_inst_n_36
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => axi_wvalid,
      I1 => axi_awvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => \^aw_en_reg_0\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => my9x16Fifo_inst_n_36
    );
baudClockOut_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^outsignal_reg_0\,
      I1 => \^officialcontrol_reg[5]_0\(1),
      O => baudClockOut
    );
\count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(2),
      I1 => count(0),
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => state(2),
      I1 => count(1),
      I2 => count(0),
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => state(2),
      I1 => count(2),
      I2 => count(1),
      I3 => count(0),
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => axi_aresetn,
      O => \count[3]_i_1_n_0\
    );
\count[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08082220"
    )
        port map (
      I0 => axi_aresetn,
      I1 => state(1),
      I2 => state(2),
      I3 => rd_request,
      I4 => state(0),
      O => \count[3]_i_2_n_0\
    );
\count[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => state(2),
      I1 => count(3),
      I2 => count(2),
      I3 => count(0),
      I4 => count(1),
      O => \count[3]_i_3_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal2\,
      CE => \count[3]_i_2_n_0\,
      D => \count[0]_i_1_n_0\,
      Q => count(0),
      R => \count[3]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal2\,
      CE => \count[3]_i_2_n_0\,
      D => \count[1]_i_1_n_0\,
      Q => count(1),
      R => \count[3]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal2\,
      CE => \count[3]_i_2_n_0\,
      D => \count[2]_i_1_n_0\,
      Q => count(2),
      R => \count[3]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal2\,
      CE => \count[3]_i_2_n_0\,
      D => \count[3]_i_3_n_0\,
      Q => count(3),
      R => \count[3]_i_1_n_0\
    );
keepCount0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => keepCount0_carry_n_0,
      CO(2) => keepCount0_carry_n_1,
      CO(1) => keepCount0_carry_n_2,
      CO(0) => keepCount0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_keepCount0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => keepCount0_carry_i_1_n_0,
      S(2) => keepCount0_carry_i_2_n_0,
      S(1) => keepCount0_carry_i_3_n_0,
      S(0) => keepCount0_carry_i_4_n_0
    );
\keepCount0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => keepCount0_carry_n_0,
      CO(3) => \keepCount0_carry__0_n_0\,
      CO(2) => \keepCount0_carry__0_n_1\,
      CO(1) => \keepCount0_carry__0_n_2\,
      CO(0) => \keepCount0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_keepCount0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \keepCount0_carry__0_i_1_n_0\,
      S(2) => \keepCount0_carry__0_i_2_n_0\,
      S(1) => \keepCount0_carry__0_i_3_n_0\,
      S(0) => \keepCount0_carry__0_i_4_n_0\
    );
\keepCount0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \p_0_in__0_1\(21),
      I1 => ticks_reg(21),
      I2 => ticks_reg(23),
      I3 => \p_0_in__0_1\(23),
      I4 => ticks_reg(22),
      I5 => \p_0_in__0_1\(22),
      O => \keepCount0_carry__0_i_1_n_0\
    );
\keepCount0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \p_0_in__0_1\(18),
      I1 => ticks_reg(18),
      I2 => ticks_reg(20),
      I3 => \p_0_in__0_1\(20),
      I4 => ticks_reg(19),
      I5 => \p_0_in__0_1\(19),
      O => \keepCount0_carry__0_i_2_n_0\
    );
\keepCount0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \p_0_in__0_1\(15),
      I1 => ticks_reg(15),
      I2 => ticks_reg(17),
      I3 => \p_0_in__0_1\(17),
      I4 => ticks_reg(16),
      I5 => \p_0_in__0_1\(16),
      O => \keepCount0_carry__0_i_3_n_0\
    );
\keepCount0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \p_0_in__0_1\(12),
      I1 => ticks_reg(12),
      I2 => ticks_reg(14),
      I3 => \p_0_in__0_1\(14),
      I4 => ticks_reg(13),
      I5 => \p_0_in__0_1\(13),
      O => \keepCount0_carry__0_i_4_n_0\
    );
\keepCount0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount0_carry__0_n_0\,
      CO(3) => \keepCount0_carry__1_n_0\,
      CO(2) => \keepCount0_carry__1_n_1\,
      CO(1) => \keepCount0_carry__1_n_2\,
      CO(0) => \keepCount0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_keepCount0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \keepCount0_carry__1_i_1_n_0\,
      S(2) => \keepCount0_carry__1_i_2_n_0\,
      S(1) => \keepCount0_carry__1_i_3_n_0\,
      S(0) => \keepCount0_carry__1_i_4_n_0\
    );
\keepCount0_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \p_0_in__0_1\(33),
      I1 => ticks_reg(33),
      I2 => ticks_reg(35),
      I3 => \p_0_in__0_1\(35),
      I4 => ticks_reg(34),
      I5 => \p_0_in__0_1\(34),
      O => \keepCount0_carry__1_i_1_n_0\
    );
\keepCount0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \p_0_in__0_1\(30),
      I1 => ticks_reg(30),
      I2 => ticks_reg(32),
      I3 => \p_0_in__0_1\(32),
      I4 => ticks_reg(31),
      I5 => \p_0_in__0_1\(31),
      O => \keepCount0_carry__1_i_2_n_0\
    );
\keepCount0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \p_0_in__0_1\(27),
      I1 => ticks_reg(27),
      I2 => ticks_reg(29),
      I3 => \p_0_in__0_1\(29),
      I4 => ticks_reg(28),
      I5 => \p_0_in__0_1\(28),
      O => \keepCount0_carry__1_i_3_n_0\
    );
\keepCount0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \p_0_in__0_1\(24),
      I1 => ticks_reg(24),
      I2 => ticks_reg(26),
      I3 => \p_0_in__0_1\(26),
      I4 => ticks_reg(25),
      I5 => \p_0_in__0_1\(25),
      O => \keepCount0_carry__1_i_4_n_0\
    );
\keepCount0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount0_carry__1_n_0\,
      CO(3) => \keepCount0_carry__2_n_0\,
      CO(2) => \keepCount0_carry__2_n_1\,
      CO(1) => \keepCount0_carry__2_n_2\,
      CO(0) => \keepCount0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_keepCount0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \keepCount0_carry__2_i_1_n_0\,
      S(2) => \keepCount0_carry__2_i_2_n_0\,
      S(1) => \keepCount0_carry__2_i_3_n_0\,
      S(0) => \keepCount0_carry__2_i_4_n_0\
    );
\keepCount0_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ticks_reg(47),
      I1 => ticks_reg(46),
      I2 => ticks_reg(45),
      O => \keepCount0_carry__2_i_1_n_0\
    );
\keepCount0_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0009"
    )
        port map (
      I0 => \p_0_in__0_1\(42),
      I1 => ticks_reg(42),
      I2 => ticks_reg(44),
      I3 => ticks_reg(43),
      O => \keepCount0_carry__2_i_2_n_0\
    );
\keepCount0_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \p_0_in__0_1\(39),
      I1 => ticks_reg(39),
      I2 => ticks_reg(41),
      I3 => \p_0_in__0_1\(41),
      I4 => ticks_reg(40),
      I5 => \p_0_in__0_1\(40),
      O => \keepCount0_carry__2_i_3_n_0\
    );
\keepCount0_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \p_0_in__0_1\(36),
      I1 => ticks_reg(36),
      I2 => ticks_reg(38),
      I3 => \p_0_in__0_1\(38),
      I4 => ticks_reg(37),
      I5 => \p_0_in__0_1\(37),
      O => \keepCount0_carry__2_i_4_n_0\
    );
\keepCount0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount0_carry__2_n_0\,
      CO(3 downto 1) => \NLW_keepCount0_carry__3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \^co\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_keepCount0_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \keepCount0_carry__3_i_1_n_0\
    );
\keepCount0_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ticks_reg(50),
      I1 => ticks_reg(49),
      I2 => ticks_reg(48),
      O => \keepCount0_carry__3_i_1_n_0\
    );
keepCount0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \p_0_in__0_1\(9),
      I1 => ticks_reg(9),
      I2 => ticks_reg(11),
      I3 => \p_0_in__0_1\(11),
      I4 => ticks_reg(10),
      I5 => \p_0_in__0_1\(10),
      O => keepCount0_carry_i_1_n_0
    );
keepCount0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \p_0_in__0_1\(6),
      I1 => ticks_reg(6),
      I2 => ticks_reg(8),
      I3 => \p_0_in__0_1\(8),
      I4 => ticks_reg(7),
      I5 => \p_0_in__0_1\(7),
      O => keepCount0_carry_i_2_n_0
    );
keepCount0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \p_0_in__0_1\(3),
      I1 => ticks_reg(3),
      I2 => ticks_reg(5),
      I3 => \p_0_in__0_1\(5),
      I4 => ticks_reg(4),
      I5 => \p_0_in__0_1\(4),
      O => keepCount0_carry_i_3_n_0
    );
keepCount0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \p_0_in__0_1\(0),
      I1 => ticks_reg(0),
      I2 => ticks_reg(2),
      I3 => \p_0_in__0_1\(2),
      I4 => ticks_reg(1),
      I5 => \p_0_in__0_1\(1),
      O => keepCount0_carry_i_4_n_0
    );
keepCount20_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => keepCount20_carry_n_0,
      CO(2) => keepCount20_carry_n_1,
      CO(1) => keepCount20_carry_n_2,
      CO(0) => keepCount20_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_keepCount20_carry_O_UNCONNECTED(3 downto 0),
      S(3) => keepCount20_carry_i_1_n_0,
      S(2) => keepCount20_carry_i_2_n_0,
      S(1) => keepCount20_carry_i_3_n_0,
      S(0) => keepCount20_carry_i_4_n_0
    );
\keepCount20_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => keepCount20_carry_n_0,
      CO(3) => \keepCount20_carry__0_n_0\,
      CO(2) => \keepCount20_carry__0_n_1\,
      CO(1) => \keepCount20_carry__0_n_2\,
      CO(0) => \keepCount20_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_keepCount20_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \keepCount20_carry__0_i_1_n_0\,
      S(2) => \keepCount20_carry__0_i_2_n_0\,
      S(1) => \keepCount20_carry__0_i_3_n_0\,
      S(0) => \keepCount20_carry__0_i_4_n_0\
    );
\keepCount20_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(21),
      I1 => ticks2_reg(21),
      I2 => ticks2_reg(23),
      I3 => keepCount2_reg(23),
      I4 => ticks2_reg(22),
      I5 => keepCount2_reg(22),
      O => \keepCount20_carry__0_i_1_n_0\
    );
\keepCount20_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(18),
      I1 => ticks2_reg(18),
      I2 => ticks2_reg(20),
      I3 => keepCount2_reg(20),
      I4 => ticks2_reg(19),
      I5 => keepCount2_reg(19),
      O => \keepCount20_carry__0_i_2_n_0\
    );
\keepCount20_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(15),
      I1 => ticks2_reg(15),
      I2 => ticks2_reg(17),
      I3 => keepCount2_reg(17),
      I4 => ticks2_reg(16),
      I5 => keepCount2_reg(16),
      O => \keepCount20_carry__0_i_3_n_0\
    );
\keepCount20_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(12),
      I1 => ticks2_reg(12),
      I2 => ticks2_reg(14),
      I3 => keepCount2_reg(14),
      I4 => ticks2_reg(13),
      I5 => keepCount2_reg(13),
      O => \keepCount20_carry__0_i_4_n_0\
    );
\keepCount20_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount20_carry__0_n_0\,
      CO(3) => \keepCount20_carry__1_n_0\,
      CO(2) => \keepCount20_carry__1_n_1\,
      CO(1) => \keepCount20_carry__1_n_2\,
      CO(0) => \keepCount20_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_keepCount20_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \keepCount20_carry__1_i_1_n_0\,
      S(2) => \keepCount20_carry__1_i_2_n_0\,
      S(1) => \keepCount20_carry__1_i_3_n_0\,
      S(0) => \keepCount20_carry__1_i_4_n_0\
    );
\keepCount20_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(33),
      I1 => ticks2_reg(33),
      I2 => ticks2_reg(35),
      I3 => keepCount2_reg(35),
      I4 => ticks2_reg(34),
      I5 => keepCount2_reg(34),
      O => \keepCount20_carry__1_i_1_n_0\
    );
\keepCount20_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(30),
      I1 => ticks2_reg(30),
      I2 => ticks2_reg(32),
      I3 => keepCount2_reg(32),
      I4 => ticks2_reg(31),
      I5 => keepCount2_reg(31),
      O => \keepCount20_carry__1_i_2_n_0\
    );
\keepCount20_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(27),
      I1 => ticks2_reg(27),
      I2 => ticks2_reg(29),
      I3 => keepCount2_reg(29),
      I4 => ticks2_reg(28),
      I5 => keepCount2_reg(28),
      O => \keepCount20_carry__1_i_3_n_0\
    );
\keepCount20_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(24),
      I1 => ticks2_reg(24),
      I2 => ticks2_reg(26),
      I3 => keepCount2_reg(26),
      I4 => ticks2_reg(25),
      I5 => keepCount2_reg(25),
      O => \keepCount20_carry__1_i_4_n_0\
    );
\keepCount20_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount20_carry__1_n_0\,
      CO(3) => \keepCount20_carry__2_n_0\,
      CO(2) => \keepCount20_carry__2_n_1\,
      CO(1) => \keepCount20_carry__2_n_2\,
      CO(0) => \keepCount20_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_keepCount20_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \keepCount20_carry__2_i_1_n_0\,
      S(2) => \keepCount20_carry__2_i_2_n_0\,
      S(1) => \keepCount20_carry__2_i_3_n_0\,
      S(0) => \keepCount20_carry__2_i_4_n_0\
    );
\keepCount20_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(45),
      I1 => ticks2_reg(45),
      I2 => ticks2_reg(47),
      I3 => keepCount2_reg(47),
      I4 => ticks2_reg(46),
      I5 => keepCount2_reg(46),
      O => \keepCount20_carry__2_i_1_n_0\
    );
\keepCount20_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(42),
      I1 => ticks2_reg(42),
      I2 => ticks2_reg(44),
      I3 => keepCount2_reg(44),
      I4 => ticks2_reg(43),
      I5 => keepCount2_reg(43),
      O => \keepCount20_carry__2_i_2_n_0\
    );
\keepCount20_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(39),
      I1 => ticks2_reg(39),
      I2 => ticks2_reg(41),
      I3 => keepCount2_reg(41),
      I4 => ticks2_reg(40),
      I5 => keepCount2_reg(40),
      O => \keepCount20_carry__2_i_3_n_0\
    );
\keepCount20_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(36),
      I1 => ticks2_reg(36),
      I2 => ticks2_reg(38),
      I3 => keepCount2_reg(38),
      I4 => ticks2_reg(37),
      I5 => keepCount2_reg(37),
      O => \keepCount20_carry__2_i_4_n_0\
    );
\keepCount20_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount20_carry__2_n_0\,
      CO(3 downto 1) => \NLW_keepCount20_carry__3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => sel,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_keepCount20_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \keepCount20_carry__3_i_1_n_0\
    );
\keepCount20_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(48),
      I1 => ticks2_reg(48),
      I2 => ticks2_reg(50),
      I3 => keepCount2_reg(50),
      I4 => ticks2_reg(49),
      I5 => keepCount2_reg(49),
      O => \keepCount20_carry__3_i_1_n_0\
    );
keepCount20_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(9),
      I1 => ticks2_reg(9),
      I2 => ticks2_reg(11),
      I3 => keepCount2_reg(11),
      I4 => ticks2_reg(10),
      I5 => keepCount2_reg(10),
      O => keepCount20_carry_i_1_n_0
    );
keepCount20_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(6),
      I1 => ticks2_reg(6),
      I2 => ticks2_reg(8),
      I3 => keepCount2_reg(8),
      I4 => ticks2_reg(7),
      I5 => keepCount2_reg(7),
      O => keepCount20_carry_i_2_n_0
    );
keepCount20_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(3),
      I1 => ticks2_reg(3),
      I2 => ticks2_reg(5),
      I3 => keepCount2_reg(5),
      I4 => ticks2_reg(4),
      I5 => keepCount2_reg(4),
      O => keepCount20_carry_i_3_n_0
    );
keepCount20_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ticks2_reg(2),
      I1 => ticks2_reg(1),
      I2 => ticks2_reg(0),
      O => keepCount20_carry_i_4_n_0
    );
\keepCount2[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => keepCount2_reg(3),
      O => \keepCount2[3]_i_2_n_0\
    );
\keepCount2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[7]_i_1_n_4\,
      Q => keepCount2_reg(10),
      R => '0'
    );
\keepCount2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[11]_i_1_n_7\,
      Q => keepCount2_reg(11),
      R => '0'
    );
\keepCount2_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount2_reg[7]_i_1_n_0\,
      CO(3) => \keepCount2_reg[11]_i_1_n_0\,
      CO(2) => \keepCount2_reg[11]_i_1_n_1\,
      CO(1) => \keepCount2_reg[11]_i_1_n_2\,
      CO(0) => \keepCount2_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \keepCount2_reg[11]_i_1_n_4\,
      O(2) => \keepCount2_reg[11]_i_1_n_5\,
      O(1) => \keepCount2_reg[11]_i_1_n_6\,
      O(0) => \keepCount2_reg[11]_i_1_n_7\,
      S(3 downto 0) => keepCount2_reg(14 downto 11)
    );
\keepCount2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[11]_i_1_n_6\,
      Q => keepCount2_reg(12),
      R => '0'
    );
\keepCount2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[11]_i_1_n_5\,
      Q => keepCount2_reg(13),
      R => '0'
    );
\keepCount2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[11]_i_1_n_4\,
      Q => keepCount2_reg(14),
      R => '0'
    );
\keepCount2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[15]_i_1_n_7\,
      Q => keepCount2_reg(15),
      R => '0'
    );
\keepCount2_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount2_reg[11]_i_1_n_0\,
      CO(3) => \keepCount2_reg[15]_i_1_n_0\,
      CO(2) => \keepCount2_reg[15]_i_1_n_1\,
      CO(1) => \keepCount2_reg[15]_i_1_n_2\,
      CO(0) => \keepCount2_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \keepCount2_reg[15]_i_1_n_4\,
      O(2) => \keepCount2_reg[15]_i_1_n_5\,
      O(1) => \keepCount2_reg[15]_i_1_n_6\,
      O(0) => \keepCount2_reg[15]_i_1_n_7\,
      S(3 downto 0) => keepCount2_reg(18 downto 15)
    );
\keepCount2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[15]_i_1_n_6\,
      Q => keepCount2_reg(16),
      R => '0'
    );
\keepCount2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[15]_i_1_n_5\,
      Q => keepCount2_reg(17),
      R => '0'
    );
\keepCount2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[15]_i_1_n_4\,
      Q => keepCount2_reg(18),
      R => '0'
    );
\keepCount2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[19]_i_1_n_7\,
      Q => keepCount2_reg(19),
      R => '0'
    );
\keepCount2_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount2_reg[15]_i_1_n_0\,
      CO(3) => \keepCount2_reg[19]_i_1_n_0\,
      CO(2) => \keepCount2_reg[19]_i_1_n_1\,
      CO(1) => \keepCount2_reg[19]_i_1_n_2\,
      CO(0) => \keepCount2_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \keepCount2_reg[19]_i_1_n_4\,
      O(2) => \keepCount2_reg[19]_i_1_n_5\,
      O(1) => \keepCount2_reg[19]_i_1_n_6\,
      O(0) => \keepCount2_reg[19]_i_1_n_7\,
      S(3 downto 0) => keepCount2_reg(22 downto 19)
    );
\keepCount2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[19]_i_1_n_6\,
      Q => keepCount2_reg(20),
      R => '0'
    );
\keepCount2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[19]_i_1_n_5\,
      Q => keepCount2_reg(21),
      R => '0'
    );
\keepCount2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[19]_i_1_n_4\,
      Q => keepCount2_reg(22),
      R => '0'
    );
\keepCount2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[23]_i_1_n_7\,
      Q => keepCount2_reg(23),
      R => '0'
    );
\keepCount2_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount2_reg[19]_i_1_n_0\,
      CO(3) => \keepCount2_reg[23]_i_1_n_0\,
      CO(2) => \keepCount2_reg[23]_i_1_n_1\,
      CO(1) => \keepCount2_reg[23]_i_1_n_2\,
      CO(0) => \keepCount2_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \keepCount2_reg[23]_i_1_n_4\,
      O(2) => \keepCount2_reg[23]_i_1_n_5\,
      O(1) => \keepCount2_reg[23]_i_1_n_6\,
      O(0) => \keepCount2_reg[23]_i_1_n_7\,
      S(3 downto 0) => keepCount2_reg(26 downto 23)
    );
\keepCount2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[23]_i_1_n_6\,
      Q => keepCount2_reg(24),
      R => '0'
    );
\keepCount2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[23]_i_1_n_5\,
      Q => keepCount2_reg(25),
      R => '0'
    );
\keepCount2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[23]_i_1_n_4\,
      Q => keepCount2_reg(26),
      R => '0'
    );
\keepCount2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[27]_i_1_n_7\,
      Q => keepCount2_reg(27),
      R => '0'
    );
\keepCount2_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount2_reg[23]_i_1_n_0\,
      CO(3) => \keepCount2_reg[27]_i_1_n_0\,
      CO(2) => \keepCount2_reg[27]_i_1_n_1\,
      CO(1) => \keepCount2_reg[27]_i_1_n_2\,
      CO(0) => \keepCount2_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \keepCount2_reg[27]_i_1_n_4\,
      O(2) => \keepCount2_reg[27]_i_1_n_5\,
      O(1) => \keepCount2_reg[27]_i_1_n_6\,
      O(0) => \keepCount2_reg[27]_i_1_n_7\,
      S(3 downto 0) => keepCount2_reg(30 downto 27)
    );
\keepCount2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[27]_i_1_n_6\,
      Q => keepCount2_reg(28),
      R => '0'
    );
\keepCount2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[27]_i_1_n_5\,
      Q => keepCount2_reg(29),
      R => '0'
    );
\keepCount2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[27]_i_1_n_4\,
      Q => keepCount2_reg(30),
      R => '0'
    );
\keepCount2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[31]_i_1_n_7\,
      Q => keepCount2_reg(31),
      R => '0'
    );
\keepCount2_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount2_reg[27]_i_1_n_0\,
      CO(3) => \keepCount2_reg[31]_i_1_n_0\,
      CO(2) => \keepCount2_reg[31]_i_1_n_1\,
      CO(1) => \keepCount2_reg[31]_i_1_n_2\,
      CO(0) => \keepCount2_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \keepCount2_reg[31]_i_1_n_4\,
      O(2) => \keepCount2_reg[31]_i_1_n_5\,
      O(1) => \keepCount2_reg[31]_i_1_n_6\,
      O(0) => \keepCount2_reg[31]_i_1_n_7\,
      S(3 downto 0) => keepCount2_reg(34 downto 31)
    );
\keepCount2_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[31]_i_1_n_6\,
      Q => keepCount2_reg(32),
      R => '0'
    );
\keepCount2_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[31]_i_1_n_5\,
      Q => keepCount2_reg(33),
      R => '0'
    );
\keepCount2_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[31]_i_1_n_4\,
      Q => keepCount2_reg(34),
      R => '0'
    );
\keepCount2_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[35]_i_1_n_7\,
      Q => keepCount2_reg(35),
      R => '0'
    );
\keepCount2_reg[35]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount2_reg[31]_i_1_n_0\,
      CO(3) => \keepCount2_reg[35]_i_1_n_0\,
      CO(2) => \keepCount2_reg[35]_i_1_n_1\,
      CO(1) => \keepCount2_reg[35]_i_1_n_2\,
      CO(0) => \keepCount2_reg[35]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \keepCount2_reg[35]_i_1_n_4\,
      O(2) => \keepCount2_reg[35]_i_1_n_5\,
      O(1) => \keepCount2_reg[35]_i_1_n_6\,
      O(0) => \keepCount2_reg[35]_i_1_n_7\,
      S(3 downto 0) => keepCount2_reg(38 downto 35)
    );
\keepCount2_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[35]_i_1_n_6\,
      Q => keepCount2_reg(36),
      R => '0'
    );
\keepCount2_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[35]_i_1_n_5\,
      Q => keepCount2_reg(37),
      R => '0'
    );
\keepCount2_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[35]_i_1_n_4\,
      Q => keepCount2_reg(38),
      R => '0'
    );
\keepCount2_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[39]_i_1_n_7\,
      Q => keepCount2_reg(39),
      R => '0'
    );
\keepCount2_reg[39]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount2_reg[35]_i_1_n_0\,
      CO(3) => \keepCount2_reg[39]_i_1_n_0\,
      CO(2) => \keepCount2_reg[39]_i_1_n_1\,
      CO(1) => \keepCount2_reg[39]_i_1_n_2\,
      CO(0) => \keepCount2_reg[39]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \keepCount2_reg[39]_i_1_n_4\,
      O(2) => \keepCount2_reg[39]_i_1_n_5\,
      O(1) => \keepCount2_reg[39]_i_1_n_6\,
      O(0) => \keepCount2_reg[39]_i_1_n_7\,
      S(3 downto 0) => keepCount2_reg(42 downto 39)
    );
\keepCount2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[3]_i_1_n_7\,
      Q => keepCount2_reg(3),
      R => '0'
    );
\keepCount2_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \keepCount2_reg[3]_i_1_n_0\,
      CO(2) => \keepCount2_reg[3]_i_1_n_1\,
      CO(1) => \keepCount2_reg[3]_i_1_n_2\,
      CO(0) => \keepCount2_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \keepCount2_reg[3]_i_1_n_4\,
      O(2) => \keepCount2_reg[3]_i_1_n_5\,
      O(1) => \keepCount2_reg[3]_i_1_n_6\,
      O(0) => \keepCount2_reg[3]_i_1_n_7\,
      S(3 downto 1) => keepCount2_reg(6 downto 4),
      S(0) => \keepCount2[3]_i_2_n_0\
    );
\keepCount2_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[39]_i_1_n_6\,
      Q => keepCount2_reg(40),
      R => '0'
    );
\keepCount2_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[39]_i_1_n_5\,
      Q => keepCount2_reg(41),
      R => '0'
    );
\keepCount2_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[39]_i_1_n_4\,
      Q => keepCount2_reg(42),
      R => '0'
    );
\keepCount2_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[43]_i_1_n_7\,
      Q => keepCount2_reg(43),
      R => '0'
    );
\keepCount2_reg[43]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount2_reg[39]_i_1_n_0\,
      CO(3) => \keepCount2_reg[43]_i_1_n_0\,
      CO(2) => \keepCount2_reg[43]_i_1_n_1\,
      CO(1) => \keepCount2_reg[43]_i_1_n_2\,
      CO(0) => \keepCount2_reg[43]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \keepCount2_reg[43]_i_1_n_4\,
      O(2) => \keepCount2_reg[43]_i_1_n_5\,
      O(1) => \keepCount2_reg[43]_i_1_n_6\,
      O(0) => \keepCount2_reg[43]_i_1_n_7\,
      S(3 downto 0) => keepCount2_reg(46 downto 43)
    );
\keepCount2_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[43]_i_1_n_6\,
      Q => keepCount2_reg(44),
      R => '0'
    );
\keepCount2_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[43]_i_1_n_5\,
      Q => keepCount2_reg(45),
      R => '0'
    );
\keepCount2_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[43]_i_1_n_4\,
      Q => keepCount2_reg(46),
      R => '0'
    );
\keepCount2_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[47]_i_1_n_7\,
      Q => keepCount2_reg(47),
      R => '0'
    );
\keepCount2_reg[47]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount2_reg[43]_i_1_n_0\,
      CO(3) => \NLW_keepCount2_reg[47]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \keepCount2_reg[47]_i_1_n_1\,
      CO(1) => \keepCount2_reg[47]_i_1_n_2\,
      CO(0) => \keepCount2_reg[47]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \keepCount2_reg[47]_i_1_n_4\,
      O(2) => \keepCount2_reg[47]_i_1_n_5\,
      O(1) => \keepCount2_reg[47]_i_1_n_6\,
      O(0) => \keepCount2_reg[47]_i_1_n_7\,
      S(3 downto 0) => keepCount2_reg(50 downto 47)
    );
\keepCount2_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[47]_i_1_n_6\,
      Q => keepCount2_reg(48),
      R => '0'
    );
\keepCount2_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[47]_i_1_n_5\,
      Q => keepCount2_reg(49),
      R => '0'
    );
\keepCount2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[3]_i_1_n_6\,
      Q => keepCount2_reg(4),
      R => '0'
    );
\keepCount2_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[47]_i_1_n_4\,
      Q => keepCount2_reg(50),
      R => '0'
    );
\keepCount2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[3]_i_1_n_5\,
      Q => keepCount2_reg(5),
      R => '0'
    );
\keepCount2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[3]_i_1_n_4\,
      Q => keepCount2_reg(6),
      R => '0'
    );
\keepCount2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[7]_i_1_n_7\,
      Q => keepCount2_reg(7),
      R => '0'
    );
\keepCount2_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount2_reg[3]_i_1_n_0\,
      CO(3) => \keepCount2_reg[7]_i_1_n_0\,
      CO(2) => \keepCount2_reg[7]_i_1_n_1\,
      CO(1) => \keepCount2_reg[7]_i_1_n_2\,
      CO(0) => \keepCount2_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \keepCount2_reg[7]_i_1_n_4\,
      O(2) => \keepCount2_reg[7]_i_1_n_5\,
      O(1) => \keepCount2_reg[7]_i_1_n_6\,
      O(0) => \keepCount2_reg[7]_i_1_n_7\,
      S(3 downto 0) => keepCount2_reg(10 downto 7)
    );
\keepCount2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[7]_i_1_n_6\,
      Q => keepCount2_reg(8),
      R => '0'
    );
\keepCount2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => \keepCount2_reg[7]_i_1_n_5\,
      Q => keepCount2_reg(9),
      R => '0'
    );
\keepCount[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^officialcontrol_reg[5]_0\(0),
      I1 => \^co\(0),
      O => outSignal
    );
\keepCount[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(4),
      I1 => \keepCount_reg_n_0_[3]\,
      O => \keepCount[0]_i_3_n_0\
    );
\keepCount[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(3),
      I1 => \keepCount_reg_n_0_[2]\,
      O => \keepCount[0]_i_4_n_0\
    );
\keepCount[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(2),
      I1 => \keepCount_reg_n_0_[1]\,
      O => \keepCount[0]_i_5_n_0\
    );
\keepCount[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(1),
      I1 => \keepCount_reg_n_0_[0]\,
      O => \keepCount[0]_i_6_n_0\
    );
\keepCount[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(16),
      I1 => \p_0_in__0_1\(7),
      O => \keepCount[12]_i_2_n_0\
    );
\keepCount[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(15),
      I1 => \p_0_in__0_1\(6),
      O => \keepCount[12]_i_3_n_0\
    );
\keepCount[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(14),
      I1 => \p_0_in__0_1\(5),
      O => \keepCount[12]_i_4_n_0\
    );
\keepCount[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(13),
      I1 => \p_0_in__0_1\(4),
      O => \keepCount[12]_i_5_n_0\
    );
\keepCount[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(20),
      I1 => \p_0_in__0_1\(11),
      O => \keepCount[16]_i_2_n_0\
    );
\keepCount[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(19),
      I1 => \p_0_in__0_1\(10),
      O => \keepCount[16]_i_3_n_0\
    );
\keepCount[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(18),
      I1 => \p_0_in__0_1\(9),
      O => \keepCount[16]_i_4_n_0\
    );
\keepCount[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(17),
      I1 => \p_0_in__0_1\(8),
      O => \keepCount[16]_i_5_n_0\
    );
\keepCount[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(24),
      I1 => \p_0_in__0_1\(15),
      O => \keepCount[20]_i_2_n_0\
    );
\keepCount[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(23),
      I1 => \p_0_in__0_1\(14),
      O => \keepCount[20]_i_3_n_0\
    );
\keepCount[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(22),
      I1 => \p_0_in__0_1\(13),
      O => \keepCount[20]_i_4_n_0\
    );
\keepCount[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(21),
      I1 => \p_0_in__0_1\(12),
      O => \keepCount[20]_i_5_n_0\
    );
\keepCount[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(28),
      I1 => \p_0_in__0_1\(19),
      O => \keepCount[24]_i_2_n_0\
    );
\keepCount[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(27),
      I1 => \p_0_in__0_1\(18),
      O => \keepCount[24]_i_3_n_0\
    );
\keepCount[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(26),
      I1 => \p_0_in__0_1\(17),
      O => \keepCount[24]_i_4_n_0\
    );
\keepCount[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(25),
      I1 => \p_0_in__0_1\(16),
      O => \keepCount[24]_i_5_n_0\
    );
\keepCount[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(31),
      I1 => \p_0_in__0_1\(22),
      O => \keepCount[28]_i_2_n_0\
    );
\keepCount[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(30),
      I1 => \p_0_in__0_1\(21),
      O => \keepCount[28]_i_3_n_0\
    );
\keepCount[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(29),
      I1 => \p_0_in__0_1\(20),
      O => \keepCount[28]_i_4_n_0\
    );
\keepCount[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(8),
      I1 => \keepCount_reg_n_0_[7]\,
      O => \keepCount[4]_i_2_n_0\
    );
\keepCount[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(7),
      I1 => \keepCount_reg_n_0_[6]\,
      O => \keepCount[4]_i_3_n_0\
    );
\keepCount[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(6),
      I1 => \keepCount_reg_n_0_[5]\,
      O => \keepCount[4]_i_4_n_0\
    );
\keepCount[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(5),
      I1 => \keepCount_reg_n_0_[4]\,
      O => \keepCount[4]_i_5_n_0\
    );
\keepCount[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(12),
      I1 => \p_0_in__0_1\(3),
      O => \keepCount[8]_i_2_n_0\
    );
\keepCount[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(11),
      I1 => \p_0_in__0_1\(2),
      O => \keepCount[8]_i_3_n_0\
    );
\keepCount[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(10),
      I1 => \p_0_in__0_1\(1),
      O => \keepCount[8]_i_4_n_0\
    );
\keepCount[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(9),
      I1 => \p_0_in__0_1\(0),
      O => \keepCount[8]_i_5_n_0\
    );
\keepCount_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[0]_i_2_n_7\,
      Q => \keepCount_reg_n_0_[0]\,
      R => '0'
    );
\keepCount_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \keepCount_reg[0]_i_2_n_0\,
      CO(2) => \keepCount_reg[0]_i_2_n_1\,
      CO(1) => \keepCount_reg[0]_i_2_n_2\,
      CO(0) => \keepCount_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => officialBaudRate(4 downto 1),
      O(3) => \keepCount_reg[0]_i_2_n_4\,
      O(2) => \keepCount_reg[0]_i_2_n_5\,
      O(1) => \keepCount_reg[0]_i_2_n_6\,
      O(0) => \keepCount_reg[0]_i_2_n_7\,
      S(3) => \keepCount[0]_i_3_n_0\,
      S(2) => \keepCount[0]_i_4_n_0\,
      S(1) => \keepCount[0]_i_5_n_0\,
      S(0) => \keepCount[0]_i_6_n_0\
    );
\keepCount_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[8]_i_1_n_5\,
      Q => \p_0_in__0_1\(2),
      R => '0'
    );
\keepCount_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[8]_i_1_n_4\,
      Q => \p_0_in__0_1\(3),
      R => '0'
    );
\keepCount_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[12]_i_1_n_7\,
      Q => \p_0_in__0_1\(4),
      R => '0'
    );
\keepCount_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount_reg[8]_i_1_n_0\,
      CO(3) => \keepCount_reg[12]_i_1_n_0\,
      CO(2) => \keepCount_reg[12]_i_1_n_1\,
      CO(1) => \keepCount_reg[12]_i_1_n_2\,
      CO(0) => \keepCount_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => officialBaudRate(16 downto 13),
      O(3) => \keepCount_reg[12]_i_1_n_4\,
      O(2) => \keepCount_reg[12]_i_1_n_5\,
      O(1) => \keepCount_reg[12]_i_1_n_6\,
      O(0) => \keepCount_reg[12]_i_1_n_7\,
      S(3) => \keepCount[12]_i_2_n_0\,
      S(2) => \keepCount[12]_i_3_n_0\,
      S(1) => \keepCount[12]_i_4_n_0\,
      S(0) => \keepCount[12]_i_5_n_0\
    );
\keepCount_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[12]_i_1_n_6\,
      Q => \p_0_in__0_1\(5),
      R => '0'
    );
\keepCount_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[12]_i_1_n_5\,
      Q => \p_0_in__0_1\(6),
      R => '0'
    );
\keepCount_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[12]_i_1_n_4\,
      Q => \p_0_in__0_1\(7),
      R => '0'
    );
\keepCount_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[16]_i_1_n_7\,
      Q => \p_0_in__0_1\(8),
      R => '0'
    );
\keepCount_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount_reg[12]_i_1_n_0\,
      CO(3) => \keepCount_reg[16]_i_1_n_0\,
      CO(2) => \keepCount_reg[16]_i_1_n_1\,
      CO(1) => \keepCount_reg[16]_i_1_n_2\,
      CO(0) => \keepCount_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => officialBaudRate(20 downto 17),
      O(3) => \keepCount_reg[16]_i_1_n_4\,
      O(2) => \keepCount_reg[16]_i_1_n_5\,
      O(1) => \keepCount_reg[16]_i_1_n_6\,
      O(0) => \keepCount_reg[16]_i_1_n_7\,
      S(3) => \keepCount[16]_i_2_n_0\,
      S(2) => \keepCount[16]_i_3_n_0\,
      S(1) => \keepCount[16]_i_4_n_0\,
      S(0) => \keepCount[16]_i_5_n_0\
    );
\keepCount_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[16]_i_1_n_6\,
      Q => \p_0_in__0_1\(9),
      R => '0'
    );
\keepCount_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[16]_i_1_n_5\,
      Q => \p_0_in__0_1\(10),
      R => '0'
    );
\keepCount_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[16]_i_1_n_4\,
      Q => \p_0_in__0_1\(11),
      R => '0'
    );
\keepCount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[0]_i_2_n_6\,
      Q => \keepCount_reg_n_0_[1]\,
      R => '0'
    );
\keepCount_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[20]_i_1_n_7\,
      Q => \p_0_in__0_1\(12),
      R => '0'
    );
\keepCount_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount_reg[16]_i_1_n_0\,
      CO(3) => \keepCount_reg[20]_i_1_n_0\,
      CO(2) => \keepCount_reg[20]_i_1_n_1\,
      CO(1) => \keepCount_reg[20]_i_1_n_2\,
      CO(0) => \keepCount_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => officialBaudRate(24 downto 21),
      O(3) => \keepCount_reg[20]_i_1_n_4\,
      O(2) => \keepCount_reg[20]_i_1_n_5\,
      O(1) => \keepCount_reg[20]_i_1_n_6\,
      O(0) => \keepCount_reg[20]_i_1_n_7\,
      S(3) => \keepCount[20]_i_2_n_0\,
      S(2) => \keepCount[20]_i_3_n_0\,
      S(1) => \keepCount[20]_i_4_n_0\,
      S(0) => \keepCount[20]_i_5_n_0\
    );
\keepCount_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[20]_i_1_n_6\,
      Q => \p_0_in__0_1\(13),
      R => '0'
    );
\keepCount_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[20]_i_1_n_5\,
      Q => \p_0_in__0_1\(14),
      R => '0'
    );
\keepCount_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[20]_i_1_n_4\,
      Q => \p_0_in__0_1\(15),
      R => '0'
    );
\keepCount_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[24]_i_1_n_7\,
      Q => \p_0_in__0_1\(16),
      R => '0'
    );
\keepCount_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount_reg[20]_i_1_n_0\,
      CO(3) => \keepCount_reg[24]_i_1_n_0\,
      CO(2) => \keepCount_reg[24]_i_1_n_1\,
      CO(1) => \keepCount_reg[24]_i_1_n_2\,
      CO(0) => \keepCount_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => officialBaudRate(28 downto 25),
      O(3) => \keepCount_reg[24]_i_1_n_4\,
      O(2) => \keepCount_reg[24]_i_1_n_5\,
      O(1) => \keepCount_reg[24]_i_1_n_6\,
      O(0) => \keepCount_reg[24]_i_1_n_7\,
      S(3) => \keepCount[24]_i_2_n_0\,
      S(2) => \keepCount[24]_i_3_n_0\,
      S(1) => \keepCount[24]_i_4_n_0\,
      S(0) => \keepCount[24]_i_5_n_0\
    );
\keepCount_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[24]_i_1_n_6\,
      Q => \p_0_in__0_1\(17),
      R => '0'
    );
\keepCount_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[24]_i_1_n_5\,
      Q => \p_0_in__0_1\(18),
      R => '0'
    );
\keepCount_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[24]_i_1_n_4\,
      Q => \p_0_in__0_1\(19),
      R => '0'
    );
\keepCount_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[28]_i_1_n_7\,
      Q => \p_0_in__0_1\(20),
      R => '0'
    );
\keepCount_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount_reg[24]_i_1_n_0\,
      CO(3) => \keepCount_reg[28]_i_1_n_0\,
      CO(2) => \keepCount_reg[28]_i_1_n_1\,
      CO(1) => \keepCount_reg[28]_i_1_n_2\,
      CO(0) => \keepCount_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => officialBaudRate(31 downto 29),
      O(3) => \keepCount_reg[28]_i_1_n_4\,
      O(2) => \keepCount_reg[28]_i_1_n_5\,
      O(1) => \keepCount_reg[28]_i_1_n_6\,
      O(0) => \keepCount_reg[28]_i_1_n_7\,
      S(3) => \p_0_in__0_1\(23),
      S(2) => \keepCount[28]_i_2_n_0\,
      S(1) => \keepCount[28]_i_3_n_0\,
      S(0) => \keepCount[28]_i_4_n_0\
    );
\keepCount_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[28]_i_1_n_6\,
      Q => \p_0_in__0_1\(21),
      R => '0'
    );
\keepCount_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[0]_i_2_n_5\,
      Q => \keepCount_reg_n_0_[2]\,
      R => '0'
    );
\keepCount_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[28]_i_1_n_5\,
      Q => \p_0_in__0_1\(22),
      R => '0'
    );
\keepCount_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[28]_i_1_n_4\,
      Q => \p_0_in__0_1\(23),
      R => '0'
    );
\keepCount_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[32]_i_1_n_7\,
      Q => \p_0_in__0_1\(24),
      R => '0'
    );
\keepCount_reg[32]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount_reg[28]_i_1_n_0\,
      CO(3) => \keepCount_reg[32]_i_1_n_0\,
      CO(2) => \keepCount_reg[32]_i_1_n_1\,
      CO(1) => \keepCount_reg[32]_i_1_n_2\,
      CO(0) => \keepCount_reg[32]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \keepCount_reg[32]_i_1_n_4\,
      O(2) => \keepCount_reg[32]_i_1_n_5\,
      O(1) => \keepCount_reg[32]_i_1_n_6\,
      O(0) => \keepCount_reg[32]_i_1_n_7\,
      S(3 downto 0) => \p_0_in__0_1\(27 downto 24)
    );
\keepCount_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[32]_i_1_n_6\,
      Q => \p_0_in__0_1\(25),
      R => '0'
    );
\keepCount_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[32]_i_1_n_5\,
      Q => \p_0_in__0_1\(26),
      R => '0'
    );
\keepCount_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[32]_i_1_n_4\,
      Q => \p_0_in__0_1\(27),
      R => '0'
    );
\keepCount_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[36]_i_1_n_7\,
      Q => \p_0_in__0_1\(28),
      R => '0'
    );
\keepCount_reg[36]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount_reg[32]_i_1_n_0\,
      CO(3) => \keepCount_reg[36]_i_1_n_0\,
      CO(2) => \keepCount_reg[36]_i_1_n_1\,
      CO(1) => \keepCount_reg[36]_i_1_n_2\,
      CO(0) => \keepCount_reg[36]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \keepCount_reg[36]_i_1_n_4\,
      O(2) => \keepCount_reg[36]_i_1_n_5\,
      O(1) => \keepCount_reg[36]_i_1_n_6\,
      O(0) => \keepCount_reg[36]_i_1_n_7\,
      S(3 downto 0) => \p_0_in__0_1\(31 downto 28)
    );
\keepCount_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[36]_i_1_n_6\,
      Q => \p_0_in__0_1\(29),
      R => '0'
    );
\keepCount_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[36]_i_1_n_5\,
      Q => \p_0_in__0_1\(30),
      R => '0'
    );
\keepCount_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[36]_i_1_n_4\,
      Q => \p_0_in__0_1\(31),
      R => '0'
    );
\keepCount_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[0]_i_2_n_4\,
      Q => \keepCount_reg_n_0_[3]\,
      R => '0'
    );
\keepCount_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[40]_i_1_n_7\,
      Q => \p_0_in__0_1\(32),
      R => '0'
    );
\keepCount_reg[40]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount_reg[36]_i_1_n_0\,
      CO(3) => \keepCount_reg[40]_i_1_n_0\,
      CO(2) => \keepCount_reg[40]_i_1_n_1\,
      CO(1) => \keepCount_reg[40]_i_1_n_2\,
      CO(0) => \keepCount_reg[40]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \keepCount_reg[40]_i_1_n_4\,
      O(2) => \keepCount_reg[40]_i_1_n_5\,
      O(1) => \keepCount_reg[40]_i_1_n_6\,
      O(0) => \keepCount_reg[40]_i_1_n_7\,
      S(3 downto 0) => \p_0_in__0_1\(35 downto 32)
    );
\keepCount_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[40]_i_1_n_6\,
      Q => \p_0_in__0_1\(33),
      R => '0'
    );
\keepCount_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[40]_i_1_n_5\,
      Q => \p_0_in__0_1\(34),
      R => '0'
    );
\keepCount_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[40]_i_1_n_4\,
      Q => \p_0_in__0_1\(35),
      R => '0'
    );
\keepCount_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[44]_i_1_n_7\,
      Q => \p_0_in__0_1\(36),
      R => '0'
    );
\keepCount_reg[44]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount_reg[40]_i_1_n_0\,
      CO(3) => \keepCount_reg[44]_i_1_n_0\,
      CO(2) => \keepCount_reg[44]_i_1_n_1\,
      CO(1) => \keepCount_reg[44]_i_1_n_2\,
      CO(0) => \keepCount_reg[44]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \keepCount_reg[44]_i_1_n_4\,
      O(2) => \keepCount_reg[44]_i_1_n_5\,
      O(1) => \keepCount_reg[44]_i_1_n_6\,
      O(0) => \keepCount_reg[44]_i_1_n_7\,
      S(3 downto 0) => \p_0_in__0_1\(39 downto 36)
    );
\keepCount_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[44]_i_1_n_6\,
      Q => \p_0_in__0_1\(37),
      R => '0'
    );
\keepCount_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[44]_i_1_n_5\,
      Q => \p_0_in__0_1\(38),
      R => '0'
    );
\keepCount_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[44]_i_1_n_4\,
      Q => \p_0_in__0_1\(39),
      R => '0'
    );
\keepCount_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[48]_i_1_n_7\,
      Q => \p_0_in__0_1\(40),
      R => '0'
    );
\keepCount_reg[48]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount_reg[44]_i_1_n_0\,
      CO(3 downto 2) => \NLW_keepCount_reg[48]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \keepCount_reg[48]_i_1_n_2\,
      CO(0) => \keepCount_reg[48]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_keepCount_reg[48]_i_1_O_UNCONNECTED\(3),
      O(2) => \keepCount_reg[48]_i_1_n_5\,
      O(1) => \keepCount_reg[48]_i_1_n_6\,
      O(0) => \keepCount_reg[48]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => \p_0_in__0_1\(42 downto 40)
    );
\keepCount_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[48]_i_1_n_6\,
      Q => \p_0_in__0_1\(41),
      R => '0'
    );
\keepCount_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[4]_i_1_n_7\,
      Q => \keepCount_reg_n_0_[4]\,
      R => '0'
    );
\keepCount_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount_reg[0]_i_2_n_0\,
      CO(3) => \keepCount_reg[4]_i_1_n_0\,
      CO(2) => \keepCount_reg[4]_i_1_n_1\,
      CO(1) => \keepCount_reg[4]_i_1_n_2\,
      CO(0) => \keepCount_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => officialBaudRate(8 downto 5),
      O(3) => \keepCount_reg[4]_i_1_n_4\,
      O(2) => \keepCount_reg[4]_i_1_n_5\,
      O(1) => \keepCount_reg[4]_i_1_n_6\,
      O(0) => \keepCount_reg[4]_i_1_n_7\,
      S(3) => \keepCount[4]_i_2_n_0\,
      S(2) => \keepCount[4]_i_3_n_0\,
      S(1) => \keepCount[4]_i_4_n_0\,
      S(0) => \keepCount[4]_i_5_n_0\
    );
\keepCount_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[48]_i_1_n_5\,
      Q => \p_0_in__0_1\(42),
      R => '0'
    );
\keepCount_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[4]_i_1_n_6\,
      Q => \keepCount_reg_n_0_[5]\,
      R => '0'
    );
\keepCount_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[4]_i_1_n_5\,
      Q => \keepCount_reg_n_0_[6]\,
      R => '0'
    );
\keepCount_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[4]_i_1_n_4\,
      Q => \keepCount_reg_n_0_[7]\,
      R => '0'
    );
\keepCount_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[8]_i_1_n_7\,
      Q => \p_0_in__0_1\(0),
      R => '0'
    );
\keepCount_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \keepCount_reg[4]_i_1_n_0\,
      CO(3) => \keepCount_reg[8]_i_1_n_0\,
      CO(2) => \keepCount_reg[8]_i_1_n_1\,
      CO(1) => \keepCount_reg[8]_i_1_n_2\,
      CO(0) => \keepCount_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => officialBaudRate(12 downto 9),
      O(3) => \keepCount_reg[8]_i_1_n_4\,
      O(2) => \keepCount_reg[8]_i_1_n_5\,
      O(1) => \keepCount_reg[8]_i_1_n_6\,
      O(0) => \keepCount_reg[8]_i_1_n_7\,
      S(3) => \keepCount[8]_i_2_n_0\,
      S(2) => \keepCount[8]_i_3_n_0\,
      S(1) => \keepCount[8]_i_4_n_0\,
      S(0) => \keepCount[8]_i_5_n_0\
    );
\keepCount_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[8]_i_1_n_6\,
      Q => \p_0_in__0_1\(1),
      R => '0'
    );
my9x16Fifo_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my9x16Fifo
     port map (
      D(8) => my9x16Fifo_inst_n_11,
      D(7) => my9x16Fifo_inst_n_12,
      D(6) => my9x16Fifo_inst_n_13,
      D(5) => my9x16Fifo_inst_n_14,
      D(4) => my9x16Fifo_inst_n_15,
      D(3) => my9x16Fifo_inst_n_16,
      D(2) => my9x16Fifo_inst_n_17,
      D(1) => my9x16Fifo_inst_n_18,
      D(0) => my9x16Fifo_inst_n_19,
      Q(4 downto 0) => Q(4 downto 0),
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn,
      axi_aresetn_0 => my9x16Fifo_inst_n_36,
      axi_arvalid => axi_arvalid,
      axi_awvalid => axi_awvalid,
      \axi_rdata_reg[8]\(8 downto 0) => officialBaudRate(8 downto 0),
      \axi_rdata_reg[8]_0\(8 downto 0) => officialStatus(8 downto 0),
      \axi_rdata_reg[8]_1\(8) => \officialControl_reg_n_0_[8]\,
      \axi_rdata_reg[8]_1\(7) => \officialControl_reg_n_0_[7]\,
      \axi_rdata_reg[8]_1\(6) => \officialControl_reg_n_0_[6]\,
      \axi_rdata_reg[8]_1\(5 downto 4) => \^officialcontrol_reg[5]_0\(1 downto 0),
      \axi_rdata_reg[8]_1\(3 downto 2) => PARITY_CONTROL(3 downto 2),
      \axi_rdata_reg[8]_1\(1) => \officialControl_reg_n_0_[1]\,
      \axi_rdata_reg[8]_1\(0) => \officialControl_reg_n_0_[0]\,
      axi_wvalid => axi_wvalid,
      count(3 downto 0) => count(3 downto 0),
      \count_reg[3]\ => my9x16Fifo_inst_n_29,
      empty => empty,
      full => full,
      in_delay_reg => \^axi_rvalid_reg_0\,
      in_delay_reg_0 => \^axi_arready_reg_0\,
      in_delay_reg_1 => \^axi_wready_reg_0\,
      in_delay_reg_2 => \^axi_awready_reg_0\,
      officialData(8 downto 0) => officialData(8 downto 0),
      p_0_in_0(1 downto 0) => p_0_in_0(1 downto 0),
      p_10_in => p_10_in,
      rd_data(8 downto 0) => rd_data(8 downto 0),
      \rd_index_reg[4]_0\(4 downto 0) => \rd_index_reg[4]\(4 downto 0),
      state(2 downto 0) => state(2 downto 0),
      waddr(1 downto 0) => waddr(3 downto 2),
      watermark(4 downto 0) => watermark(4 downto 0)
    );
\officialBaudRate[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_10_in,
      I1 => axi_wstrb(1),
      I2 => axi_awaddr(0),
      I3 => axi_awaddr(1),
      O => \officialBaudRate[15]_i_1_n_0\
    );
\officialBaudRate[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_10_in,
      I1 => axi_wstrb(2),
      I2 => axi_awaddr(0),
      I3 => axi_awaddr(1),
      O => \officialBaudRate[23]_i_1_n_0\
    );
\officialBaudRate[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_10_in,
      I1 => axi_wstrb(3),
      I2 => axi_awaddr(0),
      I3 => axi_awaddr(1),
      O => \officialBaudRate[31]_i_1_n_0\
    );
\officialBaudRate[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_10_in,
      I1 => axi_wstrb(0),
      I2 => axi_awaddr(0),
      I3 => axi_awaddr(1),
      O => \officialBaudRate[7]_i_1_n_0\
    );
\officialBaudRate_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(0),
      Q => officialBaudRate(0),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(10),
      Q => officialBaudRate(10),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(11),
      Q => officialBaudRate(11),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(12),
      Q => officialBaudRate(12),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(13),
      Q => officialBaudRate(13),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(14),
      Q => officialBaudRate(14),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(15),
      Q => officialBaudRate(15),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(16),
      Q => officialBaudRate(16),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(17),
      Q => officialBaudRate(17),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(18),
      Q => officialBaudRate(18),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(19),
      Q => officialBaudRate(19),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(1),
      Q => officialBaudRate(1),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(20),
      Q => officialBaudRate(20),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(21),
      Q => officialBaudRate(21),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(22),
      Q => officialBaudRate(22),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(23),
      Q => officialBaudRate(23),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(24),
      Q => officialBaudRate(24),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(25),
      Q => officialBaudRate(25),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(26),
      Q => officialBaudRate(26),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(27),
      Q => officialBaudRate(27),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(28),
      Q => officialBaudRate(28),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(29),
      Q => officialBaudRate(29),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(2),
      Q => officialBaudRate(2),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(30),
      Q => officialBaudRate(30),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(31),
      Q => officialBaudRate(31),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(3),
      Q => officialBaudRate(3),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(4),
      Q => officialBaudRate(4),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(5),
      Q => officialBaudRate(5),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(6),
      Q => officialBaudRate(6),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(7),
      Q => officialBaudRate(7),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(8),
      Q => officialBaudRate(8),
      R => my9x16Fifo_inst_n_36
    );
\officialBaudRate_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(9),
      Q => officialBaudRate(9),
      R => my9x16Fifo_inst_n_36
    );
\officialControl[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => p_10_in,
      I1 => axi_awaddr(1),
      I2 => axi_wstrb(1),
      I3 => axi_awaddr(0),
      O => p_1_in(15)
    );
\officialControl[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => p_10_in,
      I1 => axi_awaddr(1),
      I2 => axi_wstrb(2),
      I3 => axi_awaddr(0),
      O => p_1_in(23)
    );
\officialControl[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => p_10_in,
      I1 => axi_awaddr(1),
      I2 => axi_wstrb(3),
      I3 => axi_awaddr(0),
      O => p_1_in(31)
    );
\officialControl[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => p_10_in,
      I1 => axi_awaddr(1),
      I2 => axi_wstrb(0),
      I3 => axi_awaddr(0),
      O => p_1_in(5)
    );
\officialControl_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(5),
      D => axi_wdata(0),
      Q => \officialControl_reg_n_0_[0]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(10),
      Q => \officialControl_reg_n_0_[10]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(11),
      Q => \officialControl_reg_n_0_[11]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(12),
      Q => \officialControl_reg_n_0_[12]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(13),
      Q => \officialControl_reg_n_0_[13]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(14),
      Q => \officialControl_reg_n_0_[14]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(15),
      Q => \officialControl_reg_n_0_[15]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(16),
      Q => \officialControl_reg_n_0_[16]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(17),
      Q => \officialControl_reg_n_0_[17]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(18),
      Q => \officialControl_reg_n_0_[18]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(19),
      Q => \officialControl_reg_n_0_[19]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(5),
      D => axi_wdata(1),
      Q => \officialControl_reg_n_0_[1]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(20),
      Q => \officialControl_reg_n_0_[20]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(21),
      Q => \officialControl_reg_n_0_[21]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(22),
      Q => \officialControl_reg_n_0_[22]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(23),
      Q => \officialControl_reg_n_0_[23]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(24),
      Q => \officialControl_reg_n_0_[24]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(25),
      Q => \officialControl_reg_n_0_[25]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(26),
      Q => \officialControl_reg_n_0_[26]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(27),
      Q => \officialControl_reg_n_0_[27]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(28),
      Q => \officialControl_reg_n_0_[28]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(29),
      Q => \officialControl_reg_n_0_[29]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(5),
      D => axi_wdata(2),
      Q => PARITY_CONTROL(2),
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(30),
      Q => \officialControl_reg_n_0_[30]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(31),
      Q => \officialControl_reg_n_0_[31]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(5),
      D => axi_wdata(3),
      Q => PARITY_CONTROL(3),
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(5),
      D => axi_wdata(4),
      Q => \^officialcontrol_reg[5]_0\(0),
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(5),
      D => axi_wdata(5),
      Q => \^officialcontrol_reg[5]_0\(1),
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(5),
      D => axi_wdata(6),
      Q => \officialControl_reg_n_0_[6]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(5),
      D => axi_wdata(7),
      Q => \officialControl_reg_n_0_[7]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(8),
      Q => \officialControl_reg_n_0_[8]\,
      R => my9x16Fifo_inst_n_36
    );
\officialControl_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(9),
      Q => \officialControl_reg_n_0_[9]\,
      R => my9x16Fifo_inst_n_36
    );
\officialData[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => p_10_in,
      I1 => axi_awaddr(1),
      I2 => axi_awaddr(0),
      I3 => axi_wstrb(0),
      O => \officialData[7]_i_1_n_0\
    );
\officialData[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => axi_wdata(8),
      I1 => p_10_in,
      I2 => axi_awaddr(1),
      I3 => axi_awaddr(0),
      I4 => axi_wstrb(1),
      I5 => officialData(8),
      O => \officialData[8]_i_1_n_0\
    );
\officialData_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(0),
      Q => officialData(0),
      R => my9x16Fifo_inst_n_36
    );
\officialData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(1),
      Q => officialData(1),
      R => my9x16Fifo_inst_n_36
    );
\officialData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(2),
      Q => officialData(2),
      R => my9x16Fifo_inst_n_36
    );
\officialData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(3),
      Q => officialData(3),
      R => my9x16Fifo_inst_n_36
    );
\officialData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(4),
      Q => officialData(4),
      R => my9x16Fifo_inst_n_36
    );
\officialData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(5),
      Q => officialData(5),
      R => my9x16Fifo_inst_n_36
    );
\officialData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(6),
      Q => officialData(6),
      R => my9x16Fifo_inst_n_36
    );
\officialData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(7),
      Q => officialData(7),
      R => my9x16Fifo_inst_n_36
    );
\officialData_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \officialData[8]_i_1_n_0\,
      Q => officialData(8),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => p_10_in,
      I1 => axi_wstrb(1),
      I2 => axi_awaddr(0),
      I3 => axi_awaddr(1),
      O => \officialStatus[15]_i_1_n_0\
    );
\officialStatus[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => p_10_in,
      I1 => axi_wstrb(2),
      I2 => axi_awaddr(0),
      I3 => axi_awaddr(1),
      O => \officialStatus[23]_i_1_n_0\
    );
\officialStatus[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => p_10_in,
      I1 => axi_wstrb(3),
      I2 => axi_awaddr(0),
      I3 => axi_awaddr(1),
      O => \officialStatus[31]_i_1_n_0\
    );
\officialStatus[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => p_10_in,
      I1 => axi_wstrb(0),
      I2 => axi_awaddr(0),
      I3 => axi_awaddr(1),
      O => \officialStatus[7]_i_1_n_0\
    );
\officialStatus_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(0),
      Q => officialStatus(0),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(10),
      Q => officialStatus(10),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(11),
      Q => officialStatus(11),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(12),
      Q => officialStatus(12),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(13),
      Q => officialStatus(13),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(14),
      Q => officialStatus(14),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(15),
      Q => officialStatus(15),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(16),
      Q => officialStatus(16),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(17),
      Q => officialStatus(17),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(18),
      Q => officialStatus(18),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(19),
      Q => officialStatus(19),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(1),
      Q => officialStatus(1),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(20),
      Q => officialStatus(20),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(21),
      Q => officialStatus(21),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(22),
      Q => officialStatus(22),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(23),
      Q => officialStatus(23),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(24),
      Q => officialStatus(24),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(25),
      Q => officialStatus(25),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(26),
      Q => officialStatus(26),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(27),
      Q => officialStatus(27),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(28),
      Q => officialStatus(28),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(29),
      Q => \officialStatus__0\(29),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(2),
      Q => officialStatus(2),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(30),
      Q => officialStatus(30),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(31),
      Q => officialStatus(31),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(3),
      Q => officialStatus(3),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(4),
      Q => officialStatus(4),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(5),
      Q => officialStatus(5),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(6),
      Q => officialStatus(6),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(7),
      Q => officialStatus(7),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(8),
      Q => officialStatus(8),
      R => my9x16Fifo_inst_n_36
    );
\officialStatus_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(9),
      Q => officialStatus(9),
      R => my9x16Fifo_inst_n_36
    );
outSignal2_reg: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => outSignal2_reg_0,
      Q => \^outsignal2\,
      R => '0'
    );
outSignal_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => outSignal_reg_1,
      Q => \^outsignal_reg_0\,
      R => '0'
    );
\raddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => axi_araddr(0),
      I1 => axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => p_0_in_0(0),
      O => \raddr[2]_i_1_n_0\
    );
\raddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => axi_araddr(1),
      I1 => axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => p_0_in_0(1),
      O => \raddr[3]_i_1_n_0\
    );
\raddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \raddr[2]_i_1_n_0\,
      Q => p_0_in_0(0),
      R => my9x16Fifo_inst_n_36
    );
\raddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \raddr[3]_i_1_n_0\,
      Q => p_0_in_0(1),
      R => my9x16Fifo_inst_n_36
    );
shiftOut_reg: unisim.vcomponents.LDCP
     port map (
      CLR => shiftOut_reg_i_3_n_0,
      D => my9x16Fifo_inst_n_29,
      G => shiftOut_reg_i_2_n_0,
      PRE => shiftOut_reg_i_4_n_0,
      Q => tx_out
    );
shiftOut_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => shiftOut_reg_i_2_n_0
    );
shiftOut_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => shiftOut_reg_i_3_n_0
    );
shiftOut_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => shiftOut_reg_i_4_n_0
    );
\ticks2[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ticks2_reg(0),
      O => \ticks2[0]_i_2_n_0\
    );
\ticks2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[0]_i_1_n_7\,
      Q => ticks2_reg(0),
      R => '0'
    );
\ticks2_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ticks2_reg[0]_i_1_n_0\,
      CO(2) => \ticks2_reg[0]_i_1_n_1\,
      CO(1) => \ticks2_reg[0]_i_1_n_2\,
      CO(0) => \ticks2_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \ticks2_reg[0]_i_1_n_4\,
      O(2) => \ticks2_reg[0]_i_1_n_5\,
      O(1) => \ticks2_reg[0]_i_1_n_6\,
      O(0) => \ticks2_reg[0]_i_1_n_7\,
      S(3 downto 1) => ticks2_reg(3 downto 1),
      S(0) => \ticks2[0]_i_2_n_0\
    );
\ticks2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[8]_i_1_n_5\,
      Q => ticks2_reg(10),
      R => '0'
    );
\ticks2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[8]_i_1_n_4\,
      Q => ticks2_reg(11),
      R => '0'
    );
\ticks2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[12]_i_1_n_7\,
      Q => ticks2_reg(12),
      R => '0'
    );
\ticks2_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks2_reg[8]_i_1_n_0\,
      CO(3) => \ticks2_reg[12]_i_1_n_0\,
      CO(2) => \ticks2_reg[12]_i_1_n_1\,
      CO(1) => \ticks2_reg[12]_i_1_n_2\,
      CO(0) => \ticks2_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks2_reg[12]_i_1_n_4\,
      O(2) => \ticks2_reg[12]_i_1_n_5\,
      O(1) => \ticks2_reg[12]_i_1_n_6\,
      O(0) => \ticks2_reg[12]_i_1_n_7\,
      S(3 downto 0) => ticks2_reg(15 downto 12)
    );
\ticks2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[12]_i_1_n_6\,
      Q => ticks2_reg(13),
      R => '0'
    );
\ticks2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[12]_i_1_n_5\,
      Q => ticks2_reg(14),
      R => '0'
    );
\ticks2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[12]_i_1_n_4\,
      Q => ticks2_reg(15),
      R => '0'
    );
\ticks2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[16]_i_1_n_7\,
      Q => ticks2_reg(16),
      R => '0'
    );
\ticks2_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks2_reg[12]_i_1_n_0\,
      CO(3) => \ticks2_reg[16]_i_1_n_0\,
      CO(2) => \ticks2_reg[16]_i_1_n_1\,
      CO(1) => \ticks2_reg[16]_i_1_n_2\,
      CO(0) => \ticks2_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks2_reg[16]_i_1_n_4\,
      O(2) => \ticks2_reg[16]_i_1_n_5\,
      O(1) => \ticks2_reg[16]_i_1_n_6\,
      O(0) => \ticks2_reg[16]_i_1_n_7\,
      S(3 downto 0) => ticks2_reg(19 downto 16)
    );
\ticks2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[16]_i_1_n_6\,
      Q => ticks2_reg(17),
      R => '0'
    );
\ticks2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[16]_i_1_n_5\,
      Q => ticks2_reg(18),
      R => '0'
    );
\ticks2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[16]_i_1_n_4\,
      Q => ticks2_reg(19),
      R => '0'
    );
\ticks2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[0]_i_1_n_6\,
      Q => ticks2_reg(1),
      R => '0'
    );
\ticks2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[20]_i_1_n_7\,
      Q => ticks2_reg(20),
      R => '0'
    );
\ticks2_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks2_reg[16]_i_1_n_0\,
      CO(3) => \ticks2_reg[20]_i_1_n_0\,
      CO(2) => \ticks2_reg[20]_i_1_n_1\,
      CO(1) => \ticks2_reg[20]_i_1_n_2\,
      CO(0) => \ticks2_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks2_reg[20]_i_1_n_4\,
      O(2) => \ticks2_reg[20]_i_1_n_5\,
      O(1) => \ticks2_reg[20]_i_1_n_6\,
      O(0) => \ticks2_reg[20]_i_1_n_7\,
      S(3 downto 0) => ticks2_reg(23 downto 20)
    );
\ticks2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[20]_i_1_n_6\,
      Q => ticks2_reg(21),
      R => '0'
    );
\ticks2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[20]_i_1_n_5\,
      Q => ticks2_reg(22),
      R => '0'
    );
\ticks2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[20]_i_1_n_4\,
      Q => ticks2_reg(23),
      R => '0'
    );
\ticks2_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[24]_i_1_n_7\,
      Q => ticks2_reg(24),
      R => '0'
    );
\ticks2_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks2_reg[20]_i_1_n_0\,
      CO(3) => \ticks2_reg[24]_i_1_n_0\,
      CO(2) => \ticks2_reg[24]_i_1_n_1\,
      CO(1) => \ticks2_reg[24]_i_1_n_2\,
      CO(0) => \ticks2_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks2_reg[24]_i_1_n_4\,
      O(2) => \ticks2_reg[24]_i_1_n_5\,
      O(1) => \ticks2_reg[24]_i_1_n_6\,
      O(0) => \ticks2_reg[24]_i_1_n_7\,
      S(3 downto 0) => ticks2_reg(27 downto 24)
    );
\ticks2_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[24]_i_1_n_6\,
      Q => ticks2_reg(25),
      R => '0'
    );
\ticks2_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[24]_i_1_n_5\,
      Q => ticks2_reg(26),
      R => '0'
    );
\ticks2_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[24]_i_1_n_4\,
      Q => ticks2_reg(27),
      R => '0'
    );
\ticks2_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[28]_i_1_n_7\,
      Q => ticks2_reg(28),
      R => '0'
    );
\ticks2_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks2_reg[24]_i_1_n_0\,
      CO(3) => \ticks2_reg[28]_i_1_n_0\,
      CO(2) => \ticks2_reg[28]_i_1_n_1\,
      CO(1) => \ticks2_reg[28]_i_1_n_2\,
      CO(0) => \ticks2_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks2_reg[28]_i_1_n_4\,
      O(2) => \ticks2_reg[28]_i_1_n_5\,
      O(1) => \ticks2_reg[28]_i_1_n_6\,
      O(0) => \ticks2_reg[28]_i_1_n_7\,
      S(3 downto 0) => ticks2_reg(31 downto 28)
    );
\ticks2_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[28]_i_1_n_6\,
      Q => ticks2_reg(29),
      R => '0'
    );
\ticks2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[0]_i_1_n_5\,
      Q => ticks2_reg(2),
      R => '0'
    );
\ticks2_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[28]_i_1_n_5\,
      Q => ticks2_reg(30),
      R => '0'
    );
\ticks2_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[28]_i_1_n_4\,
      Q => ticks2_reg(31),
      R => '0'
    );
\ticks2_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[32]_i_1_n_7\,
      Q => ticks2_reg(32),
      R => '0'
    );
\ticks2_reg[32]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks2_reg[28]_i_1_n_0\,
      CO(3) => \ticks2_reg[32]_i_1_n_0\,
      CO(2) => \ticks2_reg[32]_i_1_n_1\,
      CO(1) => \ticks2_reg[32]_i_1_n_2\,
      CO(0) => \ticks2_reg[32]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks2_reg[32]_i_1_n_4\,
      O(2) => \ticks2_reg[32]_i_1_n_5\,
      O(1) => \ticks2_reg[32]_i_1_n_6\,
      O(0) => \ticks2_reg[32]_i_1_n_7\,
      S(3 downto 0) => ticks2_reg(35 downto 32)
    );
\ticks2_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[32]_i_1_n_6\,
      Q => ticks2_reg(33),
      R => '0'
    );
\ticks2_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[32]_i_1_n_5\,
      Q => ticks2_reg(34),
      R => '0'
    );
\ticks2_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[32]_i_1_n_4\,
      Q => ticks2_reg(35),
      R => '0'
    );
\ticks2_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[36]_i_1_n_7\,
      Q => ticks2_reg(36),
      R => '0'
    );
\ticks2_reg[36]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks2_reg[32]_i_1_n_0\,
      CO(3) => \ticks2_reg[36]_i_1_n_0\,
      CO(2) => \ticks2_reg[36]_i_1_n_1\,
      CO(1) => \ticks2_reg[36]_i_1_n_2\,
      CO(0) => \ticks2_reg[36]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks2_reg[36]_i_1_n_4\,
      O(2) => \ticks2_reg[36]_i_1_n_5\,
      O(1) => \ticks2_reg[36]_i_1_n_6\,
      O(0) => \ticks2_reg[36]_i_1_n_7\,
      S(3 downto 0) => ticks2_reg(39 downto 36)
    );
\ticks2_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[36]_i_1_n_6\,
      Q => ticks2_reg(37),
      R => '0'
    );
\ticks2_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[36]_i_1_n_5\,
      Q => ticks2_reg(38),
      R => '0'
    );
\ticks2_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[36]_i_1_n_4\,
      Q => ticks2_reg(39),
      R => '0'
    );
\ticks2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[0]_i_1_n_4\,
      Q => ticks2_reg(3),
      R => '0'
    );
\ticks2_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[40]_i_1_n_7\,
      Q => ticks2_reg(40),
      R => '0'
    );
\ticks2_reg[40]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks2_reg[36]_i_1_n_0\,
      CO(3) => \ticks2_reg[40]_i_1_n_0\,
      CO(2) => \ticks2_reg[40]_i_1_n_1\,
      CO(1) => \ticks2_reg[40]_i_1_n_2\,
      CO(0) => \ticks2_reg[40]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks2_reg[40]_i_1_n_4\,
      O(2) => \ticks2_reg[40]_i_1_n_5\,
      O(1) => \ticks2_reg[40]_i_1_n_6\,
      O(0) => \ticks2_reg[40]_i_1_n_7\,
      S(3 downto 0) => ticks2_reg(43 downto 40)
    );
\ticks2_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[40]_i_1_n_6\,
      Q => ticks2_reg(41),
      R => '0'
    );
\ticks2_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[40]_i_1_n_5\,
      Q => ticks2_reg(42),
      R => '0'
    );
\ticks2_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[40]_i_1_n_4\,
      Q => ticks2_reg(43),
      R => '0'
    );
\ticks2_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[44]_i_1_n_7\,
      Q => ticks2_reg(44),
      R => '0'
    );
\ticks2_reg[44]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks2_reg[40]_i_1_n_0\,
      CO(3) => \ticks2_reg[44]_i_1_n_0\,
      CO(2) => \ticks2_reg[44]_i_1_n_1\,
      CO(1) => \ticks2_reg[44]_i_1_n_2\,
      CO(0) => \ticks2_reg[44]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks2_reg[44]_i_1_n_4\,
      O(2) => \ticks2_reg[44]_i_1_n_5\,
      O(1) => \ticks2_reg[44]_i_1_n_6\,
      O(0) => \ticks2_reg[44]_i_1_n_7\,
      S(3 downto 0) => ticks2_reg(47 downto 44)
    );
\ticks2_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[44]_i_1_n_6\,
      Q => ticks2_reg(45),
      R => '0'
    );
\ticks2_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[44]_i_1_n_5\,
      Q => ticks2_reg(46),
      R => '0'
    );
\ticks2_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[44]_i_1_n_4\,
      Q => ticks2_reg(47),
      R => '0'
    );
\ticks2_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[48]_i_1_n_7\,
      Q => ticks2_reg(48),
      R => '0'
    );
\ticks2_reg[48]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks2_reg[44]_i_1_n_0\,
      CO(3 downto 2) => \NLW_ticks2_reg[48]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \ticks2_reg[48]_i_1_n_2\,
      CO(0) => \ticks2_reg[48]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_ticks2_reg[48]_i_1_O_UNCONNECTED\(3),
      O(2) => \ticks2_reg[48]_i_1_n_5\,
      O(1) => \ticks2_reg[48]_i_1_n_6\,
      O(0) => \ticks2_reg[48]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => ticks2_reg(50 downto 48)
    );
\ticks2_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[48]_i_1_n_6\,
      Q => ticks2_reg(49),
      R => '0'
    );
\ticks2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[4]_i_1_n_7\,
      Q => ticks2_reg(4),
      R => '0'
    );
\ticks2_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks2_reg[0]_i_1_n_0\,
      CO(3) => \ticks2_reg[4]_i_1_n_0\,
      CO(2) => \ticks2_reg[4]_i_1_n_1\,
      CO(1) => \ticks2_reg[4]_i_1_n_2\,
      CO(0) => \ticks2_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks2_reg[4]_i_1_n_4\,
      O(2) => \ticks2_reg[4]_i_1_n_5\,
      O(1) => \ticks2_reg[4]_i_1_n_6\,
      O(0) => \ticks2_reg[4]_i_1_n_7\,
      S(3 downto 0) => ticks2_reg(7 downto 4)
    );
\ticks2_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[48]_i_1_n_5\,
      Q => ticks2_reg(50),
      R => '0'
    );
\ticks2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[4]_i_1_n_6\,
      Q => ticks2_reg(5),
      R => '0'
    );
\ticks2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[4]_i_1_n_5\,
      Q => ticks2_reg(6),
      R => '0'
    );
\ticks2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[4]_i_1_n_4\,
      Q => ticks2_reg(7),
      R => '0'
    );
\ticks2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[8]_i_1_n_7\,
      Q => ticks2_reg(8),
      R => '0'
    );
\ticks2_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks2_reg[4]_i_1_n_0\,
      CO(3) => \ticks2_reg[8]_i_1_n_0\,
      CO(2) => \ticks2_reg[8]_i_1_n_1\,
      CO(1) => \ticks2_reg[8]_i_1_n_2\,
      CO(0) => \ticks2_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks2_reg[8]_i_1_n_4\,
      O(2) => \ticks2_reg[8]_i_1_n_5\,
      O(1) => \ticks2_reg[8]_i_1_n_6\,
      O(0) => \ticks2_reg[8]_i_1_n_7\,
      S(3 downto 0) => ticks2_reg(11 downto 8)
    );
\ticks2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^outsignal_reg_0\,
      CE => '1',
      D => \ticks2_reg[8]_i_1_n_6\,
      Q => ticks2_reg(9),
      R => '0'
    );
\ticks[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ticks_reg(0),
      O => \ticks[0]_i_2_n_0\
    );
\ticks_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[0]_i_1_n_7\,
      Q => ticks_reg(0),
      R => '0'
    );
\ticks_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ticks_reg[0]_i_1_n_0\,
      CO(2) => \ticks_reg[0]_i_1_n_1\,
      CO(1) => \ticks_reg[0]_i_1_n_2\,
      CO(0) => \ticks_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \ticks_reg[0]_i_1_n_4\,
      O(2) => \ticks_reg[0]_i_1_n_5\,
      O(1) => \ticks_reg[0]_i_1_n_6\,
      O(0) => \ticks_reg[0]_i_1_n_7\,
      S(3 downto 1) => ticks_reg(3 downto 1),
      S(0) => \ticks[0]_i_2_n_0\
    );
\ticks_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[8]_i_1_n_5\,
      Q => ticks_reg(10),
      R => '0'
    );
\ticks_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[8]_i_1_n_4\,
      Q => ticks_reg(11),
      R => '0'
    );
\ticks_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[12]_i_1_n_7\,
      Q => ticks_reg(12),
      R => '0'
    );
\ticks_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[8]_i_1_n_0\,
      CO(3) => \ticks_reg[12]_i_1_n_0\,
      CO(2) => \ticks_reg[12]_i_1_n_1\,
      CO(1) => \ticks_reg[12]_i_1_n_2\,
      CO(0) => \ticks_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[12]_i_1_n_4\,
      O(2) => \ticks_reg[12]_i_1_n_5\,
      O(1) => \ticks_reg[12]_i_1_n_6\,
      O(0) => \ticks_reg[12]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(15 downto 12)
    );
\ticks_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[12]_i_1_n_6\,
      Q => ticks_reg(13),
      R => '0'
    );
\ticks_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[12]_i_1_n_5\,
      Q => ticks_reg(14),
      R => '0'
    );
\ticks_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[12]_i_1_n_4\,
      Q => ticks_reg(15),
      R => '0'
    );
\ticks_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[16]_i_1_n_7\,
      Q => ticks_reg(16),
      R => '0'
    );
\ticks_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[12]_i_1_n_0\,
      CO(3) => \ticks_reg[16]_i_1_n_0\,
      CO(2) => \ticks_reg[16]_i_1_n_1\,
      CO(1) => \ticks_reg[16]_i_1_n_2\,
      CO(0) => \ticks_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[16]_i_1_n_4\,
      O(2) => \ticks_reg[16]_i_1_n_5\,
      O(1) => \ticks_reg[16]_i_1_n_6\,
      O(0) => \ticks_reg[16]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(19 downto 16)
    );
\ticks_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[16]_i_1_n_6\,
      Q => ticks_reg(17),
      R => '0'
    );
\ticks_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[16]_i_1_n_5\,
      Q => ticks_reg(18),
      R => '0'
    );
\ticks_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[16]_i_1_n_4\,
      Q => ticks_reg(19),
      R => '0'
    );
\ticks_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[0]_i_1_n_6\,
      Q => ticks_reg(1),
      R => '0'
    );
\ticks_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[20]_i_1_n_7\,
      Q => ticks_reg(20),
      R => '0'
    );
\ticks_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[16]_i_1_n_0\,
      CO(3) => \ticks_reg[20]_i_1_n_0\,
      CO(2) => \ticks_reg[20]_i_1_n_1\,
      CO(1) => \ticks_reg[20]_i_1_n_2\,
      CO(0) => \ticks_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[20]_i_1_n_4\,
      O(2) => \ticks_reg[20]_i_1_n_5\,
      O(1) => \ticks_reg[20]_i_1_n_6\,
      O(0) => \ticks_reg[20]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(23 downto 20)
    );
\ticks_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[20]_i_1_n_6\,
      Q => ticks_reg(21),
      R => '0'
    );
\ticks_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[20]_i_1_n_5\,
      Q => ticks_reg(22),
      R => '0'
    );
\ticks_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[20]_i_1_n_4\,
      Q => ticks_reg(23),
      R => '0'
    );
\ticks_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[24]_i_1_n_7\,
      Q => ticks_reg(24),
      R => '0'
    );
\ticks_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[20]_i_1_n_0\,
      CO(3) => \ticks_reg[24]_i_1_n_0\,
      CO(2) => \ticks_reg[24]_i_1_n_1\,
      CO(1) => \ticks_reg[24]_i_1_n_2\,
      CO(0) => \ticks_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[24]_i_1_n_4\,
      O(2) => \ticks_reg[24]_i_1_n_5\,
      O(1) => \ticks_reg[24]_i_1_n_6\,
      O(0) => \ticks_reg[24]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(27 downto 24)
    );
\ticks_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[24]_i_1_n_6\,
      Q => ticks_reg(25),
      R => '0'
    );
\ticks_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[24]_i_1_n_5\,
      Q => ticks_reg(26),
      R => '0'
    );
\ticks_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[24]_i_1_n_4\,
      Q => ticks_reg(27),
      R => '0'
    );
\ticks_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[28]_i_1_n_7\,
      Q => ticks_reg(28),
      R => '0'
    );
\ticks_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[24]_i_1_n_0\,
      CO(3) => \ticks_reg[28]_i_1_n_0\,
      CO(2) => \ticks_reg[28]_i_1_n_1\,
      CO(1) => \ticks_reg[28]_i_1_n_2\,
      CO(0) => \ticks_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[28]_i_1_n_4\,
      O(2) => \ticks_reg[28]_i_1_n_5\,
      O(1) => \ticks_reg[28]_i_1_n_6\,
      O(0) => \ticks_reg[28]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(31 downto 28)
    );
\ticks_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[28]_i_1_n_6\,
      Q => ticks_reg(29),
      R => '0'
    );
\ticks_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[0]_i_1_n_5\,
      Q => ticks_reg(2),
      R => '0'
    );
\ticks_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[28]_i_1_n_5\,
      Q => ticks_reg(30),
      R => '0'
    );
\ticks_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[28]_i_1_n_4\,
      Q => ticks_reg(31),
      R => '0'
    );
\ticks_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[32]_i_1_n_7\,
      Q => ticks_reg(32),
      R => '0'
    );
\ticks_reg[32]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[28]_i_1_n_0\,
      CO(3) => \ticks_reg[32]_i_1_n_0\,
      CO(2) => \ticks_reg[32]_i_1_n_1\,
      CO(1) => \ticks_reg[32]_i_1_n_2\,
      CO(0) => \ticks_reg[32]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[32]_i_1_n_4\,
      O(2) => \ticks_reg[32]_i_1_n_5\,
      O(1) => \ticks_reg[32]_i_1_n_6\,
      O(0) => \ticks_reg[32]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(35 downto 32)
    );
\ticks_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[32]_i_1_n_6\,
      Q => ticks_reg(33),
      R => '0'
    );
\ticks_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[32]_i_1_n_5\,
      Q => ticks_reg(34),
      R => '0'
    );
\ticks_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[32]_i_1_n_4\,
      Q => ticks_reg(35),
      R => '0'
    );
\ticks_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[36]_i_1_n_7\,
      Q => ticks_reg(36),
      R => '0'
    );
\ticks_reg[36]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[32]_i_1_n_0\,
      CO(3) => \ticks_reg[36]_i_1_n_0\,
      CO(2) => \ticks_reg[36]_i_1_n_1\,
      CO(1) => \ticks_reg[36]_i_1_n_2\,
      CO(0) => \ticks_reg[36]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[36]_i_1_n_4\,
      O(2) => \ticks_reg[36]_i_1_n_5\,
      O(1) => \ticks_reg[36]_i_1_n_6\,
      O(0) => \ticks_reg[36]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(39 downto 36)
    );
\ticks_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[36]_i_1_n_6\,
      Q => ticks_reg(37),
      R => '0'
    );
\ticks_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[36]_i_1_n_5\,
      Q => ticks_reg(38),
      R => '0'
    );
\ticks_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[36]_i_1_n_4\,
      Q => ticks_reg(39),
      R => '0'
    );
\ticks_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[0]_i_1_n_4\,
      Q => ticks_reg(3),
      R => '0'
    );
\ticks_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[40]_i_1_n_7\,
      Q => ticks_reg(40),
      R => '0'
    );
\ticks_reg[40]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[36]_i_1_n_0\,
      CO(3) => \ticks_reg[40]_i_1_n_0\,
      CO(2) => \ticks_reg[40]_i_1_n_1\,
      CO(1) => \ticks_reg[40]_i_1_n_2\,
      CO(0) => \ticks_reg[40]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[40]_i_1_n_4\,
      O(2) => \ticks_reg[40]_i_1_n_5\,
      O(1) => \ticks_reg[40]_i_1_n_6\,
      O(0) => \ticks_reg[40]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(43 downto 40)
    );
\ticks_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[40]_i_1_n_6\,
      Q => ticks_reg(41),
      R => '0'
    );
\ticks_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[40]_i_1_n_5\,
      Q => ticks_reg(42),
      R => '0'
    );
\ticks_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[40]_i_1_n_4\,
      Q => ticks_reg(43),
      R => '0'
    );
\ticks_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[44]_i_1_n_7\,
      Q => ticks_reg(44),
      R => '0'
    );
\ticks_reg[44]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[40]_i_1_n_0\,
      CO(3) => \ticks_reg[44]_i_1_n_0\,
      CO(2) => \ticks_reg[44]_i_1_n_1\,
      CO(1) => \ticks_reg[44]_i_1_n_2\,
      CO(0) => \ticks_reg[44]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[44]_i_1_n_4\,
      O(2) => \ticks_reg[44]_i_1_n_5\,
      O(1) => \ticks_reg[44]_i_1_n_6\,
      O(0) => \ticks_reg[44]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(47 downto 44)
    );
\ticks_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[44]_i_1_n_6\,
      Q => ticks_reg(45),
      R => '0'
    );
\ticks_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[44]_i_1_n_5\,
      Q => ticks_reg(46),
      R => '0'
    );
\ticks_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[44]_i_1_n_4\,
      Q => ticks_reg(47),
      R => '0'
    );
\ticks_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[48]_i_1_n_7\,
      Q => ticks_reg(48),
      R => '0'
    );
\ticks_reg[48]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[44]_i_1_n_0\,
      CO(3 downto 2) => \NLW_ticks_reg[48]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \ticks_reg[48]_i_1_n_2\,
      CO(0) => \ticks_reg[48]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_ticks_reg[48]_i_1_O_UNCONNECTED\(3),
      O(2) => \ticks_reg[48]_i_1_n_5\,
      O(1) => \ticks_reg[48]_i_1_n_6\,
      O(0) => \ticks_reg[48]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => ticks_reg(50 downto 48)
    );
\ticks_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[48]_i_1_n_6\,
      Q => ticks_reg(49),
      R => '0'
    );
\ticks_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[4]_i_1_n_7\,
      Q => ticks_reg(4),
      R => '0'
    );
\ticks_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[0]_i_1_n_0\,
      CO(3) => \ticks_reg[4]_i_1_n_0\,
      CO(2) => \ticks_reg[4]_i_1_n_1\,
      CO(1) => \ticks_reg[4]_i_1_n_2\,
      CO(0) => \ticks_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[4]_i_1_n_4\,
      O(2) => \ticks_reg[4]_i_1_n_5\,
      O(1) => \ticks_reg[4]_i_1_n_6\,
      O(0) => \ticks_reg[4]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(7 downto 4)
    );
\ticks_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[48]_i_1_n_5\,
      Q => ticks_reg(50),
      R => '0'
    );
\ticks_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[4]_i_1_n_6\,
      Q => ticks_reg(5),
      R => '0'
    );
\ticks_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[4]_i_1_n_5\,
      Q => ticks_reg(6),
      R => '0'
    );
\ticks_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[4]_i_1_n_4\,
      Q => ticks_reg(7),
      R => '0'
    );
\ticks_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[8]_i_1_n_7\,
      Q => ticks_reg(8),
      R => '0'
    );
\ticks_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[4]_i_1_n_0\,
      CO(3) => \ticks_reg[8]_i_1_n_0\,
      CO(2) => \ticks_reg[8]_i_1_n_1\,
      CO(1) => \ticks_reg[8]_i_1_n_2\,
      CO(0) => \ticks_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[8]_i_1_n_4\,
      O(2) => \ticks_reg[8]_i_1_n_5\,
      O(1) => \ticks_reg[8]_i_1_n_6\,
      O(0) => \ticks_reg[8]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(11 downto 8)
    );
\ticks_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^officialcontrol_reg[5]_0\(0),
      D => \ticks_reg[8]_i_1_n_6\,
      Q => ticks_reg(9),
      R => '0'
    );
\waddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => axi_awaddr(0),
      I1 => axi_wvalid,
      I2 => axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => \^aw_en_reg_0\,
      I5 => waddr(2),
      O => \waddr[2]_i_1_n_0\
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => axi_awaddr(1),
      I1 => axi_wvalid,
      I2 => axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => \^aw_en_reg_0\,
      I5 => waddr(3),
      O => \waddr[3]_i_1_n_0\
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \waddr[2]_i_1_n_0\,
      Q => waddr(2),
      R => my9x16Fifo_inst_n_36
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \waddr[3]_i_1_n_0\,
      Q => waddr(3),
      R => my9x16Fifo_inst_n_36
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial is
  port (
    tx_out : out STD_LOGIC;
    axi_wready_reg : out STD_LOGIC;
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_bvalid : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \wr_index_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \rd_index_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    baudClockOut : out STD_LOGIC;
    empty : out STD_LOGIC;
    rd_data : out STD_LOGIC_VECTOR ( 8 downto 0 );
    watermark : out STD_LOGIC_VECTOR ( 4 downto 0 );
    full : out STD_LOGIC;
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_aclk : in STD_LOGIC;
    axi_wvalid : in STD_LOGIC;
    axi_awvalid : in STD_LOGIC;
    axi_bready : in STD_LOGIC;
    axi_arvalid : in STD_LOGIC;
    axi_rready : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    rd_request : in STD_LOGIC;
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg\ : STD_LOGIC;
  signal \^axi_awready_reg\ : STD_LOGIC;
  signal \^axi_bvalid\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg\ : STD_LOGIC;
  signal \^axi_wready_reg\ : STD_LOGIC;
  signal keepCount0 : STD_LOGIC;
  signal outSignal2 : STD_LOGIC;
  signal outSignal2_i_1_n_0 : STD_LOGIC;
  signal outSignal_i_1_n_0 : STD_LOGIC;
  signal serial_v1_0_AXI_inst_n_5 : STD_LOGIC;
  signal serial_v1_0_AXI_inst_n_8 : STD_LOGIC;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  axi_arready_reg <= \^axi_arready_reg\;
  axi_awready_reg <= \^axi_awready_reg\;
  axi_bvalid <= \^axi_bvalid\;
  axi_rvalid_reg <= \^axi_rvalid_reg\;
  axi_wready_reg <= \^axi_wready_reg\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF8AAA8AAA8AAA"
    )
        port map (
      I0 => serial_v1_0_AXI_inst_n_8,
      I1 => \^axi_awready_reg\,
      I2 => axi_awvalid,
      I3 => axi_wvalid,
      I4 => \^axi_bvalid\,
      I5 => axi_bready,
      O => aw_en_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008000FFFF8000"
    )
        port map (
      I0 => axi_wvalid,
      I1 => axi_awvalid,
      I2 => \^axi_wready_reg\,
      I3 => \^axi_awready_reg\,
      I4 => \^axi_bvalid\,
      I5 => axi_bready,
      O => axi_bvalid_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => \^axi_arready_reg\,
      I1 => axi_arvalid,
      I2 => axi_rready,
      I3 => \^axi_rvalid_reg\,
      O => axi_rvalid_i_1_n_0
    );
outSignal2_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => outSignal2,
      O => outSignal2_i_1_n_0
    );
outSignal_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => keepCount0,
      I1 => \^q\(0),
      I2 => serial_v1_0_AXI_inst_n_5,
      O => outSignal_i_1_n_0
    );
serial_v1_0_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI
     port map (
      CO(0) => keepCount0,
      Q(4 downto 0) => \wr_index_reg[4]\(4 downto 0),
      aw_en_reg_0 => serial_v1_0_AXI_inst_n_8,
      aw_en_reg_1 => aw_en_i_1_n_0,
      axi_aclk => axi_aclk,
      axi_araddr(1 downto 0) => axi_araddr(1 downto 0),
      axi_aresetn => axi_aresetn,
      axi_arready_reg_0 => \^axi_arready_reg\,
      axi_arvalid => axi_arvalid,
      axi_awaddr(1 downto 0) => axi_awaddr(1 downto 0),
      axi_awready_reg_0 => \^axi_awready_reg\,
      axi_awvalid => axi_awvalid,
      axi_bvalid => \^axi_bvalid\,
      axi_bvalid_reg_0 => axi_bvalid_i_1_n_0,
      axi_rdata(31 downto 0) => axi_rdata(31 downto 0),
      axi_rvalid_reg_0 => \^axi_rvalid_reg\,
      axi_rvalid_reg_1 => axi_rvalid_i_1_n_0,
      axi_wdata(31 downto 0) => axi_wdata(31 downto 0),
      axi_wready_reg_0 => \^axi_wready_reg\,
      axi_wstrb(3 downto 0) => axi_wstrb(3 downto 0),
      axi_wvalid => axi_wvalid,
      baudClockOut => baudClockOut,
      empty => empty,
      full => full,
      \officialControl_reg[5]_0\(1 downto 0) => \^q\(1 downto 0),
      outSignal2 => outSignal2,
      outSignal2_reg_0 => outSignal2_i_1_n_0,
      outSignal_reg_0 => serial_v1_0_AXI_inst_n_5,
      outSignal_reg_1 => outSignal_i_1_n_0,
      rd_data(8 downto 0) => rd_data(8 downto 0),
      \rd_index_reg[4]\(4 downto 0) => \rd_index_reg[4]\(4 downto 0),
      rd_request => rd_request,
      tx_out => tx_out,
      watermark(4 downto 0) => watermark(4 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    wr_request : in STD_LOGIC;
    rd_request : in STD_LOGIC;
    clear_overflow_request : in STD_LOGIC;
    wr_data : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_data : out STD_LOGIC_VECTOR ( 8 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    baudClockOut : out STD_LOGIC;
    tx_out : out STD_LOGIC;
    overflow : out STD_LOGIC;
    wr_index : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_index : out STD_LOGIC_VECTOR ( 4 downto 0 );
    watermark : out STD_LOGIC_VECTOR ( 4 downto 0 );
    enableing : out STD_LOGIC;
    testing : out STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_awvalid : in STD_LOGIC;
    axi_awready : out STD_LOGIC;
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_wvalid : in STD_LOGIC;
    axi_wready : out STD_LOGIC;
    axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_bvalid : out STD_LOGIC;
    axi_bready : in STD_LOGIC;
    axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_arvalid : in STD_LOGIC;
    axi_arready : out STD_LOGIC;
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_rvalid : out STD_LOGIC;
    axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_serial_0_10,serial,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "serial,Vivado 2024.1.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \inst/serial_v1_0_AXI_inst/i_/i_/i__n_0\ : STD_LOGIC;
  signal n_0_300 : STD_LOGIC;
  signal n_0_301 : STD_LOGIC;
  signal n_0_302 : STD_LOGIC;
  signal n_0_303 : STD_LOGIC;
  signal n_0_304 : STD_LOGIC;
  signal n_0_305 : STD_LOGIC;
  signal n_0_306 : STD_LOGIC;
  signal n_0_307 : STD_LOGIC;
  signal n_0_308 : STD_LOGIC;
  signal n_0_309 : STD_LOGIC;
  signal n_0_310 : STD_LOGIC;
  signal n_0_311 : STD_LOGIC;
  signal n_0_313 : STD_LOGIC;
  signal n_0_314 : STD_LOGIC;
  signal n_0_315 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of i_300 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of i_301 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of i_302 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of i_303 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of i_304 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of i_305 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of i_306 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of i_307 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of i_308 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of i_309 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of i_310 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of i_311 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of i_313 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of i_314 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of i_315 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \inst/serial_v1_0_AXI_inst/i_/i_/i_\ : label is "soft_lutpair21";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axi_aclk : signal is "xilinx.com:signal:clock:1.0 AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of axi_aclk : signal is "XIL_INTERFACENAME AXI_CLK, ASSOCIATED_BUSIF AXI, ASSOCIATED_RESET axi_aresetn:reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_aresetn : signal is "xilinx.com:signal:reset:1.0 AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of axi_aresetn : signal is "XIL_INTERFACENAME AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_arready : signal is "xilinx.com:interface:aximm:1.0 AXI ARREADY";
  attribute X_INTERFACE_INFO of axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI ARVALID";
  attribute X_INTERFACE_INFO of axi_awready : signal is "xilinx.com:interface:aximm:1.0 AXI AWREADY";
  attribute X_INTERFACE_INFO of axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI AWVALID";
  attribute X_INTERFACE_INFO of axi_bready : signal is "xilinx.com:interface:aximm:1.0 AXI BREADY";
  attribute X_INTERFACE_INFO of axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI BVALID";
  attribute X_INTERFACE_INFO of axi_rready : signal is "xilinx.com:interface:aximm:1.0 AXI RREADY";
  attribute X_INTERFACE_PARAMETER of axi_rready : signal is "XIL_INTERFACENAME AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI RVALID";
  attribute X_INTERFACE_INFO of axi_wready : signal is "xilinx.com:interface:aximm:1.0 AXI WREADY";
  attribute X_INTERFACE_INFO of axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI WVALID";
  attribute X_INTERFACE_INFO of axi_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI ARADDR";
  attribute X_INTERFACE_INFO of axi_arprot : signal is "xilinx.com:interface:aximm:1.0 AXI ARPROT";
  attribute X_INTERFACE_INFO of axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI AWADDR";
  attribute X_INTERFACE_INFO of axi_awprot : signal is "xilinx.com:interface:aximm:1.0 AXI AWPROT";
  attribute X_INTERFACE_INFO of axi_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI BRESP";
  attribute X_INTERFACE_INFO of axi_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI RDATA";
  attribute X_INTERFACE_INFO of axi_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI RRESP";
  attribute X_INTERFACE_INFO of axi_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI WDATA";
  attribute X_INTERFACE_INFO of axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI WSTRB";
begin
  axi_bresp(1) <= \<const0>\;
  axi_bresp(0) <= \<const0>\;
  axi_rresp(1) <= \<const0>\;
  axi_rresp(0) <= \<const0>\;
  overflow <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_300: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_300
    );
i_301: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_301
    );
i_302: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_302
    );
i_303: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_303
    );
i_304: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_304
    );
i_305: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_305
    );
i_306: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_306
    );
i_307: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_307
    );
i_308: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_308
    );
i_309: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_309
    );
i_310: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_310
    );
i_311: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_311
    );
i_313: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_313
    );
i_314: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_314
    );
i_315: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_315
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial
     port map (
      Q(1) => testing,
      Q(0) => enableing,
      axi_aclk => axi_aclk,
      axi_araddr(1 downto 0) => axi_araddr(3 downto 2),
      axi_aresetn => axi_aresetn,
      axi_arready_reg => axi_arready,
      axi_arvalid => axi_arvalid,
      axi_awaddr(1 downto 0) => axi_awaddr(3 downto 2),
      axi_awready_reg => axi_awready,
      axi_awvalid => axi_awvalid,
      axi_bready => axi_bready,
      axi_bvalid => axi_bvalid,
      axi_rdata(31 downto 0) => axi_rdata(31 downto 0),
      axi_rready => axi_rready,
      axi_rvalid_reg => axi_rvalid,
      axi_wdata(31 downto 0) => axi_wdata(31 downto 0),
      axi_wready_reg => axi_wready,
      axi_wstrb(3 downto 0) => axi_wstrb(3 downto 0),
      axi_wvalid => axi_wvalid,
      baudClockOut => baudClockOut,
      empty => empty,
      full => full,
      rd_data(8 downto 0) => rd_data(8 downto 0),
      \rd_index_reg[4]\(4 downto 0) => rd_index(4 downto 0),
      rd_request => rd_request,
      tx_out => tx_out,
      watermark(4 downto 0) => watermark(4 downto 0),
      \wr_index_reg[4]\(4 downto 0) => wr_index(4 downto 0)
    );
\inst/serial_v1_0_AXI_inst/i_/i_/i_\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => \inst/serial_v1_0_AXI_inst/i_/i_/i__n_0\
    );
end STRUCTURE;
