-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (lin64) Build 5164865 Thu Sep  5 14:36:28 MDT 2024
-- Date        : Mon Oct 28 12:41:17 2024
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
    rd_request : in STD_LOGIC;
    axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect is
  signal in_delay : STD_LOGIC;
begin
in_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => rd_request,
      Q => in_delay,
      R => '0'
    );
\rd_index[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_request,
      I1 => in_delay,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_request : in STD_LOGIC;
    axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0 : entity is "edge_detect";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0 is
  signal in_delay : STD_LOGIC;
begin
in_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => wr_request,
      Q => in_delay,
      R => '0'
    );
\wr_index[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_request,
      I1 => in_delay,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIFOTEST is
  port (
    watermark : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_index : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_index : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_request : in STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    rd_request : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIFOTEST;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIFOTEST is
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^rd_index\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \rd_index[0]_i_1_n_0\ : STD_LOGIC;
  signal read_request : STD_LOGIC;
  signal \watermark[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^wr_index\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal write_request : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rd_index[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rd_index[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rd_index[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rd_index[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \watermark[0]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \watermark[1]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \watermark[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \watermark[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wr_index[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wr_index[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wr_index[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wr_index[4]_i_2\ : label is "soft_lutpair0";
begin
  rd_index(4 downto 0) <= \^rd_index\(4 downto 0);
  wr_index(4 downto 0) <= \^wr_index\(4 downto 0);
rd_edge: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect
     port map (
      E(0) => read_request,
      axi_aclk => axi_aclk,
      rd_request => rd_request
    );
\rd_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rd_index\(0),
      O => \rd_index[0]_i_1_n_0\
    );
\rd_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rd_index\(0),
      I1 => \^rd_index\(1),
      O => \p_0_in__1\(1)
    );
\rd_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^rd_index\(0),
      I1 => \^rd_index\(1),
      I2 => \^rd_index\(2),
      O => \p_0_in__1\(2)
    );
\rd_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^rd_index\(1),
      I1 => \^rd_index\(0),
      I2 => \^rd_index\(2),
      I3 => \^rd_index\(3),
      O => \p_0_in__1\(3)
    );
\rd_index[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^rd_index\(2),
      I1 => \^rd_index\(0),
      I2 => \^rd_index\(1),
      I3 => \^rd_index\(3),
      I4 => \^rd_index\(4),
      O => \p_0_in__1\(4)
    );
\rd_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => read_request,
      D => \rd_index[0]_i_1_n_0\,
      Q => \^rd_index\(0),
      R => '0'
    );
\rd_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => read_request,
      D => \p_0_in__1\(1),
      Q => \^rd_index\(1),
      R => '0'
    );
\rd_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => read_request,
      D => \p_0_in__1\(2),
      Q => \^rd_index\(2),
      R => '0'
    );
\rd_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => read_request,
      D => \p_0_in__1\(3),
      Q => \^rd_index\(3),
      R => '0'
    );
\rd_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => read_request,
      D => \p_0_in__1\(4),
      Q => \^rd_index\(4),
      R => '0'
    );
\watermark[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^wr_index\(0),
      I1 => \^rd_index\(0),
      O => watermark(0)
    );
\watermark[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^rd_index\(0),
      I1 => \^wr_index\(0),
      I2 => \^rd_index\(1),
      I3 => \^wr_index\(1),
      O => watermark(1)
    );
\watermark[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F04B0FBB0FB4F04"
    )
        port map (
      I0 => \^wr_index\(0),
      I1 => \^rd_index\(0),
      I2 => \^wr_index\(1),
      I3 => \^rd_index\(1),
      I4 => \^rd_index\(2),
      I5 => \^wr_index\(2),
      O => watermark(2)
    );
\watermark[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \watermark[4]_INST_0_i_1_n_0\,
      I1 => \^rd_index\(3),
      I2 => \^wr_index\(3),
      O => watermark(3)
    );
\watermark[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \watermark[4]_INST_0_i_1_n_0\,
      I1 => \^wr_index\(3),
      I2 => \^rd_index\(3),
      I3 => \^rd_index\(4),
      I4 => \^wr_index\(4),
      O => watermark(4)
    );
\watermark[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D4DD4444DDDDD4DD"
    )
        port map (
      I0 => \^rd_index\(2),
      I1 => \^wr_index\(2),
      I2 => \^wr_index\(0),
      I3 => \^rd_index\(0),
      I4 => \^wr_index\(1),
      I5 => \^rd_index\(1),
      O => \watermark[4]_INST_0_i_1_n_0\
    );
wr_edge: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0
     port map (
      E(0) => write_request,
      axi_aclk => axi_aclk,
      wr_request => wr_request
    );
\wr_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^wr_index\(0),
      O => \p_0_in__0\(0)
    );
\wr_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^wr_index\(0),
      I1 => \^wr_index\(1),
      O => \p_0_in__0\(1)
    );
\wr_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^wr_index\(0),
      I1 => \^wr_index\(1),
      I2 => \^wr_index\(2),
      O => \p_0_in__0\(2)
    );
\wr_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^wr_index\(1),
      I1 => \^wr_index\(0),
      I2 => \^wr_index\(2),
      I3 => \^wr_index\(3),
      O => \p_0_in__0\(3)
    );
\wr_index[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^wr_index\(2),
      I1 => \^wr_index\(0),
      I2 => \^wr_index\(1),
      I3 => \^wr_index\(3),
      I4 => \^wr_index\(4),
      O => \p_0_in__0\(4)
    );
\wr_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => write_request,
      D => \p_0_in__0\(0),
      Q => \^wr_index\(0),
      R => '0'
    );
\wr_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => write_request,
      D => \p_0_in__0\(1),
      Q => \^wr_index\(1),
      R => '0'
    );
\wr_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => write_request,
      D => \p_0_in__0\(2),
      Q => \^wr_index\(2),
      R => '0'
    );
\wr_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => write_request,
      D => \p_0_in__0\(3),
      Q => \^wr_index\(3),
      R => '0'
    );
\wr_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => write_request,
      D => \p_0_in__0\(4),
      Q => \^wr_index\(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    watermark : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_index : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_index : out STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rvalid : out STD_LOGIC;
    axi_bvalid : out STD_LOGIC;
    axi_wvalid : in STD_LOGIC;
    axi_awvalid : in STD_LOGIC;
    wr_request : in STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    rd_request : in STD_LOGIC;
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_arvalid : in STD_LOGIC;
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_data : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_aresetn : in STD_LOGIC;
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
  signal \^axi_bvalid\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_1_n_0\ : STD_LOGIC;
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
  signal \axi_rdata[1]_i_1_n_0\ : STD_LOGIC;
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
  signal \axi_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \^axi_rvalid\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal officialBaudRate : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \officialBaudRate[31]_i_2_n_0\ : STD_LOGIC;
  signal officialControl : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \officialControl[15]_i_1_n_0\ : STD_LOGIC;
  signal \officialControl[23]_i_1_n_0\ : STD_LOGIC;
  signal \officialControl[31]_i_1_n_0\ : STD_LOGIC;
  signal \officialControl[7]_i_1_n_0\ : STD_LOGIC;
  signal officialStatus : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \officialStatus[15]_i_1_n_0\ : STD_LOGIC;
  signal \officialStatus[23]_i_1_n_0\ : STD_LOGIC;
  signal \officialStatus[31]_i_1_n_0\ : STD_LOGIC;
  signal \officialStatus[7]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \pre_read_port_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \pre_read_port_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \pre_read_port_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \pre_read_port_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \pre_read_port_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \pre_read_port_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \pre_read_port_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \pre_read_port_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \pre_read_port_data_reg_n_0_[8]\ : STD_LOGIC;
  signal raddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \raddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \rd__0\ : STD_LOGIC;
  signal read_port_data : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \officialBaudRate[31]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \raddr[3]_i_1\ : label is "soft_lutpair7";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  axi_bvalid <= \^axi_bvalid\;
  axi_rvalid <= \^axi_rvalid\;
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
      S => p_0_in
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
      R => p_0_in
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => p_0_in
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
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008000FFFF8000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => \^s_axi_wready\,
      I2 => axi_wvalid,
      I3 => axi_awvalid,
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
      R => p_0_in
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(0),
      I1 => officialStatus(0),
      I2 => raddr(2),
      I3 => officialControl(0),
      I4 => raddr(3),
      I5 => read_port_data(0),
      O => \axi_rdata[0]_i_1_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(10),
      I1 => officialStatus(10),
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
      I1 => officialStatus(11),
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
      I1 => officialStatus(12),
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
      I1 => officialStatus(13),
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
      I1 => officialStatus(14),
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
      I1 => officialStatus(15),
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
      I1 => officialStatus(16),
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
      I1 => officialStatus(17),
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
      I1 => officialStatus(18),
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
      I1 => officialStatus(19),
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(19),
      O => \axi_rdata[19]_i_1_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(1),
      I1 => officialStatus(1),
      I2 => raddr(2),
      I3 => officialControl(1),
      I4 => raddr(3),
      I5 => read_port_data(1),
      O => \axi_rdata[1]_i_1_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(20),
      I1 => officialStatus(20),
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
      I1 => officialStatus(21),
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
      I1 => officialStatus(22),
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
      I1 => officialStatus(23),
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
      I1 => officialStatus(24),
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
      I1 => officialStatus(25),
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
      I1 => officialStatus(26),
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
      I1 => officialStatus(27),
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
      I1 => officialStatus(28),
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
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(2),
      I1 => officialStatus(2),
      I2 => raddr(2),
      I3 => officialControl(2),
      I4 => raddr(3),
      I5 => read_port_data(2),
      O => \axi_rdata[2]_i_1_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(30),
      I1 => officialStatus(30),
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(30),
      O => \axi_rdata[30]_i_1_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(31),
      I1 => officialStatus(31),
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(31),
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(3),
      I1 => officialStatus(3),
      I2 => raddr(2),
      I3 => officialControl(3),
      I4 => raddr(3),
      I5 => read_port_data(3),
      O => \axi_rdata[3]_i_1_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(4),
      I1 => officialStatus(4),
      I2 => raddr(2),
      I3 => officialControl(4),
      I4 => raddr(3),
      I5 => read_port_data(4),
      O => \axi_rdata[4]_i_1_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(5),
      I1 => officialStatus(5),
      I2 => raddr(2),
      I3 => officialControl(5),
      I4 => raddr(3),
      I5 => read_port_data(5),
      O => \axi_rdata[5]_i_1_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(6),
      I1 => officialStatus(6),
      I2 => raddr(2),
      I3 => officialControl(6),
      I4 => raddr(3),
      I5 => read_port_data(6),
      O => \axi_rdata[6]_i_1_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(7),
      I1 => officialStatus(7),
      I2 => raddr(2),
      I3 => officialControl(7),
      I4 => raddr(3),
      I5 => read_port_data(7),
      O => \axi_rdata[7]_i_1_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => officialBaudRate(8),
      I1 => officialStatus(8),
      I2 => raddr(2),
      I3 => officialControl(8),
      I4 => raddr(3),
      I5 => read_port_data(8),
      O => \axi_rdata[8]_i_1_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => officialBaudRate(9),
      I1 => officialStatus(9),
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => officialControl(9),
      O => \axi_rdata[9]_i_1_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[0]_i_1_n_0\,
      Q => axi_rdata(0),
      R => p_0_in
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[10]_i_1_n_0\,
      Q => axi_rdata(10),
      R => p_0_in
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[11]_i_1_n_0\,
      Q => axi_rdata(11),
      R => p_0_in
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[12]_i_1_n_0\,
      Q => axi_rdata(12),
      R => p_0_in
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[13]_i_1_n_0\,
      Q => axi_rdata(13),
      R => p_0_in
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[14]_i_1_n_0\,
      Q => axi_rdata(14),
      R => p_0_in
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[15]_i_1_n_0\,
      Q => axi_rdata(15),
      R => p_0_in
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[16]_i_1_n_0\,
      Q => axi_rdata(16),
      R => p_0_in
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[17]_i_1_n_0\,
      Q => axi_rdata(17),
      R => p_0_in
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[18]_i_1_n_0\,
      Q => axi_rdata(18),
      R => p_0_in
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[19]_i_1_n_0\,
      Q => axi_rdata(19),
      R => p_0_in
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[1]_i_1_n_0\,
      Q => axi_rdata(1),
      R => p_0_in
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[20]_i_1_n_0\,
      Q => axi_rdata(20),
      R => p_0_in
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[21]_i_1_n_0\,
      Q => axi_rdata(21),
      R => p_0_in
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[22]_i_1_n_0\,
      Q => axi_rdata(22),
      R => p_0_in
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[23]_i_1_n_0\,
      Q => axi_rdata(23),
      R => p_0_in
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[24]_i_1_n_0\,
      Q => axi_rdata(24),
      R => p_0_in
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[25]_i_1_n_0\,
      Q => axi_rdata(25),
      R => p_0_in
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[26]_i_1_n_0\,
      Q => axi_rdata(26),
      R => p_0_in
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[27]_i_1_n_0\,
      Q => axi_rdata(27),
      R => p_0_in
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[28]_i_1_n_0\,
      Q => axi_rdata(28),
      R => p_0_in
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[29]_i_1_n_0\,
      Q => axi_rdata(29),
      R => p_0_in
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[2]_i_1_n_0\,
      Q => axi_rdata(2),
      R => p_0_in
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[30]_i_1_n_0\,
      Q => axi_rdata(30),
      R => p_0_in
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[31]_i_1_n_0\,
      Q => axi_rdata(31),
      R => p_0_in
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[3]_i_1_n_0\,
      Q => axi_rdata(3),
      R => p_0_in
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[4]_i_1_n_0\,
      Q => axi_rdata(4),
      R => p_0_in
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[5]_i_1_n_0\,
      Q => axi_rdata(5),
      R => p_0_in
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[6]_i_1_n_0\,
      Q => axi_rdata(6),
      R => p_0_in
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[7]_i_1_n_0\,
      Q => axi_rdata(7),
      R => p_0_in
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[8]_i_1_n_0\,
      Q => axi_rdata(8),
      R => p_0_in
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \rd__0\,
      D => \axi_rdata[9]_i_1_n_0\,
      Q => axi_rdata(9),
      R => p_0_in
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => axi_arvalid,
      I2 => axi_rready,
      I3 => \^axi_rvalid\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid\,
      R => p_0_in
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
      R => p_0_in
    );
myFifo: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIFOTEST
     port map (
      axi_aclk => axi_aclk,
      rd_index(4 downto 0) => rd_index(4 downto 0),
      rd_request => rd_request,
      watermark(4 downto 0) => watermark(4 downto 0),
      wr_index(4 downto 0) => wr_index(4 downto 0),
      wr_request => wr_request
    );
\officialBaudRate[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \officialBaudRate[31]_i_2_n_0\,
      I1 => axi_wstrb(1),
      I2 => axi_awaddr(0),
      I3 => axi_awaddr(1),
      O => p_1_in(15)
    );
\officialBaudRate[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \officialBaudRate[31]_i_2_n_0\,
      I1 => axi_wstrb(2),
      I2 => axi_awaddr(0),
      I3 => axi_awaddr(1),
      O => p_1_in(23)
    );
\officialBaudRate[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \officialBaudRate[31]_i_2_n_0\,
      I1 => axi_wstrb(3),
      I2 => axi_awaddr(0),
      I3 => axi_awaddr(1),
      O => p_1_in(31)
    );
\officialBaudRate[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => axi_wvalid,
      I1 => axi_awvalid,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      O => \officialBaudRate[31]_i_2_n_0\
    );
\officialBaudRate[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \officialBaudRate[31]_i_2_n_0\,
      I1 => axi_wstrb(0),
      I2 => axi_awaddr(0),
      I3 => axi_awaddr(1),
      O => p_1_in(7)
    );
\officialBaudRate_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(0),
      Q => officialBaudRate(0),
      R => p_0_in
    );
\officialBaudRate_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(10),
      Q => officialBaudRate(10),
      R => p_0_in
    );
\officialBaudRate_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(11),
      Q => officialBaudRate(11),
      R => p_0_in
    );
\officialBaudRate_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(12),
      Q => officialBaudRate(12),
      R => p_0_in
    );
\officialBaudRate_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(13),
      Q => officialBaudRate(13),
      R => p_0_in
    );
\officialBaudRate_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(14),
      Q => officialBaudRate(14),
      R => p_0_in
    );
\officialBaudRate_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(15),
      Q => officialBaudRate(15),
      R => p_0_in
    );
\officialBaudRate_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(16),
      Q => officialBaudRate(16),
      R => p_0_in
    );
\officialBaudRate_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(17),
      Q => officialBaudRate(17),
      R => p_0_in
    );
\officialBaudRate_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(18),
      Q => officialBaudRate(18),
      R => p_0_in
    );
\officialBaudRate_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(19),
      Q => officialBaudRate(19),
      R => p_0_in
    );
\officialBaudRate_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(1),
      Q => officialBaudRate(1),
      R => p_0_in
    );
\officialBaudRate_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(20),
      Q => officialBaudRate(20),
      R => p_0_in
    );
\officialBaudRate_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(21),
      Q => officialBaudRate(21),
      R => p_0_in
    );
\officialBaudRate_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(22),
      Q => officialBaudRate(22),
      R => p_0_in
    );
\officialBaudRate_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(23),
      Q => officialBaudRate(23),
      R => p_0_in
    );
\officialBaudRate_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(24),
      Q => officialBaudRate(24),
      R => p_0_in
    );
\officialBaudRate_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(25),
      Q => officialBaudRate(25),
      R => p_0_in
    );
\officialBaudRate_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(26),
      Q => officialBaudRate(26),
      R => p_0_in
    );
\officialBaudRate_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(27),
      Q => officialBaudRate(27),
      R => p_0_in
    );
\officialBaudRate_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(28),
      Q => officialBaudRate(28),
      R => p_0_in
    );
\officialBaudRate_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(29),
      Q => officialBaudRate(29),
      R => p_0_in
    );
\officialBaudRate_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(2),
      Q => officialBaudRate(2),
      R => p_0_in
    );
\officialBaudRate_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(30),
      Q => officialBaudRate(30),
      R => p_0_in
    );
\officialBaudRate_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(31),
      Q => officialBaudRate(31),
      R => p_0_in
    );
\officialBaudRate_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(3),
      Q => officialBaudRate(3),
      R => p_0_in
    );
\officialBaudRate_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(4),
      Q => officialBaudRate(4),
      R => p_0_in
    );
\officialBaudRate_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(5),
      Q => officialBaudRate(5),
      R => p_0_in
    );
\officialBaudRate_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(6),
      Q => officialBaudRate(6),
      R => p_0_in
    );
\officialBaudRate_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(7),
      Q => officialBaudRate(7),
      R => p_0_in
    );
\officialBaudRate_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(8),
      Q => officialBaudRate(8),
      R => p_0_in
    );
\officialBaudRate_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(9),
      Q => officialBaudRate(9),
      R => p_0_in
    );
\officialControl[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \officialBaudRate[31]_i_2_n_0\,
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
      I0 => \officialBaudRate[31]_i_2_n_0\,
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
      I0 => \officialBaudRate[31]_i_2_n_0\,
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
      I0 => \officialBaudRate[31]_i_2_n_0\,
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
      R => p_0_in
    );
\officialControl_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[15]_i_1_n_0\,
      D => axi_wdata(10),
      Q => officialControl(10),
      R => p_0_in
    );
\officialControl_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[15]_i_1_n_0\,
      D => axi_wdata(11),
      Q => officialControl(11),
      R => p_0_in
    );
\officialControl_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[15]_i_1_n_0\,
      D => axi_wdata(12),
      Q => officialControl(12),
      R => p_0_in
    );
\officialControl_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[15]_i_1_n_0\,
      D => axi_wdata(13),
      Q => officialControl(13),
      R => p_0_in
    );
\officialControl_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[15]_i_1_n_0\,
      D => axi_wdata(14),
      Q => officialControl(14),
      R => p_0_in
    );
\officialControl_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[15]_i_1_n_0\,
      D => axi_wdata(15),
      Q => officialControl(15),
      R => p_0_in
    );
\officialControl_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[23]_i_1_n_0\,
      D => axi_wdata(16),
      Q => officialControl(16),
      R => p_0_in
    );
\officialControl_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[23]_i_1_n_0\,
      D => axi_wdata(17),
      Q => officialControl(17),
      R => p_0_in
    );
\officialControl_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[23]_i_1_n_0\,
      D => axi_wdata(18),
      Q => officialControl(18),
      R => p_0_in
    );
\officialControl_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[23]_i_1_n_0\,
      D => axi_wdata(19),
      Q => officialControl(19),
      R => p_0_in
    );
\officialControl_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[7]_i_1_n_0\,
      D => axi_wdata(1),
      Q => officialControl(1),
      R => p_0_in
    );
\officialControl_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[23]_i_1_n_0\,
      D => axi_wdata(20),
      Q => officialControl(20),
      R => p_0_in
    );
\officialControl_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[23]_i_1_n_0\,
      D => axi_wdata(21),
      Q => officialControl(21),
      R => p_0_in
    );
\officialControl_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[23]_i_1_n_0\,
      D => axi_wdata(22),
      Q => officialControl(22),
      R => p_0_in
    );
\officialControl_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[23]_i_1_n_0\,
      D => axi_wdata(23),
      Q => officialControl(23),
      R => p_0_in
    );
\officialControl_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[31]_i_1_n_0\,
      D => axi_wdata(24),
      Q => officialControl(24),
      R => p_0_in
    );
\officialControl_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[31]_i_1_n_0\,
      D => axi_wdata(25),
      Q => officialControl(25),
      R => p_0_in
    );
\officialControl_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[31]_i_1_n_0\,
      D => axi_wdata(26),
      Q => officialControl(26),
      R => p_0_in
    );
\officialControl_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[31]_i_1_n_0\,
      D => axi_wdata(27),
      Q => officialControl(27),
      R => p_0_in
    );
\officialControl_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[31]_i_1_n_0\,
      D => axi_wdata(28),
      Q => officialControl(28),
      R => p_0_in
    );
\officialControl_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[31]_i_1_n_0\,
      D => axi_wdata(29),
      Q => officialControl(29),
      R => p_0_in
    );
\officialControl_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[7]_i_1_n_0\,
      D => axi_wdata(2),
      Q => officialControl(2),
      R => p_0_in
    );
\officialControl_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[31]_i_1_n_0\,
      D => axi_wdata(30),
      Q => officialControl(30),
      R => p_0_in
    );
\officialControl_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[31]_i_1_n_0\,
      D => axi_wdata(31),
      Q => officialControl(31),
      R => p_0_in
    );
\officialControl_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[7]_i_1_n_0\,
      D => axi_wdata(3),
      Q => officialControl(3),
      R => p_0_in
    );
\officialControl_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[7]_i_1_n_0\,
      D => axi_wdata(4),
      Q => officialControl(4),
      R => p_0_in
    );
\officialControl_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[7]_i_1_n_0\,
      D => axi_wdata(5),
      Q => officialControl(5),
      R => p_0_in
    );
\officialControl_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[7]_i_1_n_0\,
      D => axi_wdata(6),
      Q => officialControl(6),
      R => p_0_in
    );
\officialControl_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[7]_i_1_n_0\,
      D => axi_wdata(7),
      Q => officialControl(7),
      R => p_0_in
    );
\officialControl_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[15]_i_1_n_0\,
      D => axi_wdata(8),
      Q => officialControl(8),
      R => p_0_in
    );
\officialControl_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialControl[15]_i_1_n_0\,
      D => axi_wdata(9),
      Q => officialControl(9),
      R => p_0_in
    );
\officialStatus[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \officialBaudRate[31]_i_2_n_0\,
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
      I0 => \officialBaudRate[31]_i_2_n_0\,
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
      I0 => \officialBaudRate[31]_i_2_n_0\,
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
      I0 => \officialBaudRate[31]_i_2_n_0\,
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
      R => p_0_in
    );
\officialStatus_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(10),
      Q => officialStatus(10),
      R => p_0_in
    );
\officialStatus_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(11),
      Q => officialStatus(11),
      R => p_0_in
    );
\officialStatus_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(12),
      Q => officialStatus(12),
      R => p_0_in
    );
\officialStatus_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(13),
      Q => officialStatus(13),
      R => p_0_in
    );
\officialStatus_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(14),
      Q => officialStatus(14),
      R => p_0_in
    );
\officialStatus_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(15),
      Q => officialStatus(15),
      R => p_0_in
    );
\officialStatus_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(16),
      Q => officialStatus(16),
      R => p_0_in
    );
\officialStatus_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(17),
      Q => officialStatus(17),
      R => p_0_in
    );
\officialStatus_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(18),
      Q => officialStatus(18),
      R => p_0_in
    );
\officialStatus_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(19),
      Q => officialStatus(19),
      R => p_0_in
    );
\officialStatus_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(1),
      Q => officialStatus(1),
      R => p_0_in
    );
\officialStatus_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(20),
      Q => officialStatus(20),
      R => p_0_in
    );
\officialStatus_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(21),
      Q => officialStatus(21),
      R => p_0_in
    );
\officialStatus_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(22),
      Q => officialStatus(22),
      R => p_0_in
    );
\officialStatus_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[23]_i_1_n_0\,
      D => axi_wdata(23),
      Q => officialStatus(23),
      R => p_0_in
    );
\officialStatus_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(24),
      Q => officialStatus(24),
      R => p_0_in
    );
\officialStatus_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(25),
      Q => officialStatus(25),
      R => p_0_in
    );
\officialStatus_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(26),
      Q => officialStatus(26),
      R => p_0_in
    );
\officialStatus_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(27),
      Q => officialStatus(27),
      R => p_0_in
    );
\officialStatus_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(28),
      Q => officialStatus(28),
      R => p_0_in
    );
\officialStatus_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(29),
      Q => officialStatus(29),
      R => p_0_in
    );
\officialStatus_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(2),
      Q => officialStatus(2),
      R => p_0_in
    );
\officialStatus_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(30),
      Q => officialStatus(30),
      R => p_0_in
    );
\officialStatus_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[31]_i_1_n_0\,
      D => axi_wdata(31),
      Q => officialStatus(31),
      R => p_0_in
    );
\officialStatus_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(3),
      Q => officialStatus(3),
      R => p_0_in
    );
\officialStatus_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(4),
      Q => officialStatus(4),
      R => p_0_in
    );
\officialStatus_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(5),
      Q => officialStatus(5),
      R => p_0_in
    );
\officialStatus_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(6),
      Q => officialStatus(6),
      R => p_0_in
    );
\officialStatus_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[7]_i_1_n_0\,
      D => axi_wdata(7),
      Q => officialStatus(7),
      R => p_0_in
    );
\officialStatus_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(8),
      Q => officialStatus(8),
      R => p_0_in
    );
\officialStatus_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \officialStatus[15]_i_1_n_0\,
      D => axi_wdata(9),
      Q => officialStatus(9),
      R => p_0_in
    );
\pre_read_port_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => wr_data(0),
      Q => \pre_read_port_data_reg_n_0_[0]\,
      R => '0'
    );
\pre_read_port_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => wr_data(1),
      Q => \pre_read_port_data_reg_n_0_[1]\,
      R => '0'
    );
\pre_read_port_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => wr_data(2),
      Q => \pre_read_port_data_reg_n_0_[2]\,
      R => '0'
    );
\pre_read_port_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => wr_data(3),
      Q => \pre_read_port_data_reg_n_0_[3]\,
      R => '0'
    );
\pre_read_port_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => wr_data(4),
      Q => \pre_read_port_data_reg_n_0_[4]\,
      R => '0'
    );
\pre_read_port_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => wr_data(5),
      Q => \pre_read_port_data_reg_n_0_[5]\,
      R => '0'
    );
\pre_read_port_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => wr_data(6),
      Q => \pre_read_port_data_reg_n_0_[6]\,
      R => '0'
    );
\pre_read_port_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => wr_data(7),
      Q => \pre_read_port_data_reg_n_0_[7]\,
      R => '0'
    );
\pre_read_port_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => wr_data(8),
      Q => \pre_read_port_data_reg_n_0_[8]\,
      R => '0'
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
      R => p_0_in
    );
\raddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \raddr[3]_i_1_n_0\,
      Q => raddr(3),
      R => p_0_in
    );
rd: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => axi_arvalid,
      I1 => \^axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \rd__0\
    );
\read_port_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \pre_read_port_data_reg_n_0_[0]\,
      Q => read_port_data(0),
      R => '0'
    );
\read_port_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \pre_read_port_data_reg_n_0_[1]\,
      Q => read_port_data(1),
      R => '0'
    );
\read_port_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \pre_read_port_data_reg_n_0_[2]\,
      Q => read_port_data(2),
      R => '0'
    );
\read_port_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \pre_read_port_data_reg_n_0_[3]\,
      Q => read_port_data(3),
      R => '0'
    );
\read_port_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \pre_read_port_data_reg_n_0_[4]\,
      Q => read_port_data(4),
      R => '0'
    );
\read_port_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \pre_read_port_data_reg_n_0_[5]\,
      Q => read_port_data(5),
      R => '0'
    );
\read_port_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \pre_read_port_data_reg_n_0_[6]\,
      Q => read_port_data(6),
      R => '0'
    );
\read_port_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \pre_read_port_data_reg_n_0_[7]\,
      Q => read_port_data(7),
      R => '0'
    );
\read_port_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \pre_read_port_data_reg_n_0_[8]\,
      Q => read_port_data(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    watermark : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_index : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_index : out STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rvalid : out STD_LOGIC;
    axi_bvalid : out STD_LOGIC;
    axi_wvalid : in STD_LOGIC;
    axi_awvalid : in STD_LOGIC;
    wr_request : in STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    rd_request : in STD_LOGIC;
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_arvalid : in STD_LOGIC;
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_data : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_aresetn : in STD_LOGIC;
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
      axi_rvalid => axi_rvalid,
      axi_wdata(31 downto 0) => axi_wdata(31 downto 0),
      axi_wstrb(3 downto 0) => axi_wstrb(3 downto 0),
      axi_wvalid => axi_wvalid,
      rd_index(4 downto 0) => rd_index(4 downto 0),
      rd_request => rd_request,
      watermark(4 downto 0) => watermark(4 downto 0),
      wr_data(8 downto 0) => wr_data(8 downto 0),
      wr_index(4 downto 0) => wr_index(4 downto 0),
      wr_request => wr_request
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
  empty <= \<const0>\;
  full <= \<const0>\;
  overflow <= \<const0>\;
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
      axi_rvalid => axi_rvalid,
      axi_wdata(31 downto 0) => axi_wdata(31 downto 0),
      axi_wstrb(3 downto 0) => axi_wstrb(3 downto 0),
      axi_wvalid => axi_wvalid,
      rd_index(4 downto 0) => rd_index(4 downto 0),
      rd_request => rd_request,
      watermark(4 downto 0) => watermark(4 downto 0),
      wr_data(8 downto 0) => wr_data(8 downto 0),
      wr_index(4 downto 0) => wr_index(4 downto 0),
      wr_request => wr_request
    );
end STRUCTURE;
