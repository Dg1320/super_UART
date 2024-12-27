-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (lin64) Build 5164865 Thu Sep  5 14:36:28 MDT 2024
-- Date        : Wed Nov  6 20:43:05 2024
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
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    in_delay_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_aclk : in STD_LOGIC;
    empty : in STD_LOGIC;
    in_delay_reg_1 : in STD_LOGIC;
    in_delay_reg_2 : in STD_LOGIC;
    axi_arvalid : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal in_delay : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[31]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rd_index[4]_i_2\ : label is "soft_lutpair0";
begin
  E(0) <= \^e\(0);
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => axi_arvalid,
      I1 => in_delay_reg_2,
      I2 => in_delay_reg_1,
      O => \^e\(0)
    );
in_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \^e\(0),
      Q => in_delay,
      R => '0'
    );
\rd_index[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFBFF"
    )
        port map (
      I0 => empty,
      I1 => in_delay_reg_1,
      I2 => in_delay_reg_2,
      I3 => axi_arvalid,
      I4 => in_delay,
      I5 => axi_aresetn,
      O => SR(0)
    );
\rd_index[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => in_delay,
      I1 => axi_arvalid,
      I2 => in_delay_reg_2,
      I3 => in_delay_reg_1,
      I4 => empty,
      O => in_delay_reg_0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0 is
  port (
    wr : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    overflow13_out : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \wr_index_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \officialData_reg[8]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \wr_index_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \officialData_reg[8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \wr_index_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \officialData_reg[8]_1\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \wr_index_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \officialData_reg[8]_2\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \wr_index_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \officialData_reg[8]_3\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \wr_index_reg[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \officialData_reg[8]_4\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \wr_index_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \officialData_reg[8]_5\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \wr_index_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \officialData_reg[8]_6\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \wr_index_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \officialData_reg[8]_7\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \wr_index_reg[1]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \officialData_reg[8]_8\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \wr_index_reg[1]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \officialData_reg[8]_9\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \wr_index_reg[2]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \officialData_reg[8]_10\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \wr_index_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \officialData_reg[8]_11\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \wr_index_reg[1]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \officialData_reg[8]_12\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \wr_index_reg[1]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \officialData_reg[8]_13\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \officialStatus_reg[29]\ : out STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \wr_index_reg[0]_2\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \wr_index_reg[0]_3\ : in STD_LOGIC;
    officialData : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \FIFO_DATA_reg[15][8]\ : in STD_LOGIC;
    \FIFO_DATA_reg[14][8]\ : in STD_LOGIC;
    \FIFO_DATA_reg[13][8]\ : in STD_LOGIC;
    \FIFO_DATA_reg[12][8]\ : in STD_LOGIC;
    \FIFO_DATA_reg[11][8]\ : in STD_LOGIC;
    \FIFO_DATA_reg[10][8]\ : in STD_LOGIC;
    \FIFO_DATA_reg[9][8]\ : in STD_LOGIC;
    \FIFO_DATA_reg[8][8]\ : in STD_LOGIC;
    \FIFO_DATA_reg[7][8]\ : in STD_LOGIC;
    \FIFO_DATA_reg[6][8]\ : in STD_LOGIC;
    \FIFO_DATA_reg[5][8]\ : in STD_LOGIC;
    \FIFO_DATA_reg[4][8]\ : in STD_LOGIC;
    \FIFO_DATA_reg[3][8]\ : in STD_LOGIC;
    \FIFO_DATA_reg[2][8]\ : in STD_LOGIC;
    \FIFO_DATA_reg[1][8]\ : in STD_LOGIC;
    \FIFO_DATA_reg[0][8]\ : in STD_LOGIC;
    in_delay_reg_0 : in STD_LOGIC;
    in_delay_reg_1 : in STD_LOGIC;
    axi_awvalid : in STD_LOGIC;
    axi_wvalid : in STD_LOGIC;
    overflow_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    overflow : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0 : entity is "edge_detect";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0 is
  signal in_delay : STD_LOGIC;
  signal \^overflow13_out\ : STD_LOGIC;
  signal \overflow1__0\ : STD_LOGIC;
  signal \^wr\ : STD_LOGIC;
  signal write_request : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FIFO_DATA[0][0]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \FIFO_DATA[0][1]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \FIFO_DATA[0][2]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \FIFO_DATA[0][3]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \FIFO_DATA[0][4]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \FIFO_DATA[0][5]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \FIFO_DATA[0][6]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \FIFO_DATA[0][7]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \FIFO_DATA[0][8]_i_2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][4]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][5]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][6]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][8]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][5]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][8]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][8]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][8]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][8]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][8]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][0]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][1]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][2]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][3]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][4]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][5]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][6]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][7]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][8]_i_2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][1]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][2]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][3]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][4]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][5]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][6]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][7]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][8]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][1]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][2]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][3]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][4]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][5]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][6]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][7]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][8]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][0]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][1]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][2]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][3]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][4]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][5]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][6]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][7]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][8]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][0]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][1]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][2]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][3]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][4]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][5]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][6]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][7]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][8]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][2]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][4]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][5]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][6]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][7]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][8]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][3]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][4]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][5]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][6]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][7]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][8]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][4]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][5]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][6]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][7]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][8]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][4]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][5]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][6]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][7]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][8]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of in_delay_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of overflow_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wr_index[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wr_index[4]_i_4\ : label is "soft_lutpair1";
begin
  overflow13_out <= \^overflow13_out\;
  wr <= \^wr\;
\FIFO_DATA[0][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[0][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_13\(0)
    );
\FIFO_DATA[0][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[0][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_13\(1)
    );
\FIFO_DATA[0][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[0][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_13\(2)
    );
\FIFO_DATA[0][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[0][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_13\(3)
    );
\FIFO_DATA[0][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[0][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_13\(4)
    );
\FIFO_DATA[0][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[0][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_13\(5)
    );
\FIFO_DATA[0][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[0][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_13\(6)
    );
\FIFO_DATA[0][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[0][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_13\(7)
    );
\FIFO_DATA[0][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000FFFFFFFF"
    )
        port map (
      I0 => \wr_index_reg[0]_2\(1),
      I1 => \wr_index_reg[0]_2\(0),
      I2 => \wr_index_reg[0]_2\(2),
      I3 => \wr_index_reg[0]_2\(3),
      I4 => \^overflow13_out\,
      I5 => axi_aresetn,
      O => \wr_index_reg[1]_5\(0)
    );
\FIFO_DATA[0][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[0][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_13\(8)
    );
\FIFO_DATA[10][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[10][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_3\(0)
    );
\FIFO_DATA[10][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[10][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_3\(1)
    );
\FIFO_DATA[10][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[10][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_3\(2)
    );
\FIFO_DATA[10][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[10][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_3\(3)
    );
\FIFO_DATA[10][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[10][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_3\(4)
    );
\FIFO_DATA[10][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[10][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_3\(5)
    );
\FIFO_DATA[10][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[10][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_3\(6)
    );
\FIFO_DATA[10][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[10][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_3\(7)
    );
\FIFO_DATA[10][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10000000FFFFFFFF"
    )
        port map (
      I0 => \wr_index_reg[0]_2\(2),
      I1 => \wr_index_reg[0]_2\(0),
      I2 => \wr_index_reg[0]_2\(3),
      I3 => \wr_index_reg[0]_2\(1),
      I4 => \^overflow13_out\,
      I5 => axi_aresetn,
      O => \wr_index_reg[2]_0\(0)
    );
\FIFO_DATA[10][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[10][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_3\(8)
    );
\FIFO_DATA[11][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[11][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_2\(0)
    );
\FIFO_DATA[11][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[11][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_2\(1)
    );
\FIFO_DATA[11][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[11][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_2\(2)
    );
\FIFO_DATA[11][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[11][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_2\(3)
    );
\FIFO_DATA[11][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[11][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_2\(4)
    );
\FIFO_DATA[11][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[11][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_2\(5)
    );
\FIFO_DATA[11][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[11][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_2\(6)
    );
\FIFO_DATA[11][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[11][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_2\(7)
    );
\FIFO_DATA[11][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40000000FFFFFFFF"
    )
        port map (
      I0 => \wr_index_reg[0]_2\(2),
      I1 => \wr_index_reg[0]_2\(1),
      I2 => \wr_index_reg[0]_2\(0),
      I3 => \wr_index_reg[0]_2\(3),
      I4 => \^overflow13_out\,
      I5 => axi_aresetn,
      O => \wr_index_reg[2]\(0)
    );
\FIFO_DATA[11][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[11][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_2\(8)
    );
\FIFO_DATA[12][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[12][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_1\(0)
    );
\FIFO_DATA[12][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[12][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_1\(1)
    );
\FIFO_DATA[12][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[12][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_1\(2)
    );
\FIFO_DATA[12][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[12][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_1\(3)
    );
\FIFO_DATA[12][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[12][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_1\(4)
    );
\FIFO_DATA[12][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[12][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_1\(5)
    );
\FIFO_DATA[12][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[12][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_1\(6)
    );
\FIFO_DATA[12][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[12][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_1\(7)
    );
\FIFO_DATA[12][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10000000FFFFFFFF"
    )
        port map (
      I0 => \wr_index_reg[0]_2\(1),
      I1 => \wr_index_reg[0]_2\(0),
      I2 => \wr_index_reg[0]_2\(2),
      I3 => \wr_index_reg[0]_2\(3),
      I4 => \^overflow13_out\,
      I5 => axi_aresetn,
      O => \wr_index_reg[1]_0\(0)
    );
\FIFO_DATA[12][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[12][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_1\(8)
    );
\FIFO_DATA[13][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[13][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_0\(0)
    );
\FIFO_DATA[13][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[13][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_0\(1)
    );
\FIFO_DATA[13][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[13][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_0\(2)
    );
\FIFO_DATA[13][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[13][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_0\(3)
    );
\FIFO_DATA[13][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[13][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_0\(4)
    );
\FIFO_DATA[13][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[13][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_0\(5)
    );
\FIFO_DATA[13][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[13][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_0\(6)
    );
\FIFO_DATA[13][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[13][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_0\(7)
    );
\FIFO_DATA[13][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40000000FFFFFFFF"
    )
        port map (
      I0 => \wr_index_reg[0]_2\(1),
      I1 => \wr_index_reg[0]_2\(3),
      I2 => \wr_index_reg[0]_2\(0),
      I3 => \wr_index_reg[0]_2\(2),
      I4 => \^overflow13_out\,
      I5 => axi_aresetn,
      O => \wr_index_reg[1]\(0)
    );
\FIFO_DATA[13][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[13][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_0\(8)
    );
\FIFO_DATA[14][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[14][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]\(0)
    );
\FIFO_DATA[14][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[14][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]\(1)
    );
\FIFO_DATA[14][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[14][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]\(2)
    );
\FIFO_DATA[14][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[14][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]\(3)
    );
\FIFO_DATA[14][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[14][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]\(4)
    );
\FIFO_DATA[14][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[14][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]\(5)
    );
\FIFO_DATA[14][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[14][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]\(6)
    );
\FIFO_DATA[14][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[14][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]\(7)
    );
\FIFO_DATA[14][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40000000FFFFFFFF"
    )
        port map (
      I0 => \wr_index_reg[0]_2\(0),
      I1 => \wr_index_reg[0]_2\(1),
      I2 => \wr_index_reg[0]_2\(3),
      I3 => \wr_index_reg[0]_2\(2),
      I4 => \^overflow13_out\,
      I5 => axi_aresetn,
      O => \wr_index_reg[0]\(0)
    );
\FIFO_DATA[14][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[14][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]\(8)
    );
\FIFO_DATA[15][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[15][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => D(0)
    );
\FIFO_DATA[15][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[15][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => D(1)
    );
\FIFO_DATA[15][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[15][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => D(2)
    );
\FIFO_DATA[15][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[15][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => D(3)
    );
\FIFO_DATA[15][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[15][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => D(4)
    );
\FIFO_DATA[15][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[15][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => D(5)
    );
\FIFO_DATA[15][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[15][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => D(6)
    );
\FIFO_DATA[15][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[15][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => D(7)
    );
\FIFO_DATA[15][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000FFFFFFFF"
    )
        port map (
      I0 => \wr_index_reg[0]_2\(2),
      I1 => \wr_index_reg[0]_2\(3),
      I2 => \wr_index_reg[0]_2\(1),
      I3 => \wr_index_reg[0]_2\(0),
      I4 => \^overflow13_out\,
      I5 => axi_aresetn,
      O => E(0)
    );
\FIFO_DATA[15][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[15][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => D(8)
    );
\FIFO_DATA[1][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[1][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_12\(0)
    );
\FIFO_DATA[1][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[1][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_12\(1)
    );
\FIFO_DATA[1][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[1][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_12\(2)
    );
\FIFO_DATA[1][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[1][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_12\(3)
    );
\FIFO_DATA[1][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[1][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_12\(4)
    );
\FIFO_DATA[1][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[1][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_12\(5)
    );
\FIFO_DATA[1][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[1][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_12\(6)
    );
\FIFO_DATA[1][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[1][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_12\(7)
    );
\FIFO_DATA[1][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000000FFFFFFFF"
    )
        port map (
      I0 => \wr_index_reg[0]_2\(1),
      I1 => \wr_index_reg[0]_2\(3),
      I2 => \wr_index_reg[0]_2\(2),
      I3 => \wr_index_reg[0]_2\(0),
      I4 => \^overflow13_out\,
      I5 => axi_aresetn,
      O => \wr_index_reg[1]_4\(0)
    );
\FIFO_DATA[1][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[1][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_12\(8)
    );
\FIFO_DATA[2][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[2][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_11\(0)
    );
\FIFO_DATA[2][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[2][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_11\(1)
    );
\FIFO_DATA[2][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[2][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_11\(2)
    );
\FIFO_DATA[2][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[2][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_11\(3)
    );
\FIFO_DATA[2][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[2][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_11\(4)
    );
\FIFO_DATA[2][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[2][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_11\(5)
    );
\FIFO_DATA[2][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[2][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_11\(6)
    );
\FIFO_DATA[2][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[2][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_11\(7)
    );
\FIFO_DATA[2][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000000FFFFFFFF"
    )
        port map (
      I0 => \wr_index_reg[0]_2\(0),
      I1 => \wr_index_reg[0]_2\(3),
      I2 => \wr_index_reg[0]_2\(2),
      I3 => \wr_index_reg[0]_2\(1),
      I4 => \^overflow13_out\,
      I5 => axi_aresetn,
      O => \wr_index_reg[0]_1\(0)
    );
\FIFO_DATA[2][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[2][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_11\(8)
    );
\FIFO_DATA[3][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[3][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_10\(0)
    );
\FIFO_DATA[3][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[3][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_10\(1)
    );
\FIFO_DATA[3][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[3][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_10\(2)
    );
\FIFO_DATA[3][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[3][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_10\(3)
    );
\FIFO_DATA[3][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[3][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_10\(4)
    );
\FIFO_DATA[3][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[3][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_10\(5)
    );
\FIFO_DATA[3][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[3][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_10\(6)
    );
\FIFO_DATA[3][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[3][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_10\(7)
    );
\FIFO_DATA[3][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10000000FFFFFFFF"
    )
        port map (
      I0 => \wr_index_reg[0]_2\(2),
      I1 => \wr_index_reg[0]_2\(3),
      I2 => \wr_index_reg[0]_2\(1),
      I3 => \wr_index_reg[0]_2\(0),
      I4 => \^overflow13_out\,
      I5 => axi_aresetn,
      O => \wr_index_reg[2]_2\(0)
    );
\FIFO_DATA[3][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[3][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_10\(8)
    );
\FIFO_DATA[4][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[4][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_9\(0)
    );
\FIFO_DATA[4][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[4][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_9\(1)
    );
\FIFO_DATA[4][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[4][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_9\(2)
    );
\FIFO_DATA[4][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[4][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_9\(3)
    );
\FIFO_DATA[4][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[4][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_9\(4)
    );
\FIFO_DATA[4][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[4][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_9\(5)
    );
\FIFO_DATA[4][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[4][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_9\(6)
    );
\FIFO_DATA[4][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[4][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_9\(7)
    );
\FIFO_DATA[4][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000000FFFFFFFF"
    )
        port map (
      I0 => \wr_index_reg[0]_2\(1),
      I1 => \wr_index_reg[0]_2\(3),
      I2 => \wr_index_reg[0]_2\(0),
      I3 => \wr_index_reg[0]_2\(2),
      I4 => \^overflow13_out\,
      I5 => axi_aresetn,
      O => \wr_index_reg[1]_3\(0)
    );
\FIFO_DATA[4][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[4][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_9\(8)
    );
\FIFO_DATA[5][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[5][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_8\(0)
    );
\FIFO_DATA[5][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[5][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_8\(1)
    );
\FIFO_DATA[5][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[5][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_8\(2)
    );
\FIFO_DATA[5][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[5][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_8\(3)
    );
\FIFO_DATA[5][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[5][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_8\(4)
    );
\FIFO_DATA[5][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[5][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_8\(5)
    );
\FIFO_DATA[5][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[5][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_8\(6)
    );
\FIFO_DATA[5][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[5][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_8\(7)
    );
\FIFO_DATA[5][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10000000FFFFFFFF"
    )
        port map (
      I0 => \wr_index_reg[0]_2\(1),
      I1 => \wr_index_reg[0]_2\(3),
      I2 => \wr_index_reg[0]_2\(2),
      I3 => \wr_index_reg[0]_2\(0),
      I4 => \^overflow13_out\,
      I5 => axi_aresetn,
      O => \wr_index_reg[1]_2\(0)
    );
\FIFO_DATA[5][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[5][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_8\(8)
    );
\FIFO_DATA[6][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[6][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_7\(0)
    );
\FIFO_DATA[6][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[6][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_7\(1)
    );
\FIFO_DATA[6][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[6][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_7\(2)
    );
\FIFO_DATA[6][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[6][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_7\(3)
    );
\FIFO_DATA[6][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[6][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_7\(4)
    );
\FIFO_DATA[6][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[6][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_7\(5)
    );
\FIFO_DATA[6][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[6][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_7\(6)
    );
\FIFO_DATA[6][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[6][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_7\(7)
    );
\FIFO_DATA[6][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10000000FFFFFFFF"
    )
        port map (
      I0 => \wr_index_reg[0]_2\(0),
      I1 => \wr_index_reg[0]_2\(3),
      I2 => \wr_index_reg[0]_2\(2),
      I3 => \wr_index_reg[0]_2\(1),
      I4 => \^overflow13_out\,
      I5 => axi_aresetn,
      O => \wr_index_reg[0]_0\(0)
    );
\FIFO_DATA[6][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[6][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_7\(8)
    );
\FIFO_DATA[7][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[7][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_6\(0)
    );
\FIFO_DATA[7][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[7][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_6\(1)
    );
\FIFO_DATA[7][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[7][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_6\(2)
    );
\FIFO_DATA[7][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[7][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_6\(3)
    );
\FIFO_DATA[7][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[7][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_6\(4)
    );
\FIFO_DATA[7][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[7][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_6\(5)
    );
\FIFO_DATA[7][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[7][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_6\(6)
    );
\FIFO_DATA[7][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[7][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_6\(7)
    );
\FIFO_DATA[7][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40000000FFFFFFFF"
    )
        port map (
      I0 => \wr_index_reg[0]_2\(3),
      I1 => \wr_index_reg[0]_2\(1),
      I2 => \wr_index_reg[0]_2\(0),
      I3 => \wr_index_reg[0]_2\(2),
      I4 => \^overflow13_out\,
      I5 => axi_aresetn,
      O => \wr_index_reg[3]\(0)
    );
\FIFO_DATA[7][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[7][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_6\(8)
    );
\FIFO_DATA[8][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[8][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_5\(0)
    );
\FIFO_DATA[8][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[8][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_5\(1)
    );
\FIFO_DATA[8][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[8][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_5\(2)
    );
\FIFO_DATA[8][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[8][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_5\(3)
    );
\FIFO_DATA[8][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[8][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_5\(4)
    );
\FIFO_DATA[8][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[8][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_5\(5)
    );
\FIFO_DATA[8][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[8][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_5\(6)
    );
\FIFO_DATA[8][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[8][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_5\(7)
    );
\FIFO_DATA[8][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000000FFFFFFFF"
    )
        port map (
      I0 => \wr_index_reg[0]_2\(1),
      I1 => \wr_index_reg[0]_2\(0),
      I2 => \wr_index_reg[0]_2\(2),
      I3 => \wr_index_reg[0]_2\(3),
      I4 => \^overflow13_out\,
      I5 => axi_aresetn,
      O => \wr_index_reg[1]_1\(0)
    );
\FIFO_DATA[8][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[8][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_5\(8)
    );
\FIFO_DATA[9][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(0),
      I1 => \FIFO_DATA_reg[9][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_4\(0)
    );
\FIFO_DATA[9][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(1),
      I1 => \FIFO_DATA_reg[9][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_4\(1)
    );
\FIFO_DATA[9][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(2),
      I1 => \FIFO_DATA_reg[9][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_4\(2)
    );
\FIFO_DATA[9][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(3),
      I1 => \FIFO_DATA_reg[9][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_4\(3)
    );
\FIFO_DATA[9][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(4),
      I1 => \FIFO_DATA_reg[9][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_4\(4)
    );
\FIFO_DATA[9][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(5),
      I1 => \FIFO_DATA_reg[9][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_4\(5)
    );
\FIFO_DATA[9][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(6),
      I1 => \FIFO_DATA_reg[9][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_4\(6)
    );
\FIFO_DATA[9][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(7),
      I1 => \FIFO_DATA_reg[9][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_4\(7)
    );
\FIFO_DATA[9][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10000000FFFFFFFF"
    )
        port map (
      I0 => \wr_index_reg[0]_2\(2),
      I1 => \wr_index_reg[0]_2\(1),
      I2 => \wr_index_reg[0]_2\(3),
      I3 => \wr_index_reg[0]_2\(0),
      I4 => \^overflow13_out\,
      I5 => axi_aresetn,
      O => \wr_index_reg[2]_1\(0)
    );
\FIFO_DATA[9][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => officialData(8),
      I1 => \FIFO_DATA_reg[9][8]\,
      I2 => \^overflow13_out\,
      I3 => axi_aresetn,
      O => \officialData_reg[8]_4\(8)
    );
in_delay_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => axi_wvalid,
      I1 => axi_awvalid,
      I2 => in_delay_reg_1,
      I3 => in_delay_reg_0,
      O => \^wr\
    );
in_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \^wr\,
      Q => in_delay,
      R => '0'
    );
overflow_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44540050"
    )
        port map (
      I0 => overflow_reg(0),
      I1 => axi_aresetn,
      I2 => \overflow1__0\,
      I3 => \^overflow13_out\,
      I4 => overflow,
      O => \officialStatus_reg[29]\
    );
overflow_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2800002800000000"
    )
        port map (
      I0 => write_request,
      I1 => Q(1),
      I2 => \wr_index_reg[0]_2\(4),
      I3 => \wr_index_reg[0]_2\(3),
      I4 => Q(0),
      I5 => \wr_index_reg[0]_3\,
      O => \overflow1__0\
    );
\wr_index[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^overflow13_out\,
      I1 => axi_aresetn,
      O => SR(0)
    );
\wr_index[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82AAAA82AAAAAAAA"
    )
        port map (
      I0 => write_request,
      I1 => Q(1),
      I2 => \wr_index_reg[0]_2\(4),
      I3 => \wr_index_reg[0]_2\(3),
      I4 => Q(0),
      I5 => \wr_index_reg[0]_3\,
      O => \^overflow13_out\
    );
\wr_index[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => in_delay_reg_0,
      I1 => in_delay_reg_1,
      I2 => axi_awvalid,
      I3 => axi_wvalid,
      I4 => in_delay,
      O => write_request
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIFOTEST is
  port (
    wr : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    full : out STD_LOGIC;
    \rd_index_reg[4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    watermark : out STD_LOGIC_VECTOR ( 4 downto 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_aclk : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    in_delay_reg : in STD_LOGIC;
    in_delay_reg_0 : in STD_LOGIC;
    axi_arvalid : in STD_LOGIC;
    officialData : in STD_LOGIC_VECTOR ( 8 downto 0 );
    in_delay_reg_1 : in STD_LOGIC;
    in_delay_reg_2 : in STD_LOGIC;
    axi_awvalid : in STD_LOGIC;
    axi_wvalid : in STD_LOGIC;
    \axi_rdata_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    overflow_reg_0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    raddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_rdata_reg[8]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIFOTEST;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIFOTEST is
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
  signal \FIFO_DATA_reg[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[10]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[11]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[12]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[13]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[14]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[15]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[2]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[3]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[4]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[5]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[6]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[7]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[8]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \FIFO_DATA_reg[9]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \axi_rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \^empty\ : STD_LOGIC;
  signal empty_INST_0_i_1_n_0 : STD_LOGIC;
  signal \myFIFO_DATA__134\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^overflow\ : STD_LOGIC;
  signal overflow13_out : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal rd_edge_n_1 : STD_LOGIC;
  signal rd_index0 : STD_LOGIC;
  signal \rd_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \^rd_index_reg[4]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \watermark[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal wr_edge_n_1 : STD_LOGIC;
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
  signal wr_edge_n_163 : STD_LOGIC;
  signal wr_edge_n_17 : STD_LOGIC;
  signal wr_edge_n_18 : STD_LOGIC;
  signal wr_edge_n_19 : STD_LOGIC;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FIFO_DATA[0][8]_i_3\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \FIFO_DATA[10][8]_i_3\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \FIFO_DATA[11][8]_i_3\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \FIFO_DATA[12][8]_i_3\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \FIFO_DATA[13][8]_i_3\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \FIFO_DATA[14][8]_i_3\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \FIFO_DATA[15][8]_i_3\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \FIFO_DATA[1][8]_i_3\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \FIFO_DATA[2][8]_i_3\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \FIFO_DATA[3][8]_i_3\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \FIFO_DATA[4][8]_i_3\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \FIFO_DATA[5][8]_i_3\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \FIFO_DATA[6][8]_i_3\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \FIFO_DATA[7][8]_i_3\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \FIFO_DATA[8][8]_i_3\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \FIFO_DATA[9][8]_i_3\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of empty_INST_0 : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of full_INST_0 : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \rd_index[1]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \rd_index[2]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \rd_index[3]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \rd_index[4]_i_3\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \watermark[0]_INST_0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \watermark[1]_INST_0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \watermark[3]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \watermark[4]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \wr_index[1]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \wr_index[2]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \wr_index[3]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \wr_index[4]_i_3\ : label is "soft_lutpair77";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  empty <= \^empty\;
  overflow <= \^overflow\;
  \rd_index_reg[4]_0\(4 downto 0) <= \^rd_index_reg[4]_0\(4 downto 0);
\FIFO_DATA[0][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => \FIFO_DATA[0][8]_i_3_n_0\
    );
\FIFO_DATA[10][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(1),
      O => \FIFO_DATA[10][8]_i_3_n_0\
    );
\FIFO_DATA[11][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(1),
      O => \FIFO_DATA[11][8]_i_3_n_0\
    );
\FIFO_DATA[12][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => \FIFO_DATA[12][8]_i_3_n_0\
    );
\FIFO_DATA[13][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => \FIFO_DATA[13][8]_i_3_n_0\
    );
\FIFO_DATA[14][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => \FIFO_DATA[14][8]_i_3_n_0\
    );
\FIFO_DATA[15][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => \FIFO_DATA[15][8]_i_3_n_0\
    );
\FIFO_DATA[1][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => \FIFO_DATA[1][8]_i_3_n_0\
    );
\FIFO_DATA[2][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => \FIFO_DATA[2][8]_i_3_n_0\
    );
\FIFO_DATA[3][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => \FIFO_DATA[3][8]_i_3_n_0\
    );
\FIFO_DATA[4][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(1),
      O => \FIFO_DATA[4][8]_i_3_n_0\
    );
\FIFO_DATA[5][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(0),
      O => \FIFO_DATA[5][8]_i_3_n_0\
    );
\FIFO_DATA[6][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      O => \FIFO_DATA[6][8]_i_3_n_0\
    );
\FIFO_DATA[7][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      O => \FIFO_DATA[7][8]_i_3_n_0\
    );
\FIFO_DATA[8][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      O => \FIFO_DATA[8][8]_i_3_n_0\
    );
\FIFO_DATA[9][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(0),
      O => \FIFO_DATA[9][8]_i_3_n_0\
    );
\FIFO_DATA_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_153,
      D => wr_edge_n_162,
      Q => \FIFO_DATA_reg[0]\(0),
      R => '0'
    );
\FIFO_DATA_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_153,
      D => wr_edge_n_161,
      Q => \FIFO_DATA_reg[0]\(1),
      R => '0'
    );
\FIFO_DATA_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_153,
      D => wr_edge_n_160,
      Q => \FIFO_DATA_reg[0]\(2),
      R => '0'
    );
\FIFO_DATA_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_153,
      D => wr_edge_n_159,
      Q => \FIFO_DATA_reg[0]\(3),
      R => '0'
    );
\FIFO_DATA_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_153,
      D => wr_edge_n_158,
      Q => \FIFO_DATA_reg[0]\(4),
      R => '0'
    );
\FIFO_DATA_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_153,
      D => wr_edge_n_157,
      Q => \FIFO_DATA_reg[0]\(5),
      R => '0'
    );
\FIFO_DATA_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_153,
      D => wr_edge_n_156,
      Q => \FIFO_DATA_reg[0]\(6),
      R => '0'
    );
\FIFO_DATA_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_153,
      D => wr_edge_n_155,
      Q => \FIFO_DATA_reg[0]\(7),
      R => '0'
    );
\FIFO_DATA_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_153,
      D => wr_edge_n_154,
      Q => \FIFO_DATA_reg[0]\(8),
      R => '0'
    );
\FIFO_DATA_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_53,
      D => wr_edge_n_62,
      Q => \FIFO_DATA_reg[10]\(0),
      R => '0'
    );
\FIFO_DATA_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_53,
      D => wr_edge_n_61,
      Q => \FIFO_DATA_reg[10]\(1),
      R => '0'
    );
\FIFO_DATA_reg[10][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_53,
      D => wr_edge_n_60,
      Q => \FIFO_DATA_reg[10]\(2),
      R => '0'
    );
\FIFO_DATA_reg[10][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_53,
      D => wr_edge_n_59,
      Q => \FIFO_DATA_reg[10]\(3),
      R => '0'
    );
\FIFO_DATA_reg[10][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_53,
      D => wr_edge_n_58,
      Q => \FIFO_DATA_reg[10]\(4),
      R => '0'
    );
\FIFO_DATA_reg[10][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_53,
      D => wr_edge_n_57,
      Q => \FIFO_DATA_reg[10]\(5),
      R => '0'
    );
\FIFO_DATA_reg[10][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_53,
      D => wr_edge_n_56,
      Q => \FIFO_DATA_reg[10]\(6),
      R => '0'
    );
\FIFO_DATA_reg[10][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_53,
      D => wr_edge_n_55,
      Q => \FIFO_DATA_reg[10]\(7),
      R => '0'
    );
\FIFO_DATA_reg[10][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_53,
      D => wr_edge_n_54,
      Q => \FIFO_DATA_reg[10]\(8),
      R => '0'
    );
\FIFO_DATA_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_43,
      D => wr_edge_n_52,
      Q => \FIFO_DATA_reg[11]\(0),
      R => '0'
    );
\FIFO_DATA_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_43,
      D => wr_edge_n_51,
      Q => \FIFO_DATA_reg[11]\(1),
      R => '0'
    );
\FIFO_DATA_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_43,
      D => wr_edge_n_50,
      Q => \FIFO_DATA_reg[11]\(2),
      R => '0'
    );
\FIFO_DATA_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_43,
      D => wr_edge_n_49,
      Q => \FIFO_DATA_reg[11]\(3),
      R => '0'
    );
\FIFO_DATA_reg[11][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_43,
      D => wr_edge_n_48,
      Q => \FIFO_DATA_reg[11]\(4),
      R => '0'
    );
\FIFO_DATA_reg[11][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_43,
      D => wr_edge_n_47,
      Q => \FIFO_DATA_reg[11]\(5),
      R => '0'
    );
\FIFO_DATA_reg[11][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_43,
      D => wr_edge_n_46,
      Q => \FIFO_DATA_reg[11]\(6),
      R => '0'
    );
\FIFO_DATA_reg[11][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_43,
      D => wr_edge_n_45,
      Q => \FIFO_DATA_reg[11]\(7),
      R => '0'
    );
\FIFO_DATA_reg[11][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_43,
      D => wr_edge_n_44,
      Q => \FIFO_DATA_reg[11]\(8),
      R => '0'
    );
\FIFO_DATA_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_33,
      D => wr_edge_n_42,
      Q => \FIFO_DATA_reg[12]\(0),
      R => '0'
    );
\FIFO_DATA_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_33,
      D => wr_edge_n_41,
      Q => \FIFO_DATA_reg[12]\(1),
      R => '0'
    );
\FIFO_DATA_reg[12][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_33,
      D => wr_edge_n_40,
      Q => \FIFO_DATA_reg[12]\(2),
      R => '0'
    );
\FIFO_DATA_reg[12][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_33,
      D => wr_edge_n_39,
      Q => \FIFO_DATA_reg[12]\(3),
      R => '0'
    );
\FIFO_DATA_reg[12][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_33,
      D => wr_edge_n_38,
      Q => \FIFO_DATA_reg[12]\(4),
      R => '0'
    );
\FIFO_DATA_reg[12][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_33,
      D => wr_edge_n_37,
      Q => \FIFO_DATA_reg[12]\(5),
      R => '0'
    );
\FIFO_DATA_reg[12][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_33,
      D => wr_edge_n_36,
      Q => \FIFO_DATA_reg[12]\(6),
      R => '0'
    );
\FIFO_DATA_reg[12][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_33,
      D => wr_edge_n_35,
      Q => \FIFO_DATA_reg[12]\(7),
      R => '0'
    );
\FIFO_DATA_reg[12][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_33,
      D => wr_edge_n_34,
      Q => \FIFO_DATA_reg[12]\(8),
      R => '0'
    );
\FIFO_DATA_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_23,
      D => wr_edge_n_32,
      Q => \FIFO_DATA_reg[13]\(0),
      R => '0'
    );
\FIFO_DATA_reg[13][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_23,
      D => wr_edge_n_31,
      Q => \FIFO_DATA_reg[13]\(1),
      R => '0'
    );
\FIFO_DATA_reg[13][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_23,
      D => wr_edge_n_30,
      Q => \FIFO_DATA_reg[13]\(2),
      R => '0'
    );
\FIFO_DATA_reg[13][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_23,
      D => wr_edge_n_29,
      Q => \FIFO_DATA_reg[13]\(3),
      R => '0'
    );
\FIFO_DATA_reg[13][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_23,
      D => wr_edge_n_28,
      Q => \FIFO_DATA_reg[13]\(4),
      R => '0'
    );
\FIFO_DATA_reg[13][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_23,
      D => wr_edge_n_27,
      Q => \FIFO_DATA_reg[13]\(5),
      R => '0'
    );
\FIFO_DATA_reg[13][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_23,
      D => wr_edge_n_26,
      Q => \FIFO_DATA_reg[13]\(6),
      R => '0'
    );
\FIFO_DATA_reg[13][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_23,
      D => wr_edge_n_25,
      Q => \FIFO_DATA_reg[13]\(7),
      R => '0'
    );
\FIFO_DATA_reg[13][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_23,
      D => wr_edge_n_24,
      Q => \FIFO_DATA_reg[13]\(8),
      R => '0'
    );
\FIFO_DATA_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_22,
      Q => \FIFO_DATA_reg[14]\(0),
      R => '0'
    );
\FIFO_DATA_reg[14][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_21,
      Q => \FIFO_DATA_reg[14]\(1),
      R => '0'
    );
\FIFO_DATA_reg[14][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_20,
      Q => \FIFO_DATA_reg[14]\(2),
      R => '0'
    );
\FIFO_DATA_reg[14][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_19,
      Q => \FIFO_DATA_reg[14]\(3),
      R => '0'
    );
\FIFO_DATA_reg[14][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_18,
      Q => \FIFO_DATA_reg[14]\(4),
      R => '0'
    );
\FIFO_DATA_reg[14][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_17,
      Q => \FIFO_DATA_reg[14]\(5),
      R => '0'
    );
\FIFO_DATA_reg[14][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_16,
      Q => \FIFO_DATA_reg[14]\(6),
      R => '0'
    );
\FIFO_DATA_reg[14][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_15,
      Q => \FIFO_DATA_reg[14]\(7),
      R => '0'
    );
\FIFO_DATA_reg[14][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_13,
      D => wr_edge_n_14,
      Q => \FIFO_DATA_reg[14]\(8),
      R => '0'
    );
\FIFO_DATA_reg[15][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_0_in,
      D => p_1_in(0),
      Q => \FIFO_DATA_reg[15]\(0),
      R => '0'
    );
\FIFO_DATA_reg[15][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_0_in,
      D => p_1_in(1),
      Q => \FIFO_DATA_reg[15]\(1),
      R => '0'
    );
\FIFO_DATA_reg[15][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_0_in,
      D => p_1_in(2),
      Q => \FIFO_DATA_reg[15]\(2),
      R => '0'
    );
\FIFO_DATA_reg[15][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_0_in,
      D => p_1_in(3),
      Q => \FIFO_DATA_reg[15]\(3),
      R => '0'
    );
\FIFO_DATA_reg[15][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_0_in,
      D => p_1_in(4),
      Q => \FIFO_DATA_reg[15]\(4),
      R => '0'
    );
\FIFO_DATA_reg[15][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_0_in,
      D => p_1_in(5),
      Q => \FIFO_DATA_reg[15]\(5),
      R => '0'
    );
\FIFO_DATA_reg[15][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_0_in,
      D => p_1_in(6),
      Q => \FIFO_DATA_reg[15]\(6),
      R => '0'
    );
\FIFO_DATA_reg[15][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_0_in,
      D => p_1_in(7),
      Q => \FIFO_DATA_reg[15]\(7),
      R => '0'
    );
\FIFO_DATA_reg[15][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_0_in,
      D => p_1_in(8),
      Q => \FIFO_DATA_reg[15]\(8),
      R => '0'
    );
\FIFO_DATA_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_143,
      D => wr_edge_n_152,
      Q => \FIFO_DATA_reg[1]\(0),
      R => '0'
    );
\FIFO_DATA_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_143,
      D => wr_edge_n_151,
      Q => \FIFO_DATA_reg[1]\(1),
      R => '0'
    );
\FIFO_DATA_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_143,
      D => wr_edge_n_150,
      Q => \FIFO_DATA_reg[1]\(2),
      R => '0'
    );
\FIFO_DATA_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_143,
      D => wr_edge_n_149,
      Q => \FIFO_DATA_reg[1]\(3),
      R => '0'
    );
\FIFO_DATA_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_143,
      D => wr_edge_n_148,
      Q => \FIFO_DATA_reg[1]\(4),
      R => '0'
    );
\FIFO_DATA_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_143,
      D => wr_edge_n_147,
      Q => \FIFO_DATA_reg[1]\(5),
      R => '0'
    );
\FIFO_DATA_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_143,
      D => wr_edge_n_146,
      Q => \FIFO_DATA_reg[1]\(6),
      R => '0'
    );
\FIFO_DATA_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_143,
      D => wr_edge_n_145,
      Q => \FIFO_DATA_reg[1]\(7),
      R => '0'
    );
\FIFO_DATA_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_143,
      D => wr_edge_n_144,
      Q => \FIFO_DATA_reg[1]\(8),
      R => '0'
    );
\FIFO_DATA_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_133,
      D => wr_edge_n_142,
      Q => \FIFO_DATA_reg[2]\(0),
      R => '0'
    );
\FIFO_DATA_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_133,
      D => wr_edge_n_141,
      Q => \FIFO_DATA_reg[2]\(1),
      R => '0'
    );
\FIFO_DATA_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_133,
      D => wr_edge_n_140,
      Q => \FIFO_DATA_reg[2]\(2),
      R => '0'
    );
\FIFO_DATA_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_133,
      D => wr_edge_n_139,
      Q => \FIFO_DATA_reg[2]\(3),
      R => '0'
    );
\FIFO_DATA_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_133,
      D => wr_edge_n_138,
      Q => \FIFO_DATA_reg[2]\(4),
      R => '0'
    );
\FIFO_DATA_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_133,
      D => wr_edge_n_137,
      Q => \FIFO_DATA_reg[2]\(5),
      R => '0'
    );
\FIFO_DATA_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_133,
      D => wr_edge_n_136,
      Q => \FIFO_DATA_reg[2]\(6),
      R => '0'
    );
\FIFO_DATA_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_133,
      D => wr_edge_n_135,
      Q => \FIFO_DATA_reg[2]\(7),
      R => '0'
    );
\FIFO_DATA_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_133,
      D => wr_edge_n_134,
      Q => \FIFO_DATA_reg[2]\(8),
      R => '0'
    );
\FIFO_DATA_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_123,
      D => wr_edge_n_132,
      Q => \FIFO_DATA_reg[3]\(0),
      R => '0'
    );
\FIFO_DATA_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_123,
      D => wr_edge_n_131,
      Q => \FIFO_DATA_reg[3]\(1),
      R => '0'
    );
\FIFO_DATA_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_123,
      D => wr_edge_n_130,
      Q => \FIFO_DATA_reg[3]\(2),
      R => '0'
    );
\FIFO_DATA_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_123,
      D => wr_edge_n_129,
      Q => \FIFO_DATA_reg[3]\(3),
      R => '0'
    );
\FIFO_DATA_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_123,
      D => wr_edge_n_128,
      Q => \FIFO_DATA_reg[3]\(4),
      R => '0'
    );
\FIFO_DATA_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_123,
      D => wr_edge_n_127,
      Q => \FIFO_DATA_reg[3]\(5),
      R => '0'
    );
\FIFO_DATA_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_123,
      D => wr_edge_n_126,
      Q => \FIFO_DATA_reg[3]\(6),
      R => '0'
    );
\FIFO_DATA_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_123,
      D => wr_edge_n_125,
      Q => \FIFO_DATA_reg[3]\(7),
      R => '0'
    );
\FIFO_DATA_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_123,
      D => wr_edge_n_124,
      Q => \FIFO_DATA_reg[3]\(8),
      R => '0'
    );
\FIFO_DATA_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_113,
      D => wr_edge_n_122,
      Q => \FIFO_DATA_reg[4]\(0),
      R => '0'
    );
\FIFO_DATA_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_113,
      D => wr_edge_n_121,
      Q => \FIFO_DATA_reg[4]\(1),
      R => '0'
    );
\FIFO_DATA_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_113,
      D => wr_edge_n_120,
      Q => \FIFO_DATA_reg[4]\(2),
      R => '0'
    );
\FIFO_DATA_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_113,
      D => wr_edge_n_119,
      Q => \FIFO_DATA_reg[4]\(3),
      R => '0'
    );
\FIFO_DATA_reg[4][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_113,
      D => wr_edge_n_118,
      Q => \FIFO_DATA_reg[4]\(4),
      R => '0'
    );
\FIFO_DATA_reg[4][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_113,
      D => wr_edge_n_117,
      Q => \FIFO_DATA_reg[4]\(5),
      R => '0'
    );
\FIFO_DATA_reg[4][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_113,
      D => wr_edge_n_116,
      Q => \FIFO_DATA_reg[4]\(6),
      R => '0'
    );
\FIFO_DATA_reg[4][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_113,
      D => wr_edge_n_115,
      Q => \FIFO_DATA_reg[4]\(7),
      R => '0'
    );
\FIFO_DATA_reg[4][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_113,
      D => wr_edge_n_114,
      Q => \FIFO_DATA_reg[4]\(8),
      R => '0'
    );
\FIFO_DATA_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_103,
      D => wr_edge_n_112,
      Q => \FIFO_DATA_reg[5]\(0),
      R => '0'
    );
\FIFO_DATA_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_103,
      D => wr_edge_n_111,
      Q => \FIFO_DATA_reg[5]\(1),
      R => '0'
    );
\FIFO_DATA_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_103,
      D => wr_edge_n_110,
      Q => \FIFO_DATA_reg[5]\(2),
      R => '0'
    );
\FIFO_DATA_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_103,
      D => wr_edge_n_109,
      Q => \FIFO_DATA_reg[5]\(3),
      R => '0'
    );
\FIFO_DATA_reg[5][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_103,
      D => wr_edge_n_108,
      Q => \FIFO_DATA_reg[5]\(4),
      R => '0'
    );
\FIFO_DATA_reg[5][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_103,
      D => wr_edge_n_107,
      Q => \FIFO_DATA_reg[5]\(5),
      R => '0'
    );
\FIFO_DATA_reg[5][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_103,
      D => wr_edge_n_106,
      Q => \FIFO_DATA_reg[5]\(6),
      R => '0'
    );
\FIFO_DATA_reg[5][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_103,
      D => wr_edge_n_105,
      Q => \FIFO_DATA_reg[5]\(7),
      R => '0'
    );
\FIFO_DATA_reg[5][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_103,
      D => wr_edge_n_104,
      Q => \FIFO_DATA_reg[5]\(8),
      R => '0'
    );
\FIFO_DATA_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_93,
      D => wr_edge_n_102,
      Q => \FIFO_DATA_reg[6]\(0),
      R => '0'
    );
\FIFO_DATA_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_93,
      D => wr_edge_n_101,
      Q => \FIFO_DATA_reg[6]\(1),
      R => '0'
    );
\FIFO_DATA_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_93,
      D => wr_edge_n_100,
      Q => \FIFO_DATA_reg[6]\(2),
      R => '0'
    );
\FIFO_DATA_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_93,
      D => wr_edge_n_99,
      Q => \FIFO_DATA_reg[6]\(3),
      R => '0'
    );
\FIFO_DATA_reg[6][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_93,
      D => wr_edge_n_98,
      Q => \FIFO_DATA_reg[6]\(4),
      R => '0'
    );
\FIFO_DATA_reg[6][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_93,
      D => wr_edge_n_97,
      Q => \FIFO_DATA_reg[6]\(5),
      R => '0'
    );
\FIFO_DATA_reg[6][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_93,
      D => wr_edge_n_96,
      Q => \FIFO_DATA_reg[6]\(6),
      R => '0'
    );
\FIFO_DATA_reg[6][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_93,
      D => wr_edge_n_95,
      Q => \FIFO_DATA_reg[6]\(7),
      R => '0'
    );
\FIFO_DATA_reg[6][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_93,
      D => wr_edge_n_94,
      Q => \FIFO_DATA_reg[6]\(8),
      R => '0'
    );
\FIFO_DATA_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_83,
      D => wr_edge_n_92,
      Q => \FIFO_DATA_reg[7]\(0),
      R => '0'
    );
\FIFO_DATA_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_83,
      D => wr_edge_n_91,
      Q => \FIFO_DATA_reg[7]\(1),
      R => '0'
    );
\FIFO_DATA_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_83,
      D => wr_edge_n_90,
      Q => \FIFO_DATA_reg[7]\(2),
      R => '0'
    );
\FIFO_DATA_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_83,
      D => wr_edge_n_89,
      Q => \FIFO_DATA_reg[7]\(3),
      R => '0'
    );
\FIFO_DATA_reg[7][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_83,
      D => wr_edge_n_88,
      Q => \FIFO_DATA_reg[7]\(4),
      R => '0'
    );
\FIFO_DATA_reg[7][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_83,
      D => wr_edge_n_87,
      Q => \FIFO_DATA_reg[7]\(5),
      R => '0'
    );
\FIFO_DATA_reg[7][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_83,
      D => wr_edge_n_86,
      Q => \FIFO_DATA_reg[7]\(6),
      R => '0'
    );
\FIFO_DATA_reg[7][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_83,
      D => wr_edge_n_85,
      Q => \FIFO_DATA_reg[7]\(7),
      R => '0'
    );
\FIFO_DATA_reg[7][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_83,
      D => wr_edge_n_84,
      Q => \FIFO_DATA_reg[7]\(8),
      R => '0'
    );
\FIFO_DATA_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_73,
      D => wr_edge_n_82,
      Q => \FIFO_DATA_reg[8]\(0),
      R => '0'
    );
\FIFO_DATA_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_73,
      D => wr_edge_n_81,
      Q => \FIFO_DATA_reg[8]\(1),
      R => '0'
    );
\FIFO_DATA_reg[8][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_73,
      D => wr_edge_n_80,
      Q => \FIFO_DATA_reg[8]\(2),
      R => '0'
    );
\FIFO_DATA_reg[8][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_73,
      D => wr_edge_n_79,
      Q => \FIFO_DATA_reg[8]\(3),
      R => '0'
    );
\FIFO_DATA_reg[8][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_73,
      D => wr_edge_n_78,
      Q => \FIFO_DATA_reg[8]\(4),
      R => '0'
    );
\FIFO_DATA_reg[8][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_73,
      D => wr_edge_n_77,
      Q => \FIFO_DATA_reg[8]\(5),
      R => '0'
    );
\FIFO_DATA_reg[8][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_73,
      D => wr_edge_n_76,
      Q => \FIFO_DATA_reg[8]\(6),
      R => '0'
    );
\FIFO_DATA_reg[8][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_73,
      D => wr_edge_n_75,
      Q => \FIFO_DATA_reg[8]\(7),
      R => '0'
    );
\FIFO_DATA_reg[8][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_73,
      D => wr_edge_n_74,
      Q => \FIFO_DATA_reg[8]\(8),
      R => '0'
    );
\FIFO_DATA_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_63,
      D => wr_edge_n_72,
      Q => \FIFO_DATA_reg[9]\(0),
      R => '0'
    );
\FIFO_DATA_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_63,
      D => wr_edge_n_71,
      Q => \FIFO_DATA_reg[9]\(1),
      R => '0'
    );
\FIFO_DATA_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_63,
      D => wr_edge_n_70,
      Q => \FIFO_DATA_reg[9]\(2),
      R => '0'
    );
\FIFO_DATA_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_63,
      D => wr_edge_n_69,
      Q => \FIFO_DATA_reg[9]\(3),
      R => '0'
    );
\FIFO_DATA_reg[9][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_63,
      D => wr_edge_n_68,
      Q => \FIFO_DATA_reg[9]\(4),
      R => '0'
    );
\FIFO_DATA_reg[9][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_63,
      D => wr_edge_n_67,
      Q => \FIFO_DATA_reg[9]\(5),
      R => '0'
    );
\FIFO_DATA_reg[9][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_63,
      D => wr_edge_n_66,
      Q => \FIFO_DATA_reg[9]\(6),
      R => '0'
    );
\FIFO_DATA_reg[9][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_63,
      D => wr_edge_n_65,
      Q => \FIFO_DATA_reg[9]\(7),
      R => '0'
    );
\FIFO_DATA_reg[9][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_63,
      D => wr_edge_n_64,
      Q => \FIFO_DATA_reg[9]\(8),
      R => '0'
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[8]\(0),
      I1 => overflow_reg_0(0),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[8]_0\(0),
      I4 => raddr(1),
      I5 => \myFIFO_DATA__134\(0),
      O => D(0)
    );
\axi_rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[3]\(0),
      I1 => \FIFO_DATA_reg[2]\(0),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[1]\(0),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[0]\(0),
      O => \axi_rdata[0]_i_5_n_0\
    );
\axi_rdata[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[7]\(0),
      I1 => \FIFO_DATA_reg[6]\(0),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[5]\(0),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[4]\(0),
      O => \axi_rdata[0]_i_6_n_0\
    );
\axi_rdata[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[11]\(0),
      I1 => \FIFO_DATA_reg[10]\(0),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[9]\(0),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[8]\(0),
      O => \axi_rdata[0]_i_7_n_0\
    );
\axi_rdata[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[15]\(0),
      I1 => \FIFO_DATA_reg[14]\(0),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[13]\(0),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[12]\(0),
      O => \axi_rdata[0]_i_8_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[8]\(1),
      I1 => overflow_reg_0(1),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[8]_0\(1),
      I4 => raddr(1),
      I5 => \myFIFO_DATA__134\(1),
      O => D(1)
    );
\axi_rdata[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[3]\(1),
      I1 => \FIFO_DATA_reg[2]\(1),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[1]\(1),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[0]\(1),
      O => \axi_rdata[1]_i_5_n_0\
    );
\axi_rdata[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[7]\(1),
      I1 => \FIFO_DATA_reg[6]\(1),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[5]\(1),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[4]\(1),
      O => \axi_rdata[1]_i_6_n_0\
    );
\axi_rdata[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[11]\(1),
      I1 => \FIFO_DATA_reg[10]\(1),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[9]\(1),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[8]\(1),
      O => \axi_rdata[1]_i_7_n_0\
    );
\axi_rdata[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[15]\(1),
      I1 => \FIFO_DATA_reg[14]\(1),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[13]\(1),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[12]\(1),
      O => \axi_rdata[1]_i_8_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[8]\(2),
      I1 => overflow_reg_0(2),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[8]_0\(2),
      I4 => raddr(1),
      I5 => \myFIFO_DATA__134\(2),
      O => D(2)
    );
\axi_rdata[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[3]\(2),
      I1 => \FIFO_DATA_reg[2]\(2),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[1]\(2),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[0]\(2),
      O => \axi_rdata[2]_i_5_n_0\
    );
\axi_rdata[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[7]\(2),
      I1 => \FIFO_DATA_reg[6]\(2),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[5]\(2),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[4]\(2),
      O => \axi_rdata[2]_i_6_n_0\
    );
\axi_rdata[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[11]\(2),
      I1 => \FIFO_DATA_reg[10]\(2),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[9]\(2),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[8]\(2),
      O => \axi_rdata[2]_i_7_n_0\
    );
\axi_rdata[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[15]\(2),
      I1 => \FIFO_DATA_reg[14]\(2),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[13]\(2),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[12]\(2),
      O => \axi_rdata[2]_i_8_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[8]\(3),
      I1 => overflow_reg_0(3),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[8]_0\(3),
      I4 => raddr(1),
      I5 => \myFIFO_DATA__134\(3),
      O => D(3)
    );
\axi_rdata[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[3]\(3),
      I1 => \FIFO_DATA_reg[2]\(3),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[1]\(3),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[0]\(3),
      O => \axi_rdata[3]_i_5_n_0\
    );
\axi_rdata[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[7]\(3),
      I1 => \FIFO_DATA_reg[6]\(3),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[5]\(3),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[4]\(3),
      O => \axi_rdata[3]_i_6_n_0\
    );
\axi_rdata[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[11]\(3),
      I1 => \FIFO_DATA_reg[10]\(3),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[9]\(3),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[8]\(3),
      O => \axi_rdata[3]_i_7_n_0\
    );
\axi_rdata[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[15]\(3),
      I1 => \FIFO_DATA_reg[14]\(3),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[13]\(3),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[12]\(3),
      O => \axi_rdata[3]_i_8_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[8]\(4),
      I1 => overflow_reg_0(4),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[8]_0\(4),
      I4 => raddr(1),
      I5 => \myFIFO_DATA__134\(4),
      O => D(4)
    );
\axi_rdata[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[3]\(4),
      I1 => \FIFO_DATA_reg[2]\(4),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[1]\(4),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[0]\(4),
      O => \axi_rdata[4]_i_5_n_0\
    );
\axi_rdata[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[7]\(4),
      I1 => \FIFO_DATA_reg[6]\(4),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[5]\(4),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[4]\(4),
      O => \axi_rdata[4]_i_6_n_0\
    );
\axi_rdata[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[11]\(4),
      I1 => \FIFO_DATA_reg[10]\(4),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[9]\(4),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[8]\(4),
      O => \axi_rdata[4]_i_7_n_0\
    );
\axi_rdata[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[15]\(4),
      I1 => \FIFO_DATA_reg[14]\(4),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[13]\(4),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[12]\(4),
      O => \axi_rdata[4]_i_8_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[8]\(5),
      I1 => overflow_reg_0(5),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[8]_0\(5),
      I4 => raddr(1),
      I5 => \myFIFO_DATA__134\(5),
      O => D(5)
    );
\axi_rdata[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[3]\(5),
      I1 => \FIFO_DATA_reg[2]\(5),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[1]\(5),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[0]\(5),
      O => \axi_rdata[5]_i_5_n_0\
    );
\axi_rdata[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[7]\(5),
      I1 => \FIFO_DATA_reg[6]\(5),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[5]\(5),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[4]\(5),
      O => \axi_rdata[5]_i_6_n_0\
    );
\axi_rdata[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[11]\(5),
      I1 => \FIFO_DATA_reg[10]\(5),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[9]\(5),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[8]\(5),
      O => \axi_rdata[5]_i_7_n_0\
    );
\axi_rdata[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[15]\(5),
      I1 => \FIFO_DATA_reg[14]\(5),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[13]\(5),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[12]\(5),
      O => \axi_rdata[5]_i_8_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[8]\(6),
      I1 => overflow_reg_0(6),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[8]_0\(6),
      I4 => raddr(1),
      I5 => \myFIFO_DATA__134\(6),
      O => D(6)
    );
\axi_rdata[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[3]\(6),
      I1 => \FIFO_DATA_reg[2]\(6),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[1]\(6),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[0]\(6),
      O => \axi_rdata[6]_i_5_n_0\
    );
\axi_rdata[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[7]\(6),
      I1 => \FIFO_DATA_reg[6]\(6),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[5]\(6),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[4]\(6),
      O => \axi_rdata[6]_i_6_n_0\
    );
\axi_rdata[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[11]\(6),
      I1 => \FIFO_DATA_reg[10]\(6),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[9]\(6),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[8]\(6),
      O => \axi_rdata[6]_i_7_n_0\
    );
\axi_rdata[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[15]\(6),
      I1 => \FIFO_DATA_reg[14]\(6),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[13]\(6),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[12]\(6),
      O => \axi_rdata[6]_i_8_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[8]\(7),
      I1 => overflow_reg_0(7),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[8]_0\(7),
      I4 => raddr(1),
      I5 => \myFIFO_DATA__134\(7),
      O => D(7)
    );
\axi_rdata[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[3]\(7),
      I1 => \FIFO_DATA_reg[2]\(7),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[1]\(7),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[0]\(7),
      O => \axi_rdata[7]_i_5_n_0\
    );
\axi_rdata[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[7]\(7),
      I1 => \FIFO_DATA_reg[6]\(7),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[5]\(7),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[4]\(7),
      O => \axi_rdata[7]_i_6_n_0\
    );
\axi_rdata[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[11]\(7),
      I1 => \FIFO_DATA_reg[10]\(7),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[9]\(7),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[8]\(7),
      O => \axi_rdata[7]_i_7_n_0\
    );
\axi_rdata[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[15]\(7),
      I1 => \FIFO_DATA_reg[14]\(7),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[13]\(7),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[12]\(7),
      O => \axi_rdata[7]_i_8_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[8]\(8),
      I1 => overflow_reg_0(8),
      I2 => raddr(0),
      I3 => \axi_rdata_reg[8]_0\(8),
      I4 => raddr(1),
      I5 => \myFIFO_DATA__134\(8),
      O => D(8)
    );
\axi_rdata[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[3]\(8),
      I1 => \FIFO_DATA_reg[2]\(8),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[1]\(8),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[0]\(8),
      O => \axi_rdata[8]_i_5_n_0\
    );
\axi_rdata[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[7]\(8),
      I1 => \FIFO_DATA_reg[6]\(8),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[5]\(8),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[4]\(8),
      O => \axi_rdata[8]_i_6_n_0\
    );
\axi_rdata[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[11]\(8),
      I1 => \FIFO_DATA_reg[10]\(8),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[9]\(8),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[8]\(8),
      O => \axi_rdata[8]_i_7_n_0\
    );
\axi_rdata[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FIFO_DATA_reg[15]\(8),
      I1 => \FIFO_DATA_reg[14]\(8),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[13]\(8),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[12]\(8),
      O => \axi_rdata[8]_i_8_n_0\
    );
\axi_rdata_reg[0]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[0]_i_3_n_0\,
      I1 => \axi_rdata_reg[0]_i_4_n_0\,
      O => \myFIFO_DATA__134\(0),
      S => \^rd_index_reg[4]_0\(3)
    );
\axi_rdata_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_5_n_0\,
      I1 => \axi_rdata[0]_i_6_n_0\,
      O => \axi_rdata_reg[0]_i_3_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\axi_rdata_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_7_n_0\,
      I1 => \axi_rdata[0]_i_8_n_0\,
      O => \axi_rdata_reg[0]_i_4_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\axi_rdata_reg[1]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[1]_i_3_n_0\,
      I1 => \axi_rdata_reg[1]_i_4_n_0\,
      O => \myFIFO_DATA__134\(1),
      S => \^rd_index_reg[4]_0\(3)
    );
\axi_rdata_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_5_n_0\,
      I1 => \axi_rdata[1]_i_6_n_0\,
      O => \axi_rdata_reg[1]_i_3_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\axi_rdata_reg[1]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_7_n_0\,
      I1 => \axi_rdata[1]_i_8_n_0\,
      O => \axi_rdata_reg[1]_i_4_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\axi_rdata_reg[2]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[2]_i_3_n_0\,
      I1 => \axi_rdata_reg[2]_i_4_n_0\,
      O => \myFIFO_DATA__134\(2),
      S => \^rd_index_reg[4]_0\(3)
    );
\axi_rdata_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_5_n_0\,
      I1 => \axi_rdata[2]_i_6_n_0\,
      O => \axi_rdata_reg[2]_i_3_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\axi_rdata_reg[2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_7_n_0\,
      I1 => \axi_rdata[2]_i_8_n_0\,
      O => \axi_rdata_reg[2]_i_4_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\axi_rdata_reg[3]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[3]_i_3_n_0\,
      I1 => \axi_rdata_reg[3]_i_4_n_0\,
      O => \myFIFO_DATA__134\(3),
      S => \^rd_index_reg[4]_0\(3)
    );
\axi_rdata_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_5_n_0\,
      I1 => \axi_rdata[3]_i_6_n_0\,
      O => \axi_rdata_reg[3]_i_3_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\axi_rdata_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_7_n_0\,
      I1 => \axi_rdata[3]_i_8_n_0\,
      O => \axi_rdata_reg[3]_i_4_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\axi_rdata_reg[4]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[4]_i_3_n_0\,
      I1 => \axi_rdata_reg[4]_i_4_n_0\,
      O => \myFIFO_DATA__134\(4),
      S => \^rd_index_reg[4]_0\(3)
    );
\axi_rdata_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_5_n_0\,
      I1 => \axi_rdata[4]_i_6_n_0\,
      O => \axi_rdata_reg[4]_i_3_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\axi_rdata_reg[4]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_7_n_0\,
      I1 => \axi_rdata[4]_i_8_n_0\,
      O => \axi_rdata_reg[4]_i_4_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\axi_rdata_reg[5]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[5]_i_3_n_0\,
      I1 => \axi_rdata_reg[5]_i_4_n_0\,
      O => \myFIFO_DATA__134\(5),
      S => \^rd_index_reg[4]_0\(3)
    );
\axi_rdata_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_5_n_0\,
      I1 => \axi_rdata[5]_i_6_n_0\,
      O => \axi_rdata_reg[5]_i_3_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\axi_rdata_reg[5]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_7_n_0\,
      I1 => \axi_rdata[5]_i_8_n_0\,
      O => \axi_rdata_reg[5]_i_4_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\axi_rdata_reg[6]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[6]_i_3_n_0\,
      I1 => \axi_rdata_reg[6]_i_4_n_0\,
      O => \myFIFO_DATA__134\(6),
      S => \^rd_index_reg[4]_0\(3)
    );
\axi_rdata_reg[6]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_5_n_0\,
      I1 => \axi_rdata[6]_i_6_n_0\,
      O => \axi_rdata_reg[6]_i_3_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\axi_rdata_reg[6]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_7_n_0\,
      I1 => \axi_rdata[6]_i_8_n_0\,
      O => \axi_rdata_reg[6]_i_4_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\axi_rdata_reg[7]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[7]_i_3_n_0\,
      I1 => \axi_rdata_reg[7]_i_4_n_0\,
      O => \myFIFO_DATA__134\(7),
      S => \^rd_index_reg[4]_0\(3)
    );
\axi_rdata_reg[7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[7]_i_5_n_0\,
      I1 => \axi_rdata[7]_i_6_n_0\,
      O => \axi_rdata_reg[7]_i_3_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\axi_rdata_reg[7]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[7]_i_7_n_0\,
      I1 => \axi_rdata[7]_i_8_n_0\,
      O => \axi_rdata_reg[7]_i_4_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\axi_rdata_reg[8]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[8]_i_3_n_0\,
      I1 => \axi_rdata_reg[8]_i_4_n_0\,
      O => \myFIFO_DATA__134\(8),
      S => \^rd_index_reg[4]_0\(3)
    );
\axi_rdata_reg[8]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[8]_i_5_n_0\,
      I1 => \axi_rdata[8]_i_6_n_0\,
      O => \axi_rdata_reg[8]_i_3_n_0\,
      S => \^rd_index_reg[4]_0\(2)
    );
\axi_rdata_reg[8]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[8]_i_7_n_0\,
      I1 => \axi_rdata[8]_i_8_n_0\,
      O => \axi_rdata_reg[8]_i_4_n_0\,
      S => \^rd_index_reg[4]_0\(2)
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
overflow_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => wr_edge_n_163,
      Q => \^overflow\,
      R => '0'
    );
rd_edge: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect
     port map (
      E(0) => E(0),
      SR(0) => rd_edge_n_1,
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn,
      axi_arvalid => axi_arvalid,
      empty => \^empty\,
      in_delay_reg_0(0) => rd_index0,
      in_delay_reg_1 => in_delay_reg,
      in_delay_reg_2 => in_delay_reg_0
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
\rd_index[4]_i_3\: unisim.vcomponents.LUT5
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
      CE => rd_index0,
      D => \rd_index[0]_i_1_n_0\,
      Q => \^rd_index_reg[4]_0\(0),
      R => rd_edge_n_1
    );
\rd_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd_index0,
      D => \p_0_in__0\(1),
      Q => \^rd_index_reg[4]_0\(1),
      R => rd_edge_n_1
    );
\rd_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd_index0,
      D => \p_0_in__0\(2),
      Q => \^rd_index_reg[4]_0\(2),
      R => rd_edge_n_1
    );
\rd_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd_index0,
      D => \p_0_in__0\(3),
      Q => \^rd_index_reg[4]_0\(3),
      R => rd_edge_n_1
    );
\rd_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd_index0,
      D => \p_0_in__0\(4),
      Q => \^rd_index_reg[4]_0\(4),
      R => rd_edge_n_1
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
      D(8 downto 0) => p_1_in(8 downto 0),
      E(0) => p_0_in,
      \FIFO_DATA_reg[0][8]\ => \FIFO_DATA[0][8]_i_3_n_0\,
      \FIFO_DATA_reg[10][8]\ => \FIFO_DATA[10][8]_i_3_n_0\,
      \FIFO_DATA_reg[11][8]\ => \FIFO_DATA[11][8]_i_3_n_0\,
      \FIFO_DATA_reg[12][8]\ => \FIFO_DATA[12][8]_i_3_n_0\,
      \FIFO_DATA_reg[13][8]\ => \FIFO_DATA[13][8]_i_3_n_0\,
      \FIFO_DATA_reg[14][8]\ => \FIFO_DATA[14][8]_i_3_n_0\,
      \FIFO_DATA_reg[15][8]\ => \FIFO_DATA[15][8]_i_3_n_0\,
      \FIFO_DATA_reg[1][8]\ => \FIFO_DATA[1][8]_i_3_n_0\,
      \FIFO_DATA_reg[2][8]\ => \FIFO_DATA[2][8]_i_3_n_0\,
      \FIFO_DATA_reg[3][8]\ => \FIFO_DATA[3][8]_i_3_n_0\,
      \FIFO_DATA_reg[4][8]\ => \FIFO_DATA[4][8]_i_3_n_0\,
      \FIFO_DATA_reg[5][8]\ => \FIFO_DATA[5][8]_i_3_n_0\,
      \FIFO_DATA_reg[6][8]\ => \FIFO_DATA[6][8]_i_3_n_0\,
      \FIFO_DATA_reg[7][8]\ => \FIFO_DATA[7][8]_i_3_n_0\,
      \FIFO_DATA_reg[8][8]\ => \FIFO_DATA[8][8]_i_3_n_0\,
      \FIFO_DATA_reg[9][8]\ => \FIFO_DATA[9][8]_i_3_n_0\,
      Q(1 downto 0) => \^rd_index_reg[4]_0\(4 downto 3),
      SR(0) => wr_edge_n_1,
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn,
      axi_awvalid => axi_awvalid,
      axi_wvalid => axi_wvalid,
      in_delay_reg_0 => in_delay_reg_1,
      in_delay_reg_1 => in_delay_reg_2,
      officialData(8 downto 0) => officialData(8 downto 0),
      \officialData_reg[8]\(8) => wr_edge_n_14,
      \officialData_reg[8]\(7) => wr_edge_n_15,
      \officialData_reg[8]\(6) => wr_edge_n_16,
      \officialData_reg[8]\(5) => wr_edge_n_17,
      \officialData_reg[8]\(4) => wr_edge_n_18,
      \officialData_reg[8]\(3) => wr_edge_n_19,
      \officialData_reg[8]\(2) => wr_edge_n_20,
      \officialData_reg[8]\(1) => wr_edge_n_21,
      \officialData_reg[8]\(0) => wr_edge_n_22,
      \officialData_reg[8]_0\(8) => wr_edge_n_24,
      \officialData_reg[8]_0\(7) => wr_edge_n_25,
      \officialData_reg[8]_0\(6) => wr_edge_n_26,
      \officialData_reg[8]_0\(5) => wr_edge_n_27,
      \officialData_reg[8]_0\(4) => wr_edge_n_28,
      \officialData_reg[8]_0\(3) => wr_edge_n_29,
      \officialData_reg[8]_0\(2) => wr_edge_n_30,
      \officialData_reg[8]_0\(1) => wr_edge_n_31,
      \officialData_reg[8]_0\(0) => wr_edge_n_32,
      \officialData_reg[8]_1\(8) => wr_edge_n_34,
      \officialData_reg[8]_1\(7) => wr_edge_n_35,
      \officialData_reg[8]_1\(6) => wr_edge_n_36,
      \officialData_reg[8]_1\(5) => wr_edge_n_37,
      \officialData_reg[8]_1\(4) => wr_edge_n_38,
      \officialData_reg[8]_1\(3) => wr_edge_n_39,
      \officialData_reg[8]_1\(2) => wr_edge_n_40,
      \officialData_reg[8]_1\(1) => wr_edge_n_41,
      \officialData_reg[8]_1\(0) => wr_edge_n_42,
      \officialData_reg[8]_10\(8) => wr_edge_n_124,
      \officialData_reg[8]_10\(7) => wr_edge_n_125,
      \officialData_reg[8]_10\(6) => wr_edge_n_126,
      \officialData_reg[8]_10\(5) => wr_edge_n_127,
      \officialData_reg[8]_10\(4) => wr_edge_n_128,
      \officialData_reg[8]_10\(3) => wr_edge_n_129,
      \officialData_reg[8]_10\(2) => wr_edge_n_130,
      \officialData_reg[8]_10\(1) => wr_edge_n_131,
      \officialData_reg[8]_10\(0) => wr_edge_n_132,
      \officialData_reg[8]_11\(8) => wr_edge_n_134,
      \officialData_reg[8]_11\(7) => wr_edge_n_135,
      \officialData_reg[8]_11\(6) => wr_edge_n_136,
      \officialData_reg[8]_11\(5) => wr_edge_n_137,
      \officialData_reg[8]_11\(4) => wr_edge_n_138,
      \officialData_reg[8]_11\(3) => wr_edge_n_139,
      \officialData_reg[8]_11\(2) => wr_edge_n_140,
      \officialData_reg[8]_11\(1) => wr_edge_n_141,
      \officialData_reg[8]_11\(0) => wr_edge_n_142,
      \officialData_reg[8]_12\(8) => wr_edge_n_144,
      \officialData_reg[8]_12\(7) => wr_edge_n_145,
      \officialData_reg[8]_12\(6) => wr_edge_n_146,
      \officialData_reg[8]_12\(5) => wr_edge_n_147,
      \officialData_reg[8]_12\(4) => wr_edge_n_148,
      \officialData_reg[8]_12\(3) => wr_edge_n_149,
      \officialData_reg[8]_12\(2) => wr_edge_n_150,
      \officialData_reg[8]_12\(1) => wr_edge_n_151,
      \officialData_reg[8]_12\(0) => wr_edge_n_152,
      \officialData_reg[8]_13\(8) => wr_edge_n_154,
      \officialData_reg[8]_13\(7) => wr_edge_n_155,
      \officialData_reg[8]_13\(6) => wr_edge_n_156,
      \officialData_reg[8]_13\(5) => wr_edge_n_157,
      \officialData_reg[8]_13\(4) => wr_edge_n_158,
      \officialData_reg[8]_13\(3) => wr_edge_n_159,
      \officialData_reg[8]_13\(2) => wr_edge_n_160,
      \officialData_reg[8]_13\(1) => wr_edge_n_161,
      \officialData_reg[8]_13\(0) => wr_edge_n_162,
      \officialData_reg[8]_2\(8) => wr_edge_n_44,
      \officialData_reg[8]_2\(7) => wr_edge_n_45,
      \officialData_reg[8]_2\(6) => wr_edge_n_46,
      \officialData_reg[8]_2\(5) => wr_edge_n_47,
      \officialData_reg[8]_2\(4) => wr_edge_n_48,
      \officialData_reg[8]_2\(3) => wr_edge_n_49,
      \officialData_reg[8]_2\(2) => wr_edge_n_50,
      \officialData_reg[8]_2\(1) => wr_edge_n_51,
      \officialData_reg[8]_2\(0) => wr_edge_n_52,
      \officialData_reg[8]_3\(8) => wr_edge_n_54,
      \officialData_reg[8]_3\(7) => wr_edge_n_55,
      \officialData_reg[8]_3\(6) => wr_edge_n_56,
      \officialData_reg[8]_3\(5) => wr_edge_n_57,
      \officialData_reg[8]_3\(4) => wr_edge_n_58,
      \officialData_reg[8]_3\(3) => wr_edge_n_59,
      \officialData_reg[8]_3\(2) => wr_edge_n_60,
      \officialData_reg[8]_3\(1) => wr_edge_n_61,
      \officialData_reg[8]_3\(0) => wr_edge_n_62,
      \officialData_reg[8]_4\(8) => wr_edge_n_64,
      \officialData_reg[8]_4\(7) => wr_edge_n_65,
      \officialData_reg[8]_4\(6) => wr_edge_n_66,
      \officialData_reg[8]_4\(5) => wr_edge_n_67,
      \officialData_reg[8]_4\(4) => wr_edge_n_68,
      \officialData_reg[8]_4\(3) => wr_edge_n_69,
      \officialData_reg[8]_4\(2) => wr_edge_n_70,
      \officialData_reg[8]_4\(1) => wr_edge_n_71,
      \officialData_reg[8]_4\(0) => wr_edge_n_72,
      \officialData_reg[8]_5\(8) => wr_edge_n_74,
      \officialData_reg[8]_5\(7) => wr_edge_n_75,
      \officialData_reg[8]_5\(6) => wr_edge_n_76,
      \officialData_reg[8]_5\(5) => wr_edge_n_77,
      \officialData_reg[8]_5\(4) => wr_edge_n_78,
      \officialData_reg[8]_5\(3) => wr_edge_n_79,
      \officialData_reg[8]_5\(2) => wr_edge_n_80,
      \officialData_reg[8]_5\(1) => wr_edge_n_81,
      \officialData_reg[8]_5\(0) => wr_edge_n_82,
      \officialData_reg[8]_6\(8) => wr_edge_n_84,
      \officialData_reg[8]_6\(7) => wr_edge_n_85,
      \officialData_reg[8]_6\(6) => wr_edge_n_86,
      \officialData_reg[8]_6\(5) => wr_edge_n_87,
      \officialData_reg[8]_6\(4) => wr_edge_n_88,
      \officialData_reg[8]_6\(3) => wr_edge_n_89,
      \officialData_reg[8]_6\(2) => wr_edge_n_90,
      \officialData_reg[8]_6\(1) => wr_edge_n_91,
      \officialData_reg[8]_6\(0) => wr_edge_n_92,
      \officialData_reg[8]_7\(8) => wr_edge_n_94,
      \officialData_reg[8]_7\(7) => wr_edge_n_95,
      \officialData_reg[8]_7\(6) => wr_edge_n_96,
      \officialData_reg[8]_7\(5) => wr_edge_n_97,
      \officialData_reg[8]_7\(4) => wr_edge_n_98,
      \officialData_reg[8]_7\(3) => wr_edge_n_99,
      \officialData_reg[8]_7\(2) => wr_edge_n_100,
      \officialData_reg[8]_7\(1) => wr_edge_n_101,
      \officialData_reg[8]_7\(0) => wr_edge_n_102,
      \officialData_reg[8]_8\(8) => wr_edge_n_104,
      \officialData_reg[8]_8\(7) => wr_edge_n_105,
      \officialData_reg[8]_8\(6) => wr_edge_n_106,
      \officialData_reg[8]_8\(5) => wr_edge_n_107,
      \officialData_reg[8]_8\(4) => wr_edge_n_108,
      \officialData_reg[8]_8\(3) => wr_edge_n_109,
      \officialData_reg[8]_8\(2) => wr_edge_n_110,
      \officialData_reg[8]_8\(1) => wr_edge_n_111,
      \officialData_reg[8]_8\(0) => wr_edge_n_112,
      \officialData_reg[8]_9\(8) => wr_edge_n_114,
      \officialData_reg[8]_9\(7) => wr_edge_n_115,
      \officialData_reg[8]_9\(6) => wr_edge_n_116,
      \officialData_reg[8]_9\(5) => wr_edge_n_117,
      \officialData_reg[8]_9\(4) => wr_edge_n_118,
      \officialData_reg[8]_9\(3) => wr_edge_n_119,
      \officialData_reg[8]_9\(2) => wr_edge_n_120,
      \officialData_reg[8]_9\(1) => wr_edge_n_121,
      \officialData_reg[8]_9\(0) => wr_edge_n_122,
      \officialStatus_reg[29]\ => wr_edge_n_163,
      overflow => \^overflow\,
      overflow13_out => overflow13_out,
      overflow_reg(0) => overflow_reg_0(9),
      wr => wr,
      \wr_index_reg[0]\(0) => wr_edge_n_13,
      \wr_index_reg[0]_0\(0) => wr_edge_n_93,
      \wr_index_reg[0]_1\(0) => wr_edge_n_133,
      \wr_index_reg[0]_2\(4 downto 0) => \^q\(4 downto 0),
      \wr_index_reg[0]_3\ => empty_INST_0_i_1_n_0,
      \wr_index_reg[1]\(0) => wr_edge_n_23,
      \wr_index_reg[1]_0\(0) => wr_edge_n_33,
      \wr_index_reg[1]_1\(0) => wr_edge_n_73,
      \wr_index_reg[1]_2\(0) => wr_edge_n_103,
      \wr_index_reg[1]_3\(0) => wr_edge_n_113,
      \wr_index_reg[1]_4\(0) => wr_edge_n_143,
      \wr_index_reg[1]_5\(0) => wr_edge_n_153,
      \wr_index_reg[2]\(0) => wr_edge_n_43,
      \wr_index_reg[2]_0\(0) => wr_edge_n_53,
      \wr_index_reg[2]_1\(0) => wr_edge_n_63,
      \wr_index_reg[2]_2\(0) => wr_edge_n_123,
      \wr_index_reg[3]\(0) => wr_edge_n_83
    );
\wr_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \p_0_in__1\(0)
    );
\wr_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \p_0_in__1\(1)
    );
\wr_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \p_0_in__1\(2)
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
      O => \p_0_in__1\(3)
    );
\wr_index[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \p_0_in__1\(4)
    );
\wr_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => overflow13_out,
      D => \p_0_in__1\(0),
      Q => \^q\(0),
      R => wr_edge_n_1
    );
\wr_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => overflow13_out,
      D => \p_0_in__1\(1),
      Q => \^q\(1),
      R => wr_edge_n_1
    );
\wr_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => overflow13_out,
      D => \p_0_in__1\(2),
      Q => \^q\(2),
      R => wr_edge_n_1
    );
\wr_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => overflow13_out,
      D => \p_0_in__1\(3),
      Q => \^q\(3),
      R => wr_edge_n_1
    );
\wr_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => overflow13_out,
      D => \p_0_in__1\(4),
      Q => \^q\(4),
      R => wr_edge_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI is
  port (
    empty : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    wr_index : out STD_LOGIC_VECTOR ( 4 downto 0 );
    full : out STD_LOGIC;
    rd_index : out STD_LOGIC_VECTOR ( 4 downto 0 );
    watermark : out STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    overflow : out STD_LOGIC;
    axi_bvalid : out STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    axi_arvalid : in STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_awvalid : in STD_LOGIC;
    axi_wvalid : in STD_LOGIC;
    axi_bready : in STD_LOGIC;
    axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_bvalid\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
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
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal myFifo_n_20 : STD_LOGIC;
  signal myFifo_n_21 : STD_LOGIC;
  signal myFifo_n_22 : STD_LOGIC;
  signal myFifo_n_23 : STD_LOGIC;
  signal myFifo_n_24 : STD_LOGIC;
  signal myFifo_n_25 : STD_LOGIC;
  signal myFifo_n_26 : STD_LOGIC;
  signal myFifo_n_27 : STD_LOGIC;
  signal myFifo_n_28 : STD_LOGIC;
  signal officialBaudRate : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \officialBaudRate[15]_i_1_n_0\ : STD_LOGIC;
  signal \officialBaudRate[23]_i_1_n_0\ : STD_LOGIC;
  signal \officialBaudRate[31]_i_1_n_0\ : STD_LOGIC;
  signal \officialBaudRate[7]_i_1_n_0\ : STD_LOGIC;
  signal officialControl : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \officialControl[15]_i_1_n_0\ : STD_LOGIC;
  signal \officialControl[23]_i_1_n_0\ : STD_LOGIC;
  signal \officialControl[31]_i_1_n_0\ : STD_LOGIC;
  signal \officialControl[7]_i_1_n_0\ : STD_LOGIC;
  signal officialData : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \officialData[7]_i_1_n_0\ : STD_LOGIC;
  signal \officialData[8]_i_1_n_0\ : STD_LOGIC;
  signal officialStatus : STD_LOGIC_VECTOR ( 29 to 29 );
  signal \officialStatus[15]_i_1_n_0\ : STD_LOGIC;
  signal \officialStatus[23]_i_1_n_0\ : STD_LOGIC;
  signal \officialStatus[31]_i_1_n_0\ : STD_LOGIC;
  signal \officialStatus[7]_i_1_n_0\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[0]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[10]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[11]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[12]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[13]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[14]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[15]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[16]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[17]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[18]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[19]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[1]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[20]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[21]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[22]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[23]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[24]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[25]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[26]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[27]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[28]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[2]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[30]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[31]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[3]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[4]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[5]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[6]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[7]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[8]\ : STD_LOGIC;
  signal \officialStatus_reg_n_0_[9]\ : STD_LOGIC;
  signal raddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \raddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[3]_i_1_n_0\ : STD_LOGIC;
  signal rd : STD_LOGIC;
  signal wr : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \raddr[3]_i_1\ : label is "soft_lutpair90";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  axi_bvalid <= \^axi_bvalid\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF8AAA8AAA8AAA"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => \^s_axi_awready\,
      I2 => axi_awvalid,
      I3 => axi_wvalid,
      I4 => \^axi_bvalid\,
      I5 => axi_bready,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => axi_wvalid,
      I1 => axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008000FFFF8000"
    )
        port map (
      I0 => axi_wvalid,
      I1 => axi_awvalid,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => \^axi_bvalid\,
      I5 => axi_bready,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(10),
      I1 => \officialStatus_reg_n_0_[10]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(10),
      O => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(11),
      I1 => \officialStatus_reg_n_0_[11]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(11),
      O => \axi_rdata[11]_i_1_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(12),
      I1 => \officialStatus_reg_n_0_[12]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(12),
      O => \axi_rdata[12]_i_1_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(13),
      I1 => \officialStatus_reg_n_0_[13]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(13),
      O => \axi_rdata[13]_i_1_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(14),
      I1 => \officialStatus_reg_n_0_[14]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(14),
      O => \axi_rdata[14]_i_1_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(15),
      I1 => \officialStatus_reg_n_0_[15]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(15),
      O => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(16),
      I1 => \officialStatus_reg_n_0_[16]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(16),
      O => \axi_rdata[16]_i_1_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(17),
      I1 => \officialStatus_reg_n_0_[17]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(17),
      O => \axi_rdata[17]_i_1_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(18),
      I1 => \officialStatus_reg_n_0_[18]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(18),
      O => \axi_rdata[18]_i_1_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(19),
      I1 => \officialStatus_reg_n_0_[19]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(19),
      O => \axi_rdata[19]_i_1_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(20),
      I1 => \officialStatus_reg_n_0_[20]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(20),
      O => \axi_rdata[20]_i_1_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(21),
      I1 => \officialStatus_reg_n_0_[21]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(21),
      O => \axi_rdata[21]_i_1_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(22),
      I1 => \officialStatus_reg_n_0_[22]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(22),
      O => \axi_rdata[22]_i_1_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(23),
      I1 => \officialStatus_reg_n_0_[23]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(23),
      O => \axi_rdata[23]_i_1_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(24),
      I1 => \officialStatus_reg_n_0_[24]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(24),
      O => \axi_rdata[24]_i_1_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(25),
      I1 => \officialStatus_reg_n_0_[25]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(25),
      O => \axi_rdata[25]_i_1_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(26),
      I1 => \officialStatus_reg_n_0_[26]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(26),
      O => \axi_rdata[26]_i_1_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(27),
      I1 => \officialStatus_reg_n_0_[27]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(27),
      O => \axi_rdata[27]_i_1_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(28),
      I1 => \officialStatus_reg_n_0_[28]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(28),
      O => \axi_rdata[28]_i_1_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(29),
      I1 => officialStatus(29),
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(29),
      O => \axi_rdata[29]_i_1_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(30),
      I1 => \officialStatus_reg_n_0_[30]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(30),
      O => \axi_rdata[30]_i_1_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(31),
      I1 => \officialStatus_reg_n_0_[31]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(31),
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(9),
      I1 => \officialStatus_reg_n_0_[9]\,
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(9),
      O => \axi_rdata[9]_i_1_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => myFifo_n_28,
      Q => axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[10]_i_1_n_0\,
      Q => axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[11]_i_1_n_0\,
      Q => axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[12]_i_1_n_0\,
      Q => axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[13]_i_1_n_0\,
      Q => axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[14]_i_1_n_0\,
      Q => axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[15]_i_1_n_0\,
      Q => axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[16]_i_1_n_0\,
      Q => axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[17]_i_1_n_0\,
      Q => axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[18]_i_1_n_0\,
      Q => axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[19]_i_1_n_0\,
      Q => axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => myFifo_n_27,
      Q => axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[20]_i_1_n_0\,
      Q => axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[21]_i_1_n_0\,
      Q => axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[22]_i_1_n_0\,
      Q => axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[23]_i_1_n_0\,
      Q => axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[24]_i_1_n_0\,
      Q => axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[25]_i_1_n_0\,
      Q => axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[26]_i_1_n_0\,
      Q => axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[27]_i_1_n_0\,
      Q => axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[28]_i_1_n_0\,
      Q => axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[29]_i_1_n_0\,
      Q => axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => myFifo_n_26,
      Q => axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[30]_i_1_n_0\,
      Q => axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[31]_i_2_n_0\,
      Q => axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => myFifo_n_25,
      Q => axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => myFifo_n_24,
      Q => axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => myFifo_n_23,
      Q => axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => myFifo_n_22,
      Q => axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => myFifo_n_21,
      Q => axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => myFifo_n_20,
      Q => axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rd,
      D => \axi_rdata[9]_i_1_n_0\,
      Q => axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => axi_arvalid,
      I2 => axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => axi_wvalid,
      I1 => axi_awvalid,
      I2 => \^s_axi_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
myFifo: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIFOTEST
     port map (
      D(8) => myFifo_n_20,
      D(7) => myFifo_n_21,
      D(6) => myFifo_n_22,
      D(5) => myFifo_n_23,
      D(4) => myFifo_n_24,
      D(3) => myFifo_n_25,
      D(2) => myFifo_n_26,
      D(1) => myFifo_n_27,
      D(0) => myFifo_n_28,
      E(0) => rd,
      Q(4 downto 0) => wr_index(4 downto 0),
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn,
      axi_arvalid => axi_arvalid,
      axi_awvalid => axi_awvalid,
      \axi_rdata_reg[8]\(8 downto 0) => officialBaudRate(8 downto 0),
      \axi_rdata_reg[8]_0\(8 downto 0) => officialControl(8 downto 0),
      axi_wvalid => axi_wvalid,
      empty => empty,
      full => full,
      in_delay_reg => \^s_axi_arready\,
      in_delay_reg_0 => \^axi_rvalid_reg_0\,
      in_delay_reg_1 => \^s_axi_wready\,
      in_delay_reg_2 => \^s_axi_awready\,
      officialData(8 downto 0) => officialData(8 downto 0),
      overflow => overflow,
      overflow_reg_0(9) => officialStatus(29),
      overflow_reg_0(8) => \officialStatus_reg_n_0_[8]\,
      overflow_reg_0(7) => \officialStatus_reg_n_0_[7]\,
      overflow_reg_0(6) => \officialStatus_reg_n_0_[6]\,
      overflow_reg_0(5) => \officialStatus_reg_n_0_[5]\,
      overflow_reg_0(4) => \officialStatus_reg_n_0_[4]\,
      overflow_reg_0(3) => \officialStatus_reg_n_0_[3]\,
      overflow_reg_0(2) => \officialStatus_reg_n_0_[2]\,
      overflow_reg_0(1) => \officialStatus_reg_n_0_[1]\,
      overflow_reg_0(0) => \officialStatus_reg_n_0_[0]\,
      raddr(1 downto 0) => raddr(3 downto 2),
      \rd_index_reg[4]_0\(4 downto 0) => rd_index(4 downto 0),
      watermark(4 downto 0) => watermark(4 downto 0),
      wr => wr
    );
\officialBaudRate[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => wr,
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
      I0 => wr,
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
      I0 => wr,
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
      I0 => wr,
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
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(10),
      Q => officialBaudRate(10),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(11),
      Q => officialBaudRate(11),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(12),
      Q => officialBaudRate(12),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(13),
      Q => officialBaudRate(13),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(14),
      Q => officialBaudRate(14),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(15),
      Q => officialBaudRate(15),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(16),
      Q => officialBaudRate(16),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(17),
      Q => officialBaudRate(17),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(18),
      Q => officialBaudRate(18),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(19),
      Q => officialBaudRate(19),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(1),
      Q => officialBaudRate(1),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(20),
      Q => officialBaudRate(20),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(21),
      Q => officialBaudRate(21),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(22),
      Q => officialBaudRate(22),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(23),
      Q => officialBaudRate(23),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(24),
      Q => officialBaudRate(24),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(25),
      Q => officialBaudRate(25),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(26),
      Q => officialBaudRate(26),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(27),
      Q => officialBaudRate(27),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(28),
      Q => officialBaudRate(28),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(29),
      Q => officialBaudRate(29),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(2),
      Q => officialBaudRate(2),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(30),
      Q => officialBaudRate(30),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(31),
      Q => officialBaudRate(31),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(3),
      Q => officialBaudRate(3),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(4),
      Q => officialBaudRate(4),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(5),
      Q => officialBaudRate(5),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(6),
      Q => officialBaudRate(6),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(7),
      Q => officialBaudRate(7),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(8),
      Q => officialBaudRate(8),
      R => axi_awready_i_1_n_0
    );
\officialBaudRate_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(9),
      Q => officialBaudRate(9),
      R => axi_awready_i_1_n_0
    );
\officialControl[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => wr,
      I1 => axi_awaddr(1),
      I2 => axi_wstrb(1),
      I3 => axi_awaddr(0),
      O => \officialControl[15]_i_1_n_0\
    );
\officialControl[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => wr,
      I1 => axi_awaddr(1),
      I2 => axi_wstrb(2),
      I3 => axi_awaddr(0),
      O => \officialControl[23]_i_1_n_0\
    );
\officialControl[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => wr,
      I1 => axi_awaddr(1),
      I2 => axi_wstrb(3),
      I3 => axi_awaddr(0),
      O => \officialControl[31]_i_1_n_0\
    );
\officialControl[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => wr,
      I1 => axi_awaddr(1),
      I2 => axi_wstrb(0),
      I3 => axi_awaddr(0),
      O => \officialControl[7]_i_1_n_0\
    );
\officialControl_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[7]_i_1_n_0\,
      D => axi_wdata(0),
      Q => officialControl(0),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[15]_i_1_n_0\,
      D => axi_wdata(10),
      Q => officialControl(10),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[15]_i_1_n_0\,
      D => axi_wdata(11),
      Q => officialControl(11),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[15]_i_1_n_0\,
      D => axi_wdata(12),
      Q => officialControl(12),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[15]_i_1_n_0\,
      D => axi_wdata(13),
      Q => officialControl(13),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[15]_i_1_n_0\,
      D => axi_wdata(14),
      Q => officialControl(14),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[15]_i_1_n_0\,
      D => axi_wdata(15),
      Q => officialControl(15),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[23]_i_1_n_0\,
      D => axi_wdata(16),
      Q => officialControl(16),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[23]_i_1_n_0\,
      D => axi_wdata(17),
      Q => officialControl(17),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[23]_i_1_n_0\,
      D => axi_wdata(18),
      Q => officialControl(18),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[23]_i_1_n_0\,
      D => axi_wdata(19),
      Q => officialControl(19),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[7]_i_1_n_0\,
      D => axi_wdata(1),
      Q => officialControl(1),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[23]_i_1_n_0\,
      D => axi_wdata(20),
      Q => officialControl(20),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[23]_i_1_n_0\,
      D => axi_wdata(21),
      Q => officialControl(21),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[23]_i_1_n_0\,
      D => axi_wdata(22),
      Q => officialControl(22),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[23]_i_1_n_0\,
      D => axi_wdata(23),
      Q => officialControl(23),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[31]_i_1_n_0\,
      D => axi_wdata(24),
      Q => officialControl(24),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[31]_i_1_n_0\,
      D => axi_wdata(25),
      Q => officialControl(25),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[31]_i_1_n_0\,
      D => axi_wdata(26),
      Q => officialControl(26),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[31]_i_1_n_0\,
      D => axi_wdata(27),
      Q => officialControl(27),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[31]_i_1_n_0\,
      D => axi_wdata(28),
      Q => officialControl(28),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[31]_i_1_n_0\,
      D => axi_wdata(29),
      Q => officialControl(29),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[7]_i_1_n_0\,
      D => axi_wdata(2),
      Q => officialControl(2),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[31]_i_1_n_0\,
      D => axi_wdata(30),
      Q => officialControl(30),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[31]_i_1_n_0\,
      D => axi_wdata(31),
      Q => officialControl(31),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[7]_i_1_n_0\,
      D => axi_wdata(3),
      Q => officialControl(3),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[7]_i_1_n_0\,
      D => axi_wdata(4),
      Q => officialControl(4),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[7]_i_1_n_0\,
      D => axi_wdata(5),
      Q => officialControl(5),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[7]_i_1_n_0\,
      D => axi_wdata(6),
      Q => officialControl(6),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[7]_i_1_n_0\,
      D => axi_wdata(7),
      Q => officialControl(7),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[15]_i_1_n_0\,
      D => axi_wdata(8),
      Q => officialControl(8),
      R => axi_awready_i_1_n_0
    );
\officialControl_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[15]_i_1_n_0\,
      D => axi_wdata(9),
      Q => officialControl(9),
      R => axi_awready_i_1_n_0
    );
\officialData[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => wr,
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
      I1 => wr,
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
      R => axi_awready_i_1_n_0
    );
\officialData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(1),
      Q => officialData(1),
      R => axi_awready_i_1_n_0
    );
\officialData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(2),
      Q => officialData(2),
      R => axi_awready_i_1_n_0
    );
\officialData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(3),
      Q => officialData(3),
      R => axi_awready_i_1_n_0
    );
\officialData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(4),
      Q => officialData(4),
      R => axi_awready_i_1_n_0
    );
\officialData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(5),
      Q => officialData(5),
      R => axi_awready_i_1_n_0
    );
\officialData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(6),
      Q => officialData(6),
      R => axi_awready_i_1_n_0
    );
\officialData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(7),
      Q => officialData(7),
      R => axi_awready_i_1_n_0
    );
\officialData_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \officialData[8]_i_1_n_0\,
      Q => officialData(8),
      R => axi_awready_i_1_n_0
    );
\officialStatus[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => wr,
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
      I0 => wr,
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
      I0 => wr,
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
      I0 => wr,
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
      Q => \officialStatus_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(10),
      Q => \officialStatus_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(11),
      Q => \officialStatus_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(12),
      Q => \officialStatus_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(13),
      Q => \officialStatus_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(14),
      Q => \officialStatus_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(15),
      Q => \officialStatus_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(16),
      Q => \officialStatus_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(17),
      Q => \officialStatus_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(18),
      Q => \officialStatus_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(19),
      Q => \officialStatus_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(1),
      Q => \officialStatus_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(20),
      Q => \officialStatus_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(21),
      Q => \officialStatus_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(22),
      Q => \officialStatus_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(23),
      Q => \officialStatus_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(24),
      Q => \officialStatus_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(25),
      Q => \officialStatus_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(26),
      Q => \officialStatus_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(27),
      Q => \officialStatus_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(28),
      Q => \officialStatus_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(29),
      Q => officialStatus(29),
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(2),
      Q => \officialStatus_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(30),
      Q => \officialStatus_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(31),
      Q => \officialStatus_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(3),
      Q => \officialStatus_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(4),
      Q => \officialStatus_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(5),
      Q => \officialStatus_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(6),
      Q => \officialStatus_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(7),
      Q => \officialStatus_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(8),
      Q => \officialStatus_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\officialStatus_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(9),
      Q => \officialStatus_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\raddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => axi_araddr(0),
      I1 => axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => raddr(2),
      O => \raddr[2]_i_1_n_0\
    );
\raddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => axi_araddr(1),
      I1 => axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => raddr(3),
      O => \raddr[3]_i_1_n_0\
    );
\raddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \raddr[2]_i_1_n_0\,
      Q => raddr(2),
      R => axi_awready_i_1_n_0
    );
\raddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \raddr[3]_i_1_n_0\,
      Q => raddr(3),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial is
  port (
    empty : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    wr_index : out STD_LOGIC_VECTOR ( 4 downto 0 );
    full : out STD_LOGIC;
    rd_index : out STD_LOGIC_VECTOR ( 4 downto 0 );
    watermark : out STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    overflow : out STD_LOGIC;
    axi_bvalid : out STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    axi_arvalid : in STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_awvalid : in STD_LOGIC;
    axi_wvalid : in STD_LOGIC;
    axi_bready : in STD_LOGIC;
    axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial is
begin
serial_v1_0_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      axi_aclk => axi_aclk,
      axi_araddr(1 downto 0) => axi_araddr(1 downto 0),
      axi_aresetn => axi_aresetn,
      axi_arvalid => axi_arvalid,
      axi_awaddr(1 downto 0) => axi_awaddr(1 downto 0),
      axi_awvalid => axi_awvalid,
      axi_bready => axi_bready,
      axi_bvalid => axi_bvalid,
      axi_rdata(31 downto 0) => axi_rdata(31 downto 0),
      axi_rready => axi_rready,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      axi_wdata(31 downto 0) => axi_wdata(31 downto 0),
      axi_wstrb(3 downto 0) => axi_wstrb(3 downto 0),
      axi_wvalid => axi_wvalid,
      empty => empty,
      full => full,
      overflow => overflow,
      rd_index(4 downto 0) => rd_index(4 downto 0),
      watermark(4 downto 0) => watermark(4 downto 0),
      wr_index(4 downto 0) => wr_index(4 downto 0)
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
    overflow : out STD_LOGIC;
    wr_index : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_index : out STD_LOGIC_VECTOR ( 4 downto 0 );
    watermark : out STD_LOGIC_VECTOR ( 4 downto 0 );
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
  baudClockOut <= \<const0>\;
  rd_data(8) <= \<const0>\;
  rd_data(7) <= \<const0>\;
  rd_data(6) <= \<const0>\;
  rd_data(5) <= \<const0>\;
  rd_data(4) <= \<const0>\;
  rd_data(3) <= \<const0>\;
  rd_data(2) <= \<const0>\;
  rd_data(1) <= \<const0>\;
  rd_data(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial
     port map (
      S_AXI_ARREADY => axi_arready,
      S_AXI_AWREADY => axi_awready,
      S_AXI_WREADY => axi_wready,
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
      empty => empty,
      full => full,
      overflow => overflow,
      rd_index(4 downto 0) => rd_index(4 downto 0),
      watermark(4 downto 0) => watermark(4 downto 0),
      wr_index(4 downto 0) => wr_index(4 downto 0)
    );
end STRUCTURE;
