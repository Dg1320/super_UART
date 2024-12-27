-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (lin64) Build 5164865 Thu Sep  5 14:36:28 MDT 2024
-- Date        : Fri Nov 15 19:28:25 2024
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
    signalFeed : out STD_LOGIC;
    outReg_reg_0 : out STD_LOGIC;
    outReg_reg_1 : out STD_LOGIC;
    outReg_reg_2 : out STD_LOGIC;
    shiftOut1_out : out STD_LOGIC;
    count : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_aclk : in STD_LOGIC;
    \state_reg[2]\ : in STD_LOGIC;
    \state_reg[2]_0\ : in STD_LOGIC;
    \state_reg[1]\ : in STD_LOGIC;
    \state_reg[1]_0\ : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC;
    p_0_in_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    outReg_reg_3 : in STD_LOGIC;
    axi_arvalid : in STD_LOGIC;
    outReg_reg_4 : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    \state_reg[0]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[2]_1\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    \state_reg[0]_2\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect is
  signal fifoRead : STD_LOGIC;
  signal in_delay : STD_LOGIC;
  signal \outReg_i_1__0_n_0\ : STD_LOGIC;
  signal \^signalfeed\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_7_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of TXGo_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[2]_i_7\ : label is "soft_lutpair0";
begin
  signalFeed <= \^signalfeed\;
TXGo_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \state_reg[0]\,
      I1 => \state_reg[2]_0\,
      I2 => \state_reg[1]_0\,
      I3 => \^signalfeed\,
      O => E(0)
    );
\count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808000000000000"
    )
        port map (
      I0 => axi_aresetn,
      I1 => \count_reg[0]\,
      I2 => \state_reg[0]\,
      I3 => \count_reg[0]_0\,
      I4 => \^signalfeed\,
      I5 => \state_reg[2]\,
      O => count
    );
in_delay_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => outReg_reg_4,
      I2 => axi_arvalid,
      I3 => outReg_reg_3,
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
      INIT => X"0000000000001000"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => outReg_reg_3,
      I2 => axi_arvalid,
      I3 => outReg_reg_4,
      I4 => p_0_in_0(1),
      I5 => in_delay,
      O => \outReg_i_1__0_n_0\
    );
outReg_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \outReg_i_1__0_n_0\,
      Q => \^signalfeed\,
      R => '0'
    );
shiftOut_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08A8000000000000"
    )
        port map (
      I0 => axi_aresetn,
      I1 => \count_reg[0]\,
      I2 => \state_reg[0]\,
      I3 => \state_reg[2]_0\,
      I4 => \^signalfeed\,
      I5 => \state_reg[2]\,
      O => shiftOut1_out
    );
\state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \state[0]_i_2_n_0\,
      I1 => \state_reg[2]\,
      I2 => \state[2]_i_3_n_0\,
      I3 => \state_reg[0]\,
      O => outReg_reg_2
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DC55FFFF10110000"
    )
        port map (
      I0 => \state_reg[0]\,
      I1 => \state_reg[1]_0\,
      I2 => Q(0),
      I3 => \state_reg[2]_0\,
      I4 => \^signalfeed\,
      I5 => \state_reg[0]_2\,
      O => \state[0]_i_2_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFDF00"
    )
        port map (
      I0 => \^signalfeed\,
      I1 => \state_reg[1]\,
      I2 => \state_reg[2]\,
      I3 => \state[2]_i_3_n_0\,
      I4 => \state_reg[1]_0\,
      O => outReg_reg_1
    );
\state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \state[2]_i_2_n_0\,
      I1 => \state_reg[2]\,
      I2 => \state[2]_i_3_n_0\,
      I3 => \state_reg[2]_0\,
      O => outReg_reg_0
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030F80800000000"
    )
        port map (
      I0 => Q(0),
      I1 => \state_reg[2]_0\,
      I2 => \state_reg[1]_0\,
      I3 => \state_reg[2]_1\,
      I4 => \state_reg[0]\,
      I5 => \^signalfeed\,
      O => \state[2]_i_2_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800FFFFB8000000"
    )
        port map (
      I0 => \state_reg[0]_0\,
      I1 => axi_aresetn,
      I2 => \state_reg[0]_1\,
      I3 => \^signalfeed\,
      I4 => \state_reg[2]\,
      I5 => \state[2]_i_7_n_0\,
      O => \state[2]_i_3_n_0\
    );
\state[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \^signalfeed\,
      I1 => \state_reg[2]_0\,
      I2 => \state_reg[1]_0\,
      I3 => \state_reg[0]\,
      I4 => axi_aresetn,
      O => \state[2]_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0 is
  port (
    in_delay : out STD_LOGIC;
    outReg_reg_0 : out STD_LOGIC;
    outReg_reg_1 : out STD_LOGIC;
    in_delay_reg_0 : in STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    outReg_reg_2 : in STD_LOGIC;
    myParityBit : in STD_LOGIC;
    shiftOut_reg : in STD_LOGIC;
    shiftOut_reg_0 : in STD_LOGIC;
    shiftOut_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0 : entity is "edge_detect";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0 is
  signal \^outreg_reg_0\ : STD_LOGIC;
begin
  outReg_reg_0 <= \^outreg_reg_0\;
in_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => in_delay_reg_0,
      Q => in_delay,
      R => '0'
    );
outReg_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => outReg_reg_2,
      Q => \^outreg_reg_0\,
      R => '0'
    );
shiftOut_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC00A0A"
    )
        port map (
      I0 => \^outreg_reg_0\,
      I1 => myParityBit,
      I2 => shiftOut_reg,
      I3 => shiftOut_reg_0,
      I4 => shiftOut_reg_1,
      O => outReg_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_1 is
  port (
    outReg_reg_0 : out STD_LOGIC;
    in_delay_reg_0 : in STD_LOGIC;
    axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_1 : entity is "edge_detect";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_1 is
  signal in_delay : STD_LOGIC;
  signal outReg_i_1_n_0 : STD_LOGIC;
begin
in_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => in_delay_reg_0,
      Q => in_delay,
      R => '0'
    );
outReg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_delay_reg_0,
      I1 => in_delay,
      O => outReg_i_1_n_0
    );
outReg_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => outReg_i_1_n_0,
      Q => outReg_reg_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_2 is
  port (
    write_request : out STD_LOGIC;
    p_19_in : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_index_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_index_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_index_reg[3]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_index_reg[3]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_index_reg[3]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_index_reg[3]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_index_reg[3]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_index_reg[3]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_index_reg[3]_7\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_index_reg[3]_8\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_index_reg[3]_9\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_index_reg[3]_10\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_index_reg[3]_11\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_index_reg[3]_12\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_index_reg[3]_13\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \officialData_reg[8]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \officialData_reg[8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \officialData_reg[8]_1\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \officialData_reg[8]_2\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \officialData_reg[8]_3\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \officialData_reg[8]_4\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \officialData_reg[8]_5\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    outReg_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \officialData_reg[8]_6\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \officialData_reg[8]_7\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \officialData_reg[8]_8\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \officialData_reg[8]_9\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \officialData_reg[8]_10\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \officialData_reg[8]_11\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \officialData_reg[8]_12\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \officialData_reg[8]_13\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_aclk : in STD_LOGIC;
    waddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_awvalid : in STD_LOGIC;
    axi_wvalid : in STD_LOGIC;
    in_delay_reg_0 : in STD_LOGIC;
    in_delay_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aresetn : in STD_LOGIC;
    officialData : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \FIFO_DATA_reg[7][0]\ : in STD_LOGIC;
    \FIFO_DATA_reg[15][0]\ : in STD_LOGIC;
    \FIFO_DATA_reg[3][0]\ : in STD_LOGIC;
    \FIFO_DATA_reg[11][0]\ : in STD_LOGIC;
    \FIFO_DATA_reg[5][0]\ : in STD_LOGIC;
    \FIFO_DATA_reg[13][0]\ : in STD_LOGIC;
    \FIFO_DATA_reg[1][0]\ : in STD_LOGIC;
    \FIFO_DATA_reg[9][0]\ : in STD_LOGIC;
    signalFeed : in STD_LOGIC;
    \rd_index_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_index_reg[0]_0\ : in STD_LOGIC;
    \FIFO_DATA_reg[6][0]\ : in STD_LOGIC;
    \FIFO_DATA_reg[14][0]\ : in STD_LOGIC;
    \FIFO_DATA_reg[4][0]\ : in STD_LOGIC;
    \FIFO_DATA_reg[12][0]\ : in STD_LOGIC;
    \FIFO_DATA_reg[2][0]\ : in STD_LOGIC;
    \FIFO_DATA_reg[10][0]\ : in STD_LOGIC;
    \FIFO_DATA_reg[0][0]\ : in STD_LOGIC;
    \FIFO_DATA_reg[8][0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_2 : entity is "edge_detect";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_2 is
  signal fifoWrite : STD_LOGIC;
  signal in_delay : STD_LOGIC;
  signal \outReg_i_1__1_n_0\ : STD_LOGIC;
  signal \^p_19_in\ : STD_LOGIC;
  signal \^write_request\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FIFO_DATA[0][0]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \FIFO_DATA[0][1]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \FIFO_DATA[0][2]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \FIFO_DATA[0][3]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \FIFO_DATA[0][4]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \FIFO_DATA[0][5]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \FIFO_DATA[0][6]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \FIFO_DATA[0][7]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \FIFO_DATA[0][8]_i_2\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][0]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][1]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][2]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][3]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][4]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][5]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][6]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][7]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][8]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][8]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][1]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][2]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][3]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][4]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][5]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][6]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][7]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][8]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][5]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][6]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][7]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][8]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][0]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][3]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][4]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][5]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][6]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][7]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][8]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][8]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][3]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][4]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][6]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][7]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][8]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][0]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][1]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][2]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][3]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][4]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][5]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][6]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][7]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][8]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][8]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][1]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][2]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][3]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][4]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][5]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][6]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][7]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][8]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][8]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][5]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][6]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][7]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][8]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][8]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][0]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][1]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][2]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][3]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][4]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][5]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][6]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][7]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][8]_i_2\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][3]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][4]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][5]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][6]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][8]_i_2\ : label is "soft_lutpair32";
begin
  p_19_in <= \^p_19_in\;
  write_request <= \^write_request\;
\FIFO_DATA[0][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[0][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_12\(0)
    );
\FIFO_DATA[0][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[0][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_12\(1)
    );
\FIFO_DATA[0][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[0][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_12\(2)
    );
\FIFO_DATA[0][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[0][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_12\(3)
    );
\FIFO_DATA[0][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[0][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_12\(4)
    );
\FIFO_DATA[0][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[0][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_12\(5)
    );
\FIFO_DATA[0][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[0][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_12\(6)
    );
\FIFO_DATA[0][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[0][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_12\(7)
    );
\FIFO_DATA[0][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000FFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => \^write_request\,
      I5 => axi_aresetn,
      O => \wr_index_reg[3]_13\(0)
    );
\FIFO_DATA[0][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[0][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_12\(8)
    );
\FIFO_DATA[10][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[10][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_11\(0)
    );
\FIFO_DATA[10][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[10][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_11\(1)
    );
\FIFO_DATA[10][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[10][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_11\(2)
    );
\FIFO_DATA[10][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[10][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_11\(3)
    );
\FIFO_DATA[10][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[10][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_11\(4)
    );
\FIFO_DATA[10][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[10][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_11\(5)
    );
\FIFO_DATA[10][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[10][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_11\(6)
    );
\FIFO_DATA[10][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[10][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_11\(7)
    );
\FIFO_DATA[10][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00200000FFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => \^write_request\,
      I5 => axi_aresetn,
      O => \wr_index_reg[3]_3\(0)
    );
\FIFO_DATA[10][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[10][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_11\(8)
    );
\FIFO_DATA[11][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[11][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_1\(0)
    );
\FIFO_DATA[11][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[11][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_1\(1)
    );
\FIFO_DATA[11][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[11][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_1\(2)
    );
\FIFO_DATA[11][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[11][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_1\(3)
    );
\FIFO_DATA[11][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[11][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_1\(4)
    );
\FIFO_DATA[11][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[11][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_1\(5)
    );
\FIFO_DATA[11][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[11][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_1\(6)
    );
\FIFO_DATA[11][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[11][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_1\(7)
    );
\FIFO_DATA[11][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00800000FFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => \^write_request\,
      I5 => axi_aresetn,
      O => \wr_index_reg[3]_2\(0)
    );
\FIFO_DATA[11][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[11][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_1\(8)
    );
\FIFO_DATA[12][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[12][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_9\(0)
    );
\FIFO_DATA[12][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[12][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_9\(1)
    );
\FIFO_DATA[12][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[12][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_9\(2)
    );
\FIFO_DATA[12][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[12][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_9\(3)
    );
\FIFO_DATA[12][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[12][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_9\(4)
    );
\FIFO_DATA[12][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[12][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_9\(5)
    );
\FIFO_DATA[12][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[12][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_9\(6)
    );
\FIFO_DATA[12][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[12][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_9\(7)
    );
\FIFO_DATA[12][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02000000FFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => \^write_request\,
      I5 => axi_aresetn,
      O => \wr_index_reg[3]_1\(0)
    );
\FIFO_DATA[12][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[12][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_9\(8)
    );
\FIFO_DATA[13][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[13][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_3\(0)
    );
\FIFO_DATA[13][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[13][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_3\(1)
    );
\FIFO_DATA[13][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[13][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_3\(2)
    );
\FIFO_DATA[13][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[13][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_3\(3)
    );
\FIFO_DATA[13][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[13][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_3\(4)
    );
\FIFO_DATA[13][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[13][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_3\(5)
    );
\FIFO_DATA[13][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[13][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_3\(6)
    );
\FIFO_DATA[13][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[13][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_3\(7)
    );
\FIFO_DATA[13][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20000000FFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => \^write_request\,
      I5 => axi_aresetn,
      O => \wr_index_reg[3]_0\(0)
    );
\FIFO_DATA[13][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[13][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_3\(8)
    );
\FIFO_DATA[14][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[14][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_7\(0)
    );
\FIFO_DATA[14][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[14][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_7\(1)
    );
\FIFO_DATA[14][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[14][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_7\(2)
    );
\FIFO_DATA[14][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[14][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_7\(3)
    );
\FIFO_DATA[14][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[14][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_7\(4)
    );
\FIFO_DATA[14][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[14][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_7\(5)
    );
\FIFO_DATA[14][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[14][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_7\(6)
    );
\FIFO_DATA[14][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[14][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_7\(7)
    );
\FIFO_DATA[14][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20000000FFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => \^write_request\,
      I5 => axi_aresetn,
      O => \wr_index_reg[3]\(0)
    );
\FIFO_DATA[14][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[14][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_7\(8)
    );
\FIFO_DATA[15][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[15][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]\(0)
    );
\FIFO_DATA[15][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[15][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]\(1)
    );
\FIFO_DATA[15][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[15][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]\(2)
    );
\FIFO_DATA[15][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[15][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]\(3)
    );
\FIFO_DATA[15][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[15][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]\(4)
    );
\FIFO_DATA[15][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[15][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]\(5)
    );
\FIFO_DATA[15][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[15][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]\(6)
    );
\FIFO_DATA[15][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[15][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]\(7)
    );
\FIFO_DATA[15][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000FFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => \^write_request\,
      I5 => axi_aresetn,
      O => E(0)
    );
\FIFO_DATA[15][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[15][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]\(8)
    );
\FIFO_DATA[1][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[1][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_4\(0)
    );
\FIFO_DATA[1][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[1][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_4\(1)
    );
\FIFO_DATA[1][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[1][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_4\(2)
    );
\FIFO_DATA[1][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[1][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_4\(3)
    );
\FIFO_DATA[1][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[1][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_4\(4)
    );
\FIFO_DATA[1][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[1][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_4\(5)
    );
\FIFO_DATA[1][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[1][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_4\(6)
    );
\FIFO_DATA[1][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[1][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_4\(7)
    );
\FIFO_DATA[1][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00100000FFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => \^write_request\,
      I5 => axi_aresetn,
      O => \wr_index_reg[3]_12\(0)
    );
\FIFO_DATA[1][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[1][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_4\(8)
    );
\FIFO_DATA[2][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[2][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_10\(0)
    );
\FIFO_DATA[2][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[2][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_10\(1)
    );
\FIFO_DATA[2][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[2][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_10\(2)
    );
\FIFO_DATA[2][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[2][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_10\(3)
    );
\FIFO_DATA[2][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[2][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_10\(4)
    );
\FIFO_DATA[2][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[2][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_10\(5)
    );
\FIFO_DATA[2][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[2][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_10\(6)
    );
\FIFO_DATA[2][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[2][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_10\(7)
    );
\FIFO_DATA[2][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00100000FFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => \^write_request\,
      I5 => axi_aresetn,
      O => \wr_index_reg[3]_11\(0)
    );
\FIFO_DATA[2][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[2][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_10\(8)
    );
\FIFO_DATA[3][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[3][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_0\(0)
    );
\FIFO_DATA[3][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[3][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_0\(1)
    );
\FIFO_DATA[3][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[3][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_0\(2)
    );
\FIFO_DATA[3][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[3][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_0\(3)
    );
\FIFO_DATA[3][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[3][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_0\(4)
    );
\FIFO_DATA[3][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[3][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_0\(5)
    );
\FIFO_DATA[3][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[3][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_0\(6)
    );
\FIFO_DATA[3][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[3][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_0\(7)
    );
\FIFO_DATA[3][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00400000FFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => \^write_request\,
      I5 => axi_aresetn,
      O => \wr_index_reg[3]_10\(0)
    );
\FIFO_DATA[3][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[3][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_0\(8)
    );
\FIFO_DATA[4][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[4][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_8\(0)
    );
\FIFO_DATA[4][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[4][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_8\(1)
    );
\FIFO_DATA[4][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[4][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_8\(2)
    );
\FIFO_DATA[4][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[4][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_8\(3)
    );
\FIFO_DATA[4][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[4][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_8\(4)
    );
\FIFO_DATA[4][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[4][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_8\(5)
    );
\FIFO_DATA[4][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[4][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_8\(6)
    );
\FIFO_DATA[4][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[4][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_8\(7)
    );
\FIFO_DATA[4][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000000FFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => \^write_request\,
      I5 => axi_aresetn,
      O => \wr_index_reg[3]_9\(0)
    );
\FIFO_DATA[4][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[4][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_8\(8)
    );
\FIFO_DATA[5][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[5][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_2\(0)
    );
\FIFO_DATA[5][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[5][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_2\(1)
    );
\FIFO_DATA[5][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[5][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_2\(2)
    );
\FIFO_DATA[5][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[5][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_2\(3)
    );
\FIFO_DATA[5][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[5][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_2\(4)
    );
\FIFO_DATA[5][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[5][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_2\(5)
    );
\FIFO_DATA[5][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[5][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_2\(6)
    );
\FIFO_DATA[5][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[5][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_2\(7)
    );
\FIFO_DATA[5][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10000000FFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => \^write_request\,
      I5 => axi_aresetn,
      O => \wr_index_reg[3]_8\(0)
    );
\FIFO_DATA[5][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[5][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_2\(8)
    );
\FIFO_DATA[6][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[6][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_6\(0)
    );
\FIFO_DATA[6][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[6][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_6\(1)
    );
\FIFO_DATA[6][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[6][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_6\(2)
    );
\FIFO_DATA[6][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[6][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_6\(3)
    );
\FIFO_DATA[6][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[6][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_6\(4)
    );
\FIFO_DATA[6][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[6][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_6\(5)
    );
\FIFO_DATA[6][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[6][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_6\(6)
    );
\FIFO_DATA[6][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[6][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_6\(7)
    );
\FIFO_DATA[6][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10000000FFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => \^write_request\,
      I5 => axi_aresetn,
      O => \wr_index_reg[3]_7\(0)
    );
\FIFO_DATA[6][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[6][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_6\(8)
    );
\FIFO_DATA[7][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[7][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => D(0)
    );
\FIFO_DATA[7][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[7][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => D(1)
    );
\FIFO_DATA[7][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[7][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => D(2)
    );
\FIFO_DATA[7][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[7][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => D(3)
    );
\FIFO_DATA[7][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[7][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => D(4)
    );
\FIFO_DATA[7][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[7][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => D(5)
    );
\FIFO_DATA[7][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[7][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => D(6)
    );
\FIFO_DATA[7][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[7][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => D(7)
    );
\FIFO_DATA[7][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40000000FFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => \^write_request\,
      I5 => axi_aresetn,
      O => \wr_index_reg[3]_6\(0)
    );
\FIFO_DATA[7][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[7][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => D(8)
    );
\FIFO_DATA[8][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[8][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_13\(0)
    );
\FIFO_DATA[8][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[8][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_13\(1)
    );
\FIFO_DATA[8][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[8][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_13\(2)
    );
\FIFO_DATA[8][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[8][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_13\(3)
    );
\FIFO_DATA[8][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[8][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_13\(4)
    );
\FIFO_DATA[8][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[8][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_13\(5)
    );
\FIFO_DATA[8][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[8][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_13\(6)
    );
\FIFO_DATA[8][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[8][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_13\(7)
    );
\FIFO_DATA[8][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00020000FFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => \^write_request\,
      I5 => axi_aresetn,
      O => \wr_index_reg[3]_5\(0)
    );
\FIFO_DATA[8][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[8][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_13\(8)
    );
\FIFO_DATA[9][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[9][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_5\(0)
    );
\FIFO_DATA[9][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[9][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_5\(1)
    );
\FIFO_DATA[9][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[9][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_5\(2)
    );
\FIFO_DATA[9][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[9][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_5\(3)
    );
\FIFO_DATA[9][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[9][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_5\(4)
    );
\FIFO_DATA[9][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[9][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_5\(5)
    );
\FIFO_DATA[9][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[9][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_5\(6)
    );
\FIFO_DATA[9][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[9][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_5\(7)
    );
\FIFO_DATA[9][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00200000FFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => \^write_request\,
      I5 => axi_aresetn,
      O => \wr_index_reg[3]_4\(0)
    );
\FIFO_DATA[9][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[9][0]\,
      I2 => \^write_request\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_5\(8)
    );
\in_delay_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => axi_awvalid,
      I1 => axi_wvalid,
      I2 => in_delay_reg_0,
      I3 => in_delay_reg_1,
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
      I0 => in_delay_reg_1,
      I1 => in_delay_reg_0,
      I2 => axi_wvalid,
      I3 => axi_awvalid,
      O => \^p_19_in\
    );
\outReg_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => waddr(0),
      I1 => waddr(1),
      I2 => \^p_19_in\,
      I3 => in_delay,
      O => \outReg_i_1__1_n_0\
    );
outReg_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \outReg_i_1__1_n_0\,
      Q => \^write_request\,
      R => '0'
    );
\rd_index[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A2A8"
    )
        port map (
      I0 => signalFeed,
      I1 => \rd_index_reg[0]\(0),
      I2 => \rd_index_reg[0]_0\,
      I3 => Q(4),
      I4 => \^write_request\,
      O => outReg_reg_0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my9x16Fifo is
  port (
    watermark : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \rd_index_reg[4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    p_19_in : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    \officialControl_reg[0]\ : out STD_LOGIC;
    \rd_index_reg[3]_0\ : out STD_LOGIC;
    \rd_index_reg[3]_1\ : out STD_LOGIC;
    \rd_index_reg[3]_2\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \officialBaudRate_reg[8]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_aclk : in STD_LOGIC;
    waddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_awvalid : in STD_LOGIC;
    axi_wvalid : in STD_LOGIC;
    in_delay_reg : in STD_LOGIC;
    in_delay_reg_0 : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    officialData : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \axi_rdata_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    myParityBit_reg_i_1_0 : in STD_LOGIC;
    myParityBit_reg_i_1_1 : in STD_LOGIC;
    \axi_rdata_reg[8]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \axi_rdata_reg[8]_1\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_0_in_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    signalFeed : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my9x16Fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my9x16Fifo is
  signal \^d\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \FIFO_DATA[0][8]_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_DATA[10][8]_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_DATA[11][8]_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_DATA[12][8]_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_DATA[13][8]_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_DATA[14][8]_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_DATA[15][8]_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_DATA[1][8]_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_DATA[2][8]_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_DATA[3][8]_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_DATA[4][8]_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_DATA[5][8]_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_DATA[6][8]_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_DATA[7][8]_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_DATA[8][8]_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_DATA[9][8]_i_3_n_0\ : STD_LOGIC;
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
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal empty_INST_0_i_1_n_0 : STD_LOGIC;
  signal myParityBit_reg_i_3_n_0 : STD_LOGIC;
  signal myParityBit_reg_i_4_n_0 : STD_LOGIC;
  signal myParityBit_reg_i_5_n_0 : STD_LOGIC;
  signal myParityBit_reg_i_7_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal p_1_in : STD_LOGIC_VECTOR ( 8 downto 0 );
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
  signal \rd_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_index[4]_i_3_n_0\ : STD_LOGIC;
  signal \rd_index[4]_i_4_n_0\ : STD_LOGIC;
  signal \^rd_index_reg[3]_0\ : STD_LOGIC;
  signal \^rd_index_reg[3]_1\ : STD_LOGIC;
  signal \^rd_index_reg[3]_2\ : STD_LOGIC;
  signal \^rd_index_reg[4]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \watermark[4]_INST_0_i_1_n_0\ : STD_LOGIC;
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
  signal wr_edge_n_161 : STD_LOGIC;
  signal wr_edge_n_162 : STD_LOGIC;
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
  signal wr_edge_n_3 : STD_LOGIC;
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
  signal write_request : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FIFO_DATA[0][8]_i_3\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][8]_i_3\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][8]_i_3\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][8]_i_3\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][8]_i_3\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][8]_i_3\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][8]_i_3\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][8]_i_3\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][8]_i_3\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][8]_i_3\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][8]_i_3\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][8]_i_3\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][8]_i_3\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][8]_i_3\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][8]_i_3\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][8]_i_3\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of empty_INST_0 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of full_INST_0 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \rd_index[1]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \rd_index[2]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \rd_index[3]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \rd_index[4]_i_2\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \watermark[0]_INST_0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \watermark[1]_INST_0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \watermark[3]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \watermark[4]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \wr_index[1]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \wr_index[2]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \wr_index[3]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \wr_index[4]_i_2\ : label is "soft_lutpair73";
begin
  D(5 downto 0) <= \^d\(5 downto 0);
  Q(4 downto 0) <= \^q\(4 downto 0);
  SR(0) <= \^sr\(0);
  \rd_index_reg[3]_0\ <= \^rd_index_reg[3]_0\;
  \rd_index_reg[3]_1\ <= \^rd_index_reg[3]_1\;
  \rd_index_reg[3]_2\ <= \^rd_index_reg[3]_2\;
  \rd_index_reg[4]_0\(4 downto 0) <= \^rd_index_reg[4]_0\(4 downto 0);
\FIFO_DATA[0][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \FIFO_DATA[0][8]_i_3_n_0\
    );
\FIFO_DATA[10][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \FIFO_DATA[10][8]_i_3_n_0\
    );
\FIFO_DATA[11][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \FIFO_DATA[11][8]_i_3_n_0\
    );
\FIFO_DATA[12][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \FIFO_DATA[12][8]_i_3_n_0\
    );
\FIFO_DATA[13][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \FIFO_DATA[13][8]_i_3_n_0\
    );
\FIFO_DATA[14][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \FIFO_DATA[14][8]_i_3_n_0\
    );
\FIFO_DATA[15][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \FIFO_DATA[15][8]_i_3_n_0\
    );
\FIFO_DATA[1][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \FIFO_DATA[1][8]_i_3_n_0\
    );
\FIFO_DATA[2][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \FIFO_DATA[2][8]_i_3_n_0\
    );
\FIFO_DATA[3][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \FIFO_DATA[3][8]_i_3_n_0\
    );
\FIFO_DATA[4][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \FIFO_DATA[4][8]_i_3_n_0\
    );
\FIFO_DATA[5][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \FIFO_DATA[5][8]_i_3_n_0\
    );
\FIFO_DATA[6][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \FIFO_DATA[6][8]_i_3_n_0\
    );
\FIFO_DATA[7][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \FIFO_DATA[7][8]_i_3_n_0\
    );
\FIFO_DATA[8][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \FIFO_DATA[8][8]_i_3_n_0\
    );
\FIFO_DATA[9][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \FIFO_DATA[9][8]_i_3_n_0\
    );
\FIFO_DATA_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_17,
      D => wr_edge_n_153,
      Q => \FIFO_DATA_reg[0]_15\(0),
      R => '0'
    );
\FIFO_DATA_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_17,
      D => wr_edge_n_152,
      Q => \FIFO_DATA_reg[0]_15\(1),
      R => '0'
    );
\FIFO_DATA_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_17,
      D => wr_edge_n_151,
      Q => \FIFO_DATA_reg[0]_15\(2),
      R => '0'
    );
\FIFO_DATA_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_17,
      D => wr_edge_n_150,
      Q => \FIFO_DATA_reg[0]_15\(3),
      R => '0'
    );
\FIFO_DATA_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_17,
      D => wr_edge_n_149,
      Q => \FIFO_DATA_reg[0]_15\(4),
      R => '0'
    );
\FIFO_DATA_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_17,
      D => wr_edge_n_148,
      Q => \FIFO_DATA_reg[0]_15\(5),
      R => '0'
    );
\FIFO_DATA_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_17,
      D => wr_edge_n_147,
      Q => \FIFO_DATA_reg[0]_15\(6),
      R => '0'
    );
\FIFO_DATA_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_17,
      D => wr_edge_n_146,
      Q => \FIFO_DATA_reg[0]_15\(7),
      R => '0'
    );
\FIFO_DATA_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_17,
      D => wr_edge_n_145,
      Q => \FIFO_DATA_reg[0]_15\(8),
      R => '0'
    );
\FIFO_DATA_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_7,
      D => wr_edge_n_144,
      Q => \FIFO_DATA_reg[10]_5\(0),
      R => '0'
    );
\FIFO_DATA_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_7,
      D => wr_edge_n_143,
      Q => \FIFO_DATA_reg[10]_5\(1),
      R => '0'
    );
\FIFO_DATA_reg[10][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_7,
      D => wr_edge_n_142,
      Q => \FIFO_DATA_reg[10]_5\(2),
      R => '0'
    );
\FIFO_DATA_reg[10][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_7,
      D => wr_edge_n_141,
      Q => \FIFO_DATA_reg[10]_5\(3),
      R => '0'
    );
\FIFO_DATA_reg[10][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_7,
      D => wr_edge_n_140,
      Q => \FIFO_DATA_reg[10]_5\(4),
      R => '0'
    );
\FIFO_DATA_reg[10][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_7,
      D => wr_edge_n_139,
      Q => \FIFO_DATA_reg[10]_5\(5),
      R => '0'
    );
\FIFO_DATA_reg[10][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_7,
      D => wr_edge_n_138,
      Q => \FIFO_DATA_reg[10]_5\(6),
      R => '0'
    );
\FIFO_DATA_reg[10][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_7,
      D => wr_edge_n_137,
      Q => \FIFO_DATA_reg[10]_5\(7),
      R => '0'
    );
\FIFO_DATA_reg[10][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_7,
      D => wr_edge_n_136,
      Q => \FIFO_DATA_reg[10]_5\(8),
      R => '0'
    );
\FIFO_DATA_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_6,
      D => wr_edge_n_53,
      Q => \FIFO_DATA_reg[11]_4\(0),
      R => '0'
    );
\FIFO_DATA_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_6,
      D => wr_edge_n_52,
      Q => \FIFO_DATA_reg[11]_4\(1),
      R => '0'
    );
\FIFO_DATA_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_6,
      D => wr_edge_n_51,
      Q => \FIFO_DATA_reg[11]_4\(2),
      R => '0'
    );
\FIFO_DATA_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_6,
      D => wr_edge_n_50,
      Q => \FIFO_DATA_reg[11]_4\(3),
      R => '0'
    );
\FIFO_DATA_reg[11][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_6,
      D => wr_edge_n_49,
      Q => \FIFO_DATA_reg[11]_4\(4),
      R => '0'
    );
\FIFO_DATA_reg[11][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_6,
      D => wr_edge_n_48,
      Q => \FIFO_DATA_reg[11]_4\(5),
      R => '0'
    );
\FIFO_DATA_reg[11][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_6,
      D => wr_edge_n_47,
      Q => \FIFO_DATA_reg[11]_4\(6),
      R => '0'
    );
\FIFO_DATA_reg[11][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_6,
      D => wr_edge_n_46,
      Q => \FIFO_DATA_reg[11]_4\(7),
      R => '0'
    );
\FIFO_DATA_reg[11][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_6,
      D => wr_edge_n_45,
      Q => \FIFO_DATA_reg[11]_4\(8),
      R => '0'
    );
\FIFO_DATA_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_5,
      D => wr_edge_n_126,
      Q => \FIFO_DATA_reg[12]_3\(0),
      R => '0'
    );
\FIFO_DATA_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_5,
      D => wr_edge_n_125,
      Q => \FIFO_DATA_reg[12]_3\(1),
      R => '0'
    );
\FIFO_DATA_reg[12][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_5,
      D => wr_edge_n_124,
      Q => \FIFO_DATA_reg[12]_3\(2),
      R => '0'
    );
\FIFO_DATA_reg[12][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_5,
      D => wr_edge_n_123,
      Q => \FIFO_DATA_reg[12]_3\(3),
      R => '0'
    );
\FIFO_DATA_reg[12][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_5,
      D => wr_edge_n_122,
      Q => \FIFO_DATA_reg[12]_3\(4),
      R => '0'
    );
\FIFO_DATA_reg[12][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_5,
      D => wr_edge_n_121,
      Q => \FIFO_DATA_reg[12]_3\(5),
      R => '0'
    );
\FIFO_DATA_reg[12][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_5,
      D => wr_edge_n_120,
      Q => \FIFO_DATA_reg[12]_3\(6),
      R => '0'
    );
\FIFO_DATA_reg[12][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_5,
      D => wr_edge_n_119,
      Q => \FIFO_DATA_reg[12]_3\(7),
      R => '0'
    );
\FIFO_DATA_reg[12][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_5,
      D => wr_edge_n_118,
      Q => \FIFO_DATA_reg[12]_3\(8),
      R => '0'
    );
\FIFO_DATA_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_4,
      D => wr_edge_n_71,
      Q => \FIFO_DATA_reg[13]_2\(0),
      R => '0'
    );
\FIFO_DATA_reg[13][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_4,
      D => wr_edge_n_70,
      Q => \FIFO_DATA_reg[13]_2\(1),
      R => '0'
    );
\FIFO_DATA_reg[13][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_4,
      D => wr_edge_n_69,
      Q => \FIFO_DATA_reg[13]_2\(2),
      R => '0'
    );
\FIFO_DATA_reg[13][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_4,
      D => wr_edge_n_68,
      Q => \FIFO_DATA_reg[13]_2\(3),
      R => '0'
    );
\FIFO_DATA_reg[13][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_4,
      D => wr_edge_n_67,
      Q => \FIFO_DATA_reg[13]_2\(4),
      R => '0'
    );
\FIFO_DATA_reg[13][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_4,
      D => wr_edge_n_66,
      Q => \FIFO_DATA_reg[13]_2\(5),
      R => '0'
    );
\FIFO_DATA_reg[13][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_4,
      D => wr_edge_n_65,
      Q => \FIFO_DATA_reg[13]_2\(6),
      R => '0'
    );
\FIFO_DATA_reg[13][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_4,
      D => wr_edge_n_64,
      Q => \FIFO_DATA_reg[13]_2\(7),
      R => '0'
    );
\FIFO_DATA_reg[13][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_4,
      D => wr_edge_n_63,
      Q => \FIFO_DATA_reg[13]_2\(8),
      R => '0'
    );
\FIFO_DATA_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_3,
      D => wr_edge_n_108,
      Q => \FIFO_DATA_reg[14]_1\(0),
      R => '0'
    );
\FIFO_DATA_reg[14][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_3,
      D => wr_edge_n_107,
      Q => \FIFO_DATA_reg[14]_1\(1),
      R => '0'
    );
\FIFO_DATA_reg[14][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_3,
      D => wr_edge_n_106,
      Q => \FIFO_DATA_reg[14]_1\(2),
      R => '0'
    );
\FIFO_DATA_reg[14][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_3,
      D => wr_edge_n_105,
      Q => \FIFO_DATA_reg[14]_1\(3),
      R => '0'
    );
\FIFO_DATA_reg[14][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_3,
      D => wr_edge_n_104,
      Q => \FIFO_DATA_reg[14]_1\(4),
      R => '0'
    );
\FIFO_DATA_reg[14][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_3,
      D => wr_edge_n_103,
      Q => \FIFO_DATA_reg[14]_1\(5),
      R => '0'
    );
\FIFO_DATA_reg[14][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_3,
      D => wr_edge_n_102,
      Q => \FIFO_DATA_reg[14]_1\(6),
      R => '0'
    );
\FIFO_DATA_reg[14][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_3,
      D => wr_edge_n_101,
      Q => \FIFO_DATA_reg[14]_1\(7),
      R => '0'
    );
\FIFO_DATA_reg[14][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_3,
      D => wr_edge_n_100,
      Q => \FIFO_DATA_reg[14]_1\(8),
      R => '0'
    );
\FIFO_DATA_reg[15][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_2,
      D => p_1_in(0),
      Q => \FIFO_DATA_reg[15]_0\(0),
      R => '0'
    );
\FIFO_DATA_reg[15][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_2,
      D => p_1_in(1),
      Q => \FIFO_DATA_reg[15]_0\(1),
      R => '0'
    );
\FIFO_DATA_reg[15][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_2,
      D => p_1_in(2),
      Q => \FIFO_DATA_reg[15]_0\(2),
      R => '0'
    );
\FIFO_DATA_reg[15][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_2,
      D => p_1_in(3),
      Q => \FIFO_DATA_reg[15]_0\(3),
      R => '0'
    );
\FIFO_DATA_reg[15][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_2,
      D => p_1_in(4),
      Q => \FIFO_DATA_reg[15]_0\(4),
      R => '0'
    );
\FIFO_DATA_reg[15][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_2,
      D => p_1_in(5),
      Q => \FIFO_DATA_reg[15]_0\(5),
      R => '0'
    );
\FIFO_DATA_reg[15][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_2,
      D => p_1_in(6),
      Q => \FIFO_DATA_reg[15]_0\(6),
      R => '0'
    );
\FIFO_DATA_reg[15][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_2,
      D => p_1_in(7),
      Q => \FIFO_DATA_reg[15]_0\(7),
      R => '0'
    );
\FIFO_DATA_reg[15][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_2,
      D => p_1_in(8),
      Q => \FIFO_DATA_reg[15]_0\(8),
      R => '0'
    );
\FIFO_DATA_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_16,
      D => wr_edge_n_80,
      Q => \FIFO_DATA_reg[1]_14\(0),
      R => '0'
    );
\FIFO_DATA_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_16,
      D => wr_edge_n_79,
      Q => \FIFO_DATA_reg[1]_14\(1),
      R => '0'
    );
\FIFO_DATA_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_16,
      D => wr_edge_n_78,
      Q => \FIFO_DATA_reg[1]_14\(2),
      R => '0'
    );
\FIFO_DATA_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_16,
      D => wr_edge_n_77,
      Q => \FIFO_DATA_reg[1]_14\(3),
      R => '0'
    );
\FIFO_DATA_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_16,
      D => wr_edge_n_76,
      Q => \FIFO_DATA_reg[1]_14\(4),
      R => '0'
    );
\FIFO_DATA_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_16,
      D => wr_edge_n_75,
      Q => \FIFO_DATA_reg[1]_14\(5),
      R => '0'
    );
\FIFO_DATA_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_16,
      D => wr_edge_n_74,
      Q => \FIFO_DATA_reg[1]_14\(6),
      R => '0'
    );
\FIFO_DATA_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_16,
      D => wr_edge_n_73,
      Q => \FIFO_DATA_reg[1]_14\(7),
      R => '0'
    );
\FIFO_DATA_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_16,
      D => wr_edge_n_72,
      Q => \FIFO_DATA_reg[1]_14\(8),
      R => '0'
    );
\FIFO_DATA_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_15,
      D => wr_edge_n_135,
      Q => \FIFO_DATA_reg[2]_13\(0),
      R => '0'
    );
\FIFO_DATA_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_15,
      D => wr_edge_n_134,
      Q => \FIFO_DATA_reg[2]_13\(1),
      R => '0'
    );
\FIFO_DATA_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_15,
      D => wr_edge_n_133,
      Q => \FIFO_DATA_reg[2]_13\(2),
      R => '0'
    );
\FIFO_DATA_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_15,
      D => wr_edge_n_132,
      Q => \FIFO_DATA_reg[2]_13\(3),
      R => '0'
    );
\FIFO_DATA_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_15,
      D => wr_edge_n_131,
      Q => \FIFO_DATA_reg[2]_13\(4),
      R => '0'
    );
\FIFO_DATA_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_15,
      D => wr_edge_n_130,
      Q => \FIFO_DATA_reg[2]_13\(5),
      R => '0'
    );
\FIFO_DATA_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_15,
      D => wr_edge_n_129,
      Q => \FIFO_DATA_reg[2]_13\(6),
      R => '0'
    );
\FIFO_DATA_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_15,
      D => wr_edge_n_128,
      Q => \FIFO_DATA_reg[2]_13\(7),
      R => '0'
    );
\FIFO_DATA_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_15,
      D => wr_edge_n_127,
      Q => \FIFO_DATA_reg[2]_13\(8),
      R => '0'
    );
\FIFO_DATA_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_14,
      D => wr_edge_n_44,
      Q => \FIFO_DATA_reg[3]_12\(0),
      R => '0'
    );
\FIFO_DATA_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_14,
      D => wr_edge_n_43,
      Q => \FIFO_DATA_reg[3]_12\(1),
      R => '0'
    );
\FIFO_DATA_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_14,
      D => wr_edge_n_42,
      Q => \FIFO_DATA_reg[3]_12\(2),
      R => '0'
    );
\FIFO_DATA_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_14,
      D => wr_edge_n_41,
      Q => \FIFO_DATA_reg[3]_12\(3),
      R => '0'
    );
\FIFO_DATA_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_14,
      D => wr_edge_n_40,
      Q => \FIFO_DATA_reg[3]_12\(4),
      R => '0'
    );
\FIFO_DATA_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_14,
      D => wr_edge_n_39,
      Q => \FIFO_DATA_reg[3]_12\(5),
      R => '0'
    );
\FIFO_DATA_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_14,
      D => wr_edge_n_38,
      Q => \FIFO_DATA_reg[3]_12\(6),
      R => '0'
    );
\FIFO_DATA_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_14,
      D => wr_edge_n_37,
      Q => \FIFO_DATA_reg[3]_12\(7),
      R => '0'
    );
\FIFO_DATA_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_14,
      D => wr_edge_n_36,
      Q => \FIFO_DATA_reg[3]_12\(8),
      R => '0'
    );
\FIFO_DATA_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_117,
      Q => \FIFO_DATA_reg[4]_11\(0),
      R => '0'
    );
\FIFO_DATA_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_116,
      Q => \FIFO_DATA_reg[4]_11\(1),
      R => '0'
    );
\FIFO_DATA_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_115,
      Q => \FIFO_DATA_reg[4]_11\(2),
      R => '0'
    );
\FIFO_DATA_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_114,
      Q => \FIFO_DATA_reg[4]_11\(3),
      R => '0'
    );
\FIFO_DATA_reg[4][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_113,
      Q => \FIFO_DATA_reg[4]_11\(4),
      R => '0'
    );
\FIFO_DATA_reg[4][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_112,
      Q => \FIFO_DATA_reg[4]_11\(5),
      R => '0'
    );
\FIFO_DATA_reg[4][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_111,
      Q => \FIFO_DATA_reg[4]_11\(6),
      R => '0'
    );
\FIFO_DATA_reg[4][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_110,
      Q => \FIFO_DATA_reg[4]_11\(7),
      R => '0'
    );
\FIFO_DATA_reg[4][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_109,
      Q => \FIFO_DATA_reg[4]_11\(8),
      R => '0'
    );
\FIFO_DATA_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_12,
      D => wr_edge_n_62,
      Q => \FIFO_DATA_reg[5]_10\(0),
      R => '0'
    );
\FIFO_DATA_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_12,
      D => wr_edge_n_61,
      Q => \FIFO_DATA_reg[5]_10\(1),
      R => '0'
    );
\FIFO_DATA_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_12,
      D => wr_edge_n_60,
      Q => \FIFO_DATA_reg[5]_10\(2),
      R => '0'
    );
\FIFO_DATA_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_12,
      D => wr_edge_n_59,
      Q => \FIFO_DATA_reg[5]_10\(3),
      R => '0'
    );
\FIFO_DATA_reg[5][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_12,
      D => wr_edge_n_58,
      Q => \FIFO_DATA_reg[5]_10\(4),
      R => '0'
    );
\FIFO_DATA_reg[5][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_12,
      D => wr_edge_n_57,
      Q => \FIFO_DATA_reg[5]_10\(5),
      R => '0'
    );
\FIFO_DATA_reg[5][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_12,
      D => wr_edge_n_56,
      Q => \FIFO_DATA_reg[5]_10\(6),
      R => '0'
    );
\FIFO_DATA_reg[5][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_12,
      D => wr_edge_n_55,
      Q => \FIFO_DATA_reg[5]_10\(7),
      R => '0'
    );
\FIFO_DATA_reg[5][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_12,
      D => wr_edge_n_54,
      Q => \FIFO_DATA_reg[5]_10\(8),
      R => '0'
    );
\FIFO_DATA_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_11,
      D => wr_edge_n_99,
      Q => \FIFO_DATA_reg[6]_9\(0),
      R => '0'
    );
\FIFO_DATA_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_11,
      D => wr_edge_n_98,
      Q => \FIFO_DATA_reg[6]_9\(1),
      R => '0'
    );
\FIFO_DATA_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_11,
      D => wr_edge_n_97,
      Q => \FIFO_DATA_reg[6]_9\(2),
      R => '0'
    );
\FIFO_DATA_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_11,
      D => wr_edge_n_96,
      Q => \FIFO_DATA_reg[6]_9\(3),
      R => '0'
    );
\FIFO_DATA_reg[6][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_11,
      D => wr_edge_n_95,
      Q => \FIFO_DATA_reg[6]_9\(4),
      R => '0'
    );
\FIFO_DATA_reg[6][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_11,
      D => wr_edge_n_94,
      Q => \FIFO_DATA_reg[6]_9\(5),
      R => '0'
    );
\FIFO_DATA_reg[6][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_11,
      D => wr_edge_n_93,
      Q => \FIFO_DATA_reg[6]_9\(6),
      R => '0'
    );
\FIFO_DATA_reg[6][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_11,
      D => wr_edge_n_92,
      Q => \FIFO_DATA_reg[6]_9\(7),
      R => '0'
    );
\FIFO_DATA_reg[6][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_11,
      D => wr_edge_n_91,
      Q => \FIFO_DATA_reg[6]_9\(8),
      R => '0'
    );
\FIFO_DATA_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_10,
      D => wr_edge_n_26,
      Q => \FIFO_DATA_reg[7]_8\(0),
      R => '0'
    );
\FIFO_DATA_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_10,
      D => wr_edge_n_25,
      Q => \FIFO_DATA_reg[7]_8\(1),
      R => '0'
    );
\FIFO_DATA_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_10,
      D => wr_edge_n_24,
      Q => \FIFO_DATA_reg[7]_8\(2),
      R => '0'
    );
\FIFO_DATA_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_10,
      D => wr_edge_n_23,
      Q => \FIFO_DATA_reg[7]_8\(3),
      R => '0'
    );
\FIFO_DATA_reg[7][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_10,
      D => wr_edge_n_22,
      Q => \FIFO_DATA_reg[7]_8\(4),
      R => '0'
    );
\FIFO_DATA_reg[7][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_10,
      D => wr_edge_n_21,
      Q => \FIFO_DATA_reg[7]_8\(5),
      R => '0'
    );
\FIFO_DATA_reg[7][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_10,
      D => wr_edge_n_20,
      Q => \FIFO_DATA_reg[7]_8\(6),
      R => '0'
    );
\FIFO_DATA_reg[7][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_10,
      D => wr_edge_n_19,
      Q => \FIFO_DATA_reg[7]_8\(7),
      R => '0'
    );
\FIFO_DATA_reg[7][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_10,
      D => wr_edge_n_18,
      Q => \FIFO_DATA_reg[7]_8\(8),
      R => '0'
    );
\FIFO_DATA_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_9,
      D => wr_edge_n_162,
      Q => \FIFO_DATA_reg[8]_7\(0),
      R => '0'
    );
\FIFO_DATA_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_9,
      D => wr_edge_n_161,
      Q => \FIFO_DATA_reg[8]_7\(1),
      R => '0'
    );
\FIFO_DATA_reg[8][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_9,
      D => wr_edge_n_160,
      Q => \FIFO_DATA_reg[8]_7\(2),
      R => '0'
    );
\FIFO_DATA_reg[8][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_9,
      D => wr_edge_n_159,
      Q => \FIFO_DATA_reg[8]_7\(3),
      R => '0'
    );
\FIFO_DATA_reg[8][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_9,
      D => wr_edge_n_158,
      Q => \FIFO_DATA_reg[8]_7\(4),
      R => '0'
    );
\FIFO_DATA_reg[8][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_9,
      D => wr_edge_n_157,
      Q => \FIFO_DATA_reg[8]_7\(5),
      R => '0'
    );
\FIFO_DATA_reg[8][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_9,
      D => wr_edge_n_156,
      Q => \FIFO_DATA_reg[8]_7\(6),
      R => '0'
    );
\FIFO_DATA_reg[8][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_9,
      D => wr_edge_n_155,
      Q => \FIFO_DATA_reg[8]_7\(7),
      R => '0'
    );
\FIFO_DATA_reg[8][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_9,
      D => wr_edge_n_154,
      Q => \FIFO_DATA_reg[8]_7\(8),
      R => '0'
    );
\FIFO_DATA_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_8,
      D => wr_edge_n_89,
      Q => \FIFO_DATA_reg[9]_6\(0),
      R => '0'
    );
\FIFO_DATA_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_8,
      D => wr_edge_n_88,
      Q => \FIFO_DATA_reg[9]_6\(1),
      R => '0'
    );
\FIFO_DATA_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_8,
      D => wr_edge_n_87,
      Q => \FIFO_DATA_reg[9]_6\(2),
      R => '0'
    );
\FIFO_DATA_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_8,
      D => wr_edge_n_86,
      Q => \FIFO_DATA_reg[9]_6\(3),
      R => '0'
    );
\FIFO_DATA_reg[9][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_8,
      D => wr_edge_n_85,
      Q => \FIFO_DATA_reg[9]_6\(4),
      R => '0'
    );
\FIFO_DATA_reg[9][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_8,
      D => wr_edge_n_84,
      Q => \FIFO_DATA_reg[9]_6\(5),
      R => '0'
    );
\FIFO_DATA_reg[9][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_8,
      D => wr_edge_n_83,
      Q => \FIFO_DATA_reg[9]_6\(6),
      R => '0'
    );
\FIFO_DATA_reg[9][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_8,
      D => wr_edge_n_82,
      Q => \FIFO_DATA_reg[9]_6\(7),
      R => '0'
    );
\FIFO_DATA_reg[9][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_8,
      D => wr_edge_n_81,
      Q => \FIFO_DATA_reg[9]_6\(8),
      R => '0'
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[8]_0\(0),
      I1 => \axi_rdata_reg[8]_1\(0),
      I2 => p_0_in_0(0),
      I3 => \axi_rdata_reg[8]\(0),
      I4 => p_0_in_0(1),
      I5 => \^rd_index_reg[3]_0\,
      O => \officialBaudRate_reg[8]\(0)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[8]_0\(1),
      I1 => \axi_rdata_reg[8]_1\(1),
      I2 => p_0_in_0(0),
      I3 => \axi_rdata_reg[8]\(1),
      I4 => p_0_in_0(1),
      I5 => \^d\(0),
      O => \officialBaudRate_reg[8]\(1)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[8]_0\(2),
      I1 => \axi_rdata_reg[8]_1\(2),
      I2 => p_0_in_0(0),
      I3 => \axi_rdata_reg[8]\(2),
      I4 => p_0_in_0(1),
      I5 => \^d\(1),
      O => \officialBaudRate_reg[8]\(2)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[8]_0\(3),
      I1 => \axi_rdata_reg[8]_1\(3),
      I2 => p_0_in_0(0),
      I3 => \axi_rdata_reg[8]\(3),
      I4 => p_0_in_0(1),
      I5 => \^rd_index_reg[3]_1\,
      O => \officialBaudRate_reg[8]\(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[8]_0\(4),
      I1 => \axi_rdata_reg[8]_1\(4),
      I2 => p_0_in_0(0),
      I3 => \axi_rdata_reg[8]\(4),
      I4 => p_0_in_0(1),
      I5 => \^d\(2),
      O => \officialBaudRate_reg[8]\(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[8]_0\(5),
      I1 => \axi_rdata_reg[8]_1\(5),
      I2 => p_0_in_0(0),
      I3 => \axi_rdata_reg[8]\(5),
      I4 => p_0_in_0(1),
      I5 => \^rd_index_reg[3]_2\,
      O => \officialBaudRate_reg[8]\(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[8]_0\(6),
      I1 => \axi_rdata_reg[8]_1\(6),
      I2 => p_0_in_0(0),
      I3 => \axi_rdata_reg[8]\(6),
      I4 => p_0_in_0(1),
      I5 => \^d\(3),
      O => \officialBaudRate_reg[8]\(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[8]_0\(7),
      I1 => \axi_rdata_reg[8]_1\(7),
      I2 => p_0_in_0(0),
      I3 => \axi_rdata_reg[8]\(7),
      I4 => p_0_in_0(1),
      I5 => \^d\(4),
      O => \officialBaudRate_reg[8]\(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[8]_0\(8),
      I1 => \axi_rdata_reg[8]_1\(8),
      I2 => p_0_in_0(0),
      I3 => \axi_rdata_reg[8]\(8),
      I4 => p_0_in_0(1),
      I5 => \^d\(5),
      O => \officialBaudRate_reg[8]\(8)
    );
empty_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80204010"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(4),
      I1 => \^rd_index_reg[4]_0\(3),
      I2 => empty_INST_0_i_1_n_0,
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => empty
    );
empty_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008200240041001"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^rd_index_reg[4]_0\(1),
      I2 => \^rd_index_reg[4]_0\(0),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^rd_index_reg[4]_0\(2),
      O => empty_INST_0_i_1_n_0
    );
full_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40108020"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(4),
      I1 => \^rd_index_reg[4]_0\(3),
      I2 => empty_INST_0_i_1_n_0,
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => full
    );
myParityBit_reg_i_1: unisim.vcomponents.MUXF7
     port map (
      I0 => myParityBit_reg_i_3_n_0,
      I1 => myParityBit_reg_i_4_n_0,
      O => \officialControl_reg[0]\,
      S => \axi_rdata_reg[8]\(0)
    );
myParityBit_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B78B487B4874B78"
    )
        port map (
      I0 => myParityBit_reg_i_5_n_0,
      I1 => myParityBit_reg_i_1_0,
      I2 => \^rd_index_reg[3]_0\,
      I3 => \^rd_index_reg[3]_1\,
      I4 => myParityBit_reg_i_7_n_0,
      I5 => myParityBit_reg_i_1_1,
      O => myParityBit_reg_i_3_n_0
    );
myParityBit_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966969966996"
    )
        port map (
      I0 => \^rd_index_reg[3]_0\,
      I1 => \^rd_index_reg[3]_1\,
      I2 => \^rd_index_reg[3]_2\,
      I3 => myParityBit_reg_i_7_n_0,
      I4 => \axi_rdata_reg[8]\(3),
      I5 => \axi_rdata_reg[8]\(2),
      O => myParityBit_reg_i_4_n_0
    );
myParityBit_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^rd_index_reg[3]_2\,
      I1 => \^rd_index_reg[3]_1\,
      I2 => \^d\(3),
      O => myParityBit_reg_i_5_n_0
    );
myParityBit_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^d\(2),
      I1 => \^d\(0),
      I2 => \^d\(1),
      O => myParityBit_reg_i_7_n_0
    );
\rd_data[0]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rd_data[0]_INST_0_i_1_n_0\,
      I1 => \rd_data[0]_INST_0_i_2_n_0\,
      O => \^rd_index_reg[3]_0\,
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
      O => \^d\(0),
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
      O => \^d\(1),
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
      O => \^rd_index_reg[3]_1\,
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
      O => \^d\(2),
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
      O => \^rd_index_reg[3]_2\,
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
      O => \^d\(3),
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
      O => \^d\(4),
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
      O => \^d\(5),
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
      I0 => \^rd_index_reg[4]_0\(1),
      I1 => \^rd_index_reg[4]_0\(0),
      I2 => \^rd_index_reg[4]_0\(2),
      O => \p_0_in__0\(2)
    );
\rd_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(2),
      I1 => \^rd_index_reg[4]_0\(0),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \^rd_index_reg[4]_0\(3),
      O => \p_0_in__0\(3)
    );
\rd_index[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(3),
      I1 => \^rd_index_reg[4]_0\(1),
      I2 => \^rd_index_reg[4]_0\(0),
      I3 => \^rd_index_reg[4]_0\(2),
      I4 => \^rd_index_reg[4]_0\(4),
      O => \p_0_in__0\(4)
    );
\rd_index[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DE"
    )
        port map (
      I0 => \^q\(3),
      I1 => \rd_index[4]_i_4_n_0\,
      I2 => \^rd_index_reg[4]_0\(3),
      O => \rd_index[4]_i_3_n_0\
    );
\rd_index[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FF7DFFDBFFBEFFE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^rd_index_reg[4]_0\(1),
      I2 => \^rd_index_reg[4]_0\(0),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^rd_index_reg[4]_0\(2),
      O => \rd_index[4]_i_4_n_0\
    );
\rd_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_90,
      D => \rd_index[0]_i_1_n_0\,
      Q => \^rd_index_reg[4]_0\(0),
      R => \^sr\(0)
    );
\rd_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_90,
      D => \p_0_in__0\(1),
      Q => \^rd_index_reg[4]_0\(1),
      R => \^sr\(0)
    );
\rd_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_90,
      D => \p_0_in__0\(2),
      Q => \^rd_index_reg[4]_0\(2),
      R => \^sr\(0)
    );
\rd_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_90,
      D => \p_0_in__0\(3),
      Q => \^rd_index_reg[4]_0\(3),
      R => \^sr\(0)
    );
\rd_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_90,
      D => \p_0_in__0\(4),
      Q => \^rd_index_reg[4]_0\(4),
      R => \^sr\(0)
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
      INIT => X"20BADF45DF4520BA"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(1),
      I1 => \^q\(0),
      I2 => \^rd_index_reg[4]_0\(0),
      I3 => \^q\(1),
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
      INIT => X"2BD4D42B"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(3),
      I1 => \watermark[4]_INST_0_i_1_n_0\,
      I2 => \^q\(3),
      I3 => \^rd_index_reg[4]_0\(4),
      I4 => \^q\(4),
      O => watermark(4)
    );
\watermark[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AA2022FBFFBABB"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^rd_index_reg[4]_0\(1),
      I2 => \^q\(0),
      I3 => \^rd_index_reg[4]_0\(0),
      I4 => \^q\(1),
      I5 => \^rd_index_reg[4]_0\(2),
      O => \watermark[4]_INST_0_i_1_n_0\
    );
wr_edge: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_2
     port map (
      D(8) => wr_edge_n_18,
      D(7) => wr_edge_n_19,
      D(6) => wr_edge_n_20,
      D(5) => wr_edge_n_21,
      D(4) => wr_edge_n_22,
      D(3) => wr_edge_n_23,
      D(2) => wr_edge_n_24,
      D(1) => wr_edge_n_25,
      D(0) => wr_edge_n_26,
      E(0) => wr_edge_n_2,
      \FIFO_DATA_reg[0][0]\ => \FIFO_DATA[0][8]_i_3_n_0\,
      \FIFO_DATA_reg[10][0]\ => \FIFO_DATA[10][8]_i_3_n_0\,
      \FIFO_DATA_reg[11][0]\ => \FIFO_DATA[11][8]_i_3_n_0\,
      \FIFO_DATA_reg[12][0]\ => \FIFO_DATA[12][8]_i_3_n_0\,
      \FIFO_DATA_reg[13][0]\ => \FIFO_DATA[13][8]_i_3_n_0\,
      \FIFO_DATA_reg[14][0]\ => \FIFO_DATA[14][8]_i_3_n_0\,
      \FIFO_DATA_reg[15][0]\ => \FIFO_DATA[15][8]_i_3_n_0\,
      \FIFO_DATA_reg[1][0]\ => \FIFO_DATA[1][8]_i_3_n_0\,
      \FIFO_DATA_reg[2][0]\ => \FIFO_DATA[2][8]_i_3_n_0\,
      \FIFO_DATA_reg[3][0]\ => \FIFO_DATA[3][8]_i_3_n_0\,
      \FIFO_DATA_reg[4][0]\ => \FIFO_DATA[4][8]_i_3_n_0\,
      \FIFO_DATA_reg[5][0]\ => \FIFO_DATA[5][8]_i_3_n_0\,
      \FIFO_DATA_reg[6][0]\ => \FIFO_DATA[6][8]_i_3_n_0\,
      \FIFO_DATA_reg[7][0]\ => \FIFO_DATA[7][8]_i_3_n_0\,
      \FIFO_DATA_reg[8][0]\ => \FIFO_DATA[8][8]_i_3_n_0\,
      \FIFO_DATA_reg[9][0]\ => \FIFO_DATA[9][8]_i_3_n_0\,
      Q(4 downto 0) => \^q\(4 downto 0),
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn,
      axi_awvalid => axi_awvalid,
      axi_wvalid => axi_wvalid,
      in_delay_reg_0 => in_delay_reg,
      in_delay_reg_1 => in_delay_reg_0,
      officialData(8 downto 0) => officialData(8 downto 0),
      \officialData_reg[8]\(8 downto 0) => p_1_in(8 downto 0),
      \officialData_reg[8]_0\(8) => wr_edge_n_36,
      \officialData_reg[8]_0\(7) => wr_edge_n_37,
      \officialData_reg[8]_0\(6) => wr_edge_n_38,
      \officialData_reg[8]_0\(5) => wr_edge_n_39,
      \officialData_reg[8]_0\(4) => wr_edge_n_40,
      \officialData_reg[8]_0\(3) => wr_edge_n_41,
      \officialData_reg[8]_0\(2) => wr_edge_n_42,
      \officialData_reg[8]_0\(1) => wr_edge_n_43,
      \officialData_reg[8]_0\(0) => wr_edge_n_44,
      \officialData_reg[8]_1\(8) => wr_edge_n_45,
      \officialData_reg[8]_1\(7) => wr_edge_n_46,
      \officialData_reg[8]_1\(6) => wr_edge_n_47,
      \officialData_reg[8]_1\(5) => wr_edge_n_48,
      \officialData_reg[8]_1\(4) => wr_edge_n_49,
      \officialData_reg[8]_1\(3) => wr_edge_n_50,
      \officialData_reg[8]_1\(2) => wr_edge_n_51,
      \officialData_reg[8]_1\(1) => wr_edge_n_52,
      \officialData_reg[8]_1\(0) => wr_edge_n_53,
      \officialData_reg[8]_10\(8) => wr_edge_n_127,
      \officialData_reg[8]_10\(7) => wr_edge_n_128,
      \officialData_reg[8]_10\(6) => wr_edge_n_129,
      \officialData_reg[8]_10\(5) => wr_edge_n_130,
      \officialData_reg[8]_10\(4) => wr_edge_n_131,
      \officialData_reg[8]_10\(3) => wr_edge_n_132,
      \officialData_reg[8]_10\(2) => wr_edge_n_133,
      \officialData_reg[8]_10\(1) => wr_edge_n_134,
      \officialData_reg[8]_10\(0) => wr_edge_n_135,
      \officialData_reg[8]_11\(8) => wr_edge_n_136,
      \officialData_reg[8]_11\(7) => wr_edge_n_137,
      \officialData_reg[8]_11\(6) => wr_edge_n_138,
      \officialData_reg[8]_11\(5) => wr_edge_n_139,
      \officialData_reg[8]_11\(4) => wr_edge_n_140,
      \officialData_reg[8]_11\(3) => wr_edge_n_141,
      \officialData_reg[8]_11\(2) => wr_edge_n_142,
      \officialData_reg[8]_11\(1) => wr_edge_n_143,
      \officialData_reg[8]_11\(0) => wr_edge_n_144,
      \officialData_reg[8]_12\(8) => wr_edge_n_145,
      \officialData_reg[8]_12\(7) => wr_edge_n_146,
      \officialData_reg[8]_12\(6) => wr_edge_n_147,
      \officialData_reg[8]_12\(5) => wr_edge_n_148,
      \officialData_reg[8]_12\(4) => wr_edge_n_149,
      \officialData_reg[8]_12\(3) => wr_edge_n_150,
      \officialData_reg[8]_12\(2) => wr_edge_n_151,
      \officialData_reg[8]_12\(1) => wr_edge_n_152,
      \officialData_reg[8]_12\(0) => wr_edge_n_153,
      \officialData_reg[8]_13\(8) => wr_edge_n_154,
      \officialData_reg[8]_13\(7) => wr_edge_n_155,
      \officialData_reg[8]_13\(6) => wr_edge_n_156,
      \officialData_reg[8]_13\(5) => wr_edge_n_157,
      \officialData_reg[8]_13\(4) => wr_edge_n_158,
      \officialData_reg[8]_13\(3) => wr_edge_n_159,
      \officialData_reg[8]_13\(2) => wr_edge_n_160,
      \officialData_reg[8]_13\(1) => wr_edge_n_161,
      \officialData_reg[8]_13\(0) => wr_edge_n_162,
      \officialData_reg[8]_2\(8) => wr_edge_n_54,
      \officialData_reg[8]_2\(7) => wr_edge_n_55,
      \officialData_reg[8]_2\(6) => wr_edge_n_56,
      \officialData_reg[8]_2\(5) => wr_edge_n_57,
      \officialData_reg[8]_2\(4) => wr_edge_n_58,
      \officialData_reg[8]_2\(3) => wr_edge_n_59,
      \officialData_reg[8]_2\(2) => wr_edge_n_60,
      \officialData_reg[8]_2\(1) => wr_edge_n_61,
      \officialData_reg[8]_2\(0) => wr_edge_n_62,
      \officialData_reg[8]_3\(8) => wr_edge_n_63,
      \officialData_reg[8]_3\(7) => wr_edge_n_64,
      \officialData_reg[8]_3\(6) => wr_edge_n_65,
      \officialData_reg[8]_3\(5) => wr_edge_n_66,
      \officialData_reg[8]_3\(4) => wr_edge_n_67,
      \officialData_reg[8]_3\(3) => wr_edge_n_68,
      \officialData_reg[8]_3\(2) => wr_edge_n_69,
      \officialData_reg[8]_3\(1) => wr_edge_n_70,
      \officialData_reg[8]_3\(0) => wr_edge_n_71,
      \officialData_reg[8]_4\(8) => wr_edge_n_72,
      \officialData_reg[8]_4\(7) => wr_edge_n_73,
      \officialData_reg[8]_4\(6) => wr_edge_n_74,
      \officialData_reg[8]_4\(5) => wr_edge_n_75,
      \officialData_reg[8]_4\(4) => wr_edge_n_76,
      \officialData_reg[8]_4\(3) => wr_edge_n_77,
      \officialData_reg[8]_4\(2) => wr_edge_n_78,
      \officialData_reg[8]_4\(1) => wr_edge_n_79,
      \officialData_reg[8]_4\(0) => wr_edge_n_80,
      \officialData_reg[8]_5\(8) => wr_edge_n_81,
      \officialData_reg[8]_5\(7) => wr_edge_n_82,
      \officialData_reg[8]_5\(6) => wr_edge_n_83,
      \officialData_reg[8]_5\(5) => wr_edge_n_84,
      \officialData_reg[8]_5\(4) => wr_edge_n_85,
      \officialData_reg[8]_5\(3) => wr_edge_n_86,
      \officialData_reg[8]_5\(2) => wr_edge_n_87,
      \officialData_reg[8]_5\(1) => wr_edge_n_88,
      \officialData_reg[8]_5\(0) => wr_edge_n_89,
      \officialData_reg[8]_6\(8) => wr_edge_n_91,
      \officialData_reg[8]_6\(7) => wr_edge_n_92,
      \officialData_reg[8]_6\(6) => wr_edge_n_93,
      \officialData_reg[8]_6\(5) => wr_edge_n_94,
      \officialData_reg[8]_6\(4) => wr_edge_n_95,
      \officialData_reg[8]_6\(3) => wr_edge_n_96,
      \officialData_reg[8]_6\(2) => wr_edge_n_97,
      \officialData_reg[8]_6\(1) => wr_edge_n_98,
      \officialData_reg[8]_6\(0) => wr_edge_n_99,
      \officialData_reg[8]_7\(8) => wr_edge_n_100,
      \officialData_reg[8]_7\(7) => wr_edge_n_101,
      \officialData_reg[8]_7\(6) => wr_edge_n_102,
      \officialData_reg[8]_7\(5) => wr_edge_n_103,
      \officialData_reg[8]_7\(4) => wr_edge_n_104,
      \officialData_reg[8]_7\(3) => wr_edge_n_105,
      \officialData_reg[8]_7\(2) => wr_edge_n_106,
      \officialData_reg[8]_7\(1) => wr_edge_n_107,
      \officialData_reg[8]_7\(0) => wr_edge_n_108,
      \officialData_reg[8]_8\(8) => wr_edge_n_109,
      \officialData_reg[8]_8\(7) => wr_edge_n_110,
      \officialData_reg[8]_8\(6) => wr_edge_n_111,
      \officialData_reg[8]_8\(5) => wr_edge_n_112,
      \officialData_reg[8]_8\(4) => wr_edge_n_113,
      \officialData_reg[8]_8\(3) => wr_edge_n_114,
      \officialData_reg[8]_8\(2) => wr_edge_n_115,
      \officialData_reg[8]_8\(1) => wr_edge_n_116,
      \officialData_reg[8]_8\(0) => wr_edge_n_117,
      \officialData_reg[8]_9\(8) => wr_edge_n_118,
      \officialData_reg[8]_9\(7) => wr_edge_n_119,
      \officialData_reg[8]_9\(6) => wr_edge_n_120,
      \officialData_reg[8]_9\(5) => wr_edge_n_121,
      \officialData_reg[8]_9\(4) => wr_edge_n_122,
      \officialData_reg[8]_9\(3) => wr_edge_n_123,
      \officialData_reg[8]_9\(2) => wr_edge_n_124,
      \officialData_reg[8]_9\(1) => wr_edge_n_125,
      \officialData_reg[8]_9\(0) => wr_edge_n_126,
      outReg_reg_0(0) => wr_edge_n_90,
      p_19_in => p_19_in,
      \rd_index_reg[0]\(0) => \^rd_index_reg[4]_0\(4),
      \rd_index_reg[0]_0\ => \rd_index[4]_i_3_n_0\,
      signalFeed => signalFeed,
      waddr(1 downto 0) => waddr(1 downto 0),
      \wr_index_reg[3]\(0) => wr_edge_n_3,
      \wr_index_reg[3]_0\(0) => wr_edge_n_4,
      \wr_index_reg[3]_1\(0) => wr_edge_n_5,
      \wr_index_reg[3]_10\(0) => wr_edge_n_14,
      \wr_index_reg[3]_11\(0) => wr_edge_n_15,
      \wr_index_reg[3]_12\(0) => wr_edge_n_16,
      \wr_index_reg[3]_13\(0) => wr_edge_n_17,
      \wr_index_reg[3]_2\(0) => wr_edge_n_6,
      \wr_index_reg[3]_3\(0) => wr_edge_n_7,
      \wr_index_reg[3]_4\(0) => wr_edge_n_8,
      \wr_index_reg[3]_5\(0) => wr_edge_n_9,
      \wr_index_reg[3]_6\(0) => wr_edge_n_10,
      \wr_index_reg[3]_7\(0) => wr_edge_n_11,
      \wr_index_reg[3]_8\(0) => wr_edge_n_12,
      \wr_index_reg[3]_9\(0) => wr_edge_n_13,
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
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => p_0_in(2)
    );
\wr_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => p_0_in(3)
    );
\wr_index[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => \^sr\(0)
    );
\wr_index[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => p_0_in(4)
    );
\wr_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => write_request,
      D => \wr_index[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \^sr\(0)
    );
\wr_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => write_request,
      D => p_0_in(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\wr_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => write_request,
      D => p_0_in(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\wr_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => write_request,
      D => p_0_in(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\wr_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => write_request,
      D => p_0_in(4),
      Q => \^q\(4),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI is
  port (
    \ticks2_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    outSignal_reg_0 : out STD_LOGIC;
    outReg_reg : out STD_LOGIC;
    in_delay : out STD_LOGIC;
    sixteenXslower_reg_0 : out STD_LOGIC;
    outReg_reg_0 : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    axi_bvalid : out STD_LOGIC;
    aw_en_reg_0 : out STD_LOGIC;
    tx_out : out STD_LOGIC;
    TXIdle : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    watermark : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \rd_index_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_data : out STD_LOGIC_VECTOR ( 8 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \officialControl_reg[5]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    baudClockOut : out STD_LOGIC;
    shiftOut1_out : out STD_LOGIC;
    outReg_reg_1 : out STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    outReg_reg_2 : in STD_LOGIC;
    outSignal_reg_1 : in STD_LOGIC;
    sixteenXslower_reg_1 : in STD_LOGIC;
    axi_bvalid_reg_0 : in STD_LOGIC;
    aw_en_reg_1 : in STD_LOGIC;
    shiftOut_reg_0 : in STD_LOGIC;
    testIdle_reg_0 : in STD_LOGIC;
    axi_rvalid_reg_1 : in STD_LOGIC;
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_arvalid : in STD_LOGIC;
    axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_awvalid : in STD_LOGIC;
    axi_wvalid : in STD_LOGIC;
    axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PARITY_CONTROL : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal SECOND_STOP : STD_LOGIC;
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
  signal count : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_2_n_0\ : STD_LOGIC;
  signal \count[3]_i_3_n_0\ : STD_LOGIC;
  signal \count[3]_i_4_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal edge_detect_1_n_1 : STD_LOGIC;
  signal edge_detect_1_n_2 : STD_LOGIC;
  signal edge_detect_1_n_3 : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
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
  signal keepCount_reg : STD_LOGIC_VECTOR ( 50 downto 8 );
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
  signal latchData : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal my9x16Fifo_inst_n_16 : STD_LOGIC;
  signal my9x16Fifo_inst_n_19 : STD_LOGIC;
  signal my9x16Fifo_inst_n_29 : STD_LOGIC;
  signal my9x16Fifo_inst_n_30 : STD_LOGIC;
  signal my9x16Fifo_inst_n_31 : STD_LOGIC;
  signal my9x16Fifo_inst_n_32 : STD_LOGIC;
  signal my9x16Fifo_inst_n_33 : STD_LOGIC;
  signal my9x16Fifo_inst_n_34 : STD_LOGIC;
  signal my9x16Fifo_inst_n_35 : STD_LOGIC;
  signal my9x16Fifo_inst_n_36 : STD_LOGIC;
  signal my9x16Fifo_inst_n_37 : STD_LOGIC;
  signal myParityBit : STD_LOGIC;
  signal \myParityBit__0\ : STD_LOGIC;
  signal myParityBit_reg_i_6_n_0 : STD_LOGIC;
  signal myParityBit_reg_i_8_n_0 : STD_LOGIC;
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
  signal \officialControl_reg_n_0_[9]\ : STD_LOGIC;
  signal officialData : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \officialData[7]_i_1_n_0\ : STD_LOGIC;
  signal \officialData[8]_i_1_n_0\ : STD_LOGIC;
  signal officialStatus : STD_LOGIC_VECTOR ( 29 to 29 );
  signal \officialStatus[15]_i_1_n_0\ : STD_LOGIC;
  signal \officialStatus[23]_i_1_n_0\ : STD_LOGIC;
  signal \officialStatus[31]_i_1_n_0\ : STD_LOGIC;
  signal \officialStatus[7]_i_1_n_0\ : STD_LOGIC;
  signal \officialStatus__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^outreg_reg\ : STD_LOGIC;
  signal \^outreg_reg_0\ : STD_LOGIC;
  signal outSignal : STD_LOGIC;
  signal \^outsignal_reg_0\ : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_17_in : STD_LOGIC;
  signal p_19_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 5 );
  signal \raddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \^rd_data\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal shiftOut_i_4_n_0 : STD_LOGIC;
  signal shiftOut_i_5_n_0 : STD_LOGIC;
  signal shiftOut_i_6_n_0 : STD_LOGIC;
  signal signalFeed : STD_LOGIC;
  signal \^sixteenxslower_reg_0\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_4_n_0\ : STD_LOGIC;
  signal \state[2]_i_5_n_0\ : STD_LOGIC;
  signal \state[2]_i_6_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \ticks2[1]_i_1_n_0\ : STD_LOGIC;
  signal \ticks2[2]_i_1_n_0\ : STD_LOGIC;
  signal \ticks2[3]_i_1_n_0\ : STD_LOGIC;
  signal ticks2_n_0 : STD_LOGIC;
  signal \^ticks2_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
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
  signal \NLW_keepCount_reg[48]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_keepCount_reg[48]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_state1_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_state1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ticks_reg[48]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ticks_reg[48]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \count[3]_i_2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \count[3]_i_4\ : label is "soft_lutpair95";
  attribute ADDER_THRESHOLD : integer;
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
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \latchData_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \latchData_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \latchData_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \latchData_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \latchData_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \latchData_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \latchData_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \latchData_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \latchData_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \latchData_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \latchData_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \latchData_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \latchData_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \latchData_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \latchData_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \latchData_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \latchData_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \latchData_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of myParityBit_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of myParityBit_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of myParityBit_reg_i_2 : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of myParityBit_reg_i_8 : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \raddr[3]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \state[0]_i_3\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \state[2]_i_4\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \state[2]_i_5\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of ticks2 : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \ticks2[1]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \ticks2[2]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \ticks2[3]_i_1\ : label is "soft_lutpair89";
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
  E(0) <= \^e\(0);
  aw_en_reg_0 <= \^aw_en_reg_0\;
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  \officialControl_reg[5]_0\(1 downto 0) <= \^officialcontrol_reg[5]_0\(1 downto 0);
  outReg_reg <= \^outreg_reg\;
  outReg_reg_0 <= \^outreg_reg_0\;
  outSignal_reg_0 <= \^outsignal_reg_0\;
  rd_data(8 downto 0) <= \^rd_data\(8 downto 0);
  sixteenXslower_reg_0 <= \^sixteenxslower_reg_0\;
  \ticks2_reg[3]_0\(3 downto 0) <= \^ticks2_reg[3]_0\(3 downto 0);
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => axi_aclk,
      CE => '1',
      D => aw_en_reg_1,
      Q => \^aw_en_reg_0\,
      S => my9x16Fifo_inst_n_16
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
      R => my9x16Fifo_inst_n_16
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^aw_en_reg_0\,
      I1 => axi_awvalid,
      I2 => axi_wvalid,
      I3 => \^axi_awready_reg_0\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => my9x16Fifo_inst_n_16
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_bvalid_reg_0,
      Q => axi_bvalid,
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(10),
      I1 => \officialStatus__0\(10),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[10]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(11),
      I1 => \officialStatus__0\(11),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[11]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[11]_i_1_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(12),
      I1 => \officialStatus__0\(12),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[12]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[12]_i_1_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(13),
      I1 => \officialStatus__0\(13),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[13]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[13]_i_1_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(14),
      I1 => \officialStatus__0\(14),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[14]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[14]_i_1_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(15),
      I1 => \officialStatus__0\(15),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[15]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(16),
      I1 => \officialStatus__0\(16),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[16]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[16]_i_1_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(17),
      I1 => \officialStatus__0\(17),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[17]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[17]_i_1_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(18),
      I1 => \officialStatus__0\(18),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[18]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[18]_i_1_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(19),
      I1 => \officialStatus__0\(19),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[19]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[19]_i_1_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(20),
      I1 => \officialStatus__0\(20),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[20]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[20]_i_1_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(21),
      I1 => \officialStatus__0\(21),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[21]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[21]_i_1_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(22),
      I1 => \officialStatus__0\(22),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[22]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[22]_i_1_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(23),
      I1 => \officialStatus__0\(23),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[23]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[23]_i_1_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(24),
      I1 => \officialStatus__0\(24),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[24]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[24]_i_1_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(25),
      I1 => \officialStatus__0\(25),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[25]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[25]_i_1_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(26),
      I1 => \officialStatus__0\(26),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[26]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[26]_i_1_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(27),
      I1 => \officialStatus__0\(27),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[27]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[27]_i_1_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(28),
      I1 => \officialStatus__0\(28),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[28]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[28]_i_1_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(29),
      I1 => officialStatus(29),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[29]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[29]_i_1_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(30),
      I1 => \officialStatus__0\(30),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[30]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[30]_i_1_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => axi_arvalid,
      I2 => \^axi_rvalid_reg_0\,
      O => p_17_in
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(31),
      I1 => \officialStatus__0\(31),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[31]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(9),
      I1 => \officialStatus__0\(9),
      I2 => p_0_in_0(0),
      I3 => \officialControl_reg_n_0_[9]\,
      I4 => p_0_in_0(1),
      O => \axi_rdata[9]_i_1_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => my9x16Fifo_inst_n_37,
      Q => axi_rdata(0),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[10]_i_1_n_0\,
      Q => axi_rdata(10),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[11]_i_1_n_0\,
      Q => axi_rdata(11),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[12]_i_1_n_0\,
      Q => axi_rdata(12),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[13]_i_1_n_0\,
      Q => axi_rdata(13),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[14]_i_1_n_0\,
      Q => axi_rdata(14),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[15]_i_1_n_0\,
      Q => axi_rdata(15),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[16]_i_1_n_0\,
      Q => axi_rdata(16),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[17]_i_1_n_0\,
      Q => axi_rdata(17),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[18]_i_1_n_0\,
      Q => axi_rdata(18),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[19]_i_1_n_0\,
      Q => axi_rdata(19),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => my9x16Fifo_inst_n_36,
      Q => axi_rdata(1),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[20]_i_1_n_0\,
      Q => axi_rdata(20),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[21]_i_1_n_0\,
      Q => axi_rdata(21),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[22]_i_1_n_0\,
      Q => axi_rdata(22),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[23]_i_1_n_0\,
      Q => axi_rdata(23),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[24]_i_1_n_0\,
      Q => axi_rdata(24),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[25]_i_1_n_0\,
      Q => axi_rdata(25),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[26]_i_1_n_0\,
      Q => axi_rdata(26),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[27]_i_1_n_0\,
      Q => axi_rdata(27),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[28]_i_1_n_0\,
      Q => axi_rdata(28),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[29]_i_1_n_0\,
      Q => axi_rdata(29),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => my9x16Fifo_inst_n_35,
      Q => axi_rdata(2),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[30]_i_1_n_0\,
      Q => axi_rdata(30),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[31]_i_2_n_0\,
      Q => axi_rdata(31),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => my9x16Fifo_inst_n_34,
      Q => axi_rdata(3),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => my9x16Fifo_inst_n_33,
      Q => axi_rdata(4),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => my9x16Fifo_inst_n_32,
      Q => axi_rdata(5),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => my9x16Fifo_inst_n_31,
      Q => axi_rdata(6),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => my9x16Fifo_inst_n_30,
      Q => axi_rdata(7),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => my9x16Fifo_inst_n_29,
      Q => axi_rdata(8),
      R => my9x16Fifo_inst_n_16
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_17_in,
      D => \axi_rdata[9]_i_1_n_0\,
      Q => axi_rdata(9),
      R => my9x16Fifo_inst_n_16
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_rvalid_reg_1,
      Q => \^axi_rvalid_reg_0\,
      R => my9x16Fifo_inst_n_16
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
      R => my9x16Fifo_inst_n_16
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
      I0 => \state_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[2]\,
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[3]\,
      O => \count[3]_i_2_n_0\
    );
\count[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FFD5FFD5FF"
    )
        port map (
      I0 => \state1_inferred__0/i__carry_n_2\,
      I1 => PARITY_CONTROL(3),
      I2 => PARITY_CONTROL(2),
      I3 => \state_reg_n_0_[1]\,
      I4 => SECOND_STOP,
      I5 => \state_reg_n_0_[2]\,
      O => \count[3]_i_3_n_0\
    );
\count[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      O => \count[3]_i_4_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => count,
      D => \count[0]_i_1_n_0\,
      Q => \count_reg_n_0_[0]\,
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => count,
      D => \count[1]_i_1_n_0\,
      Q => \count_reg_n_0_[1]\,
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => count,
      D => \count[2]_i_1_n_0\,
      Q => \count_reg_n_0_[2]\,
      R => '0'
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => count,
      D => \count[3]_i_2_n_0\,
      Q => \count_reg_n_0_[3]\,
      R => '0'
    );
edge_detect_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect
     port map (
      E(0) => \^e\(0),
      Q(0) => SECOND_STOP,
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn,
      axi_arvalid => axi_arvalid,
      count => count,
      \count_reg[0]\ => \count[3]_i_3_n_0\,
      \count_reg[0]_0\ => \count[3]_i_4_n_0\,
      outReg_reg_0 => edge_detect_1_n_1,
      outReg_reg_1 => edge_detect_1_n_2,
      outReg_reg_2 => edge_detect_1_n_3,
      outReg_reg_3 => \^axi_rvalid_reg_0\,
      outReg_reg_4 => \^axi_arready_reg_0\,
      p_0_in_0(1 downto 0) => p_0_in_0(1 downto 0),
      shiftOut1_out => shiftOut1_out,
      signalFeed => signalFeed,
      \state_reg[0]\ => \state_reg_n_0_[0]\,
      \state_reg[0]_0\ => \state[2]_i_5_n_0\,
      \state_reg[0]_1\ => \state[2]_i_6_n_0\,
      \state_reg[0]_2\ => \state[0]_i_3_n_0\,
      \state_reg[1]\ => \state[1]_i_2_n_0\,
      \state_reg[1]_0\ => \state_reg_n_0_[1]\,
      \state_reg[2]\ => \^outreg_reg_0\,
      \state_reg[2]_0\ => \state_reg_n_0_[2]\,
      \state_reg[2]_1\ => \state[2]_i_4_n_0\
    );
edge_detect_2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0
     port map (
      axi_aclk => axi_aclk,
      in_delay => in_delay,
      in_delay_reg_0 => \^sixteenxslower_reg_0\,
      myParityBit => myParityBit,
      outReg_reg_0 => \^outreg_reg_0\,
      outReg_reg_1 => outReg_reg_1,
      outReg_reg_2 => outReg_reg_2,
      shiftOut_reg => \state_reg_n_0_[0]\,
      shiftOut_reg_0 => shiftOut_i_4_n_0,
      shiftOut_reg_1 => \state_reg_n_0_[1]\
    );
edge_detect_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_1
     port map (
      axi_aclk => axi_aclk,
      in_delay_reg_0 => \^outsignal_reg_0\,
      outReg_reg_0 => \^outreg_reg\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84000084"
    )
        port map (
      I0 => \officialControl_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[0]\,
      I4 => \officialControl_reg_n_0_[0]\,
      O => \i__carry_i_2_n_0\
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
      I0 => ticks_reg(23),
      I1 => keepCount_reg(31),
      I2 => ticks_reg(22),
      I3 => keepCount_reg(30),
      I4 => keepCount_reg(29),
      I5 => ticks_reg(21),
      O => \keepCount0_carry__0_i_1_n_0\
    );
\keepCount0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ticks_reg(20),
      I1 => keepCount_reg(28),
      I2 => ticks_reg(19),
      I3 => keepCount_reg(27),
      I4 => keepCount_reg(26),
      I5 => ticks_reg(18),
      O => \keepCount0_carry__0_i_2_n_0\
    );
\keepCount0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ticks_reg(17),
      I1 => keepCount_reg(25),
      I2 => ticks_reg(16),
      I3 => keepCount_reg(24),
      I4 => keepCount_reg(23),
      I5 => ticks_reg(15),
      O => \keepCount0_carry__0_i_3_n_0\
    );
\keepCount0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ticks_reg(14),
      I1 => keepCount_reg(22),
      I2 => ticks_reg(13),
      I3 => keepCount_reg(21),
      I4 => keepCount_reg(20),
      I5 => ticks_reg(12),
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
      I0 => ticks_reg(35),
      I1 => keepCount_reg(43),
      I2 => ticks_reg(34),
      I3 => keepCount_reg(42),
      I4 => keepCount_reg(41),
      I5 => ticks_reg(33),
      O => \keepCount0_carry__1_i_1_n_0\
    );
\keepCount0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ticks_reg(32),
      I1 => keepCount_reg(40),
      I2 => ticks_reg(31),
      I3 => keepCount_reg(39),
      I4 => keepCount_reg(38),
      I5 => ticks_reg(30),
      O => \keepCount0_carry__1_i_2_n_0\
    );
\keepCount0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ticks_reg(29),
      I1 => keepCount_reg(37),
      I2 => ticks_reg(28),
      I3 => keepCount_reg(36),
      I4 => keepCount_reg(35),
      I5 => ticks_reg(27),
      O => \keepCount0_carry__1_i_3_n_0\
    );
\keepCount0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ticks_reg(26),
      I1 => keepCount_reg(34),
      I2 => ticks_reg(25),
      I3 => keepCount_reg(33),
      I4 => keepCount_reg(32),
      I5 => ticks_reg(24),
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
      INIT => X"1001"
    )
        port map (
      I0 => ticks_reg(44),
      I1 => ticks_reg(43),
      I2 => keepCount_reg(50),
      I3 => ticks_reg(42),
      O => \keepCount0_carry__2_i_2_n_0\
    );
\keepCount0_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ticks_reg(41),
      I1 => keepCount_reg(49),
      I2 => ticks_reg(40),
      I3 => keepCount_reg(48),
      I4 => keepCount_reg(47),
      I5 => ticks_reg(39),
      O => \keepCount0_carry__2_i_3_n_0\
    );
\keepCount0_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ticks_reg(38),
      I1 => keepCount_reg(46),
      I2 => ticks_reg(37),
      I3 => keepCount_reg(45),
      I4 => keepCount_reg(44),
      I5 => ticks_reg(36),
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
      I0 => ticks_reg(11),
      I1 => keepCount_reg(19),
      I2 => ticks_reg(10),
      I3 => keepCount_reg(18),
      I4 => keepCount_reg(17),
      I5 => ticks_reg(9),
      O => keepCount0_carry_i_1_n_0
    );
keepCount0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ticks_reg(8),
      I1 => keepCount_reg(16),
      I2 => ticks_reg(7),
      I3 => keepCount_reg(15),
      I4 => keepCount_reg(14),
      I5 => ticks_reg(6),
      O => keepCount0_carry_i_2_n_0
    );
keepCount0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ticks_reg(5),
      I1 => keepCount_reg(13),
      I2 => ticks_reg(4),
      I3 => keepCount_reg(12),
      I4 => keepCount_reg(11),
      I5 => ticks_reg(3),
      O => keepCount0_carry_i_3_n_0
    );
keepCount0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ticks_reg(2),
      I1 => keepCount_reg(10),
      I2 => ticks_reg(1),
      I3 => keepCount_reg(9),
      I4 => keepCount_reg(8),
      I5 => ticks_reg(0),
      O => keepCount0_carry_i_4_n_0
    );
\keepCount[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^co\(0),
      I1 => \^officialcontrol_reg[5]_0\(0),
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
      I1 => keepCount_reg(15),
      O => \keepCount[12]_i_2_n_0\
    );
\keepCount[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(15),
      I1 => keepCount_reg(14),
      O => \keepCount[12]_i_3_n_0\
    );
\keepCount[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(14),
      I1 => keepCount_reg(13),
      O => \keepCount[12]_i_4_n_0\
    );
\keepCount[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(13),
      I1 => keepCount_reg(12),
      O => \keepCount[12]_i_5_n_0\
    );
\keepCount[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(20),
      I1 => keepCount_reg(19),
      O => \keepCount[16]_i_2_n_0\
    );
\keepCount[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(19),
      I1 => keepCount_reg(18),
      O => \keepCount[16]_i_3_n_0\
    );
\keepCount[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(18),
      I1 => keepCount_reg(17),
      O => \keepCount[16]_i_4_n_0\
    );
\keepCount[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(17),
      I1 => keepCount_reg(16),
      O => \keepCount[16]_i_5_n_0\
    );
\keepCount[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(24),
      I1 => keepCount_reg(23),
      O => \keepCount[20]_i_2_n_0\
    );
\keepCount[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(23),
      I1 => keepCount_reg(22),
      O => \keepCount[20]_i_3_n_0\
    );
\keepCount[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(22),
      I1 => keepCount_reg(21),
      O => \keepCount[20]_i_4_n_0\
    );
\keepCount[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(21),
      I1 => keepCount_reg(20),
      O => \keepCount[20]_i_5_n_0\
    );
\keepCount[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(28),
      I1 => keepCount_reg(27),
      O => \keepCount[24]_i_2_n_0\
    );
\keepCount[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(27),
      I1 => keepCount_reg(26),
      O => \keepCount[24]_i_3_n_0\
    );
\keepCount[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(26),
      I1 => keepCount_reg(25),
      O => \keepCount[24]_i_4_n_0\
    );
\keepCount[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(25),
      I1 => keepCount_reg(24),
      O => \keepCount[24]_i_5_n_0\
    );
\keepCount[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(31),
      I1 => keepCount_reg(30),
      O => \keepCount[28]_i_2_n_0\
    );
\keepCount[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(30),
      I1 => keepCount_reg(29),
      O => \keepCount[28]_i_3_n_0\
    );
\keepCount[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(29),
      I1 => keepCount_reg(28),
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
      I1 => keepCount_reg(11),
      O => \keepCount[8]_i_2_n_0\
    );
\keepCount[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(11),
      I1 => keepCount_reg(10),
      O => \keepCount[8]_i_3_n_0\
    );
\keepCount[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(10),
      I1 => keepCount_reg(9),
      O => \keepCount[8]_i_4_n_0\
    );
\keepCount[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => officialBaudRate(9),
      I1 => keepCount_reg(8),
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
      Q => keepCount_reg(10),
      R => '0'
    );
\keepCount_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[8]_i_1_n_4\,
      Q => keepCount_reg(11),
      R => '0'
    );
\keepCount_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[12]_i_1_n_7\,
      Q => keepCount_reg(12),
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
      Q => keepCount_reg(13),
      R => '0'
    );
\keepCount_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[12]_i_1_n_5\,
      Q => keepCount_reg(14),
      R => '0'
    );
\keepCount_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[12]_i_1_n_4\,
      Q => keepCount_reg(15),
      R => '0'
    );
\keepCount_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[16]_i_1_n_7\,
      Q => keepCount_reg(16),
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
      Q => keepCount_reg(17),
      R => '0'
    );
\keepCount_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[16]_i_1_n_5\,
      Q => keepCount_reg(18),
      R => '0'
    );
\keepCount_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[16]_i_1_n_4\,
      Q => keepCount_reg(19),
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
      Q => keepCount_reg(20),
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
      Q => keepCount_reg(21),
      R => '0'
    );
\keepCount_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[20]_i_1_n_5\,
      Q => keepCount_reg(22),
      R => '0'
    );
\keepCount_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[20]_i_1_n_4\,
      Q => keepCount_reg(23),
      R => '0'
    );
\keepCount_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[24]_i_1_n_7\,
      Q => keepCount_reg(24),
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
      Q => keepCount_reg(25),
      R => '0'
    );
\keepCount_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[24]_i_1_n_5\,
      Q => keepCount_reg(26),
      R => '0'
    );
\keepCount_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[24]_i_1_n_4\,
      Q => keepCount_reg(27),
      R => '0'
    );
\keepCount_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[28]_i_1_n_7\,
      Q => keepCount_reg(28),
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
      S(3) => keepCount_reg(31),
      S(2) => \keepCount[28]_i_2_n_0\,
      S(1) => \keepCount[28]_i_3_n_0\,
      S(0) => \keepCount[28]_i_4_n_0\
    );
\keepCount_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[28]_i_1_n_6\,
      Q => keepCount_reg(29),
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
      Q => keepCount_reg(30),
      R => '0'
    );
\keepCount_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[28]_i_1_n_4\,
      Q => keepCount_reg(31),
      R => '0'
    );
\keepCount_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[32]_i_1_n_7\,
      Q => keepCount_reg(32),
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
      S(3 downto 0) => keepCount_reg(35 downto 32)
    );
\keepCount_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[32]_i_1_n_6\,
      Q => keepCount_reg(33),
      R => '0'
    );
\keepCount_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[32]_i_1_n_5\,
      Q => keepCount_reg(34),
      R => '0'
    );
\keepCount_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[32]_i_1_n_4\,
      Q => keepCount_reg(35),
      R => '0'
    );
\keepCount_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[36]_i_1_n_7\,
      Q => keepCount_reg(36),
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
      S(3 downto 0) => keepCount_reg(39 downto 36)
    );
\keepCount_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[36]_i_1_n_6\,
      Q => keepCount_reg(37),
      R => '0'
    );
\keepCount_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[36]_i_1_n_5\,
      Q => keepCount_reg(38),
      R => '0'
    );
\keepCount_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[36]_i_1_n_4\,
      Q => keepCount_reg(39),
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
      Q => keepCount_reg(40),
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
      S(3 downto 0) => keepCount_reg(43 downto 40)
    );
\keepCount_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[40]_i_1_n_6\,
      Q => keepCount_reg(41),
      R => '0'
    );
\keepCount_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[40]_i_1_n_5\,
      Q => keepCount_reg(42),
      R => '0'
    );
\keepCount_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[40]_i_1_n_4\,
      Q => keepCount_reg(43),
      R => '0'
    );
\keepCount_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[44]_i_1_n_7\,
      Q => keepCount_reg(44),
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
      S(3 downto 0) => keepCount_reg(47 downto 44)
    );
\keepCount_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[44]_i_1_n_6\,
      Q => keepCount_reg(45),
      R => '0'
    );
\keepCount_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[44]_i_1_n_5\,
      Q => keepCount_reg(46),
      R => '0'
    );
\keepCount_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[44]_i_1_n_4\,
      Q => keepCount_reg(47),
      R => '0'
    );
\keepCount_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[48]_i_1_n_7\,
      Q => keepCount_reg(48),
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
      S(2 downto 0) => keepCount_reg(50 downto 48)
    );
\keepCount_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => outSignal,
      D => \keepCount_reg[48]_i_1_n_6\,
      Q => keepCount_reg(49),
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
      Q => keepCount_reg(50),
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
      Q => keepCount_reg(8),
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
      Q => keepCount_reg(9),
      R => '0'
    );
\latchData_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^rd_data\(0),
      G => \^e\(0),
      GE => '1',
      Q => latchData(0)
    );
\latchData_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^rd_data\(1),
      G => \^e\(0),
      GE => '1',
      Q => latchData(1)
    );
\latchData_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^rd_data\(2),
      G => \^e\(0),
      GE => '1',
      Q => latchData(2)
    );
\latchData_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^rd_data\(3),
      G => \^e\(0),
      GE => '1',
      Q => latchData(3)
    );
\latchData_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^rd_data\(4),
      G => \^e\(0),
      GE => '1',
      Q => latchData(4)
    );
\latchData_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^rd_data\(5),
      G => \^e\(0),
      GE => '1',
      Q => latchData(5)
    );
\latchData_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^rd_data\(6),
      G => \^e\(0),
      GE => '1',
      Q => latchData(6)
    );
\latchData_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^rd_data\(7),
      G => \^e\(0),
      GE => '1',
      Q => latchData(7)
    );
\latchData_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^rd_data\(8),
      G => \^e\(0),
      GE => '1',
      Q => latchData(8)
    );
my9x16Fifo_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my9x16Fifo
     port map (
      D(5 downto 3) => \^rd_data\(8 downto 6),
      D(2) => \^rd_data\(4),
      D(1 downto 0) => \^rd_data\(2 downto 1),
      Q(4 downto 0) => Q(4 downto 0),
      SR(0) => my9x16Fifo_inst_n_16,
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn,
      axi_awvalid => axi_awvalid,
      \axi_rdata_reg[8]\(8) => SECOND_STOP,
      \axi_rdata_reg[8]\(7) => \officialControl_reg_n_0_[7]\,
      \axi_rdata_reg[8]\(6) => \officialControl_reg_n_0_[6]\,
      \axi_rdata_reg[8]\(5 downto 4) => \^officialcontrol_reg[5]_0\(1 downto 0),
      \axi_rdata_reg[8]\(3 downto 2) => PARITY_CONTROL(3 downto 2),
      \axi_rdata_reg[8]\(1) => \officialControl_reg_n_0_[1]\,
      \axi_rdata_reg[8]\(0) => \officialControl_reg_n_0_[0]\,
      \axi_rdata_reg[8]_0\(8 downto 0) => officialBaudRate(8 downto 0),
      \axi_rdata_reg[8]_1\(8 downto 0) => \officialStatus__0\(8 downto 0),
      axi_wvalid => axi_wvalid,
      empty => empty,
      full => full,
      in_delay_reg => \^axi_awready_reg_0\,
      in_delay_reg_0 => \^axi_wready_reg_0\,
      myParityBit_reg_i_1_0 => myParityBit_reg_i_6_n_0,
      myParityBit_reg_i_1_1 => myParityBit_reg_i_8_n_0,
      \officialBaudRate_reg[8]\(8) => my9x16Fifo_inst_n_29,
      \officialBaudRate_reg[8]\(7) => my9x16Fifo_inst_n_30,
      \officialBaudRate_reg[8]\(6) => my9x16Fifo_inst_n_31,
      \officialBaudRate_reg[8]\(5) => my9x16Fifo_inst_n_32,
      \officialBaudRate_reg[8]\(4) => my9x16Fifo_inst_n_33,
      \officialBaudRate_reg[8]\(3) => my9x16Fifo_inst_n_34,
      \officialBaudRate_reg[8]\(2) => my9x16Fifo_inst_n_35,
      \officialBaudRate_reg[8]\(1) => my9x16Fifo_inst_n_36,
      \officialBaudRate_reg[8]\(0) => my9x16Fifo_inst_n_37,
      \officialControl_reg[0]\ => my9x16Fifo_inst_n_19,
      officialData(8 downto 0) => officialData(8 downto 0),
      p_0_in_0(1 downto 0) => p_0_in_0(1 downto 0),
      p_19_in => p_19_in,
      \rd_index_reg[3]_0\ => \^rd_data\(0),
      \rd_index_reg[3]_1\ => \^rd_data\(3),
      \rd_index_reg[3]_2\ => \^rd_data\(5),
      \rd_index_reg[4]_0\(4 downto 0) => \rd_index_reg[4]\(4 downto 0),
      signalFeed => signalFeed,
      waddr(1 downto 0) => waddr(3 downto 2),
      watermark(4 downto 0) => watermark(4 downto 0)
    );
myParityBit_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => my9x16Fifo_inst_n_19,
      G => \myParityBit__0\,
      GE => '1',
      Q => myParityBit
    );
myParityBit_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PARITY_CONTROL(3),
      I1 => PARITY_CONTROL(2),
      O => \myParityBit__0\
    );
myParityBit_reg_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \officialControl_reg_n_0_[0]\,
      I1 => \officialControl_reg_n_0_[1]\,
      O => myParityBit_reg_i_6_n_0
    );
myParityBit_reg_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PARITY_CONTROL(2),
      I1 => PARITY_CONTROL(3),
      O => myParityBit_reg_i_8_n_0
    );
\officialBaudRate[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_19_in,
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
      I0 => p_19_in,
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
      I0 => p_19_in,
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
      I0 => p_19_in,
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
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(10),
      Q => officialBaudRate(10),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(11),
      Q => officialBaudRate(11),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(12),
      Q => officialBaudRate(12),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(13),
      Q => officialBaudRate(13),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(14),
      Q => officialBaudRate(14),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(15),
      Q => officialBaudRate(15),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(16),
      Q => officialBaudRate(16),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(17),
      Q => officialBaudRate(17),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(18),
      Q => officialBaudRate(18),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(19),
      Q => officialBaudRate(19),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(1),
      Q => officialBaudRate(1),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(20),
      Q => officialBaudRate(20),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(21),
      Q => officialBaudRate(21),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(22),
      Q => officialBaudRate(22),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(23),
      Q => officialBaudRate(23),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(24),
      Q => officialBaudRate(24),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(25),
      Q => officialBaudRate(25),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(26),
      Q => officialBaudRate(26),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(27),
      Q => officialBaudRate(27),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(28),
      Q => officialBaudRate(28),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(29),
      Q => officialBaudRate(29),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(2),
      Q => officialBaudRate(2),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(30),
      Q => officialBaudRate(30),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(31),
      Q => officialBaudRate(31),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(3),
      Q => officialBaudRate(3),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(4),
      Q => officialBaudRate(4),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(5),
      Q => officialBaudRate(5),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(6),
      Q => officialBaudRate(6),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(7),
      Q => officialBaudRate(7),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(8),
      Q => officialBaudRate(8),
      R => my9x16Fifo_inst_n_16
    );
\officialBaudRate_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(9),
      Q => officialBaudRate(9),
      R => my9x16Fifo_inst_n_16
    );
\officialControl[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => p_19_in,
      I1 => axi_awaddr(1),
      I2 => axi_wstrb(1),
      I3 => axi_awaddr(0),
      O => p_1_in(8)
    );
\officialControl[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => p_19_in,
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
      I0 => p_19_in,
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
      I0 => p_19_in,
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
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(8),
      D => axi_wdata(10),
      Q => \officialControl_reg_n_0_[10]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(8),
      D => axi_wdata(11),
      Q => \officialControl_reg_n_0_[11]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(8),
      D => axi_wdata(12),
      Q => \officialControl_reg_n_0_[12]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(8),
      D => axi_wdata(13),
      Q => \officialControl_reg_n_0_[13]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(8),
      D => axi_wdata(14),
      Q => \officialControl_reg_n_0_[14]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(8),
      D => axi_wdata(15),
      Q => \officialControl_reg_n_0_[15]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(16),
      Q => \officialControl_reg_n_0_[16]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(17),
      Q => \officialControl_reg_n_0_[17]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(18),
      Q => \officialControl_reg_n_0_[18]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(19),
      Q => \officialControl_reg_n_0_[19]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(5),
      D => axi_wdata(1),
      Q => \officialControl_reg_n_0_[1]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(20),
      Q => \officialControl_reg_n_0_[20]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(21),
      Q => \officialControl_reg_n_0_[21]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(22),
      Q => \officialControl_reg_n_0_[22]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(23),
      Q => \officialControl_reg_n_0_[23]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(24),
      Q => \officialControl_reg_n_0_[24]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(25),
      Q => \officialControl_reg_n_0_[25]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(26),
      Q => \officialControl_reg_n_0_[26]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(27),
      Q => \officialControl_reg_n_0_[27]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(28),
      Q => \officialControl_reg_n_0_[28]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(29),
      Q => \officialControl_reg_n_0_[29]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(5),
      D => axi_wdata(2),
      Q => PARITY_CONTROL(2),
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(30),
      Q => \officialControl_reg_n_0_[30]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(31),
      Q => \officialControl_reg_n_0_[31]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(5),
      D => axi_wdata(3),
      Q => PARITY_CONTROL(3),
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(5),
      D => axi_wdata(4),
      Q => \^officialcontrol_reg[5]_0\(0),
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(5),
      D => axi_wdata(5),
      Q => \^officialcontrol_reg[5]_0\(1),
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(5),
      D => axi_wdata(6),
      Q => \officialControl_reg_n_0_[6]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(5),
      D => axi_wdata(7),
      Q => \officialControl_reg_n_0_[7]\,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(8),
      D => axi_wdata(8),
      Q => SECOND_STOP,
      R => my9x16Fifo_inst_n_16
    );
\officialControl_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(8),
      D => axi_wdata(9),
      Q => \officialControl_reg_n_0_[9]\,
      R => my9x16Fifo_inst_n_16
    );
\officialData[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => p_19_in,
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
      I1 => p_19_in,
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
      R => my9x16Fifo_inst_n_16
    );
\officialData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(1),
      Q => officialData(1),
      R => my9x16Fifo_inst_n_16
    );
\officialData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(2),
      Q => officialData(2),
      R => my9x16Fifo_inst_n_16
    );
\officialData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(3),
      Q => officialData(3),
      R => my9x16Fifo_inst_n_16
    );
\officialData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(4),
      Q => officialData(4),
      R => my9x16Fifo_inst_n_16
    );
\officialData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(5),
      Q => officialData(5),
      R => my9x16Fifo_inst_n_16
    );
\officialData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(6),
      Q => officialData(6),
      R => my9x16Fifo_inst_n_16
    );
\officialData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(7),
      Q => officialData(7),
      R => my9x16Fifo_inst_n_16
    );
\officialData_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \officialData[8]_i_1_n_0\,
      Q => officialData(8),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => p_19_in,
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
      I0 => p_19_in,
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
      I0 => p_19_in,
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
      I0 => p_19_in,
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
      Q => \officialStatus__0\(0),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(10),
      Q => \officialStatus__0\(10),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(11),
      Q => \officialStatus__0\(11),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(12),
      Q => \officialStatus__0\(12),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(13),
      Q => \officialStatus__0\(13),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(14),
      Q => \officialStatus__0\(14),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(15),
      Q => \officialStatus__0\(15),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(16),
      Q => \officialStatus__0\(16),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(17),
      Q => \officialStatus__0\(17),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(18),
      Q => \officialStatus__0\(18),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(19),
      Q => \officialStatus__0\(19),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(1),
      Q => \officialStatus__0\(1),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(20),
      Q => \officialStatus__0\(20),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(21),
      Q => \officialStatus__0\(21),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(22),
      Q => \officialStatus__0\(22),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(23),
      Q => \officialStatus__0\(23),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(24),
      Q => \officialStatus__0\(24),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(25),
      Q => \officialStatus__0\(25),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(26),
      Q => \officialStatus__0\(26),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(27),
      Q => \officialStatus__0\(27),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(28),
      Q => \officialStatus__0\(28),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(29),
      Q => officialStatus(29),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(2),
      Q => \officialStatus__0\(2),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(30),
      Q => \officialStatus__0\(30),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(31),
      Q => \officialStatus__0\(31),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(3),
      Q => \officialStatus__0\(3),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(4),
      Q => \officialStatus__0\(4),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(5),
      Q => \officialStatus__0\(5),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(6),
      Q => \officialStatus__0\(6),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(7),
      Q => \officialStatus__0\(7),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(8),
      Q => \officialStatus__0\(8),
      R => my9x16Fifo_inst_n_16
    );
\officialStatus_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(9),
      Q => \officialStatus__0\(9),
      R => my9x16Fifo_inst_n_16
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
      R => my9x16Fifo_inst_n_16
    );
\raddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \raddr[3]_i_1_n_0\,
      Q => p_0_in_0(1),
      R => my9x16Fifo_inst_n_16
    );
shiftOut_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => latchData(8),
      I1 => \count_reg_n_0_[3]\,
      I2 => shiftOut_i_5_n_0,
      I3 => \count_reg_n_0_[2]\,
      I4 => shiftOut_i_6_n_0,
      O => shiftOut_i_4_n_0
    );
shiftOut_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => latchData(7),
      I1 => latchData(6),
      I2 => \count_reg_n_0_[1]\,
      I3 => latchData(5),
      I4 => \count_reg_n_0_[0]\,
      I5 => latchData(4),
      O => shiftOut_i_5_n_0
    );
shiftOut_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => latchData(3),
      I1 => latchData(2),
      I2 => \count_reg_n_0_[1]\,
      I3 => latchData(1),
      I4 => \count_reg_n_0_[0]\,
      I5 => latchData(0),
      O => shiftOut_i_6_n_0
    );
shiftOut_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => shiftOut_reg_0,
      Q => tx_out,
      R => '0'
    );
sixteenXslower_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => sixteenXslower_reg_1,
      Q => \^sixteenxslower_reg_0\,
      R => '0'
    );
\state1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_state1_inferred__0/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \state1_inferred__0/i__carry_n_2\,
      CO(0) => \state1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1_n_0\,
      S(0) => \i__carry_i_2_n_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => PARITY_CONTROL(2),
      I1 => PARITY_CONTROL(3),
      I2 => \state1_inferred__0/i__carry_n_2\,
      O => \state[0]_i_3_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDDCDDDD22222222"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => PARITY_CONTROL(2),
      I3 => PARITY_CONTROL(3),
      I4 => \state1_inferred__0/i__carry_n_2\,
      I5 => \state_reg_n_0_[1]\,
      O => \state[1]_i_2_n_0\
    );
\state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0082"
    )
        port map (
      I0 => \state1_inferred__0/i__carry_n_2\,
      I1 => PARITY_CONTROL(2),
      I2 => PARITY_CONTROL(3),
      I3 => \state_reg_n_0_[2]\,
      O => \state[2]_i_4_n_0\
    );
\state[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      O => \state[2]_i_5_n_0\
    );
\state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"32232222FFFFFFFF"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => PARITY_CONTROL(3),
      I3 => PARITY_CONTROL(2),
      I4 => \state1_inferred__0/i__carry_n_2\,
      I5 => \state_reg_n_0_[1]\,
      O => \state[2]_i_6_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => edge_detect_1_n_3,
      Q => \state_reg_n_0_[0]\,
      R => my9x16Fifo_inst_n_16
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => edge_detect_1_n_2,
      Q => \state_reg_n_0_[1]\,
      R => my9x16Fifo_inst_n_16
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => edge_detect_1_n_1,
      Q => \state_reg_n_0_[2]\,
      R => my9x16Fifo_inst_n_16
    );
testIdle_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => testIdle_reg_0,
      Q => TXIdle,
      R => '0'
    );
ticks2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1555"
    )
        port map (
      I0 => \^ticks2_reg[3]_0\(0),
      I1 => \^ticks2_reg[3]_0\(1),
      I2 => \^ticks2_reg[3]_0\(2),
      I3 => \^ticks2_reg[3]_0\(3),
      O => ticks2_n_0
    );
\ticks2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2666"
    )
        port map (
      I0 => \^ticks2_reg[3]_0\(0),
      I1 => \^ticks2_reg[3]_0\(1),
      I2 => \^ticks2_reg[3]_0\(2),
      I3 => \^ticks2_reg[3]_0\(3),
      O => \ticks2[1]_i_1_n_0\
    );
\ticks2[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3878"
    )
        port map (
      I0 => \^ticks2_reg[3]_0\(0),
      I1 => \^ticks2_reg[3]_0\(1),
      I2 => \^ticks2_reg[3]_0\(2),
      I3 => \^ticks2_reg[3]_0\(3),
      O => \ticks2[2]_i_1_n_0\
    );
\ticks2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F80"
    )
        port map (
      I0 => \^ticks2_reg[3]_0\(0),
      I1 => \^ticks2_reg[3]_0\(1),
      I2 => \^ticks2_reg[3]_0\(2),
      I3 => \^ticks2_reg[3]_0\(3),
      O => \ticks2[3]_i_1_n_0\
    );
\ticks2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^outreg_reg\,
      D => ticks2_n_0,
      Q => \^ticks2_reg[3]_0\(0),
      R => '0'
    );
\ticks2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^outreg_reg\,
      D => \ticks2[1]_i_1_n_0\,
      Q => \^ticks2_reg[3]_0\(1),
      R => '0'
    );
\ticks2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^outreg_reg\,
      D => \ticks2[2]_i_1_n_0\,
      Q => \^ticks2_reg[3]_0\(2),
      R => '0'
    );
\ticks2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \^outreg_reg\,
      D => \ticks2[3]_i_1_n_0\,
      Q => \^ticks2_reg[3]_0\(3),
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
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => axi_awaddr(0),
      I1 => \^aw_en_reg_0\,
      I2 => axi_awvalid,
      I3 => axi_wvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => waddr(2),
      O => \waddr[2]_i_1_n_0\
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => axi_awaddr(1),
      I1 => \^aw_en_reg_0\,
      I2 => axi_awvalid,
      I3 => axi_wvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => waddr(3),
      O => \waddr[3]_i_1_n_0\
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \waddr[2]_i_1_n_0\,
      Q => waddr(2),
      R => my9x16Fifo_inst_n_16
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \waddr[3]_i_1_n_0\,
      Q => waddr(3),
      R => my9x16Fifo_inst_n_16
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial is
  port (
    watermark : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_index : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_index : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_data : out STD_LOGIC_VECTOR ( 8 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    baudTick : out STD_LOGIC;
    txBaud : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rvalid_reg : out STD_LOGIC;
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    baudClockOut : out STD_LOGIC;
    axi_bvalid : out STD_LOGIC;
    tx_out : out STD_LOGIC;
    TXIdle : out STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_arvalid : in STD_LOGIC;
    axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_awvalid : in STD_LOGIC;
    axi_wvalid : in STD_LOGIC;
    axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aresetn : in STD_LOGIC;
    axi_bready : in STD_LOGIC;
    axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \^txidle\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal \^axi_bvalid\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg\ : STD_LOGIC;
  signal \^baudtick\ : STD_LOGIC;
  signal \edge_detect_2/in_delay\ : STD_LOGIC;
  signal keepCount0 : STD_LOGIC;
  signal \outReg_i_1__2_n_0\ : STD_LOGIC;
  signal outSignal_i_1_n_0 : STD_LOGIC;
  signal serial_v1_0_AXI_inst_n_13 : STD_LOGIC;
  signal serial_v1_0_AXI_inst_n_4 : STD_LOGIC;
  signal serial_v1_0_AXI_inst_n_7 : STD_LOGIC;
  signal serial_v1_0_AXI_inst_n_81 : STD_LOGIC;
  signal shiftOut1_out : STD_LOGIC;
  signal shiftOut_i_1_n_0 : STD_LOGIC;
  signal sixteenXslower_i_1_n_0 : STD_LOGIC;
  signal testIdle_i_1_n_0 : STD_LOGIC;
  signal ticks2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^txbaud\ : STD_LOGIC;
  signal \^tx_out\ : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  Q(1 downto 0) <= \^q\(1 downto 0);
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  TXIdle <= \^txidle\;
  axi_bvalid <= \^axi_bvalid\;
  axi_rvalid_reg <= \^axi_rvalid_reg\;
  baudTick <= \^baudtick\;
  txBaud <= \^txbaud\;
  tx_out <= \^tx_out\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBF00BF00BF00"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => axi_wvalid,
      I2 => axi_awvalid,
      I3 => serial_v1_0_AXI_inst_n_13,
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
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => \^axi_bvalid\,
      I5 => axi_bready,
      O => axi_bvalid_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7444"
    )
        port map (
      I0 => axi_rready,
      I1 => \^axi_rvalid_reg\,
      I2 => axi_arvalid,
      I3 => \^s_axi_arready\,
      O => axi_rvalid_i_1_n_0
    );
\outReg_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => serial_v1_0_AXI_inst_n_7,
      I1 => \edge_detect_2/in_delay\,
      O => \outReg_i_1__2_n_0\
    );
outSignal_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => keepCount0,
      I2 => serial_v1_0_AXI_inst_n_4,
      O => outSignal_i_1_n_0
    );
serial_v1_0_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI
     port map (
      CO(0) => keepCount0,
      E(0) => \^e\(0),
      Q(4 downto 0) => wr_index(4 downto 0),
      TXIdle => \^txidle\,
      aw_en_reg_0 => serial_v1_0_AXI_inst_n_13,
      aw_en_reg_1 => aw_en_i_1_n_0,
      axi_aclk => axi_aclk,
      axi_araddr(1 downto 0) => axi_araddr(1 downto 0),
      axi_aresetn => axi_aresetn,
      axi_arready_reg_0 => \^s_axi_arready\,
      axi_arvalid => axi_arvalid,
      axi_awaddr(1 downto 0) => axi_awaddr(1 downto 0),
      axi_awready_reg_0 => \^s_axi_awready\,
      axi_awvalid => axi_awvalid,
      axi_bvalid => \^axi_bvalid\,
      axi_bvalid_reg_0 => axi_bvalid_i_1_n_0,
      axi_rdata(31 downto 0) => axi_rdata(31 downto 0),
      axi_rvalid_reg_0 => \^axi_rvalid_reg\,
      axi_rvalid_reg_1 => axi_rvalid_i_1_n_0,
      axi_wdata(31 downto 0) => axi_wdata(31 downto 0),
      axi_wready_reg_0 => \^s_axi_wready\,
      axi_wstrb(3 downto 0) => axi_wstrb(3 downto 0),
      axi_wvalid => axi_wvalid,
      baudClockOut => baudClockOut,
      empty => empty,
      full => full,
      in_delay => \edge_detect_2/in_delay\,
      \officialControl_reg[5]_0\(1 downto 0) => \^q\(1 downto 0),
      outReg_reg => \^baudtick\,
      outReg_reg_0 => \^txbaud\,
      outReg_reg_1 => serial_v1_0_AXI_inst_n_81,
      outReg_reg_2 => \outReg_i_1__2_n_0\,
      outSignal_reg_0 => serial_v1_0_AXI_inst_n_4,
      outSignal_reg_1 => outSignal_i_1_n_0,
      rd_data(8 downto 0) => rd_data(8 downto 0),
      \rd_index_reg[4]\(4 downto 0) => rd_index(4 downto 0),
      shiftOut1_out => shiftOut1_out,
      shiftOut_reg_0 => shiftOut_i_1_n_0,
      sixteenXslower_reg_0 => serial_v1_0_AXI_inst_n_7,
      sixteenXslower_reg_1 => sixteenXslower_i_1_n_0,
      testIdle_reg_0 => testIdle_i_1_n_0,
      \ticks2_reg[3]_0\(3 downto 0) => ticks2(3 downto 0),
      tx_out => \^tx_out\,
      watermark(4 downto 0) => watermark(4 downto 0)
    );
shiftOut_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => serial_v1_0_AXI_inst_n_81,
      I1 => shiftOut1_out,
      I2 => \^tx_out\,
      O => shiftOut_i_1_n_0
    );
sixteenXslower_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30000000AAAAAAAA"
    )
        port map (
      I0 => serial_v1_0_AXI_inst_n_7,
      I1 => ticks2(0),
      I2 => ticks2(2),
      I3 => ticks2(3),
      I4 => ticks2(1),
      I5 => \^baudtick\,
      O => sixteenXslower_i_1_n_0
    );
testIdle_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => axi_aresetn,
      I1 => \^e\(0),
      I2 => \^txbaud\,
      I3 => \^txidle\,
      O => testIdle_i_1_n_0
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
    txBaud : out STD_LOGIC;
    baudTick : out STD_LOGIC;
    TXGo : out STD_LOGIC;
    TXIdle : out STD_LOGIC;
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
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial
     port map (
      E(0) => TXGo,
      Q(1) => testing,
      Q(0) => enableing,
      S_AXI_ARREADY => axi_arready,
      S_AXI_AWREADY => axi_awready,
      S_AXI_WREADY => axi_wready,
      TXIdle => TXIdle,
      axi_aclk => axi_aclk,
      axi_araddr(1 downto 0) => axi_araddr(3 downto 2),
      axi_aresetn => axi_aresetn,
      axi_arvalid => axi_arvalid,
      axi_awaddr(1 downto 0) => axi_awaddr(3 downto 2),
      axi_awvalid => axi_awvalid,
      axi_bready => axi_bready,
      axi_bvalid => axi_bvalid,
      axi_rdata(31 downto 0) => axi_rdata(31 downto 0),
      axi_rready => axi_rready,
      axi_rvalid_reg => axi_rvalid,
      axi_wdata(31 downto 0) => axi_wdata(31 downto 0),
      axi_wstrb(3 downto 0) => axi_wstrb(3 downto 0),
      axi_wvalid => axi_wvalid,
      baudClockOut => baudClockOut,
      baudTick => baudTick,
      empty => empty,
      full => full,
      rd_data(8 downto 0) => rd_data(8 downto 0),
      rd_index(4 downto 0) => rd_index(4 downto 0),
      txBaud => txBaud,
      tx_out => tx_out,
      watermark(4 downto 0) => watermark(4 downto 0),
      wr_index(4 downto 0) => wr_index(4 downto 0)
    );
end STRUCTURE;
