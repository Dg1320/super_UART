-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (lin64) Build 5164865 Thu Sep  5 14:36:28 MDT 2024
-- Date        : Wed Nov 13 21:12:03 2024
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
    read_request : out STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    p_0_in_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_arvalid : in STD_LOGIC;
    in_delay_reg_0 : in STD_LOGIC;
    in_delay_reg_1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect is
  signal fifoRead : STD_LOGIC;
  signal in_delay : STD_LOGIC;
  signal \outReg_i_1__0_n_0\ : STD_LOGIC;
begin
\in_delay_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => in_delay_reg_1,
      I1 => in_delay_reg_0,
      I2 => axi_arvalid,
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
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
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(0),
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0 is
  port (
    write_request : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    outReg_reg_0 : out STD_LOGIC;
    outReg_reg_1 : out STD_LOGIC;
    outReg_reg_2 : out STD_LOGIC;
    outReg_reg_3 : out STD_LOGIC;
    outReg_reg_4 : out STD_LOGIC;
    outReg_reg_5 : out STD_LOGIC;
    outReg_reg_6 : out STD_LOGIC;
    outReg_reg_7 : out STD_LOGIC;
    outReg_reg_8 : out STD_LOGIC;
    outReg_reg_9 : out STD_LOGIC;
    outReg_reg_10 : out STD_LOGIC;
    outReg_reg_11 : out STD_LOGIC;
    outReg_reg_12 : out STD_LOGIC;
    outReg_reg_13 : out STD_LOGIC;
    outReg_reg_14 : out STD_LOGIC;
    outReg_reg_15 : out STD_LOGIC;
    outReg_reg_16 : out STD_LOGIC;
    outReg_reg_17 : out STD_LOGIC;
    outReg_reg_18 : out STD_LOGIC;
    outReg_reg_19 : out STD_LOGIC;
    outReg_reg_20 : out STD_LOGIC;
    outReg_reg_21 : out STD_LOGIC;
    outReg_reg_22 : out STD_LOGIC;
    outReg_reg_23 : out STD_LOGIC;
    outReg_reg_24 : out STD_LOGIC;
    outReg_reg_25 : out STD_LOGIC;
    outReg_reg_26 : out STD_LOGIC;
    outReg_reg_27 : out STD_LOGIC;
    outReg_reg_28 : out STD_LOGIC;
    outReg_reg_29 : out STD_LOGIC;
    outReg_reg_30 : out STD_LOGIC;
    outReg_reg_31 : out STD_LOGIC;
    outReg_reg_32 : out STD_LOGIC;
    outReg_reg_33 : out STD_LOGIC;
    outReg_reg_34 : out STD_LOGIC;
    outReg_reg_35 : out STD_LOGIC;
    outReg_reg_36 : out STD_LOGIC;
    outReg_reg_37 : out STD_LOGIC;
    outReg_reg_38 : out STD_LOGIC;
    outReg_reg_39 : out STD_LOGIC;
    outReg_reg_40 : out STD_LOGIC;
    outReg_reg_41 : out STD_LOGIC;
    outReg_reg_42 : out STD_LOGIC;
    outReg_reg_43 : out STD_LOGIC;
    outReg_reg_44 : out STD_LOGIC;
    outReg_reg_45 : out STD_LOGIC;
    outReg_reg_46 : out STD_LOGIC;
    outReg_reg_47 : out STD_LOGIC;
    outReg_reg_48 : out STD_LOGIC;
    outReg_reg_49 : out STD_LOGIC;
    outReg_reg_50 : out STD_LOGIC;
    outReg_reg_51 : out STD_LOGIC;
    outReg_reg_52 : out STD_LOGIC;
    outReg_reg_53 : out STD_LOGIC;
    outReg_reg_54 : out STD_LOGIC;
    outReg_reg_55 : out STD_LOGIC;
    outReg_reg_56 : out STD_LOGIC;
    outReg_reg_57 : out STD_LOGIC;
    outReg_reg_58 : out STD_LOGIC;
    outReg_reg_59 : out STD_LOGIC;
    outReg_reg_60 : out STD_LOGIC;
    outReg_reg_61 : out STD_LOGIC;
    outReg_reg_62 : out STD_LOGIC;
    outReg_reg_63 : out STD_LOGIC;
    outReg_reg_64 : out STD_LOGIC;
    outReg_reg_65 : out STD_LOGIC;
    outReg_reg_66 : out STD_LOGIC;
    outReg_reg_67 : out STD_LOGIC;
    outReg_reg_68 : out STD_LOGIC;
    outReg_reg_69 : out STD_LOGIC;
    outReg_reg_70 : out STD_LOGIC;
    outReg_reg_71 : out STD_LOGIC;
    outReg_reg_72 : out STD_LOGIC;
    outReg_reg_73 : out STD_LOGIC;
    outReg_reg_74 : out STD_LOGIC;
    outReg_reg_75 : out STD_LOGIC;
    outReg_reg_76 : out STD_LOGIC;
    outReg_reg_77 : out STD_LOGIC;
    outReg_reg_78 : out STD_LOGIC;
    outReg_reg_79 : out STD_LOGIC;
    outReg_reg_80 : out STD_LOGIC;
    outReg_reg_81 : out STD_LOGIC;
    outReg_reg_82 : out STD_LOGIC;
    outReg_reg_83 : out STD_LOGIC;
    outReg_reg_84 : out STD_LOGIC;
    outReg_reg_85 : out STD_LOGIC;
    outReg_reg_86 : out STD_LOGIC;
    outReg_reg_87 : out STD_LOGIC;
    outReg_reg_88 : out STD_LOGIC;
    outReg_reg_89 : out STD_LOGIC;
    outReg_reg_90 : out STD_LOGIC;
    outReg_reg_91 : out STD_LOGIC;
    outReg_reg_92 : out STD_LOGIC;
    outReg_reg_93 : out STD_LOGIC;
    outReg_reg_94 : out STD_LOGIC;
    outReg_reg_95 : out STD_LOGIC;
    outReg_reg_96 : out STD_LOGIC;
    outReg_reg_97 : out STD_LOGIC;
    outReg_reg_98 : out STD_LOGIC;
    outReg_reg_99 : out STD_LOGIC;
    outReg_reg_100 : out STD_LOGIC;
    outReg_reg_101 : out STD_LOGIC;
    outReg_reg_102 : out STD_LOGIC;
    outReg_reg_103 : out STD_LOGIC;
    outReg_reg_104 : out STD_LOGIC;
    outReg_reg_105 : out STD_LOGIC;
    outReg_reg_106 : out STD_LOGIC;
    outReg_reg_107 : out STD_LOGIC;
    outReg_reg_108 : out STD_LOGIC;
    outReg_reg_109 : out STD_LOGIC;
    outReg_reg_110 : out STD_LOGIC;
    outReg_reg_111 : out STD_LOGIC;
    outReg_reg_112 : out STD_LOGIC;
    outReg_reg_113 : out STD_LOGIC;
    outReg_reg_114 : out STD_LOGIC;
    outReg_reg_115 : out STD_LOGIC;
    outReg_reg_116 : out STD_LOGIC;
    outReg_reg_117 : out STD_LOGIC;
    outReg_reg_118 : out STD_LOGIC;
    outReg_reg_119 : out STD_LOGIC;
    outReg_reg_120 : out STD_LOGIC;
    outReg_reg_121 : out STD_LOGIC;
    outReg_reg_122 : out STD_LOGIC;
    outReg_reg_123 : out STD_LOGIC;
    outReg_reg_124 : out STD_LOGIC;
    outReg_reg_125 : out STD_LOGIC;
    outReg_reg_126 : out STD_LOGIC;
    outReg_reg_127 : out STD_LOGIC;
    outReg_reg_128 : out STD_LOGIC;
    outReg_reg_129 : out STD_LOGIC;
    outReg_reg_130 : out STD_LOGIC;
    outReg_reg_131 : out STD_LOGIC;
    outReg_reg_132 : out STD_LOGIC;
    outReg_reg_133 : out STD_LOGIC;
    outReg_reg_134 : out STD_LOGIC;
    outReg_reg_135 : out STD_LOGIC;
    outReg_reg_136 : out STD_LOGIC;
    outReg_reg_137 : out STD_LOGIC;
    outReg_reg_138 : out STD_LOGIC;
    outReg_reg_139 : out STD_LOGIC;
    outReg_reg_140 : out STD_LOGIC;
    outReg_reg_141 : out STD_LOGIC;
    outReg_reg_142 : out STD_LOGIC;
    outReg_reg_143 : out STD_LOGIC;
    outReg_reg_144 : out STD_LOGIC;
    outReg_reg_145 : out STD_LOGIC;
    outReg_reg_146 : out STD_LOGIC;
    outReg_reg_147 : out STD_LOGIC;
    outReg_reg_148 : out STD_LOGIC;
    outReg_reg_149 : out STD_LOGIC;
    outReg_reg_150 : out STD_LOGIC;
    outReg_reg_151 : out STD_LOGIC;
    outReg_reg_152 : out STD_LOGIC;
    outReg_reg_153 : out STD_LOGIC;
    outReg_reg_154 : out STD_LOGIC;
    outReg_reg_155 : out STD_LOGIC;
    outReg_reg_156 : out STD_LOGIC;
    outReg_reg_157 : out STD_LOGIC;
    outReg_reg_158 : out STD_LOGIC;
    outReg_reg_159 : out STD_LOGIC;
    p_20_in : out STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    read_request : in STD_LOGIC;
    \rd_index_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \rd_index_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal \^p_20_in\ : STD_LOGIC;
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
  p_20_in <= \^p_20_in\;
  write_request <= \^write_request\;
\FIFO_DATA[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(0),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_90
    );
\FIFO_DATA[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_91
    );
\FIFO_DATA[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(2),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_92
    );
\FIFO_DATA[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(3),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_93
    );
\FIFO_DATA[0][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(4),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_94
    );
\FIFO_DATA[0][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(5),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_95
    );
\FIFO_DATA[0][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(6),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_96
    );
\FIFO_DATA[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(7),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_97
    );
\FIFO_DATA[0][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^write_request\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      O => outReg_reg_159
    );
\FIFO_DATA[0][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(8),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_98
    );
\FIFO_DATA[10][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(0),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(3),
      O => outReg_reg_126
    );
\FIFO_DATA[10][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(3),
      O => outReg_reg_127
    );
\FIFO_DATA[10][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(2),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(3),
      O => outReg_reg_128
    );
\FIFO_DATA[10][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(3),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(3),
      O => outReg_reg_129
    );
\FIFO_DATA[10][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(4),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(3),
      O => outReg_reg_130
    );
\FIFO_DATA[10][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(5),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(3),
      O => outReg_reg_131
    );
\FIFO_DATA[10][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(6),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(3),
      O => outReg_reg_132
    );
\FIFO_DATA[10][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(7),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(3),
      O => outReg_reg_133
    );
\FIFO_DATA[10][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \^write_request\,
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(0),
      O => outReg_reg_149
    );
\FIFO_DATA[10][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(8),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(3),
      O => outReg_reg_134
    );
\FIFO_DATA[11][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(0),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(3),
      O => outReg_reg_117
    );
\FIFO_DATA[11][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(3),
      O => outReg_reg_118
    );
\FIFO_DATA[11][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(2),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(3),
      O => outReg_reg_119
    );
\FIFO_DATA[11][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(3),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(3),
      O => outReg_reg_120
    );
\FIFO_DATA[11][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(4),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(3),
      O => outReg_reg_121
    );
\FIFO_DATA[11][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(5),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(3),
      O => outReg_reg_122
    );
\FIFO_DATA[11][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(6),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(3),
      O => outReg_reg_123
    );
\FIFO_DATA[11][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(7),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(3),
      O => outReg_reg_124
    );
\FIFO_DATA[11][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \^write_request\,
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      O => outReg_reg_148
    );
\FIFO_DATA[11][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(8),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(3),
      O => outReg_reg_125
    );
\FIFO_DATA[12][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(0),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_0
    );
\FIFO_DATA[12][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(1),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_1
    );
\FIFO_DATA[12][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_2
    );
\FIFO_DATA[12][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(3),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_3
    );
\FIFO_DATA[12][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(4),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_4
    );
\FIFO_DATA[12][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(5),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_5
    );
\FIFO_DATA[12][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(6),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_6
    );
\FIFO_DATA[12][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(7),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_7
    );
\FIFO_DATA[12][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \^write_request\,
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      O => outReg_reg_147
    );
\FIFO_DATA[12][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(8),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_8
    );
\FIFO_DATA[13][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(0),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_9
    );
\FIFO_DATA[13][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(1),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_10
    );
\FIFO_DATA[13][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_11
    );
\FIFO_DATA[13][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(3),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_12
    );
\FIFO_DATA[13][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(4),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_13
    );
\FIFO_DATA[13][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(5),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_14
    );
\FIFO_DATA[13][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(6),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_15
    );
\FIFO_DATA[13][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(7),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_16
    );
\FIFO_DATA[13][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \^write_request\,
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      O => outReg_reg_146
    );
\FIFO_DATA[13][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(8),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_17
    );
\FIFO_DATA[14][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(0),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_18
    );
\FIFO_DATA[14][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(1),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_19
    );
\FIFO_DATA[14][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_20
    );
\FIFO_DATA[14][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_21
    );
\FIFO_DATA[14][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(4),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_22
    );
\FIFO_DATA[14][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(5),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_23
    );
\FIFO_DATA[14][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(6),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_24
    );
\FIFO_DATA[14][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(7),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_25
    );
\FIFO_DATA[14][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \^write_request\,
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      O => outReg_reg_145
    );
\FIFO_DATA[14][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(8),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(3),
      O => outReg_reg_26
    );
\FIFO_DATA[15][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(0),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_27
    );
\FIFO_DATA[15][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_28
    );
\FIFO_DATA[15][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(2),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_29
    );
\FIFO_DATA[15][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(3),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_30
    );
\FIFO_DATA[15][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(4),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_31
    );
\FIFO_DATA[15][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(5),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_32
    );
\FIFO_DATA[15][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(6),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_33
    );
\FIFO_DATA[15][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(7),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_34
    );
\FIFO_DATA[15][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^write_request\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      O => outReg_reg_144
    );
\FIFO_DATA[15][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(8),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_35
    );
\FIFO_DATA[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(0),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_72
    );
\FIFO_DATA[1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_73
    );
\FIFO_DATA[1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(2),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_74
    );
\FIFO_DATA[1][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(3),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_75
    );
\FIFO_DATA[1][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(4),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_76
    );
\FIFO_DATA[1][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(5),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_77
    );
\FIFO_DATA[1][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(6),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_78
    );
\FIFO_DATA[1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(7),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_79
    );
\FIFO_DATA[1][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \^write_request\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      O => outReg_reg_158
    );
\FIFO_DATA[1][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(8),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_80
    );
\FIFO_DATA[2][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(0),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_54
    );
\FIFO_DATA[2][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_55
    );
\FIFO_DATA[2][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(2),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_56
    );
\FIFO_DATA[2][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(3),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_57
    );
\FIFO_DATA[2][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(4),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_58
    );
\FIFO_DATA[2][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(5),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_59
    );
\FIFO_DATA[2][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(6),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_60
    );
\FIFO_DATA[2][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(7),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_61
    );
\FIFO_DATA[2][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \^write_request\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(3),
      I4 => Q(2),
      O => outReg_reg_157
    );
\FIFO_DATA[2][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(8),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_62
    );
\FIFO_DATA[3][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(0),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_36
    );
\FIFO_DATA[3][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_37
    );
\FIFO_DATA[3][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(2),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_38
    );
\FIFO_DATA[3][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(3),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_39
    );
\FIFO_DATA[3][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(4),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_40
    );
\FIFO_DATA[3][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(5),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_41
    );
\FIFO_DATA[3][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(6),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_42
    );
\FIFO_DATA[3][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(7),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_43
    );
\FIFO_DATA[3][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \^write_request\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      O => outReg_reg_156
    );
\FIFO_DATA[3][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(8),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_44
    );
\FIFO_DATA[4][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_99
    );
\FIFO_DATA[4][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_100
    );
\FIFO_DATA[4][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(2),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_101
    );
\FIFO_DATA[4][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(3),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_102
    );
\FIFO_DATA[4][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(4),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_103
    );
\FIFO_DATA[4][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(5),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_104
    );
\FIFO_DATA[4][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(6),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_105
    );
\FIFO_DATA[4][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(7),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_106
    );
\FIFO_DATA[4][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \^write_request\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(3),
      O => outReg_reg_155
    );
\FIFO_DATA[4][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(8),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_107
    );
\FIFO_DATA[5][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_81
    );
\FIFO_DATA[5][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_82
    );
\FIFO_DATA[5][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(2),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_83
    );
\FIFO_DATA[5][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(3),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_84
    );
\FIFO_DATA[5][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(4),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_85
    );
\FIFO_DATA[5][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(5),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_86
    );
\FIFO_DATA[5][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(6),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_87
    );
\FIFO_DATA[5][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(7),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_88
    );
\FIFO_DATA[5][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \^write_request\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(3),
      O => outReg_reg_154
    );
\FIFO_DATA[5][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(8),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => outReg_reg_89
    );
\FIFO_DATA[6][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_63
    );
\FIFO_DATA[6][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_64
    );
\FIFO_DATA[6][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(2),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_65
    );
\FIFO_DATA[6][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(3),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_66
    );
\FIFO_DATA[6][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(4),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_67
    );
\FIFO_DATA[6][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(5),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_68
    );
\FIFO_DATA[6][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(6),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_69
    );
\FIFO_DATA[6][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(7),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_70
    );
\FIFO_DATA[6][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \^write_request\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(3),
      O => outReg_reg_153
    );
\FIFO_DATA[6][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(8),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_71
    );
\FIFO_DATA[7][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_45
    );
\FIFO_DATA[7][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_46
    );
\FIFO_DATA[7][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(2),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_47
    );
\FIFO_DATA[7][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(3),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_48
    );
\FIFO_DATA[7][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(4),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_49
    );
\FIFO_DATA[7][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(5),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_50
    );
\FIFO_DATA[7][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(6),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_51
    );
\FIFO_DATA[7][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(7),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_52
    );
\FIFO_DATA[7][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \^write_request\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(3),
      O => outReg_reg_152
    );
\FIFO_DATA[7][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(8),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => outReg_reg_53
    );
\FIFO_DATA[8][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(0),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(2),
      O => outReg_reg_135
    );
\FIFO_DATA[8][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(1),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(2),
      O => outReg_reg_136
    );
\FIFO_DATA[8][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(2),
      O => outReg_reg_137
    );
\FIFO_DATA[8][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(3),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(2),
      O => outReg_reg_138
    );
\FIFO_DATA[8][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(4),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(2),
      O => outReg_reg_139
    );
\FIFO_DATA[8][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(5),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(2),
      O => outReg_reg_140
    );
\FIFO_DATA[8][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(6),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(2),
      O => outReg_reg_141
    );
\FIFO_DATA[8][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(7),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(2),
      O => outReg_reg_142
    );
\FIFO_DATA[8][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \^write_request\,
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(3),
      I4 => Q(1),
      O => outReg_reg_151
    );
\FIFO_DATA[8][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(8),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(2),
      O => outReg_reg_143
    );
\FIFO_DATA[9][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(0),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(0),
      O => outReg_reg_108
    );
\FIFO_DATA[9][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(1),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(0),
      O => outReg_reg_109
    );
\FIFO_DATA[9][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(0),
      O => outReg_reg_110
    );
\FIFO_DATA[9][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(3),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(0),
      O => outReg_reg_111
    );
\FIFO_DATA[9][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(4),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(0),
      O => outReg_reg_112
    );
\FIFO_DATA[9][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(5),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(0),
      O => outReg_reg_113
    );
\FIFO_DATA[9][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(6),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(0),
      O => outReg_reg_114
    );
\FIFO_DATA[9][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(7),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(0),
      O => outReg_reg_115
    );
\FIFO_DATA[9][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \^write_request\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      O => outReg_reg_150
    );
\FIFO_DATA[9][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \^write_request\,
      I1 => officialData(8),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(0),
      O => outReg_reg_116
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
      O => \^p_20_in\
    );
outReg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => waddr(0),
      I1 => waddr(1),
      I2 => \^p_20_in\,
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
\rd_index[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444440"
    )
        port map (
      I0 => \^write_request\,
      I1 => read_request,
      I2 => \rd_index_reg[0]\,
      I3 => Q(4),
      I4 => \rd_index_reg[0]_0\(0),
      O => E(0)
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
    \officialControl_reg[0]\ : out STD_LOGIC;
    \rd_index_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[11]\ : out STD_LOGIC;
    rd_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[6]\ : out STD_LOGIC;
    watermark : out STD_LOGIC_VECTOR ( 4 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    axi_aresetn_0 : out STD_LOGIC;
    p_20_in : out STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    p_0_in_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_arvalid : in STD_LOGIC;
    in_delay_reg : in STD_LOGIC;
    in_delay_reg_0 : in STD_LOGIC;
    myParityBit_reg : in STD_LOGIC;
    \axi_rdata_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    shiftOut_reg : in STD_LOGIC_VECTOR ( 11 downto 0 );
    myParityBit : in STD_LOGIC;
    \axi_rdata_reg[8]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \axi_rdata_reg[8]_1\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    officialData : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_aresetn : in STD_LOGIC;
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
  signal empty_INST_0_i_1_n_0 : STD_LOGIC;
  signal empty_INST_0_i_2_n_0 : STD_LOGIC;
  signal myParityBit_reg_i_4_n_0 : STD_LOGIC;
  signal myParityBit_reg_i_5_n_0 : STD_LOGIC;
  signal myParityBit_reg_i_6_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^rd_data\ : STD_LOGIC_VECTOR ( 7 downto 0 );
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
  signal \rd_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \^rd_index_reg[3]_0\ : STD_LOGIC;
  signal \^rd_index_reg[4]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal read_request : STD_LOGIC;
  signal shiftOut_i_7_n_0 : STD_LOGIC;
  signal shiftOut_i_8_n_0 : STD_LOGIC;
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
  signal wr_edge_n_161 : STD_LOGIC;
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
  signal write_request : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of empty_INST_0 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of empty_INST_0_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of full_INST_0 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of myParityBit_reg_i_5 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rd_data[1]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rd_index[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rd_index[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rd_index[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rd_index[4]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \watermark[0]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \watermark[1]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \watermark[3]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \watermark[4]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wr_index[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \wr_index[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \wr_index[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \wr_index[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \wr_index[4]_i_2\ : label is "soft_lutpair8";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  axi_aresetn_0 <= \^axi_aresetn_0\;
  rd_data(7 downto 0) <= \^rd_data\(7 downto 0);
  \rd_index_reg[3]_0\ <= \^rd_index_reg[3]_0\;
  \rd_index_reg[4]_0\(4 downto 0) <= \^rd_index_reg[4]_0\(4 downto 0);
\FIFO_DATA_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_161,
      D => wr_edge_n_92,
      Q => \FIFO_DATA_reg[0]_15\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_161,
      D => wr_edge_n_93,
      Q => \FIFO_DATA_reg[0]_15\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_161,
      D => wr_edge_n_94,
      Q => \FIFO_DATA_reg[0]_15\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_161,
      D => wr_edge_n_95,
      Q => \FIFO_DATA_reg[0]_15\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_161,
      D => wr_edge_n_96,
      Q => \FIFO_DATA_reg[0]_15\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_161,
      D => wr_edge_n_97,
      Q => \FIFO_DATA_reg[0]_15\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_161,
      D => wr_edge_n_98,
      Q => \FIFO_DATA_reg[0]_15\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_161,
      D => wr_edge_n_99,
      Q => \FIFO_DATA_reg[0]_15\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_161,
      D => wr_edge_n_100,
      Q => \FIFO_DATA_reg[0]_15\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_151,
      D => wr_edge_n_128,
      Q => \FIFO_DATA_reg[10]_5\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_151,
      D => wr_edge_n_129,
      Q => \FIFO_DATA_reg[10]_5\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[10][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_151,
      D => wr_edge_n_130,
      Q => \FIFO_DATA_reg[10]_5\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[10][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_151,
      D => wr_edge_n_131,
      Q => \FIFO_DATA_reg[10]_5\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[10][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_151,
      D => wr_edge_n_132,
      Q => \FIFO_DATA_reg[10]_5\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[10][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_151,
      D => wr_edge_n_133,
      Q => \FIFO_DATA_reg[10]_5\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[10][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_151,
      D => wr_edge_n_134,
      Q => \FIFO_DATA_reg[10]_5\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[10][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_151,
      D => wr_edge_n_135,
      Q => \FIFO_DATA_reg[10]_5\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[10][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_151,
      D => wr_edge_n_136,
      Q => \FIFO_DATA_reg[10]_5\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_150,
      D => wr_edge_n_119,
      Q => \FIFO_DATA_reg[11]_4\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_150,
      D => wr_edge_n_120,
      Q => \FIFO_DATA_reg[11]_4\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_150,
      D => wr_edge_n_121,
      Q => \FIFO_DATA_reg[11]_4\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_150,
      D => wr_edge_n_122,
      Q => \FIFO_DATA_reg[11]_4\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[11][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_150,
      D => wr_edge_n_123,
      Q => \FIFO_DATA_reg[11]_4\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[11][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_150,
      D => wr_edge_n_124,
      Q => \FIFO_DATA_reg[11]_4\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[11][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_150,
      D => wr_edge_n_125,
      Q => \FIFO_DATA_reg[11]_4\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[11][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_150,
      D => wr_edge_n_126,
      Q => \FIFO_DATA_reg[11]_4\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[11][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_150,
      D => wr_edge_n_127,
      Q => \FIFO_DATA_reg[11]_4\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_149,
      D => wr_edge_n_2,
      Q => \FIFO_DATA_reg[12]_3\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_149,
      D => wr_edge_n_3,
      Q => \FIFO_DATA_reg[12]_3\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[12][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_149,
      D => wr_edge_n_4,
      Q => \FIFO_DATA_reg[12]_3\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[12][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_149,
      D => wr_edge_n_5,
      Q => \FIFO_DATA_reg[12]_3\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[12][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_149,
      D => wr_edge_n_6,
      Q => \FIFO_DATA_reg[12]_3\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[12][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_149,
      D => wr_edge_n_7,
      Q => \FIFO_DATA_reg[12]_3\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[12][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_149,
      D => wr_edge_n_8,
      Q => \FIFO_DATA_reg[12]_3\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[12][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_149,
      D => wr_edge_n_9,
      Q => \FIFO_DATA_reg[12]_3\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[12][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_149,
      D => wr_edge_n_10,
      Q => \FIFO_DATA_reg[12]_3\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_148,
      D => wr_edge_n_11,
      Q => \FIFO_DATA_reg[13]_2\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[13][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_148,
      D => wr_edge_n_12,
      Q => \FIFO_DATA_reg[13]_2\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[13][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_148,
      D => wr_edge_n_13,
      Q => \FIFO_DATA_reg[13]_2\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[13][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_148,
      D => wr_edge_n_14,
      Q => \FIFO_DATA_reg[13]_2\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[13][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_148,
      D => wr_edge_n_15,
      Q => \FIFO_DATA_reg[13]_2\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[13][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_148,
      D => wr_edge_n_16,
      Q => \FIFO_DATA_reg[13]_2\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[13][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_148,
      D => wr_edge_n_17,
      Q => \FIFO_DATA_reg[13]_2\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[13][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_148,
      D => wr_edge_n_18,
      Q => \FIFO_DATA_reg[13]_2\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[13][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_148,
      D => wr_edge_n_19,
      Q => \FIFO_DATA_reg[13]_2\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_147,
      D => wr_edge_n_20,
      Q => \FIFO_DATA_reg[14]_1\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[14][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_147,
      D => wr_edge_n_21,
      Q => \FIFO_DATA_reg[14]_1\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[14][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_147,
      D => wr_edge_n_22,
      Q => \FIFO_DATA_reg[14]_1\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[14][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_147,
      D => wr_edge_n_23,
      Q => \FIFO_DATA_reg[14]_1\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[14][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_147,
      D => wr_edge_n_24,
      Q => \FIFO_DATA_reg[14]_1\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[14][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_147,
      D => wr_edge_n_25,
      Q => \FIFO_DATA_reg[14]_1\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[14][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_147,
      D => wr_edge_n_26,
      Q => \FIFO_DATA_reg[14]_1\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[14][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_147,
      D => wr_edge_n_27,
      Q => \FIFO_DATA_reg[14]_1\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[14][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_147,
      D => wr_edge_n_28,
      Q => \FIFO_DATA_reg[14]_1\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[15][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_146,
      D => wr_edge_n_29,
      Q => \FIFO_DATA_reg[15]_0\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[15][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_146,
      D => wr_edge_n_30,
      Q => \FIFO_DATA_reg[15]_0\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[15][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_146,
      D => wr_edge_n_31,
      Q => \FIFO_DATA_reg[15]_0\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[15][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_146,
      D => wr_edge_n_32,
      Q => \FIFO_DATA_reg[15]_0\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[15][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_146,
      D => wr_edge_n_33,
      Q => \FIFO_DATA_reg[15]_0\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[15][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_146,
      D => wr_edge_n_34,
      Q => \FIFO_DATA_reg[15]_0\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[15][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_146,
      D => wr_edge_n_35,
      Q => \FIFO_DATA_reg[15]_0\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[15][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_146,
      D => wr_edge_n_36,
      Q => \FIFO_DATA_reg[15]_0\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[15][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_146,
      D => wr_edge_n_37,
      Q => \FIFO_DATA_reg[15]_0\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_160,
      D => wr_edge_n_74,
      Q => \FIFO_DATA_reg[1]_14\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_160,
      D => wr_edge_n_75,
      Q => \FIFO_DATA_reg[1]_14\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_160,
      D => wr_edge_n_76,
      Q => \FIFO_DATA_reg[1]_14\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_160,
      D => wr_edge_n_77,
      Q => \FIFO_DATA_reg[1]_14\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_160,
      D => wr_edge_n_78,
      Q => \FIFO_DATA_reg[1]_14\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_160,
      D => wr_edge_n_79,
      Q => \FIFO_DATA_reg[1]_14\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_160,
      D => wr_edge_n_80,
      Q => \FIFO_DATA_reg[1]_14\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_160,
      D => wr_edge_n_81,
      Q => \FIFO_DATA_reg[1]_14\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_160,
      D => wr_edge_n_82,
      Q => \FIFO_DATA_reg[1]_14\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_159,
      D => wr_edge_n_56,
      Q => \FIFO_DATA_reg[2]_13\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_159,
      D => wr_edge_n_57,
      Q => \FIFO_DATA_reg[2]_13\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_159,
      D => wr_edge_n_58,
      Q => \FIFO_DATA_reg[2]_13\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_159,
      D => wr_edge_n_59,
      Q => \FIFO_DATA_reg[2]_13\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_159,
      D => wr_edge_n_60,
      Q => \FIFO_DATA_reg[2]_13\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_159,
      D => wr_edge_n_61,
      Q => \FIFO_DATA_reg[2]_13\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_159,
      D => wr_edge_n_62,
      Q => \FIFO_DATA_reg[2]_13\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_159,
      D => wr_edge_n_63,
      Q => \FIFO_DATA_reg[2]_13\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_159,
      D => wr_edge_n_64,
      Q => \FIFO_DATA_reg[2]_13\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_158,
      D => wr_edge_n_38,
      Q => \FIFO_DATA_reg[3]_12\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_158,
      D => wr_edge_n_39,
      Q => \FIFO_DATA_reg[3]_12\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_158,
      D => wr_edge_n_40,
      Q => \FIFO_DATA_reg[3]_12\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_158,
      D => wr_edge_n_41,
      Q => \FIFO_DATA_reg[3]_12\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_158,
      D => wr_edge_n_42,
      Q => \FIFO_DATA_reg[3]_12\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_158,
      D => wr_edge_n_43,
      Q => \FIFO_DATA_reg[3]_12\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_158,
      D => wr_edge_n_44,
      Q => \FIFO_DATA_reg[3]_12\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_158,
      D => wr_edge_n_45,
      Q => \FIFO_DATA_reg[3]_12\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_158,
      D => wr_edge_n_46,
      Q => \FIFO_DATA_reg[3]_12\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_157,
      D => wr_edge_n_101,
      Q => \FIFO_DATA_reg[4]_11\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_157,
      D => wr_edge_n_102,
      Q => \FIFO_DATA_reg[4]_11\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_157,
      D => wr_edge_n_103,
      Q => \FIFO_DATA_reg[4]_11\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_157,
      D => wr_edge_n_104,
      Q => \FIFO_DATA_reg[4]_11\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[4][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_157,
      D => wr_edge_n_105,
      Q => \FIFO_DATA_reg[4]_11\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[4][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_157,
      D => wr_edge_n_106,
      Q => \FIFO_DATA_reg[4]_11\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[4][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_157,
      D => wr_edge_n_107,
      Q => \FIFO_DATA_reg[4]_11\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[4][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_157,
      D => wr_edge_n_108,
      Q => \FIFO_DATA_reg[4]_11\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[4][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_157,
      D => wr_edge_n_109,
      Q => \FIFO_DATA_reg[4]_11\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_156,
      D => wr_edge_n_83,
      Q => \FIFO_DATA_reg[5]_10\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_156,
      D => wr_edge_n_84,
      Q => \FIFO_DATA_reg[5]_10\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_156,
      D => wr_edge_n_85,
      Q => \FIFO_DATA_reg[5]_10\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_156,
      D => wr_edge_n_86,
      Q => \FIFO_DATA_reg[5]_10\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[5][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_156,
      D => wr_edge_n_87,
      Q => \FIFO_DATA_reg[5]_10\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[5][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_156,
      D => wr_edge_n_88,
      Q => \FIFO_DATA_reg[5]_10\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[5][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_156,
      D => wr_edge_n_89,
      Q => \FIFO_DATA_reg[5]_10\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[5][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_156,
      D => wr_edge_n_90,
      Q => \FIFO_DATA_reg[5]_10\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[5][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_156,
      D => wr_edge_n_91,
      Q => \FIFO_DATA_reg[5]_10\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_155,
      D => wr_edge_n_65,
      Q => \FIFO_DATA_reg[6]_9\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_155,
      D => wr_edge_n_66,
      Q => \FIFO_DATA_reg[6]_9\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_155,
      D => wr_edge_n_67,
      Q => \FIFO_DATA_reg[6]_9\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_155,
      D => wr_edge_n_68,
      Q => \FIFO_DATA_reg[6]_9\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[6][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_155,
      D => wr_edge_n_69,
      Q => \FIFO_DATA_reg[6]_9\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[6][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_155,
      D => wr_edge_n_70,
      Q => \FIFO_DATA_reg[6]_9\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[6][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_155,
      D => wr_edge_n_71,
      Q => \FIFO_DATA_reg[6]_9\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[6][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_155,
      D => wr_edge_n_72,
      Q => \FIFO_DATA_reg[6]_9\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[6][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_155,
      D => wr_edge_n_73,
      Q => \FIFO_DATA_reg[6]_9\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_154,
      D => wr_edge_n_47,
      Q => \FIFO_DATA_reg[7]_8\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_154,
      D => wr_edge_n_48,
      Q => \FIFO_DATA_reg[7]_8\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_154,
      D => wr_edge_n_49,
      Q => \FIFO_DATA_reg[7]_8\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_154,
      D => wr_edge_n_50,
      Q => \FIFO_DATA_reg[7]_8\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[7][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_154,
      D => wr_edge_n_51,
      Q => \FIFO_DATA_reg[7]_8\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[7][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_154,
      D => wr_edge_n_52,
      Q => \FIFO_DATA_reg[7]_8\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[7][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_154,
      D => wr_edge_n_53,
      Q => \FIFO_DATA_reg[7]_8\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[7][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_154,
      D => wr_edge_n_54,
      Q => \FIFO_DATA_reg[7]_8\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[7][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_154,
      D => wr_edge_n_55,
      Q => \FIFO_DATA_reg[7]_8\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_153,
      D => wr_edge_n_137,
      Q => \FIFO_DATA_reg[8]_7\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_153,
      D => wr_edge_n_138,
      Q => \FIFO_DATA_reg[8]_7\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[8][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_153,
      D => wr_edge_n_139,
      Q => \FIFO_DATA_reg[8]_7\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[8][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_153,
      D => wr_edge_n_140,
      Q => \FIFO_DATA_reg[8]_7\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[8][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_153,
      D => wr_edge_n_141,
      Q => \FIFO_DATA_reg[8]_7\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[8][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_153,
      D => wr_edge_n_142,
      Q => \FIFO_DATA_reg[8]_7\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[8][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_153,
      D => wr_edge_n_143,
      Q => \FIFO_DATA_reg[8]_7\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[8][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_153,
      D => wr_edge_n_144,
      Q => \FIFO_DATA_reg[8]_7\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[8][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_153,
      D => wr_edge_n_145,
      Q => \FIFO_DATA_reg[8]_7\(8),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_152,
      D => wr_edge_n_110,
      Q => \FIFO_DATA_reg[9]_6\(0),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_152,
      D => wr_edge_n_111,
      Q => \FIFO_DATA_reg[9]_6\(1),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_152,
      D => wr_edge_n_112,
      Q => \FIFO_DATA_reg[9]_6\(2),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_152,
      D => wr_edge_n_113,
      Q => \FIFO_DATA_reg[9]_6\(3),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[9][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_152,
      D => wr_edge_n_114,
      Q => \FIFO_DATA_reg[9]_6\(4),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[9][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_152,
      D => wr_edge_n_115,
      Q => \FIFO_DATA_reg[9]_6\(5),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[9][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_152,
      D => wr_edge_n_116,
      Q => \FIFO_DATA_reg[9]_6\(6),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[9][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_152,
      D => wr_edge_n_117,
      Q => \FIFO_DATA_reg[9]_6\(7),
      R => \^axi_aresetn_0\
    );
\FIFO_DATA_reg[9][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_152,
      D => wr_edge_n_118,
      Q => \FIFO_DATA_reg[9]_6\(8),
      R => \^axi_aresetn_0\
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
      I5 => \^rd_data\(0),
      O => D(0)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFCC00F055F055"
    )
        port map (
      I0 => \rd_data[1]_INST_0_i_1_n_0\,
      I1 => \axi_rdata_reg[8]_0\(1),
      I2 => \axi_rdata_reg[8]_1\(1),
      I3 => p_0_in_0(0),
      I4 => \axi_rdata_reg[8]\(1),
      I5 => p_0_in_0(1),
      O => D(1)
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
      I5 => \^rd_data\(2),
      O => D(2)
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
      I5 => \^rd_data\(3),
      O => D(3)
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
      I5 => \^rd_data\(4),
      O => D(4)
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
      I5 => \^rd_index_reg[3]_0\,
      O => D(5)
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
      I5 => \^rd_data\(5),
      O => D(6)
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
      I5 => \^rd_data\(6),
      O => D(7)
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
      I5 => \^rd_data\(7),
      O => D(8)
    );
empty_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(4),
      I1 => \^q\(4),
      I2 => empty_INST_0_i_1_n_0,
      O => empty
    );
empty_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^rd_index_reg[4]_0\(1),
      I2 => \^q\(0),
      I3 => \^rd_index_reg[4]_0\(0),
      I4 => empty_INST_0_i_2_n_0,
      O => empty_INST_0_i_1_n_0
    );
empty_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(3),
      I1 => \^q\(3),
      I2 => \^rd_index_reg[4]_0\(2),
      I3 => \^q\(2),
      O => empty_INST_0_i_2_n_0
    );
full_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(4),
      I1 => \^q\(4),
      I2 => empty_INST_0_i_1_n_0,
      O => full
    );
myParityBit_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A599A55A5A995A5A"
    )
        port map (
      I0 => myParityBit_reg,
      I1 => myParityBit_reg_i_4_n_0,
      I2 => myParityBit_reg_i_5_n_0,
      I3 => \axi_rdata_reg[8]\(0),
      I4 => \axi_rdata_reg[8]\(1),
      I5 => \^rd_index_reg[3]_0\,
      O => \officialControl_reg[0]\
    );
myParityBit_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => myParityBit_reg_i_6_n_0,
      I1 => \rd_data[1]_INST_0_i_1_n_0\,
      I2 => \^rd_data\(0),
      I3 => \^rd_data\(5),
      I4 => \^rd_data\(3),
      I5 => \^rd_index_reg[3]_0\,
      O => myParityBit_reg_i_4_n_0
    );
myParityBit_reg_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \^rd_data\(2),
      I1 => \^rd_data\(4),
      I2 => \rd_data[1]_INST_0_i_1_n_0\,
      I3 => \^rd_data\(3),
      I4 => \^rd_data\(0),
      O => myParityBit_reg_i_5_n_0
    );
myParityBit_reg_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335ACC5A"
    )
        port map (
      I0 => \rd_data[2]_INST_0_i_1_n_0\,
      I1 => \rd_data[2]_INST_0_i_2_n_0\,
      I2 => \rd_data[4]_INST_0_i_1_n_0\,
      I3 => \^rd_index_reg[4]_0\(3),
      I4 => \rd_data[4]_INST_0_i_2_n_0\,
      O => myParityBit_reg_i_6_n_0
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
\rd_data[1]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rd_data[1]_INST_0_i_1_n_0\,
      O => \^rd_data\(1)
    );
\rd_data[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \rd_data[1]_INST_0_i_2_n_0\,
      I1 => \rd_data[1]_INST_0_i_3_n_0\,
      I2 => \^rd_index_reg[4]_0\(3),
      I3 => \rd_data[1]_INST_0_i_4_n_0\,
      I4 => \^rd_index_reg[4]_0\(2),
      I5 => \rd_data[1]_INST_0_i_5_n_0\,
      O => \rd_data[1]_INST_0_i_1_n_0\
    );
\rd_data[1]_INST_0_i_2\: unisim.vcomponents.LUT6
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
      O => \rd_data[1]_INST_0_i_2_n_0\
    );
\rd_data[1]_INST_0_i_3\: unisim.vcomponents.LUT6
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
      I0 => \FIFO_DATA_reg[3]_12\(1),
      I1 => \FIFO_DATA_reg[2]_13\(1),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \FIFO_DATA_reg[1]_14\(1),
      I4 => \^rd_index_reg[4]_0\(0),
      I5 => \FIFO_DATA_reg[0]_15\(1),
      O => \rd_data[1]_INST_0_i_5_n_0\
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
      O => \^rd_index_reg[3]_0\,
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
      O => \^rd_data\(5),
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
      O => \^rd_data\(6),
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
      O => \^rd_data\(7),
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
      axi_aclk => axi_aclk,
      axi_arvalid => axi_arvalid,
      in_delay_reg_0 => in_delay_reg,
      in_delay_reg_1 => in_delay_reg_0,
      p_0_in_0(1 downto 0) => p_0_in_0(1 downto 0),
      read_request => read_request
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
      I0 => \^rd_index_reg[4]_0\(1),
      I1 => \^rd_index_reg[4]_0\(0),
      O => \p_0_in__0\(1)
    );
\rd_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(2),
      I1 => \^rd_index_reg[4]_0\(0),
      I2 => \^rd_index_reg[4]_0\(1),
      O => \rd_index[2]_i_1_n_0\
    );
\rd_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(3),
      I1 => \^rd_index_reg[4]_0\(1),
      I2 => \^rd_index_reg[4]_0\(0),
      I3 => \^rd_index_reg[4]_0\(2),
      O => \p_0_in__0\(3)
    );
\rd_index[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(4),
      I1 => \^rd_index_reg[4]_0\(2),
      I2 => \^rd_index_reg[4]_0\(0),
      I3 => \^rd_index_reg[4]_0\(1),
      I4 => \^rd_index_reg[4]_0\(3),
      O => \p_0_in__0\(4)
    );
\rd_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_1,
      D => \rd_index[0]_i_1_n_0\,
      Q => \^rd_index_reg[4]_0\(0),
      R => \^axi_aresetn_0\
    );
\rd_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_1,
      D => \p_0_in__0\(1),
      Q => \^rd_index_reg[4]_0\(1),
      R => \^axi_aresetn_0\
    );
\rd_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_1,
      D => \rd_index[2]_i_1_n_0\,
      Q => \^rd_index_reg[4]_0\(2),
      R => \^axi_aresetn_0\
    );
\rd_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_1,
      D => \p_0_in__0\(3),
      Q => \^rd_index_reg[4]_0\(3),
      R => \^axi_aresetn_0\
    );
\rd_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_edge_n_1,
      D => \p_0_in__0\(4),
      Q => \^rd_index_reg[4]_0\(4),
      R => \^axi_aresetn_0\
    );
shiftOut_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \rd_data[1]_INST_0_i_1_n_0\,
      I1 => shiftOut_reg(2),
      I2 => \^rd_data\(2),
      I3 => shiftOut_reg(3),
      O => \FSM_onehot_state_reg[3]\
    );
shiftOut_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^rd_data\(4),
      I1 => shiftOut_reg(5),
      I2 => \^rd_data\(5),
      I3 => shiftOut_reg(7),
      O => \FSM_onehot_state_reg[6]\
    );
shiftOut_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => shiftOut_i_7_n_0,
      I1 => shiftOut_i_8_n_0,
      I2 => shiftOut_reg(1),
      I3 => \^rd_data\(0),
      I4 => shiftOut_reg(4),
      I5 => \^rd_data\(3),
      O => \FSM_onehot_state_reg[2]\
    );
shiftOut_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \^rd_data\(7),
      I1 => shiftOut_reg(10),
      I2 => shiftOut_reg(9),
      I3 => myParityBit,
      I4 => shiftOut_reg(11),
      I5 => shiftOut_reg(0),
      O => \FSM_onehot_state_reg[11]\
    );
shiftOut_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \rd_data[7]_INST_0_i_1_n_0\,
      I1 => \^rd_index_reg[4]_0\(3),
      I2 => \rd_data[7]_INST_0_i_5_n_0\,
      I3 => \^rd_index_reg[4]_0\(2),
      I4 => \rd_data[7]_INST_0_i_6_n_0\,
      I5 => shiftOut_reg(8),
      O => shiftOut_i_7_n_0
    );
shiftOut_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \rd_data[5]_INST_0_i_1_n_0\,
      I1 => \^rd_index_reg[4]_0\(3),
      I2 => \rd_data[5]_INST_0_i_5_n_0\,
      I3 => \^rd_index_reg[4]_0\(2),
      I4 => \rd_data[5]_INST_0_i_6_n_0\,
      I5 => shiftOut_reg(6),
      O => shiftOut_i_8_n_0
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
      INIT => X"4BB4"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^rd_index_reg[4]_0\(0),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \^q\(1),
      O => watermark(1)
    );
\watermark[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6696969966966696"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(2),
      I1 => \^q\(2),
      I2 => \^rd_index_reg[4]_0\(1),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^rd_index_reg[4]_0\(0),
      O => watermark(2)
    );
\watermark[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(3),
      I1 => \^q\(3),
      I2 => \watermark[4]_INST_0_i_1_n_0\,
      O => watermark(3)
    );
\watermark[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96996696"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(4),
      I1 => \^q\(4),
      I2 => \^rd_index_reg[4]_0\(3),
      I3 => \^q\(3),
      I4 => \watermark[4]_INST_0_i_1_n_0\,
      O => watermark(4)
    );
\watermark[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F02FFFF00002F02"
    )
        port map (
      I0 => \^rd_index_reg[4]_0\(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^rd_index_reg[4]_0\(1),
      I4 => \^q\(2),
      I5 => \^rd_index_reg[4]_0\(2),
      O => \watermark[4]_INST_0_i_1_n_0\
    );
wr_edge: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0
     port map (
      E(0) => wr_edge_n_1,
      Q(4 downto 0) => \^q\(4 downto 0),
      axi_aclk => axi_aclk,
      axi_awvalid => axi_awvalid,
      axi_wvalid => axi_wvalid,
      in_delay_reg_0 => in_delay_reg_1,
      in_delay_reg_1 => in_delay_reg_2,
      officialData(8 downto 0) => officialData(8 downto 0),
      outReg_reg_0 => wr_edge_n_2,
      outReg_reg_1 => wr_edge_n_3,
      outReg_reg_10 => wr_edge_n_12,
      outReg_reg_100 => wr_edge_n_102,
      outReg_reg_101 => wr_edge_n_103,
      outReg_reg_102 => wr_edge_n_104,
      outReg_reg_103 => wr_edge_n_105,
      outReg_reg_104 => wr_edge_n_106,
      outReg_reg_105 => wr_edge_n_107,
      outReg_reg_106 => wr_edge_n_108,
      outReg_reg_107 => wr_edge_n_109,
      outReg_reg_108 => wr_edge_n_110,
      outReg_reg_109 => wr_edge_n_111,
      outReg_reg_11 => wr_edge_n_13,
      outReg_reg_110 => wr_edge_n_112,
      outReg_reg_111 => wr_edge_n_113,
      outReg_reg_112 => wr_edge_n_114,
      outReg_reg_113 => wr_edge_n_115,
      outReg_reg_114 => wr_edge_n_116,
      outReg_reg_115 => wr_edge_n_117,
      outReg_reg_116 => wr_edge_n_118,
      outReg_reg_117 => wr_edge_n_119,
      outReg_reg_118 => wr_edge_n_120,
      outReg_reg_119 => wr_edge_n_121,
      outReg_reg_12 => wr_edge_n_14,
      outReg_reg_120 => wr_edge_n_122,
      outReg_reg_121 => wr_edge_n_123,
      outReg_reg_122 => wr_edge_n_124,
      outReg_reg_123 => wr_edge_n_125,
      outReg_reg_124 => wr_edge_n_126,
      outReg_reg_125 => wr_edge_n_127,
      outReg_reg_126 => wr_edge_n_128,
      outReg_reg_127 => wr_edge_n_129,
      outReg_reg_128 => wr_edge_n_130,
      outReg_reg_129 => wr_edge_n_131,
      outReg_reg_13 => wr_edge_n_15,
      outReg_reg_130 => wr_edge_n_132,
      outReg_reg_131 => wr_edge_n_133,
      outReg_reg_132 => wr_edge_n_134,
      outReg_reg_133 => wr_edge_n_135,
      outReg_reg_134 => wr_edge_n_136,
      outReg_reg_135 => wr_edge_n_137,
      outReg_reg_136 => wr_edge_n_138,
      outReg_reg_137 => wr_edge_n_139,
      outReg_reg_138 => wr_edge_n_140,
      outReg_reg_139 => wr_edge_n_141,
      outReg_reg_14 => wr_edge_n_16,
      outReg_reg_140 => wr_edge_n_142,
      outReg_reg_141 => wr_edge_n_143,
      outReg_reg_142 => wr_edge_n_144,
      outReg_reg_143 => wr_edge_n_145,
      outReg_reg_144 => wr_edge_n_146,
      outReg_reg_145 => wr_edge_n_147,
      outReg_reg_146 => wr_edge_n_148,
      outReg_reg_147 => wr_edge_n_149,
      outReg_reg_148 => wr_edge_n_150,
      outReg_reg_149 => wr_edge_n_151,
      outReg_reg_15 => wr_edge_n_17,
      outReg_reg_150 => wr_edge_n_152,
      outReg_reg_151 => wr_edge_n_153,
      outReg_reg_152 => wr_edge_n_154,
      outReg_reg_153 => wr_edge_n_155,
      outReg_reg_154 => wr_edge_n_156,
      outReg_reg_155 => wr_edge_n_157,
      outReg_reg_156 => wr_edge_n_158,
      outReg_reg_157 => wr_edge_n_159,
      outReg_reg_158 => wr_edge_n_160,
      outReg_reg_159 => wr_edge_n_161,
      outReg_reg_16 => wr_edge_n_18,
      outReg_reg_17 => wr_edge_n_19,
      outReg_reg_18 => wr_edge_n_20,
      outReg_reg_19 => wr_edge_n_21,
      outReg_reg_2 => wr_edge_n_4,
      outReg_reg_20 => wr_edge_n_22,
      outReg_reg_21 => wr_edge_n_23,
      outReg_reg_22 => wr_edge_n_24,
      outReg_reg_23 => wr_edge_n_25,
      outReg_reg_24 => wr_edge_n_26,
      outReg_reg_25 => wr_edge_n_27,
      outReg_reg_26 => wr_edge_n_28,
      outReg_reg_27 => wr_edge_n_29,
      outReg_reg_28 => wr_edge_n_30,
      outReg_reg_29 => wr_edge_n_31,
      outReg_reg_3 => wr_edge_n_5,
      outReg_reg_30 => wr_edge_n_32,
      outReg_reg_31 => wr_edge_n_33,
      outReg_reg_32 => wr_edge_n_34,
      outReg_reg_33 => wr_edge_n_35,
      outReg_reg_34 => wr_edge_n_36,
      outReg_reg_35 => wr_edge_n_37,
      outReg_reg_36 => wr_edge_n_38,
      outReg_reg_37 => wr_edge_n_39,
      outReg_reg_38 => wr_edge_n_40,
      outReg_reg_39 => wr_edge_n_41,
      outReg_reg_4 => wr_edge_n_6,
      outReg_reg_40 => wr_edge_n_42,
      outReg_reg_41 => wr_edge_n_43,
      outReg_reg_42 => wr_edge_n_44,
      outReg_reg_43 => wr_edge_n_45,
      outReg_reg_44 => wr_edge_n_46,
      outReg_reg_45 => wr_edge_n_47,
      outReg_reg_46 => wr_edge_n_48,
      outReg_reg_47 => wr_edge_n_49,
      outReg_reg_48 => wr_edge_n_50,
      outReg_reg_49 => wr_edge_n_51,
      outReg_reg_5 => wr_edge_n_7,
      outReg_reg_50 => wr_edge_n_52,
      outReg_reg_51 => wr_edge_n_53,
      outReg_reg_52 => wr_edge_n_54,
      outReg_reg_53 => wr_edge_n_55,
      outReg_reg_54 => wr_edge_n_56,
      outReg_reg_55 => wr_edge_n_57,
      outReg_reg_56 => wr_edge_n_58,
      outReg_reg_57 => wr_edge_n_59,
      outReg_reg_58 => wr_edge_n_60,
      outReg_reg_59 => wr_edge_n_61,
      outReg_reg_6 => wr_edge_n_8,
      outReg_reg_60 => wr_edge_n_62,
      outReg_reg_61 => wr_edge_n_63,
      outReg_reg_62 => wr_edge_n_64,
      outReg_reg_63 => wr_edge_n_65,
      outReg_reg_64 => wr_edge_n_66,
      outReg_reg_65 => wr_edge_n_67,
      outReg_reg_66 => wr_edge_n_68,
      outReg_reg_67 => wr_edge_n_69,
      outReg_reg_68 => wr_edge_n_70,
      outReg_reg_69 => wr_edge_n_71,
      outReg_reg_7 => wr_edge_n_9,
      outReg_reg_70 => wr_edge_n_72,
      outReg_reg_71 => wr_edge_n_73,
      outReg_reg_72 => wr_edge_n_74,
      outReg_reg_73 => wr_edge_n_75,
      outReg_reg_74 => wr_edge_n_76,
      outReg_reg_75 => wr_edge_n_77,
      outReg_reg_76 => wr_edge_n_78,
      outReg_reg_77 => wr_edge_n_79,
      outReg_reg_78 => wr_edge_n_80,
      outReg_reg_79 => wr_edge_n_81,
      outReg_reg_8 => wr_edge_n_10,
      outReg_reg_80 => wr_edge_n_82,
      outReg_reg_81 => wr_edge_n_83,
      outReg_reg_82 => wr_edge_n_84,
      outReg_reg_83 => wr_edge_n_85,
      outReg_reg_84 => wr_edge_n_86,
      outReg_reg_85 => wr_edge_n_87,
      outReg_reg_86 => wr_edge_n_88,
      outReg_reg_87 => wr_edge_n_89,
      outReg_reg_88 => wr_edge_n_90,
      outReg_reg_89 => wr_edge_n_91,
      outReg_reg_9 => wr_edge_n_11,
      outReg_reg_90 => wr_edge_n_92,
      outReg_reg_91 => wr_edge_n_93,
      outReg_reg_92 => wr_edge_n_94,
      outReg_reg_93 => wr_edge_n_95,
      outReg_reg_94 => wr_edge_n_96,
      outReg_reg_95 => wr_edge_n_97,
      outReg_reg_96 => wr_edge_n_98,
      outReg_reg_97 => wr_edge_n_99,
      outReg_reg_98 => wr_edge_n_100,
      outReg_reg_99 => wr_edge_n_101,
      p_20_in => p_20_in,
      \rd_index_reg[0]\ => empty_INST_0_i_1_n_0,
      \rd_index_reg[0]_0\(0) => \^rd_index_reg[4]_0\(4),
      read_request => read_request,
      waddr(1 downto 0) => waddr(1 downto 0),
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
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => p_0_in(1)
    );
\wr_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => p_0_in(2)
    );
\wr_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
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
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(0),
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
      D => p_0_in(2),
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
    axi_wready_reg_0 : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    CLK : out STD_LOGIC;
    outSignal_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_bvalid : out STD_LOGIC;
    aw_en_reg_0 : out STD_LOGIC;
    tx_out : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \rd_index_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \officialControl_reg[5]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    baudClockOut : out STD_LOGIC;
    shiftOut0_out : out STD_LOGIC;
    \rd_index_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[11]_0\ : out STD_LOGIC;
    rd_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_onehot_state_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[6]_0\ : out STD_LOGIC;
    watermark : out STD_LOGIC_VECTOR ( 4 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_aclk : in STD_LOGIC;
    outSignal2_reg_0 : in STD_LOGIC;
    axi_bvalid_reg_0 : in STD_LOGIC;
    aw_en_reg_1 : in STD_LOGIC;
    outSignal_reg_1 : in STD_LOGIC;
    shiftOut_reg_0 : in STD_LOGIC;
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
  signal \^clk\ : STD_LOGIC;
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[11]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[12]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[12]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[12]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[12]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[12]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[12]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[12]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[12]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[12]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[11]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[12]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[9]\ : STD_LOGIC;
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
  signal my9x16Fifo_inst_n_10 : STD_LOGIC;
  signal my9x16Fifo_inst_n_22 : STD_LOGIC;
  signal my9x16Fifo_inst_n_23 : STD_LOGIC;
  signal my9x16Fifo_inst_n_24 : STD_LOGIC;
  signal my9x16Fifo_inst_n_25 : STD_LOGIC;
  signal my9x16Fifo_inst_n_26 : STD_LOGIC;
  signal my9x16Fifo_inst_n_27 : STD_LOGIC;
  signal my9x16Fifo_inst_n_28 : STD_LOGIC;
  signal my9x16Fifo_inst_n_29 : STD_LOGIC;
  signal my9x16Fifo_inst_n_30 : STD_LOGIC;
  signal my9x16Fifo_inst_n_40 : STD_LOGIC;
  signal myParityBit : STD_LOGIC;
  signal \myParityBit__0\ : STD_LOGIC;
  signal myParityBit_reg_i_3_n_0 : STD_LOGIC;
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
  signal officialStatus : STD_LOGIC_VECTOR ( 29 to 29 );
  signal \officialStatus[15]_i_1_n_0\ : STD_LOGIC;
  signal \officialStatus[23]_i_1_n_0\ : STD_LOGIC;
  signal \officialStatus[31]_i_1_n_0\ : STD_LOGIC;
  signal \officialStatus[7]_i_1_n_0\ : STD_LOGIC;
  signal \officialStatus__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal outSignal : STD_LOGIC;
  signal \^outsignal_reg_0\ : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_18_in : STD_LOGIC;
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 31 downto 5 );
  signal p_20_in : STD_LOGIC;
  signal parity : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \raddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[3]_i_1_n_0\ : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal shiftOut_i_10_n_0 : STD_LOGIC;
  signal shiftOut_i_11_n_0 : STD_LOGIC;
  signal shiftOut_i_12_n_0 : STD_LOGIC;
  signal shiftOut_i_9_n_0 : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \FSM_onehot_state[11]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_onehot_state[12]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_onehot_state[12]_i_7\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_onehot_state[12]_i_9\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_onehot_state[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_onehot_state[8]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_onehot_state[9]_i_1\ : label is "soft_lutpair21";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "STOP:1000000000000,PARITY:0010000000000,DATA8:0100000000000,DATA6:0000100000000,DATA7:0001000000000,DATA5:0000010000000,START:0000000000010,IDLE:0000000000001,DATA4:0000001000000,DATA2:0000000010000,DATA3:0000000100000,DATA1:0000000001000,DATA0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[10]\ : label is "STOP:1000000000000,PARITY:0010000000000,DATA8:0100000000000,DATA6:0000100000000,DATA7:0001000000000,DATA5:0000010000000,START:0000000000010,IDLE:0000000000001,DATA4:0000001000000,DATA2:0000000010000,DATA3:0000000100000,DATA1:0000000001000,DATA0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[11]\ : label is "STOP:1000000000000,PARITY:0010000000000,DATA8:0100000000000,DATA6:0000100000000,DATA7:0001000000000,DATA5:0000010000000,START:0000000000010,IDLE:0000000000001,DATA4:0000001000000,DATA2:0000000010000,DATA3:0000000100000,DATA1:0000000001000,DATA0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[12]\ : label is "STOP:1000000000000,PARITY:0010000000000,DATA8:0100000000000,DATA6:0000100000000,DATA7:0001000000000,DATA5:0000010000000,START:0000000000010,IDLE:0000000000001,DATA4:0000001000000,DATA2:0000000010000,DATA3:0000000100000,DATA1:0000000001000,DATA0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "STOP:1000000000000,PARITY:0010000000000,DATA8:0100000000000,DATA6:0000100000000,DATA7:0001000000000,DATA5:0000010000000,START:0000000000010,IDLE:0000000000001,DATA4:0000001000000,DATA2:0000000010000,DATA3:0000000100000,DATA1:0000000001000,DATA0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "STOP:1000000000000,PARITY:0010000000000,DATA8:0100000000000,DATA6:0000100000000,DATA7:0001000000000,DATA5:0000010000000,START:0000000000010,IDLE:0000000000001,DATA4:0000001000000,DATA2:0000000010000,DATA3:0000000100000,DATA1:0000000001000,DATA0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "STOP:1000000000000,PARITY:0010000000000,DATA8:0100000000000,DATA6:0000100000000,DATA7:0001000000000,DATA5:0000010000000,START:0000000000010,IDLE:0000000000001,DATA4:0000001000000,DATA2:0000000010000,DATA3:0000000100000,DATA1:0000000001000,DATA0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "STOP:1000000000000,PARITY:0010000000000,DATA8:0100000000000,DATA6:0000100000000,DATA7:0001000000000,DATA5:0000010000000,START:0000000000010,IDLE:0000000000001,DATA4:0000001000000,DATA2:0000000010000,DATA3:0000000100000,DATA1:0000000001000,DATA0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "STOP:1000000000000,PARITY:0010000000000,DATA8:0100000000000,DATA6:0000100000000,DATA7:0001000000000,DATA5:0000010000000,START:0000000000010,IDLE:0000000000001,DATA4:0000001000000,DATA2:0000000010000,DATA3:0000000100000,DATA1:0000000001000,DATA0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "STOP:1000000000000,PARITY:0010000000000,DATA8:0100000000000,DATA6:0000100000000,DATA7:0001000000000,DATA5:0000010000000,START:0000000000010,IDLE:0000000000001,DATA4:0000001000000,DATA2:0000000010000,DATA3:0000000100000,DATA1:0000000001000,DATA0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "STOP:1000000000000,PARITY:0010000000000,DATA8:0100000000000,DATA6:0000100000000,DATA7:0001000000000,DATA5:0000010000000,START:0000000000010,IDLE:0000000000001,DATA4:0000001000000,DATA2:0000000010000,DATA3:0000000100000,DATA1:0000000001000,DATA0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "STOP:1000000000000,PARITY:0010000000000,DATA8:0100000000000,DATA6:0000100000000,DATA7:0001000000000,DATA5:0000010000000,START:0000000000010,IDLE:0000000000001,DATA4:0000001000000,DATA2:0000000010000,DATA3:0000000100000,DATA1:0000000001000,DATA0:0000000000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[9]\ : label is "STOP:1000000000000,PARITY:0010000000000,DATA8:0100000000000,DATA6:0000100000000,DATA7:0001000000000,DATA5:0000010000000,START:0000000000010,IDLE:0000000000001,DATA4:0000001000000,DATA2:0000000010000,DATA3:0000000100000,DATA1:0000000001000,DATA0:0000000000100";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair20";
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
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of myParityBit_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of myParityBit_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of myParityBit_reg_i_2 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of myParityBit_reg_i_3 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \raddr[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of shiftOut_i_10 : label is "soft_lutpair22";
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
  CLK <= \^clk\;
  CO(0) <= \^co\(0);
  aw_en_reg_0 <= \^aw_en_reg_0\;
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  \officialControl_reg[5]_0\(1 downto 0) <= \^officialcontrol_reg[5]_0\(1 downto 0);
  outSignal_reg_0 <= \^outsignal_reg_0\;
\FSM_onehot_state[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A8000AAAAAAAA"
    )
        port map (
      I0 => \myParityBit__0\,
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \officialControl_reg_n_0_[0]\,
      I3 => \officialControl_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_reg_n_0_[6]\,
      I5 => \FSM_onehot_state[12]_i_7_n_0\,
      O => \FSM_onehot_state[10]_i_1_n_0\
    );
\FSM_onehot_state[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80AAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => parity(1),
      I2 => parity(0),
      I3 => \officialControl_reg_n_0_[0]\,
      I4 => \officialControl_reg_n_0_[1]\,
      O => \FSM_onehot_state[11]_i_1_n_0\
    );
\FSM_onehot_state[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDDD"
    )
        port map (
      I0 => \FSM_onehot_state[12]_i_3_n_0\,
      I1 => \FSM_onehot_state[12]_i_4_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => rd_request,
      I4 => \FSM_onehot_state[12]_i_5_n_0\,
      I5 => \FSM_onehot_state[12]_i_6_n_0\,
      O => \FSM_onehot_state[12]_i_1_n_0\
    );
\FSM_onehot_state[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCDDCCDDCCDDCCFD"
    )
        port map (
      I0 => \FSM_onehot_state[12]_i_7_n_0\,
      I1 => \FSM_onehot_state[12]_i_8_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[6]\,
      I3 => \myParityBit__0\,
      I4 => \officialControl_reg_n_0_[0]\,
      I5 => \officialControl_reg_n_0_[1]\,
      O => \FSM_onehot_state[12]_i_2_n_0\
    );
\FSM_onehot_state[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0777FFFF"
    )
        port map (
      I0 => parity(1),
      I1 => parity(0),
      I2 => \officialControl_reg_n_0_[0]\,
      I3 => \officialControl_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_reg_n_0_[9]\,
      O => \FSM_onehot_state[12]_i_3_n_0\
    );
\FSM_onehot_state[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_state_reg_n_0_[8]\,
      I2 => \FSM_onehot_state_reg_n_0_[10]\,
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      O => \FSM_onehot_state[12]_i_4_n_0\
    );
\FSM_onehot_state[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \FSM_onehot_state[12]_i_5_n_0\
    );
\FSM_onehot_state[12]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[11]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[12]_i_6_n_0\
    );
\FSM_onehot_state[12]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D3DF"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \officialControl_reg_n_0_[1]\,
      I2 => \officialControl_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      O => \FSM_onehot_state[12]_i_7_n_0\
    );
\FSM_onehot_state[12]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF1000"
    )
        port map (
      I0 => parity(1),
      I1 => parity(0),
      I2 => \FSM_onehot_state[12]_i_9_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[9]\,
      I4 => \FSM_onehot_state_reg_n_0_[11]\,
      I5 => \FSM_onehot_state_reg_n_0_[10]\,
      O => \FSM_onehot_state[12]_i_8_n_0\
    );
\FSM_onehot_state[12]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \officialControl_reg_n_0_[0]\,
      I1 => \officialControl_reg_n_0_[1]\,
      O => \FSM_onehot_state[12]_i_9_n_0\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => \officialControl_reg_n_0_[1]\,
      I2 => \officialControl_reg_n_0_[0]\,
      O => \FSM_onehot_state[7]_i_1_n_0\
    );
\FSM_onehot_state[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \officialControl_reg_n_0_[1]\,
      I2 => \officialControl_reg_n_0_[0]\,
      O => \FSM_onehot_state[8]_i_1_n_0\
    );
\FSM_onehot_state[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[8]\,
      I1 => \officialControl_reg_n_0_[0]\,
      I2 => \officialControl_reg_n_0_[1]\,
      O => \FSM_onehot_state[9]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk\,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      D => '0',
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => my9x16Fifo_inst_n_40
    );
\FSM_onehot_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      D => \FSM_onehot_state[10]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[10]\,
      R => my9x16Fifo_inst_n_40
    );
\FSM_onehot_state_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      D => \FSM_onehot_state[11]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[11]\,
      R => my9x16Fifo_inst_n_40
    );
\FSM_onehot_state_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      D => \FSM_onehot_state[12]_i_2_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[12]\,
      R => my9x16Fifo_inst_n_40
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[0]\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => my9x16Fifo_inst_n_40
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => my9x16Fifo_inst_n_40
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => my9x16Fifo_inst_n_40
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[3]\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => my9x16Fifo_inst_n_40
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => my9x16Fifo_inst_n_40
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[5]\,
      Q => \FSM_onehot_state_reg_n_0_[6]\,
      R => my9x16Fifo_inst_n_40
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      D => \FSM_onehot_state[7]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[7]\,
      R => my9x16Fifo_inst_n_40
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      D => \FSM_onehot_state[8]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[8]\,
      R => my9x16Fifo_inst_n_40
    );
\FSM_onehot_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      D => \FSM_onehot_state[9]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[9]\,
      R => my9x16Fifo_inst_n_40
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => axi_aclk,
      CE => '1',
      D => aw_en_reg_1,
      Q => \^aw_en_reg_0\,
      S => my9x16Fifo_inst_n_40
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
      R => my9x16Fifo_inst_n_40
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
      R => my9x16Fifo_inst_n_40
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_bvalid_reg_0,
      Q => axi_bvalid,
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(10),
      I1 => \officialStatus__0\(10),
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
      I1 => \officialStatus__0\(11),
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
      I1 => \officialStatus__0\(12),
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
      I1 => \officialStatus__0\(13),
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
      I1 => \officialStatus__0\(14),
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
      I1 => \officialStatus__0\(15),
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
      I1 => \officialStatus__0\(16),
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
      I1 => \officialStatus__0\(17),
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
      I1 => \officialStatus__0\(18),
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
      I1 => \officialStatus__0\(19),
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
      I1 => \officialStatus__0\(20),
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
      I1 => \officialStatus__0\(21),
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
      I1 => \officialStatus__0\(22),
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
      I1 => \officialStatus__0\(23),
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
      I1 => \officialStatus__0\(24),
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
      I1 => \officialStatus__0\(25),
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
      I1 => \officialStatus__0\(26),
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
      I1 => \officialStatus__0\(27),
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
      I1 => \officialStatus__0\(28),
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
      I1 => officialStatus(29),
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
      I1 => \officialStatus__0\(30),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[30]\,
      O => \axi_rdata[30]_i_1_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => \^axi_rvalid_reg_0\,
      O => p_18_in
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(31),
      I1 => \officialStatus__0\(31),
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
      I1 => \officialStatus__0\(9),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \officialControl_reg_n_0_[9]\,
      O => \axi_rdata[9]_i_1_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => my9x16Fifo_inst_n_30,
      Q => axi_rdata(0),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[10]_i_1_n_0\,
      Q => axi_rdata(10),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[11]_i_1_n_0\,
      Q => axi_rdata(11),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[12]_i_1_n_0\,
      Q => axi_rdata(12),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[13]_i_1_n_0\,
      Q => axi_rdata(13),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[14]_i_1_n_0\,
      Q => axi_rdata(14),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[15]_i_1_n_0\,
      Q => axi_rdata(15),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[16]_i_1_n_0\,
      Q => axi_rdata(16),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[17]_i_1_n_0\,
      Q => axi_rdata(17),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[18]_i_1_n_0\,
      Q => axi_rdata(18),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[19]_i_1_n_0\,
      Q => axi_rdata(19),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => my9x16Fifo_inst_n_29,
      Q => axi_rdata(1),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[20]_i_1_n_0\,
      Q => axi_rdata(20),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[21]_i_1_n_0\,
      Q => axi_rdata(21),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[22]_i_1_n_0\,
      Q => axi_rdata(22),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[23]_i_1_n_0\,
      Q => axi_rdata(23),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[24]_i_1_n_0\,
      Q => axi_rdata(24),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[25]_i_1_n_0\,
      Q => axi_rdata(25),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[26]_i_1_n_0\,
      Q => axi_rdata(26),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[27]_i_1_n_0\,
      Q => axi_rdata(27),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[28]_i_1_n_0\,
      Q => axi_rdata(28),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[29]_i_1_n_0\,
      Q => axi_rdata(29),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => my9x16Fifo_inst_n_28,
      Q => axi_rdata(2),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[30]_i_1_n_0\,
      Q => axi_rdata(30),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[31]_i_2_n_0\,
      Q => axi_rdata(31),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => my9x16Fifo_inst_n_27,
      Q => axi_rdata(3),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => my9x16Fifo_inst_n_26,
      Q => axi_rdata(4),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => my9x16Fifo_inst_n_25,
      Q => axi_rdata(5),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => my9x16Fifo_inst_n_24,
      Q => axi_rdata(6),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => my9x16Fifo_inst_n_23,
      Q => axi_rdata(7),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => my9x16Fifo_inst_n_22,
      Q => axi_rdata(8),
      R => my9x16Fifo_inst_n_40
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_18_in,
      D => \axi_rdata[9]_i_1_n_0\,
      Q => axi_rdata(9),
      R => my9x16Fifo_inst_n_40
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_rvalid_reg_1,
      Q => \^axi_rvalid_reg_0\,
      R => my9x16Fifo_inst_n_40
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
      R => my9x16Fifo_inst_n_40
    );
baudClockOut_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^officialcontrol_reg[5]_0\(1),
      I1 => \^outsignal_reg_0\,
      O => baudClockOut
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
      I0 => keepCount_reg(29),
      I1 => ticks_reg(21),
      I2 => keepCount_reg(30),
      I3 => ticks_reg(22),
      I4 => ticks_reg(23),
      I5 => keepCount_reg(31),
      O => \keepCount0_carry__0_i_1_n_0\
    );
\keepCount0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount_reg(26),
      I1 => ticks_reg(18),
      I2 => keepCount_reg(27),
      I3 => ticks_reg(19),
      I4 => ticks_reg(20),
      I5 => keepCount_reg(28),
      O => \keepCount0_carry__0_i_2_n_0\
    );
\keepCount0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount_reg(23),
      I1 => ticks_reg(15),
      I2 => keepCount_reg(24),
      I3 => ticks_reg(16),
      I4 => ticks_reg(17),
      I5 => keepCount_reg(25),
      O => \keepCount0_carry__0_i_3_n_0\
    );
\keepCount0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount_reg(20),
      I1 => ticks_reg(12),
      I2 => keepCount_reg(21),
      I3 => ticks_reg(13),
      I4 => ticks_reg(14),
      I5 => keepCount_reg(22),
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
      I0 => keepCount_reg(41),
      I1 => ticks_reg(33),
      I2 => keepCount_reg(42),
      I3 => ticks_reg(34),
      I4 => ticks_reg(35),
      I5 => keepCount_reg(43),
      O => \keepCount0_carry__1_i_1_n_0\
    );
\keepCount0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount_reg(40),
      I1 => ticks_reg(32),
      I2 => keepCount_reg(38),
      I3 => ticks_reg(30),
      I4 => ticks_reg(31),
      I5 => keepCount_reg(39),
      O => \keepCount0_carry__1_i_2_n_0\
    );
\keepCount0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount_reg(36),
      I1 => ticks_reg(28),
      I2 => keepCount_reg(35),
      I3 => ticks_reg(27),
      I4 => ticks_reg(29),
      I5 => keepCount_reg(37),
      O => \keepCount0_carry__1_i_3_n_0\
    );
\keepCount0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount_reg(32),
      I1 => ticks_reg(24),
      I2 => keepCount_reg(33),
      I3 => ticks_reg(25),
      I4 => ticks_reg(26),
      I5 => keepCount_reg(34),
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
      I0 => ticks_reg(46),
      I1 => ticks_reg(45),
      I2 => ticks_reg(47),
      O => \keepCount0_carry__2_i_1_n_0\
    );
\keepCount0_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => ticks_reg(44),
      I1 => ticks_reg(43),
      I2 => ticks_reg(42),
      I3 => keepCount_reg(50),
      O => \keepCount0_carry__2_i_2_n_0\
    );
\keepCount0_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount_reg(47),
      I1 => ticks_reg(39),
      I2 => keepCount_reg(48),
      I3 => ticks_reg(40),
      I4 => ticks_reg(41),
      I5 => keepCount_reg(49),
      O => \keepCount0_carry__2_i_3_n_0\
    );
\keepCount0_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount_reg(44),
      I1 => ticks_reg(36),
      I2 => keepCount_reg(45),
      I3 => ticks_reg(37),
      I4 => ticks_reg(38),
      I5 => keepCount_reg(46),
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
      I0 => ticks_reg(49),
      I1 => ticks_reg(48),
      I2 => ticks_reg(50),
      O => \keepCount0_carry__3_i_1_n_0\
    );
keepCount0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount_reg(17),
      I1 => ticks_reg(9),
      I2 => keepCount_reg(18),
      I3 => ticks_reg(10),
      I4 => ticks_reg(11),
      I5 => keepCount_reg(19),
      O => keepCount0_carry_i_1_n_0
    );
keepCount0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount_reg(14),
      I1 => ticks_reg(6),
      I2 => keepCount_reg(15),
      I3 => ticks_reg(7),
      I4 => ticks_reg(8),
      I5 => keepCount_reg(16),
      O => keepCount0_carry_i_2_n_0
    );
keepCount0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount_reg(11),
      I1 => ticks_reg(3),
      I2 => keepCount_reg(12),
      I3 => ticks_reg(4),
      I4 => ticks_reg(5),
      I5 => keepCount_reg(13),
      O => keepCount0_carry_i_3_n_0
    );
keepCount0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ticks_reg(0),
      I1 => keepCount_reg(8),
      I2 => keepCount_reg(10),
      I3 => ticks_reg(2),
      I4 => keepCount_reg(9),
      I5 => ticks_reg(1),
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
      I2 => keepCount2_reg(22),
      I3 => ticks2_reg(22),
      I4 => ticks2_reg(23),
      I5 => keepCount2_reg(23),
      O => \keepCount20_carry__0_i_1_n_0\
    );
\keepCount20_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(19),
      I1 => ticks2_reg(19),
      I2 => keepCount2_reg(18),
      I3 => ticks2_reg(18),
      I4 => ticks2_reg(20),
      I5 => keepCount2_reg(20),
      O => \keepCount20_carry__0_i_2_n_0\
    );
\keepCount20_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(15),
      I1 => ticks2_reg(15),
      I2 => keepCount2_reg(16),
      I3 => ticks2_reg(16),
      I4 => ticks2_reg(17),
      I5 => keepCount2_reg(17),
      O => \keepCount20_carry__0_i_3_n_0\
    );
\keepCount20_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(12),
      I1 => ticks2_reg(12),
      I2 => keepCount2_reg(13),
      I3 => ticks2_reg(13),
      I4 => ticks2_reg(14),
      I5 => keepCount2_reg(14),
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
      I0 => keepCount2_reg(35),
      I1 => ticks2_reg(35),
      I2 => keepCount2_reg(33),
      I3 => ticks2_reg(33),
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
      I2 => keepCount2_reg(31),
      I3 => ticks2_reg(31),
      I4 => ticks2_reg(32),
      I5 => keepCount2_reg(32),
      O => \keepCount20_carry__1_i_2_n_0\
    );
\keepCount20_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(27),
      I1 => ticks2_reg(27),
      I2 => keepCount2_reg(28),
      I3 => ticks2_reg(28),
      I4 => ticks2_reg(29),
      I5 => keepCount2_reg(29),
      O => \keepCount20_carry__1_i_3_n_0\
    );
\keepCount20_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(24),
      I1 => ticks2_reg(24),
      I2 => keepCount2_reg(25),
      I3 => ticks2_reg(25),
      I4 => ticks2_reg(26),
      I5 => keepCount2_reg(26),
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
      I2 => keepCount2_reg(46),
      I3 => ticks2_reg(46),
      I4 => ticks2_reg(47),
      I5 => keepCount2_reg(47),
      O => \keepCount20_carry__2_i_1_n_0\
    );
\keepCount20_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(42),
      I1 => ticks2_reg(42),
      I2 => keepCount2_reg(43),
      I3 => ticks2_reg(43),
      I4 => ticks2_reg(44),
      I5 => keepCount2_reg(44),
      O => \keepCount20_carry__2_i_2_n_0\
    );
\keepCount20_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(39),
      I1 => ticks2_reg(39),
      I2 => keepCount2_reg(40),
      I3 => ticks2_reg(40),
      I4 => ticks2_reg(41),
      I5 => keepCount2_reg(41),
      O => \keepCount20_carry__2_i_3_n_0\
    );
\keepCount20_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(38),
      I1 => ticks2_reg(38),
      I2 => keepCount2_reg(36),
      I3 => ticks2_reg(36),
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
      I2 => keepCount2_reg(49),
      I3 => ticks2_reg(49),
      I4 => ticks2_reg(50),
      I5 => keepCount2_reg(50),
      O => \keepCount20_carry__3_i_1_n_0\
    );
keepCount20_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(9),
      I1 => ticks2_reg(9),
      I2 => keepCount2_reg(10),
      I3 => ticks2_reg(10),
      I4 => ticks2_reg(11),
      I5 => keepCount2_reg(11),
      O => keepCount20_carry_i_1_n_0
    );
keepCount20_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(6),
      I1 => ticks2_reg(6),
      I2 => keepCount2_reg(7),
      I3 => ticks2_reg(7),
      I4 => ticks2_reg(8),
      I5 => keepCount2_reg(8),
      O => keepCount20_carry_i_2_n_0
    );
keepCount20_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => keepCount2_reg(4),
      I1 => ticks2_reg(4),
      I2 => keepCount2_reg(3),
      I3 => ticks2_reg(3),
      I4 => ticks2_reg(5),
      I5 => keepCount2_reg(5),
      O => keepCount20_carry_i_3_n_0
    );
keepCount20_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ticks2_reg(0),
      I1 => ticks2_reg(2),
      I2 => ticks2_reg(1),
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
my9x16Fifo_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my9x16Fifo
     port map (
      D(8) => my9x16Fifo_inst_n_22,
      D(7) => my9x16Fifo_inst_n_23,
      D(6) => my9x16Fifo_inst_n_24,
      D(5) => my9x16Fifo_inst_n_25,
      D(4) => my9x16Fifo_inst_n_26,
      D(3) => my9x16Fifo_inst_n_27,
      D(2) => my9x16Fifo_inst_n_28,
      D(1) => my9x16Fifo_inst_n_29,
      D(0) => my9x16Fifo_inst_n_30,
      \FSM_onehot_state_reg[11]\ => \FSM_onehot_state_reg[11]_0\,
      \FSM_onehot_state_reg[2]\ => \FSM_onehot_state_reg[2]_0\,
      \FSM_onehot_state_reg[3]\ => \FSM_onehot_state_reg[3]_0\,
      \FSM_onehot_state_reg[6]\ => \FSM_onehot_state_reg[6]_0\,
      Q(4 downto 0) => Q(4 downto 0),
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn,
      axi_aresetn_0 => my9x16Fifo_inst_n_40,
      axi_arvalid => axi_arvalid,
      axi_awvalid => axi_awvalid,
      \axi_rdata_reg[8]\(8) => \officialControl_reg_n_0_[8]\,
      \axi_rdata_reg[8]\(7) => \officialControl_reg_n_0_[7]\,
      \axi_rdata_reg[8]\(6) => \officialControl_reg_n_0_[6]\,
      \axi_rdata_reg[8]\(5 downto 4) => \^officialcontrol_reg[5]_0\(1 downto 0),
      \axi_rdata_reg[8]\(3 downto 2) => parity(1 downto 0),
      \axi_rdata_reg[8]\(1) => \officialControl_reg_n_0_[1]\,
      \axi_rdata_reg[8]\(0) => \officialControl_reg_n_0_[0]\,
      \axi_rdata_reg[8]_0\(8 downto 0) => officialBaudRate(8 downto 0),
      \axi_rdata_reg[8]_1\(8 downto 0) => \officialStatus__0\(8 downto 0),
      axi_wvalid => axi_wvalid,
      empty => empty,
      full => full,
      in_delay_reg => \^axi_arready_reg_0\,
      in_delay_reg_0 => \^axi_rvalid_reg_0\,
      in_delay_reg_1 => \^axi_wready_reg_0\,
      in_delay_reg_2 => \^axi_awready_reg_0\,
      myParityBit => myParityBit,
      myParityBit_reg => myParityBit_reg_i_3_n_0,
      \officialControl_reg[0]\ => my9x16Fifo_inst_n_10,
      officialData(8 downto 0) => officialData(8 downto 0),
      p_0_in_0(1 downto 0) => p_0_in_0(1 downto 0),
      p_20_in => p_20_in,
      rd_data(7 downto 0) => rd_data(7 downto 0),
      \rd_index_reg[3]_0\ => \rd_index_reg[3]\,
      \rd_index_reg[4]_0\(4 downto 0) => \rd_index_reg[4]\(4 downto 0),
      shiftOut_reg(11) => \FSM_onehot_state_reg_n_0_[12]\,
      shiftOut_reg(10) => \FSM_onehot_state_reg_n_0_[11]\,
      shiftOut_reg(9) => \FSM_onehot_state_reg_n_0_[10]\,
      shiftOut_reg(8) => \FSM_onehot_state_reg_n_0_[9]\,
      shiftOut_reg(7) => \FSM_onehot_state_reg_n_0_[8]\,
      shiftOut_reg(6) => \FSM_onehot_state_reg_n_0_[7]\,
      shiftOut_reg(5) => \FSM_onehot_state_reg_n_0_[6]\,
      shiftOut_reg(4) => \FSM_onehot_state_reg_n_0_[5]\,
      shiftOut_reg(3) => \FSM_onehot_state_reg_n_0_[4]\,
      shiftOut_reg(2) => \FSM_onehot_state_reg_n_0_[3]\,
      shiftOut_reg(1) => \FSM_onehot_state_reg_n_0_[2]\,
      shiftOut_reg(0) => \FSM_onehot_state_reg_n_0_[0]\,
      waddr(1 downto 0) => waddr(3 downto 2),
      watermark(4 downto 0) => watermark(4 downto 0)
    );
myParityBit_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => my9x16Fifo_inst_n_10,
      G => \myParityBit__0\,
      GE => '1',
      Q => myParityBit
    );
myParityBit_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => parity(1),
      I1 => parity(0),
      O => \myParityBit__0\
    );
myParityBit_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => parity(0),
      I1 => parity(1),
      O => myParityBit_reg_i_3_n_0
    );
\officialBaudRate[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_20_in,
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
      I0 => p_20_in,
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
      I0 => p_20_in,
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
      I0 => p_20_in,
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
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(10),
      Q => officialBaudRate(10),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(11),
      Q => officialBaudRate(11),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(12),
      Q => officialBaudRate(12),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(13),
      Q => officialBaudRate(13),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(14),
      Q => officialBaudRate(14),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(15),
      Q => officialBaudRate(15),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(16),
      Q => officialBaudRate(16),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(17),
      Q => officialBaudRate(17),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(18),
      Q => officialBaudRate(18),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(19),
      Q => officialBaudRate(19),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(1),
      Q => officialBaudRate(1),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(20),
      Q => officialBaudRate(20),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(21),
      Q => officialBaudRate(21),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(22),
      Q => officialBaudRate(22),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[23]_i_1_n_0\,
      D => axi_wdata(23),
      Q => officialBaudRate(23),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(24),
      Q => officialBaudRate(24),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(25),
      Q => officialBaudRate(25),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(26),
      Q => officialBaudRate(26),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(27),
      Q => officialBaudRate(27),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(28),
      Q => officialBaudRate(28),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(29),
      Q => officialBaudRate(29),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(2),
      Q => officialBaudRate(2),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(30),
      Q => officialBaudRate(30),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[31]_i_1_n_0\,
      D => axi_wdata(31),
      Q => officialBaudRate(31),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(3),
      Q => officialBaudRate(3),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(4),
      Q => officialBaudRate(4),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(5),
      Q => officialBaudRate(5),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(6),
      Q => officialBaudRate(6),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[7]_i_1_n_0\,
      D => axi_wdata(7),
      Q => officialBaudRate(7),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(8),
      Q => officialBaudRate(8),
      R => my9x16Fifo_inst_n_40
    );
\officialBaudRate_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialBaudRate[15]_i_1_n_0\,
      D => axi_wdata(9),
      Q => officialBaudRate(9),
      R => my9x16Fifo_inst_n_40
    );
\officialControl[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => p_20_in,
      I1 => axi_awaddr(1),
      I2 => axi_wstrb(1),
      I3 => axi_awaddr(0),
      O => \p_1_in__0\(15)
    );
\officialControl[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => p_20_in,
      I1 => axi_awaddr(1),
      I2 => axi_wstrb(2),
      I3 => axi_awaddr(0),
      O => \p_1_in__0\(23)
    );
\officialControl[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => p_20_in,
      I1 => axi_awaddr(1),
      I2 => axi_wstrb(3),
      I3 => axi_awaddr(0),
      O => \p_1_in__0\(31)
    );
\officialControl[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => p_20_in,
      I1 => axi_awaddr(1),
      I2 => axi_wstrb(0),
      I3 => axi_awaddr(0),
      O => \p_1_in__0\(5)
    );
\officialControl_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(5),
      D => axi_wdata(0),
      Q => \officialControl_reg_n_0_[0]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(15),
      D => axi_wdata(10),
      Q => \officialControl_reg_n_0_[10]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(15),
      D => axi_wdata(11),
      Q => \officialControl_reg_n_0_[11]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(15),
      D => axi_wdata(12),
      Q => \officialControl_reg_n_0_[12]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(15),
      D => axi_wdata(13),
      Q => \officialControl_reg_n_0_[13]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(15),
      D => axi_wdata(14),
      Q => \officialControl_reg_n_0_[14]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(15),
      D => axi_wdata(15),
      Q => \officialControl_reg_n_0_[15]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(23),
      D => axi_wdata(16),
      Q => \officialControl_reg_n_0_[16]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(23),
      D => axi_wdata(17),
      Q => \officialControl_reg_n_0_[17]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(23),
      D => axi_wdata(18),
      Q => \officialControl_reg_n_0_[18]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(23),
      D => axi_wdata(19),
      Q => \officialControl_reg_n_0_[19]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(5),
      D => axi_wdata(1),
      Q => \officialControl_reg_n_0_[1]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(23),
      D => axi_wdata(20),
      Q => \officialControl_reg_n_0_[20]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(23),
      D => axi_wdata(21),
      Q => \officialControl_reg_n_0_[21]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(23),
      D => axi_wdata(22),
      Q => \officialControl_reg_n_0_[22]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(23),
      D => axi_wdata(23),
      Q => \officialControl_reg_n_0_[23]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(31),
      D => axi_wdata(24),
      Q => \officialControl_reg_n_0_[24]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(31),
      D => axi_wdata(25),
      Q => \officialControl_reg_n_0_[25]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(31),
      D => axi_wdata(26),
      Q => \officialControl_reg_n_0_[26]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(31),
      D => axi_wdata(27),
      Q => \officialControl_reg_n_0_[27]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(31),
      D => axi_wdata(28),
      Q => \officialControl_reg_n_0_[28]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(31),
      D => axi_wdata(29),
      Q => \officialControl_reg_n_0_[29]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(5),
      D => axi_wdata(2),
      Q => parity(0),
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(31),
      D => axi_wdata(30),
      Q => \officialControl_reg_n_0_[30]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(31),
      D => axi_wdata(31),
      Q => \officialControl_reg_n_0_[31]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(5),
      D => axi_wdata(3),
      Q => parity(1),
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(5),
      D => axi_wdata(4),
      Q => \^officialcontrol_reg[5]_0\(0),
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(5),
      D => axi_wdata(5),
      Q => \^officialcontrol_reg[5]_0\(1),
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(5),
      D => axi_wdata(6),
      Q => \officialControl_reg_n_0_[6]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(5),
      D => axi_wdata(7),
      Q => \officialControl_reg_n_0_[7]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(15),
      D => axi_wdata(8),
      Q => \officialControl_reg_n_0_[8]\,
      R => my9x16Fifo_inst_n_40
    );
\officialControl_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \p_1_in__0\(15),
      D => axi_wdata(9),
      Q => \officialControl_reg_n_0_[9]\,
      R => my9x16Fifo_inst_n_40
    );
\officialData[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => p_20_in,
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
      I1 => p_20_in,
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
      R => my9x16Fifo_inst_n_40
    );
\officialData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(1),
      Q => officialData(1),
      R => my9x16Fifo_inst_n_40
    );
\officialData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(2),
      Q => officialData(2),
      R => my9x16Fifo_inst_n_40
    );
\officialData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(3),
      Q => officialData(3),
      R => my9x16Fifo_inst_n_40
    );
\officialData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(4),
      Q => officialData(4),
      R => my9x16Fifo_inst_n_40
    );
\officialData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(5),
      Q => officialData(5),
      R => my9x16Fifo_inst_n_40
    );
\officialData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(6),
      Q => officialData(6),
      R => my9x16Fifo_inst_n_40
    );
\officialData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialData[7]_i_1_n_0\,
      D => axi_wdata(7),
      Q => officialData(7),
      R => my9x16Fifo_inst_n_40
    );
\officialData_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \officialData[8]_i_1_n_0\,
      Q => officialData(8),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => p_20_in,
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
      I0 => p_20_in,
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
      I0 => p_20_in,
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
      I0 => p_20_in,
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
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(10),
      Q => \officialStatus__0\(10),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(11),
      Q => \officialStatus__0\(11),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(12),
      Q => \officialStatus__0\(12),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(13),
      Q => \officialStatus__0\(13),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(14),
      Q => \officialStatus__0\(14),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(15),
      Q => \officialStatus__0\(15),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(16),
      Q => \officialStatus__0\(16),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(17),
      Q => \officialStatus__0\(17),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(18),
      Q => \officialStatus__0\(18),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(19),
      Q => \officialStatus__0\(19),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(1),
      Q => \officialStatus__0\(1),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(20),
      Q => \officialStatus__0\(20),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(21),
      Q => \officialStatus__0\(21),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(22),
      Q => \officialStatus__0\(22),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(23),
      Q => \officialStatus__0\(23),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(24),
      Q => \officialStatus__0\(24),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(25),
      Q => \officialStatus__0\(25),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(26),
      Q => \officialStatus__0\(26),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(27),
      Q => \officialStatus__0\(27),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(28),
      Q => \officialStatus__0\(28),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(29),
      Q => officialStatus(29),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(2),
      Q => \officialStatus__0\(2),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(30),
      Q => \officialStatus__0\(30),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(31),
      Q => \officialStatus__0\(31),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(3),
      Q => \officialStatus__0\(3),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(4),
      Q => \officialStatus__0\(4),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(5),
      Q => \officialStatus__0\(5),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(6),
      Q => \officialStatus__0\(6),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(7),
      Q => \officialStatus__0\(7),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(8),
      Q => \officialStatus__0\(8),
      R => my9x16Fifo_inst_n_40
    );
\officialStatus_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(9),
      Q => \officialStatus__0\(9),
      R => my9x16Fifo_inst_n_40
    );
outSignal2_reg: unisim.vcomponents.FDRE
     port map (
      C => \^outsignal_reg_0\,
      CE => sel,
      D => outSignal2_reg_0,
      Q => \^clk\,
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
      R => my9x16Fifo_inst_n_40
    );
\raddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \raddr[3]_i_1_n_0\,
      Q => p_0_in_0(1),
      R => my9x16Fifo_inst_n_40
    );
shiftOut_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \officialControl_reg_n_0_[0]\,
      I1 => \officialControl_reg_n_0_[1]\,
      O => shiftOut_i_10_n_0
    );
shiftOut_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[10]\,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => \FSM_onehot_state_reg_n_0_[12]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \FSM_onehot_state[12]_i_6_n_0\,
      O => shiftOut_i_11_n_0
    );
shiftOut_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFCFAA808000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \officialControl_reg_n_0_[0]\,
      I2 => \officialControl_reg_n_0_[1]\,
      I3 => parity(0),
      I4 => parity(1),
      I5 => \FSM_onehot_state_reg_n_0_[8]\,
      O => shiftOut_i_12_n_0
    );
shiftOut_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8A888A8"
    )
        port map (
      I0 => axi_aresetn,
      I1 => shiftOut_i_9_n_0,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => shiftOut_i_10_n_0,
      I4 => \myParityBit__0\,
      I5 => shiftOut_i_11_n_0,
      O => shiftOut0_out
    );
shiftOut_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFE0000"
    )
        port map (
      I0 => \officialControl_reg_n_0_[1]\,
      I1 => \officialControl_reg_n_0_[0]\,
      I2 => parity(0),
      I3 => parity(1),
      I4 => \FSM_onehot_state_reg_n_0_[6]\,
      I5 => shiftOut_i_12_n_0,
      O => shiftOut_i_9_n_0
    );
shiftOut_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => shiftOut_reg_0,
      Q => tx_out,
      R => '0'
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
      R => my9x16Fifo_inst_n_40
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \waddr[3]_i_1_n_0\,
      Q => waddr(3),
      R => my9x16Fifo_inst_n_40
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial is
  port (
    axi_wready_reg : out STD_LOGIC;
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_bvalid : out STD_LOGIC;
    tx_out : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \wr_index_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \rd_index_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    baudClockOut : out STD_LOGIC;
    \rd_index_reg[3]\ : out STD_LOGIC;
    rd_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    watermark : out STD_LOGIC_VECTOR ( 4 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
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
  signal serial_v1_0_AXI_inst_n_25 : STD_LOGIC;
  signal serial_v1_0_AXI_inst_n_3 : STD_LOGIC;
  signal serial_v1_0_AXI_inst_n_34 : STD_LOGIC;
  signal serial_v1_0_AXI_inst_n_35 : STD_LOGIC;
  signal serial_v1_0_AXI_inst_n_36 : STD_LOGIC;
  signal serial_v1_0_AXI_inst_n_7 : STD_LOGIC;
  signal shiftOut0_out : STD_LOGIC;
  signal shiftOut_i_1_n_0 : STD_LOGIC;
  signal \^tx_out\ : STD_LOGIC;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  axi_arready_reg <= \^axi_arready_reg\;
  axi_awready_reg <= \^axi_awready_reg\;
  axi_bvalid <= \^axi_bvalid\;
  axi_rvalid_reg <= \^axi_rvalid_reg\;
  axi_wready_reg <= \^axi_wready_reg\;
  tx_out <= \^tx_out\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF8AAA8AAA8AAA"
    )
        port map (
      I0 => serial_v1_0_AXI_inst_n_7,
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
      INIT => X"08F8"
    )
        port map (
      I0 => \^axi_arready_reg\,
      I1 => axi_arvalid,
      I2 => \^axi_rvalid_reg\,
      I3 => axi_rready,
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
      I0 => \^q\(0),
      I1 => keepCount0,
      I2 => serial_v1_0_AXI_inst_n_3,
      O => outSignal_i_1_n_0
    );
serial_v1_0_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI
     port map (
      CLK => outSignal2,
      CO(0) => keepCount0,
      \FSM_onehot_state_reg[11]_0\ => serial_v1_0_AXI_inst_n_25,
      \FSM_onehot_state_reg[2]_0\ => serial_v1_0_AXI_inst_n_34,
      \FSM_onehot_state_reg[3]_0\ => serial_v1_0_AXI_inst_n_35,
      \FSM_onehot_state_reg[6]_0\ => serial_v1_0_AXI_inst_n_36,
      Q(4 downto 0) => \wr_index_reg[4]\(4 downto 0),
      aw_en_reg_0 => serial_v1_0_AXI_inst_n_7,
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
      outSignal2_reg_0 => outSignal2_i_1_n_0,
      outSignal_reg_0 => serial_v1_0_AXI_inst_n_3,
      outSignal_reg_1 => outSignal_i_1_n_0,
      rd_data(7 downto 0) => rd_data(7 downto 0),
      \rd_index_reg[3]\ => \rd_index_reg[3]\,
      \rd_index_reg[4]\(4 downto 0) => \rd_index_reg[4]\(4 downto 0),
      rd_request => rd_request,
      shiftOut0_out => shiftOut0_out,
      shiftOut_reg_0 => shiftOut_i_1_n_0,
      tx_out => \^tx_out\,
      watermark(4 downto 0) => watermark(4 downto 0)
    );
shiftOut_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => serial_v1_0_AXI_inst_n_35,
      I1 => serial_v1_0_AXI_inst_n_36,
      I2 => serial_v1_0_AXI_inst_n_34,
      I3 => serial_v1_0_AXI_inst_n_25,
      I4 => shiftOut0_out,
      I5 => \^tx_out\,
      O => shiftOut_i_1_n_0
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
  signal n_0_460 : STD_LOGIC;
  signal n_0_461 : STD_LOGIC;
  signal n_0_462 : STD_LOGIC;
  signal n_0_463 : STD_LOGIC;
  signal n_0_464 : STD_LOGIC;
  signal n_0_465 : STD_LOGIC;
  signal n_0_466 : STD_LOGIC;
  signal n_0_467 : STD_LOGIC;
  signal n_0_468 : STD_LOGIC;
  signal n_0_469 : STD_LOGIC;
  signal n_0_470 : STD_LOGIC;
  signal n_0_471 : STD_LOGIC;
  signal n_0_473 : STD_LOGIC;
  signal n_0_474 : STD_LOGIC;
  signal n_0_475 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of i_460 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of i_461 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of i_462 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of i_463 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of i_464 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of i_465 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of i_466 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of i_467 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of i_468 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of i_469 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of i_470 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of i_471 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of i_473 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of i_474 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of i_475 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \inst/serial_v1_0_AXI_inst/i_/i_/i_\ : label is "soft_lutpair24";
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
i_460: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_460
    );
i_461: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_461
    );
i_462: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_462
    );
i_463: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_463
    );
i_464: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_464
    );
i_465: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_465
    );
i_466: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_466
    );
i_467: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_467
    );
i_468: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_468
    );
i_469: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_469
    );
i_470: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_470
    );
i_471: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_471
    );
i_473: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_473
    );
i_474: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_474
    );
i_475: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => n_0_475
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
      rd_data(7 downto 5) => rd_data(8 downto 6),
      rd_data(4 downto 0) => rd_data(4 downto 0),
      \rd_index_reg[3]\ => rd_data(5),
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
