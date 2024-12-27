// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (lin64) Build 5164865 Thu Sep  5 14:36:28 MDT 2024
// Date        : Thu Oct 31 12:23:42 2024
// Host        : clutch13 running 64-bit Ubuntu 24.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_serial_0_10_sim_netlist.v
// Design      : system_serial_0_10
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIFOTEST
   (overflow,
    full,
    Q,
    \wr_index_reg[4]_0 ,
    watermark,
    p_9_in,
    E,
    empty,
    D,
    rd_data,
    axi_aclk,
    axi_aresetn,
    officialData,
    in_delay_reg,
    axi_wvalid,
    axi_awvalid,
    in_delay_reg_0,
    in_delay_reg_1,
    in_delay_reg_2,
    axi_arvalid,
    axi_rvalid,
    \axi_rdata_reg[0] ,
    \axi_rdata_reg[8] ,
    \axi_rdata_reg[8]_0 ,
    \axi_rdata_reg[8]_1 ,
    clear_overflow_request);
  output overflow;
  output full;
  output [4:0]Q;
  output [4:0]\wr_index_reg[4]_0 ;
  output [4:0]watermark;
  output p_9_in;
  output [0:0]E;
  output empty;
  output [8:0]D;
  output [8:0]rd_data;
  input axi_aclk;
  input axi_aresetn;
  input [8:0]officialData;
  input [3:0]in_delay_reg;
  input axi_wvalid;
  input axi_awvalid;
  input in_delay_reg_0;
  input in_delay_reg_1;
  input [3:0]in_delay_reg_2;
  input axi_arvalid;
  input axi_rvalid;
  input \axi_rdata_reg[0] ;
  input [8:0]\axi_rdata_reg[8] ;
  input [8:0]\axi_rdata_reg[8]_0 ;
  input [8:0]\axi_rdata_reg[8]_1 ;
  input clear_overflow_request;

  wire [8:0]D;
  wire [0:0]E;
  wire \FIFO_DATA[0][8]_i_3_n_0 ;
  wire \FIFO_DATA[10][8]_i_3_n_0 ;
  wire \FIFO_DATA[11][8]_i_3_n_0 ;
  wire \FIFO_DATA[12][8]_i_3_n_0 ;
  wire \FIFO_DATA[13][8]_i_3_n_0 ;
  wire \FIFO_DATA[14][8]_i_3_n_0 ;
  wire \FIFO_DATA[15][8]_i_3_n_0 ;
  wire \FIFO_DATA[1][8]_i_3_n_0 ;
  wire \FIFO_DATA[2][8]_i_3_n_0 ;
  wire \FIFO_DATA[3][8]_i_3_n_0 ;
  wire \FIFO_DATA[4][8]_i_3_n_0 ;
  wire \FIFO_DATA[5][8]_i_3_n_0 ;
  wire \FIFO_DATA[6][8]_i_3_n_0 ;
  wire \FIFO_DATA[7][8]_i_3_n_0 ;
  wire \FIFO_DATA[8][8]_i_3_n_0 ;
  wire \FIFO_DATA[9][8]_i_3_n_0 ;
  wire [8:0]\FIFO_DATA_reg[0] ;
  wire [8:0]\FIFO_DATA_reg[10] ;
  wire [8:0]\FIFO_DATA_reg[11] ;
  wire [8:0]\FIFO_DATA_reg[12] ;
  wire [8:0]\FIFO_DATA_reg[13] ;
  wire [8:0]\FIFO_DATA_reg[14] ;
  wire [8:0]\FIFO_DATA_reg[15] ;
  wire [8:0]\FIFO_DATA_reg[1] ;
  wire [8:0]\FIFO_DATA_reg[2] ;
  wire [8:0]\FIFO_DATA_reg[3] ;
  wire [8:0]\FIFO_DATA_reg[4] ;
  wire [8:0]\FIFO_DATA_reg[5] ;
  wire [8:0]\FIFO_DATA_reg[6] ;
  wire [8:0]\FIFO_DATA_reg[7] ;
  wire [8:0]\FIFO_DATA_reg[8] ;
  wire [8:0]\FIFO_DATA_reg[9] ;
  wire [4:0]Q;
  wire axi_aclk;
  wire axi_aresetn;
  wire axi_arvalid;
  wire axi_awvalid;
  wire \axi_rdata_reg[0] ;
  wire [8:0]\axi_rdata_reg[8] ;
  wire [8:0]\axi_rdata_reg[8]_0 ;
  wire [8:0]\axi_rdata_reg[8]_1 ;
  wire axi_rvalid;
  wire axi_wvalid;
  wire clear_overflow_request;
  wire empty;
  wire empty_INST_0_i_1_n_0;
  wire full;
  wire [3:0]in_delay_reg;
  wire in_delay_reg_0;
  wire in_delay_reg_1;
  wire [3:0]in_delay_reg_2;
  wire [8:0]officialData;
  wire overflow;
  wire overflow13_out;
  wire p_0_in;
  wire [4:1]p_0_in__0;
  wire [4:0]p_0_in__1;
  wire [8:0]p_1_in;
  wire p_9_in;
  wire [8:0]rd_data;
  wire \rd_data[0]_INST_0_i_1_n_0 ;
  wire \rd_data[0]_INST_0_i_2_n_0 ;
  wire \rd_data[0]_INST_0_i_3_n_0 ;
  wire \rd_data[0]_INST_0_i_4_n_0 ;
  wire \rd_data[0]_INST_0_i_5_n_0 ;
  wire \rd_data[0]_INST_0_i_6_n_0 ;
  wire \rd_data[1]_INST_0_i_1_n_0 ;
  wire \rd_data[1]_INST_0_i_2_n_0 ;
  wire \rd_data[1]_INST_0_i_3_n_0 ;
  wire \rd_data[1]_INST_0_i_4_n_0 ;
  wire \rd_data[1]_INST_0_i_5_n_0 ;
  wire \rd_data[1]_INST_0_i_6_n_0 ;
  wire \rd_data[2]_INST_0_i_1_n_0 ;
  wire \rd_data[2]_INST_0_i_2_n_0 ;
  wire \rd_data[2]_INST_0_i_3_n_0 ;
  wire \rd_data[2]_INST_0_i_4_n_0 ;
  wire \rd_data[2]_INST_0_i_5_n_0 ;
  wire \rd_data[2]_INST_0_i_6_n_0 ;
  wire \rd_data[3]_INST_0_i_1_n_0 ;
  wire \rd_data[3]_INST_0_i_2_n_0 ;
  wire \rd_data[3]_INST_0_i_3_n_0 ;
  wire \rd_data[3]_INST_0_i_4_n_0 ;
  wire \rd_data[3]_INST_0_i_5_n_0 ;
  wire \rd_data[3]_INST_0_i_6_n_0 ;
  wire \rd_data[4]_INST_0_i_1_n_0 ;
  wire \rd_data[4]_INST_0_i_2_n_0 ;
  wire \rd_data[4]_INST_0_i_3_n_0 ;
  wire \rd_data[4]_INST_0_i_4_n_0 ;
  wire \rd_data[4]_INST_0_i_5_n_0 ;
  wire \rd_data[4]_INST_0_i_6_n_0 ;
  wire \rd_data[5]_INST_0_i_1_n_0 ;
  wire \rd_data[5]_INST_0_i_2_n_0 ;
  wire \rd_data[5]_INST_0_i_3_n_0 ;
  wire \rd_data[5]_INST_0_i_4_n_0 ;
  wire \rd_data[5]_INST_0_i_5_n_0 ;
  wire \rd_data[5]_INST_0_i_6_n_0 ;
  wire \rd_data[6]_INST_0_i_1_n_0 ;
  wire \rd_data[6]_INST_0_i_2_n_0 ;
  wire \rd_data[6]_INST_0_i_3_n_0 ;
  wire \rd_data[6]_INST_0_i_4_n_0 ;
  wire \rd_data[6]_INST_0_i_5_n_0 ;
  wire \rd_data[6]_INST_0_i_6_n_0 ;
  wire \rd_data[7]_INST_0_i_1_n_0 ;
  wire \rd_data[7]_INST_0_i_2_n_0 ;
  wire \rd_data[7]_INST_0_i_3_n_0 ;
  wire \rd_data[7]_INST_0_i_4_n_0 ;
  wire \rd_data[7]_INST_0_i_5_n_0 ;
  wire \rd_data[7]_INST_0_i_6_n_0 ;
  wire \rd_data[8]_INST_0_i_1_n_0 ;
  wire \rd_data[8]_INST_0_i_2_n_0 ;
  wire \rd_data[8]_INST_0_i_3_n_0 ;
  wire \rd_data[8]_INST_0_i_4_n_0 ;
  wire \rd_data[8]_INST_0_i_5_n_0 ;
  wire \rd_data[8]_INST_0_i_6_n_0 ;
  wire rd_edge_n_0;
  wire rd_index0;
  wire \rd_index[0]_i_1_n_0 ;
  wire rd_request1;
  wire [4:0]watermark;
  wire \watermark[4]_INST_0_i_1_n_0 ;
  wire wr_edge_n_0;
  wire wr_edge_n_100;
  wire wr_edge_n_101;
  wire wr_edge_n_102;
  wire wr_edge_n_103;
  wire wr_edge_n_104;
  wire wr_edge_n_105;
  wire wr_edge_n_106;
  wire wr_edge_n_107;
  wire wr_edge_n_108;
  wire wr_edge_n_109;
  wire wr_edge_n_110;
  wire wr_edge_n_111;
  wire wr_edge_n_112;
  wire wr_edge_n_113;
  wire wr_edge_n_114;
  wire wr_edge_n_115;
  wire wr_edge_n_116;
  wire wr_edge_n_117;
  wire wr_edge_n_118;
  wire wr_edge_n_119;
  wire wr_edge_n_12;
  wire wr_edge_n_120;
  wire wr_edge_n_121;
  wire wr_edge_n_122;
  wire wr_edge_n_123;
  wire wr_edge_n_124;
  wire wr_edge_n_125;
  wire wr_edge_n_126;
  wire wr_edge_n_127;
  wire wr_edge_n_128;
  wire wr_edge_n_129;
  wire wr_edge_n_13;
  wire wr_edge_n_130;
  wire wr_edge_n_131;
  wire wr_edge_n_132;
  wire wr_edge_n_133;
  wire wr_edge_n_134;
  wire wr_edge_n_135;
  wire wr_edge_n_136;
  wire wr_edge_n_137;
  wire wr_edge_n_138;
  wire wr_edge_n_139;
  wire wr_edge_n_14;
  wire wr_edge_n_140;
  wire wr_edge_n_141;
  wire wr_edge_n_142;
  wire wr_edge_n_143;
  wire wr_edge_n_144;
  wire wr_edge_n_145;
  wire wr_edge_n_146;
  wire wr_edge_n_147;
  wire wr_edge_n_148;
  wire wr_edge_n_149;
  wire wr_edge_n_15;
  wire wr_edge_n_150;
  wire wr_edge_n_151;
  wire wr_edge_n_152;
  wire wr_edge_n_153;
  wire wr_edge_n_154;
  wire wr_edge_n_155;
  wire wr_edge_n_156;
  wire wr_edge_n_157;
  wire wr_edge_n_158;
  wire wr_edge_n_159;
  wire wr_edge_n_16;
  wire wr_edge_n_160;
  wire wr_edge_n_161;
  wire wr_edge_n_163;
  wire wr_edge_n_17;
  wire wr_edge_n_18;
  wire wr_edge_n_19;
  wire wr_edge_n_20;
  wire wr_edge_n_21;
  wire wr_edge_n_22;
  wire wr_edge_n_23;
  wire wr_edge_n_24;
  wire wr_edge_n_25;
  wire wr_edge_n_26;
  wire wr_edge_n_27;
  wire wr_edge_n_28;
  wire wr_edge_n_29;
  wire wr_edge_n_30;
  wire wr_edge_n_31;
  wire wr_edge_n_32;
  wire wr_edge_n_33;
  wire wr_edge_n_34;
  wire wr_edge_n_35;
  wire wr_edge_n_36;
  wire wr_edge_n_37;
  wire wr_edge_n_38;
  wire wr_edge_n_39;
  wire wr_edge_n_40;
  wire wr_edge_n_41;
  wire wr_edge_n_42;
  wire wr_edge_n_43;
  wire wr_edge_n_44;
  wire wr_edge_n_45;
  wire wr_edge_n_46;
  wire wr_edge_n_47;
  wire wr_edge_n_48;
  wire wr_edge_n_49;
  wire wr_edge_n_50;
  wire wr_edge_n_51;
  wire wr_edge_n_52;
  wire wr_edge_n_53;
  wire wr_edge_n_54;
  wire wr_edge_n_55;
  wire wr_edge_n_56;
  wire wr_edge_n_57;
  wire wr_edge_n_58;
  wire wr_edge_n_59;
  wire wr_edge_n_60;
  wire wr_edge_n_61;
  wire wr_edge_n_62;
  wire wr_edge_n_63;
  wire wr_edge_n_64;
  wire wr_edge_n_65;
  wire wr_edge_n_66;
  wire wr_edge_n_67;
  wire wr_edge_n_68;
  wire wr_edge_n_69;
  wire wr_edge_n_70;
  wire wr_edge_n_71;
  wire wr_edge_n_72;
  wire wr_edge_n_73;
  wire wr_edge_n_74;
  wire wr_edge_n_75;
  wire wr_edge_n_76;
  wire wr_edge_n_77;
  wire wr_edge_n_78;
  wire wr_edge_n_79;
  wire wr_edge_n_80;
  wire wr_edge_n_81;
  wire wr_edge_n_82;
  wire wr_edge_n_83;
  wire wr_edge_n_84;
  wire wr_edge_n_85;
  wire wr_edge_n_86;
  wire wr_edge_n_87;
  wire wr_edge_n_88;
  wire wr_edge_n_89;
  wire wr_edge_n_90;
  wire wr_edge_n_91;
  wire wr_edge_n_92;
  wire wr_edge_n_93;
  wire wr_edge_n_94;
  wire wr_edge_n_95;
  wire wr_edge_n_96;
  wire wr_edge_n_97;
  wire wr_edge_n_98;
  wire wr_edge_n_99;
  wire \wr_index[2]_i_1_n_0 ;
  wire \wr_index[4]_i_6_n_0 ;
  wire \wr_index[4]_i_7_n_0 ;
  wire [4:0]\wr_index_reg[4]_0 ;
  wire wr_request1;

  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FIFO_DATA[0][8]_i_3 
       (.I0(\wr_index_reg[4]_0 [1]),
        .I1(\wr_index_reg[4]_0 [0]),
        .I2(\wr_index_reg[4]_0 [3]),
        .I3(\wr_index_reg[4]_0 [2]),
        .O(\FIFO_DATA[0][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FIFO_DATA[10][8]_i_3 
       (.I0(\wr_index_reg[4]_0 [2]),
        .I1(\wr_index_reg[4]_0 [0]),
        .I2(\wr_index_reg[4]_0 [3]),
        .I3(\wr_index_reg[4]_0 [1]),
        .O(\FIFO_DATA[10][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \FIFO_DATA[11][8]_i_3 
       (.I0(\wr_index_reg[4]_0 [0]),
        .I1(\wr_index_reg[4]_0 [2]),
        .I2(\wr_index_reg[4]_0 [3]),
        .I3(\wr_index_reg[4]_0 [1]),
        .O(\FIFO_DATA[11][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FIFO_DATA[12][8]_i_3 
       (.I0(\wr_index_reg[4]_0 [1]),
        .I1(\wr_index_reg[4]_0 [0]),
        .I2(\wr_index_reg[4]_0 [3]),
        .I3(\wr_index_reg[4]_0 [2]),
        .O(\FIFO_DATA[12][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \FIFO_DATA[13][8]_i_3 
       (.I0(\wr_index_reg[4]_0 [0]),
        .I1(\wr_index_reg[4]_0 [1]),
        .I2(\wr_index_reg[4]_0 [3]),
        .I3(\wr_index_reg[4]_0 [2]),
        .O(\FIFO_DATA[13][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \FIFO_DATA[14][8]_i_3 
       (.I0(\wr_index_reg[4]_0 [1]),
        .I1(\wr_index_reg[4]_0 [0]),
        .I2(\wr_index_reg[4]_0 [3]),
        .I3(\wr_index_reg[4]_0 [2]),
        .O(\FIFO_DATA[14][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FIFO_DATA[15][8]_i_3 
       (.I0(\wr_index_reg[4]_0 [1]),
        .I1(\wr_index_reg[4]_0 [0]),
        .I2(\wr_index_reg[4]_0 [3]),
        .I3(\wr_index_reg[4]_0 [2]),
        .O(\FIFO_DATA[15][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FIFO_DATA[1][8]_i_3 
       (.I0(\wr_index_reg[4]_0 [0]),
        .I1(\wr_index_reg[4]_0 [1]),
        .I2(\wr_index_reg[4]_0 [3]),
        .I3(\wr_index_reg[4]_0 [2]),
        .O(\FIFO_DATA[1][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FIFO_DATA[2][8]_i_3 
       (.I0(\wr_index_reg[4]_0 [1]),
        .I1(\wr_index_reg[4]_0 [0]),
        .I2(\wr_index_reg[4]_0 [3]),
        .I3(\wr_index_reg[4]_0 [2]),
        .O(\FIFO_DATA[2][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FIFO_DATA[3][8]_i_3 
       (.I0(\wr_index_reg[4]_0 [3]),
        .I1(\wr_index_reg[4]_0 [2]),
        .I2(\wr_index_reg[4]_0 [1]),
        .I3(\wr_index_reg[4]_0 [0]),
        .O(\FIFO_DATA[3][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FIFO_DATA[4][8]_i_3 
       (.I0(\wr_index_reg[4]_0 [2]),
        .I1(\wr_index_reg[4]_0 [0]),
        .I2(\wr_index_reg[4]_0 [3]),
        .I3(\wr_index_reg[4]_0 [1]),
        .O(\FIFO_DATA[4][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FIFO_DATA[5][8]_i_3 
       (.I0(\wr_index_reg[4]_0 [3]),
        .I1(\wr_index_reg[4]_0 [1]),
        .I2(\wr_index_reg[4]_0 [2]),
        .I3(\wr_index_reg[4]_0 [0]),
        .O(\FIFO_DATA[5][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FIFO_DATA[6][8]_i_3 
       (.I0(\wr_index_reg[4]_0 [3]),
        .I1(\wr_index_reg[4]_0 [0]),
        .I2(\wr_index_reg[4]_0 [2]),
        .I3(\wr_index_reg[4]_0 [1]),
        .O(\FIFO_DATA[6][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \FIFO_DATA[7][8]_i_3 
       (.I0(\wr_index_reg[4]_0 [0]),
        .I1(\wr_index_reg[4]_0 [3]),
        .I2(\wr_index_reg[4]_0 [2]),
        .I3(\wr_index_reg[4]_0 [1]),
        .O(\FIFO_DATA[7][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FIFO_DATA[8][8]_i_3 
       (.I0(\wr_index_reg[4]_0 [3]),
        .I1(\wr_index_reg[4]_0 [0]),
        .I2(\wr_index_reg[4]_0 [2]),
        .I3(\wr_index_reg[4]_0 [1]),
        .O(\FIFO_DATA[8][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FIFO_DATA[9][8]_i_3 
       (.I0(\wr_index_reg[4]_0 [2]),
        .I1(\wr_index_reg[4]_0 [1]),
        .I2(\wr_index_reg[4]_0 [3]),
        .I3(\wr_index_reg[4]_0 [0]),
        .O(\FIFO_DATA[9][8]_i_3_n_0 ));
  FDRE \FIFO_DATA_reg[0][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_152),
        .D(wr_edge_n_161),
        .Q(\FIFO_DATA_reg[0] [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[0][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_152),
        .D(wr_edge_n_160),
        .Q(\FIFO_DATA_reg[0] [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[0][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_152),
        .D(wr_edge_n_159),
        .Q(\FIFO_DATA_reg[0] [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[0][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_152),
        .D(wr_edge_n_158),
        .Q(\FIFO_DATA_reg[0] [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[0][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_152),
        .D(wr_edge_n_157),
        .Q(\FIFO_DATA_reg[0] [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[0][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_152),
        .D(wr_edge_n_156),
        .Q(\FIFO_DATA_reg[0] [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[0][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_152),
        .D(wr_edge_n_155),
        .Q(\FIFO_DATA_reg[0] [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[0][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_152),
        .D(wr_edge_n_154),
        .Q(\FIFO_DATA_reg[0] [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[0][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_152),
        .D(wr_edge_n_153),
        .Q(\FIFO_DATA_reg[0] [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[10][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_52),
        .D(wr_edge_n_61),
        .Q(\FIFO_DATA_reg[10] [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[10][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_52),
        .D(wr_edge_n_60),
        .Q(\FIFO_DATA_reg[10] [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[10][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_52),
        .D(wr_edge_n_59),
        .Q(\FIFO_DATA_reg[10] [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[10][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_52),
        .D(wr_edge_n_58),
        .Q(\FIFO_DATA_reg[10] [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[10][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_52),
        .D(wr_edge_n_57),
        .Q(\FIFO_DATA_reg[10] [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[10][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_52),
        .D(wr_edge_n_56),
        .Q(\FIFO_DATA_reg[10] [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[10][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_52),
        .D(wr_edge_n_55),
        .Q(\FIFO_DATA_reg[10] [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[10][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_52),
        .D(wr_edge_n_54),
        .Q(\FIFO_DATA_reg[10] [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[10][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_52),
        .D(wr_edge_n_53),
        .Q(\FIFO_DATA_reg[10] [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[11][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_42),
        .D(wr_edge_n_51),
        .Q(\FIFO_DATA_reg[11] [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[11][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_42),
        .D(wr_edge_n_50),
        .Q(\FIFO_DATA_reg[11] [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[11][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_42),
        .D(wr_edge_n_49),
        .Q(\FIFO_DATA_reg[11] [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[11][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_42),
        .D(wr_edge_n_48),
        .Q(\FIFO_DATA_reg[11] [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[11][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_42),
        .D(wr_edge_n_47),
        .Q(\FIFO_DATA_reg[11] [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[11][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_42),
        .D(wr_edge_n_46),
        .Q(\FIFO_DATA_reg[11] [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[11][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_42),
        .D(wr_edge_n_45),
        .Q(\FIFO_DATA_reg[11] [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[11][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_42),
        .D(wr_edge_n_44),
        .Q(\FIFO_DATA_reg[11] [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[11][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_42),
        .D(wr_edge_n_43),
        .Q(\FIFO_DATA_reg[11] [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[12][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_32),
        .D(wr_edge_n_41),
        .Q(\FIFO_DATA_reg[12] [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[12][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_32),
        .D(wr_edge_n_40),
        .Q(\FIFO_DATA_reg[12] [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[12][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_32),
        .D(wr_edge_n_39),
        .Q(\FIFO_DATA_reg[12] [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[12][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_32),
        .D(wr_edge_n_38),
        .Q(\FIFO_DATA_reg[12] [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[12][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_32),
        .D(wr_edge_n_37),
        .Q(\FIFO_DATA_reg[12] [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[12][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_32),
        .D(wr_edge_n_36),
        .Q(\FIFO_DATA_reg[12] [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[12][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_32),
        .D(wr_edge_n_35),
        .Q(\FIFO_DATA_reg[12] [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[12][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_32),
        .D(wr_edge_n_34),
        .Q(\FIFO_DATA_reg[12] [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[12][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_32),
        .D(wr_edge_n_33),
        .Q(\FIFO_DATA_reg[12] [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[13][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_22),
        .D(wr_edge_n_31),
        .Q(\FIFO_DATA_reg[13] [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[13][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_22),
        .D(wr_edge_n_30),
        .Q(\FIFO_DATA_reg[13] [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[13][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_22),
        .D(wr_edge_n_29),
        .Q(\FIFO_DATA_reg[13] [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[13][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_22),
        .D(wr_edge_n_28),
        .Q(\FIFO_DATA_reg[13] [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[13][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_22),
        .D(wr_edge_n_27),
        .Q(\FIFO_DATA_reg[13] [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[13][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_22),
        .D(wr_edge_n_26),
        .Q(\FIFO_DATA_reg[13] [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[13][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_22),
        .D(wr_edge_n_25),
        .Q(\FIFO_DATA_reg[13] [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[13][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_22),
        .D(wr_edge_n_24),
        .Q(\FIFO_DATA_reg[13] [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[13][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_22),
        .D(wr_edge_n_23),
        .Q(\FIFO_DATA_reg[13] [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[14][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_21),
        .Q(\FIFO_DATA_reg[14] [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[14][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_20),
        .Q(\FIFO_DATA_reg[14] [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[14][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_19),
        .Q(\FIFO_DATA_reg[14] [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[14][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_18),
        .Q(\FIFO_DATA_reg[14] [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[14][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_17),
        .Q(\FIFO_DATA_reg[14] [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[14][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_16),
        .Q(\FIFO_DATA_reg[14] [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[14][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_15),
        .Q(\FIFO_DATA_reg[14] [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[14][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_14),
        .Q(\FIFO_DATA_reg[14] [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[14][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_13),
        .Q(\FIFO_DATA_reg[14] [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[15][0] 
       (.C(axi_aclk),
        .CE(p_0_in),
        .D(p_1_in[0]),
        .Q(\FIFO_DATA_reg[15] [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[15][1] 
       (.C(axi_aclk),
        .CE(p_0_in),
        .D(p_1_in[1]),
        .Q(\FIFO_DATA_reg[15] [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[15][2] 
       (.C(axi_aclk),
        .CE(p_0_in),
        .D(p_1_in[2]),
        .Q(\FIFO_DATA_reg[15] [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[15][3] 
       (.C(axi_aclk),
        .CE(p_0_in),
        .D(p_1_in[3]),
        .Q(\FIFO_DATA_reg[15] [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[15][4] 
       (.C(axi_aclk),
        .CE(p_0_in),
        .D(p_1_in[4]),
        .Q(\FIFO_DATA_reg[15] [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[15][5] 
       (.C(axi_aclk),
        .CE(p_0_in),
        .D(p_1_in[5]),
        .Q(\FIFO_DATA_reg[15] [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[15][6] 
       (.C(axi_aclk),
        .CE(p_0_in),
        .D(p_1_in[6]),
        .Q(\FIFO_DATA_reg[15] [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[15][7] 
       (.C(axi_aclk),
        .CE(p_0_in),
        .D(p_1_in[7]),
        .Q(\FIFO_DATA_reg[15] [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[15][8] 
       (.C(axi_aclk),
        .CE(p_0_in),
        .D(p_1_in[8]),
        .Q(\FIFO_DATA_reg[15] [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[1][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_142),
        .D(wr_edge_n_151),
        .Q(\FIFO_DATA_reg[1] [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[1][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_142),
        .D(wr_edge_n_150),
        .Q(\FIFO_DATA_reg[1] [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[1][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_142),
        .D(wr_edge_n_149),
        .Q(\FIFO_DATA_reg[1] [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[1][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_142),
        .D(wr_edge_n_148),
        .Q(\FIFO_DATA_reg[1] [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[1][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_142),
        .D(wr_edge_n_147),
        .Q(\FIFO_DATA_reg[1] [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[1][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_142),
        .D(wr_edge_n_146),
        .Q(\FIFO_DATA_reg[1] [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[1][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_142),
        .D(wr_edge_n_145),
        .Q(\FIFO_DATA_reg[1] [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[1][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_142),
        .D(wr_edge_n_144),
        .Q(\FIFO_DATA_reg[1] [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[1][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_142),
        .D(wr_edge_n_143),
        .Q(\FIFO_DATA_reg[1] [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[2][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_132),
        .D(wr_edge_n_141),
        .Q(\FIFO_DATA_reg[2] [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[2][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_132),
        .D(wr_edge_n_140),
        .Q(\FIFO_DATA_reg[2] [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[2][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_132),
        .D(wr_edge_n_139),
        .Q(\FIFO_DATA_reg[2] [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[2][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_132),
        .D(wr_edge_n_138),
        .Q(\FIFO_DATA_reg[2] [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[2][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_132),
        .D(wr_edge_n_137),
        .Q(\FIFO_DATA_reg[2] [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[2][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_132),
        .D(wr_edge_n_136),
        .Q(\FIFO_DATA_reg[2] [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[2][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_132),
        .D(wr_edge_n_135),
        .Q(\FIFO_DATA_reg[2] [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[2][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_132),
        .D(wr_edge_n_134),
        .Q(\FIFO_DATA_reg[2] [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[2][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_132),
        .D(wr_edge_n_133),
        .Q(\FIFO_DATA_reg[2] [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[3][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_122),
        .D(wr_edge_n_131),
        .Q(\FIFO_DATA_reg[3] [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[3][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_122),
        .D(wr_edge_n_130),
        .Q(\FIFO_DATA_reg[3] [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[3][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_122),
        .D(wr_edge_n_129),
        .Q(\FIFO_DATA_reg[3] [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[3][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_122),
        .D(wr_edge_n_128),
        .Q(\FIFO_DATA_reg[3] [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[3][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_122),
        .D(wr_edge_n_127),
        .Q(\FIFO_DATA_reg[3] [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[3][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_122),
        .D(wr_edge_n_126),
        .Q(\FIFO_DATA_reg[3] [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[3][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_122),
        .D(wr_edge_n_125),
        .Q(\FIFO_DATA_reg[3] [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[3][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_122),
        .D(wr_edge_n_124),
        .Q(\FIFO_DATA_reg[3] [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[3][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_122),
        .D(wr_edge_n_123),
        .Q(\FIFO_DATA_reg[3] [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[4][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_112),
        .D(wr_edge_n_121),
        .Q(\FIFO_DATA_reg[4] [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[4][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_112),
        .D(wr_edge_n_120),
        .Q(\FIFO_DATA_reg[4] [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[4][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_112),
        .D(wr_edge_n_119),
        .Q(\FIFO_DATA_reg[4] [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[4][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_112),
        .D(wr_edge_n_118),
        .Q(\FIFO_DATA_reg[4] [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[4][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_112),
        .D(wr_edge_n_117),
        .Q(\FIFO_DATA_reg[4] [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[4][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_112),
        .D(wr_edge_n_116),
        .Q(\FIFO_DATA_reg[4] [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[4][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_112),
        .D(wr_edge_n_115),
        .Q(\FIFO_DATA_reg[4] [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[4][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_112),
        .D(wr_edge_n_114),
        .Q(\FIFO_DATA_reg[4] [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[4][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_112),
        .D(wr_edge_n_113),
        .Q(\FIFO_DATA_reg[4] [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[5][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_102),
        .D(wr_edge_n_111),
        .Q(\FIFO_DATA_reg[5] [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[5][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_102),
        .D(wr_edge_n_110),
        .Q(\FIFO_DATA_reg[5] [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[5][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_102),
        .D(wr_edge_n_109),
        .Q(\FIFO_DATA_reg[5] [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[5][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_102),
        .D(wr_edge_n_108),
        .Q(\FIFO_DATA_reg[5] [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[5][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_102),
        .D(wr_edge_n_107),
        .Q(\FIFO_DATA_reg[5] [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[5][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_102),
        .D(wr_edge_n_106),
        .Q(\FIFO_DATA_reg[5] [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[5][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_102),
        .D(wr_edge_n_105),
        .Q(\FIFO_DATA_reg[5] [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[5][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_102),
        .D(wr_edge_n_104),
        .Q(\FIFO_DATA_reg[5] [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[5][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_102),
        .D(wr_edge_n_103),
        .Q(\FIFO_DATA_reg[5] [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[6][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_92),
        .D(wr_edge_n_101),
        .Q(\FIFO_DATA_reg[6] [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[6][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_92),
        .D(wr_edge_n_100),
        .Q(\FIFO_DATA_reg[6] [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[6][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_92),
        .D(wr_edge_n_99),
        .Q(\FIFO_DATA_reg[6] [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[6][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_92),
        .D(wr_edge_n_98),
        .Q(\FIFO_DATA_reg[6] [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[6][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_92),
        .D(wr_edge_n_97),
        .Q(\FIFO_DATA_reg[6] [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[6][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_92),
        .D(wr_edge_n_96),
        .Q(\FIFO_DATA_reg[6] [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[6][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_92),
        .D(wr_edge_n_95),
        .Q(\FIFO_DATA_reg[6] [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[6][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_92),
        .D(wr_edge_n_94),
        .Q(\FIFO_DATA_reg[6] [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[6][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_92),
        .D(wr_edge_n_93),
        .Q(\FIFO_DATA_reg[6] [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[7][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_82),
        .D(wr_edge_n_91),
        .Q(\FIFO_DATA_reg[7] [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[7][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_82),
        .D(wr_edge_n_90),
        .Q(\FIFO_DATA_reg[7] [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[7][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_82),
        .D(wr_edge_n_89),
        .Q(\FIFO_DATA_reg[7] [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[7][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_82),
        .D(wr_edge_n_88),
        .Q(\FIFO_DATA_reg[7] [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[7][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_82),
        .D(wr_edge_n_87),
        .Q(\FIFO_DATA_reg[7] [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[7][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_82),
        .D(wr_edge_n_86),
        .Q(\FIFO_DATA_reg[7] [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[7][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_82),
        .D(wr_edge_n_85),
        .Q(\FIFO_DATA_reg[7] [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[7][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_82),
        .D(wr_edge_n_84),
        .Q(\FIFO_DATA_reg[7] [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[7][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_82),
        .D(wr_edge_n_83),
        .Q(\FIFO_DATA_reg[7] [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[8][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_72),
        .D(wr_edge_n_81),
        .Q(\FIFO_DATA_reg[8] [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[8][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_72),
        .D(wr_edge_n_80),
        .Q(\FIFO_DATA_reg[8] [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[8][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_72),
        .D(wr_edge_n_79),
        .Q(\FIFO_DATA_reg[8] [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[8][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_72),
        .D(wr_edge_n_78),
        .Q(\FIFO_DATA_reg[8] [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[8][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_72),
        .D(wr_edge_n_77),
        .Q(\FIFO_DATA_reg[8] [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[8][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_72),
        .D(wr_edge_n_76),
        .Q(\FIFO_DATA_reg[8] [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[8][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_72),
        .D(wr_edge_n_75),
        .Q(\FIFO_DATA_reg[8] [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[8][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_72),
        .D(wr_edge_n_74),
        .Q(\FIFO_DATA_reg[8] [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[8][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_72),
        .D(wr_edge_n_73),
        .Q(\FIFO_DATA_reg[8] [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[9][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_62),
        .D(wr_edge_n_71),
        .Q(\FIFO_DATA_reg[9] [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[9][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_62),
        .D(wr_edge_n_70),
        .Q(\FIFO_DATA_reg[9] [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[9][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_62),
        .D(wr_edge_n_69),
        .Q(\FIFO_DATA_reg[9] [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[9][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_62),
        .D(wr_edge_n_68),
        .Q(\FIFO_DATA_reg[9] [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[9][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_62),
        .D(wr_edge_n_67),
        .Q(\FIFO_DATA_reg[9] [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[9][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_62),
        .D(wr_edge_n_66),
        .Q(\FIFO_DATA_reg[9] [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[9][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_62),
        .D(wr_edge_n_65),
        .Q(\FIFO_DATA_reg[9] [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[9][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_62),
        .D(wr_edge_n_64),
        .Q(\FIFO_DATA_reg[9] [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[9][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_62),
        .D(wr_edge_n_63),
        .Q(\FIFO_DATA_reg[9] [8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata_reg[8] [0]),
        .I1(\axi_rdata_reg[8]_0 [0]),
        .I2(in_delay_reg_2[2]),
        .I3(\axi_rdata_reg[8]_1 [0]),
        .I4(in_delay_reg_2[3]),
        .I5(rd_data[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata_reg[8] [1]),
        .I1(\axi_rdata_reg[8]_0 [1]),
        .I2(in_delay_reg_2[2]),
        .I3(\axi_rdata_reg[8]_1 [1]),
        .I4(in_delay_reg_2[3]),
        .I5(rd_data[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata_reg[8] [2]),
        .I1(\axi_rdata_reg[8]_0 [2]),
        .I2(in_delay_reg_2[2]),
        .I3(\axi_rdata_reg[8]_1 [2]),
        .I4(in_delay_reg_2[3]),
        .I5(rd_data[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata_reg[8] [3]),
        .I1(\axi_rdata_reg[8]_0 [3]),
        .I2(in_delay_reg_2[2]),
        .I3(\axi_rdata_reg[8]_1 [3]),
        .I4(in_delay_reg_2[3]),
        .I5(rd_data[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata_reg[8] [4]),
        .I1(\axi_rdata_reg[8]_0 [4]),
        .I2(in_delay_reg_2[2]),
        .I3(\axi_rdata_reg[8]_1 [4]),
        .I4(in_delay_reg_2[3]),
        .I5(rd_data[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata_reg[8] [5]),
        .I1(\axi_rdata_reg[8]_0 [5]),
        .I2(in_delay_reg_2[2]),
        .I3(\axi_rdata_reg[8]_1 [5]),
        .I4(in_delay_reg_2[3]),
        .I5(rd_data[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata_reg[8] [6]),
        .I1(\axi_rdata_reg[8]_0 [6]),
        .I2(in_delay_reg_2[2]),
        .I3(\axi_rdata_reg[8]_1 [6]),
        .I4(in_delay_reg_2[3]),
        .I5(rd_data[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata_reg[8] [7]),
        .I1(\axi_rdata_reg[8]_0 [7]),
        .I2(in_delay_reg_2[2]),
        .I3(\axi_rdata_reg[8]_1 [7]),
        .I4(in_delay_reg_2[3]),
        .I5(rd_data[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata_reg[8] [8]),
        .I1(\axi_rdata_reg[8]_0 [8]),
        .I2(in_delay_reg_2[2]),
        .I3(\axi_rdata_reg[8]_1 [8]),
        .I4(in_delay_reg_2[3]),
        .I5(rd_data[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h90000090)) 
    empty_INST_0
       (.I0(\wr_index_reg[4]_0 [3]),
        .I1(Q[3]),
        .I2(empty_INST_0_i_1_n_0),
        .I3(Q[4]),
        .I4(\wr_index_reg[4]_0 [4]),
        .O(empty));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_INST_0_i_1
       (.I0(\wr_index_reg[4]_0 [0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\wr_index_reg[4]_0 [2]),
        .I4(Q[1]),
        .I5(\wr_index_reg[4]_0 [1]),
        .O(empty_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h00828200)) 
    full_INST_0
       (.I0(empty_INST_0_i_1_n_0),
        .I1(Q[3]),
        .I2(\wr_index_reg[4]_0 [3]),
        .I3(\wr_index_reg[4]_0 [4]),
        .I4(Q[4]),
        .O(full));
  FDRE overflow_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(wr_edge_n_163),
        .Q(overflow),
        .R(1'b0));
  MUXF8 \rd_data[0]_INST_0 
       (.I0(\rd_data[0]_INST_0_i_1_n_0 ),
        .I1(\rd_data[0]_INST_0_i_2_n_0 ),
        .O(rd_data[0]),
        .S(Q[3]));
  MUXF7 \rd_data[0]_INST_0_i_1 
       (.I0(\rd_data[0]_INST_0_i_3_n_0 ),
        .I1(\rd_data[0]_INST_0_i_4_n_0 ),
        .O(\rd_data[0]_INST_0_i_1_n_0 ),
        .S(Q[2]));
  MUXF7 \rd_data[0]_INST_0_i_2 
       (.I0(\rd_data[0]_INST_0_i_5_n_0 ),
        .I1(\rd_data[0]_INST_0_i_6_n_0 ),
        .O(\rd_data[0]_INST_0_i_2_n_0 ),
        .S(Q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[0]_INST_0_i_3 
       (.I0(\FIFO_DATA_reg[3] [0]),
        .I1(\FIFO_DATA_reg[2] [0]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[1] [0]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[0] [0]),
        .O(\rd_data[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[0]_INST_0_i_4 
       (.I0(\FIFO_DATA_reg[7] [0]),
        .I1(\FIFO_DATA_reg[6] [0]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[5] [0]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[4] [0]),
        .O(\rd_data[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[0]_INST_0_i_5 
       (.I0(\FIFO_DATA_reg[11] [0]),
        .I1(\FIFO_DATA_reg[10] [0]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[9] [0]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[8] [0]),
        .O(\rd_data[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[0]_INST_0_i_6 
       (.I0(\FIFO_DATA_reg[15] [0]),
        .I1(\FIFO_DATA_reg[14] [0]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[13] [0]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[12] [0]),
        .O(\rd_data[0]_INST_0_i_6_n_0 ));
  MUXF8 \rd_data[1]_INST_0 
       (.I0(\rd_data[1]_INST_0_i_1_n_0 ),
        .I1(\rd_data[1]_INST_0_i_2_n_0 ),
        .O(rd_data[1]),
        .S(Q[3]));
  MUXF7 \rd_data[1]_INST_0_i_1 
       (.I0(\rd_data[1]_INST_0_i_3_n_0 ),
        .I1(\rd_data[1]_INST_0_i_4_n_0 ),
        .O(\rd_data[1]_INST_0_i_1_n_0 ),
        .S(Q[2]));
  MUXF7 \rd_data[1]_INST_0_i_2 
       (.I0(\rd_data[1]_INST_0_i_5_n_0 ),
        .I1(\rd_data[1]_INST_0_i_6_n_0 ),
        .O(\rd_data[1]_INST_0_i_2_n_0 ),
        .S(Q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[1]_INST_0_i_3 
       (.I0(\FIFO_DATA_reg[3] [1]),
        .I1(\FIFO_DATA_reg[2] [1]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[1] [1]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[0] [1]),
        .O(\rd_data[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[1]_INST_0_i_4 
       (.I0(\FIFO_DATA_reg[7] [1]),
        .I1(\FIFO_DATA_reg[6] [1]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[5] [1]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[4] [1]),
        .O(\rd_data[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[1]_INST_0_i_5 
       (.I0(\FIFO_DATA_reg[11] [1]),
        .I1(\FIFO_DATA_reg[10] [1]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[9] [1]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[8] [1]),
        .O(\rd_data[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[1]_INST_0_i_6 
       (.I0(\FIFO_DATA_reg[15] [1]),
        .I1(\FIFO_DATA_reg[14] [1]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[13] [1]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[12] [1]),
        .O(\rd_data[1]_INST_0_i_6_n_0 ));
  MUXF8 \rd_data[2]_INST_0 
       (.I0(\rd_data[2]_INST_0_i_1_n_0 ),
        .I1(\rd_data[2]_INST_0_i_2_n_0 ),
        .O(rd_data[2]),
        .S(Q[3]));
  MUXF7 \rd_data[2]_INST_0_i_1 
       (.I0(\rd_data[2]_INST_0_i_3_n_0 ),
        .I1(\rd_data[2]_INST_0_i_4_n_0 ),
        .O(\rd_data[2]_INST_0_i_1_n_0 ),
        .S(Q[2]));
  MUXF7 \rd_data[2]_INST_0_i_2 
       (.I0(\rd_data[2]_INST_0_i_5_n_0 ),
        .I1(\rd_data[2]_INST_0_i_6_n_0 ),
        .O(\rd_data[2]_INST_0_i_2_n_0 ),
        .S(Q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[2]_INST_0_i_3 
       (.I0(\FIFO_DATA_reg[3] [2]),
        .I1(\FIFO_DATA_reg[2] [2]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[1] [2]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[0] [2]),
        .O(\rd_data[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[2]_INST_0_i_4 
       (.I0(\FIFO_DATA_reg[7] [2]),
        .I1(\FIFO_DATA_reg[6] [2]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[5] [2]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[4] [2]),
        .O(\rd_data[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[2]_INST_0_i_5 
       (.I0(\FIFO_DATA_reg[11] [2]),
        .I1(\FIFO_DATA_reg[10] [2]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[9] [2]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[8] [2]),
        .O(\rd_data[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[2]_INST_0_i_6 
       (.I0(\FIFO_DATA_reg[15] [2]),
        .I1(\FIFO_DATA_reg[14] [2]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[13] [2]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[12] [2]),
        .O(\rd_data[2]_INST_0_i_6_n_0 ));
  MUXF8 \rd_data[3]_INST_0 
       (.I0(\rd_data[3]_INST_0_i_1_n_0 ),
        .I1(\rd_data[3]_INST_0_i_2_n_0 ),
        .O(rd_data[3]),
        .S(Q[3]));
  MUXF7 \rd_data[3]_INST_0_i_1 
       (.I0(\rd_data[3]_INST_0_i_3_n_0 ),
        .I1(\rd_data[3]_INST_0_i_4_n_0 ),
        .O(\rd_data[3]_INST_0_i_1_n_0 ),
        .S(Q[2]));
  MUXF7 \rd_data[3]_INST_0_i_2 
       (.I0(\rd_data[3]_INST_0_i_5_n_0 ),
        .I1(\rd_data[3]_INST_0_i_6_n_0 ),
        .O(\rd_data[3]_INST_0_i_2_n_0 ),
        .S(Q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[3]_INST_0_i_3 
       (.I0(\FIFO_DATA_reg[3] [3]),
        .I1(\FIFO_DATA_reg[2] [3]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[1] [3]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[0] [3]),
        .O(\rd_data[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[3]_INST_0_i_4 
       (.I0(\FIFO_DATA_reg[7] [3]),
        .I1(\FIFO_DATA_reg[6] [3]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[5] [3]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[4] [3]),
        .O(\rd_data[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[3]_INST_0_i_5 
       (.I0(\FIFO_DATA_reg[11] [3]),
        .I1(\FIFO_DATA_reg[10] [3]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[9] [3]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[8] [3]),
        .O(\rd_data[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[3]_INST_0_i_6 
       (.I0(\FIFO_DATA_reg[15] [3]),
        .I1(\FIFO_DATA_reg[14] [3]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[13] [3]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[12] [3]),
        .O(\rd_data[3]_INST_0_i_6_n_0 ));
  MUXF8 \rd_data[4]_INST_0 
       (.I0(\rd_data[4]_INST_0_i_1_n_0 ),
        .I1(\rd_data[4]_INST_0_i_2_n_0 ),
        .O(rd_data[4]),
        .S(Q[3]));
  MUXF7 \rd_data[4]_INST_0_i_1 
       (.I0(\rd_data[4]_INST_0_i_3_n_0 ),
        .I1(\rd_data[4]_INST_0_i_4_n_0 ),
        .O(\rd_data[4]_INST_0_i_1_n_0 ),
        .S(Q[2]));
  MUXF7 \rd_data[4]_INST_0_i_2 
       (.I0(\rd_data[4]_INST_0_i_5_n_0 ),
        .I1(\rd_data[4]_INST_0_i_6_n_0 ),
        .O(\rd_data[4]_INST_0_i_2_n_0 ),
        .S(Q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[4]_INST_0_i_3 
       (.I0(\FIFO_DATA_reg[3] [4]),
        .I1(\FIFO_DATA_reg[2] [4]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[1] [4]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[0] [4]),
        .O(\rd_data[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[4]_INST_0_i_4 
       (.I0(\FIFO_DATA_reg[7] [4]),
        .I1(\FIFO_DATA_reg[6] [4]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[5] [4]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[4] [4]),
        .O(\rd_data[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[4]_INST_0_i_5 
       (.I0(\FIFO_DATA_reg[11] [4]),
        .I1(\FIFO_DATA_reg[10] [4]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[9] [4]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[8] [4]),
        .O(\rd_data[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[4]_INST_0_i_6 
       (.I0(\FIFO_DATA_reg[15] [4]),
        .I1(\FIFO_DATA_reg[14] [4]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[13] [4]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[12] [4]),
        .O(\rd_data[4]_INST_0_i_6_n_0 ));
  MUXF8 \rd_data[5]_INST_0 
       (.I0(\rd_data[5]_INST_0_i_1_n_0 ),
        .I1(\rd_data[5]_INST_0_i_2_n_0 ),
        .O(rd_data[5]),
        .S(Q[3]));
  MUXF7 \rd_data[5]_INST_0_i_1 
       (.I0(\rd_data[5]_INST_0_i_3_n_0 ),
        .I1(\rd_data[5]_INST_0_i_4_n_0 ),
        .O(\rd_data[5]_INST_0_i_1_n_0 ),
        .S(Q[2]));
  MUXF7 \rd_data[5]_INST_0_i_2 
       (.I0(\rd_data[5]_INST_0_i_5_n_0 ),
        .I1(\rd_data[5]_INST_0_i_6_n_0 ),
        .O(\rd_data[5]_INST_0_i_2_n_0 ),
        .S(Q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[5]_INST_0_i_3 
       (.I0(\FIFO_DATA_reg[3] [5]),
        .I1(\FIFO_DATA_reg[2] [5]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[1] [5]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[0] [5]),
        .O(\rd_data[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[5]_INST_0_i_4 
       (.I0(\FIFO_DATA_reg[7] [5]),
        .I1(\FIFO_DATA_reg[6] [5]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[5] [5]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[4] [5]),
        .O(\rd_data[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[5]_INST_0_i_5 
       (.I0(\FIFO_DATA_reg[11] [5]),
        .I1(\FIFO_DATA_reg[10] [5]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[9] [5]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[8] [5]),
        .O(\rd_data[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[5]_INST_0_i_6 
       (.I0(\FIFO_DATA_reg[15] [5]),
        .I1(\FIFO_DATA_reg[14] [5]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[13] [5]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[12] [5]),
        .O(\rd_data[5]_INST_0_i_6_n_0 ));
  MUXF8 \rd_data[6]_INST_0 
       (.I0(\rd_data[6]_INST_0_i_1_n_0 ),
        .I1(\rd_data[6]_INST_0_i_2_n_0 ),
        .O(rd_data[6]),
        .S(Q[3]));
  MUXF7 \rd_data[6]_INST_0_i_1 
       (.I0(\rd_data[6]_INST_0_i_3_n_0 ),
        .I1(\rd_data[6]_INST_0_i_4_n_0 ),
        .O(\rd_data[6]_INST_0_i_1_n_0 ),
        .S(Q[2]));
  MUXF7 \rd_data[6]_INST_0_i_2 
       (.I0(\rd_data[6]_INST_0_i_5_n_0 ),
        .I1(\rd_data[6]_INST_0_i_6_n_0 ),
        .O(\rd_data[6]_INST_0_i_2_n_0 ),
        .S(Q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[6]_INST_0_i_3 
       (.I0(\FIFO_DATA_reg[3] [6]),
        .I1(\FIFO_DATA_reg[2] [6]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[1] [6]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[0] [6]),
        .O(\rd_data[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[6]_INST_0_i_4 
       (.I0(\FIFO_DATA_reg[7] [6]),
        .I1(\FIFO_DATA_reg[6] [6]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[5] [6]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[4] [6]),
        .O(\rd_data[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[6]_INST_0_i_5 
       (.I0(\FIFO_DATA_reg[11] [6]),
        .I1(\FIFO_DATA_reg[10] [6]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[9] [6]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[8] [6]),
        .O(\rd_data[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[6]_INST_0_i_6 
       (.I0(\FIFO_DATA_reg[15] [6]),
        .I1(\FIFO_DATA_reg[14] [6]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[13] [6]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[12] [6]),
        .O(\rd_data[6]_INST_0_i_6_n_0 ));
  MUXF8 \rd_data[7]_INST_0 
       (.I0(\rd_data[7]_INST_0_i_1_n_0 ),
        .I1(\rd_data[7]_INST_0_i_2_n_0 ),
        .O(rd_data[7]),
        .S(Q[3]));
  MUXF7 \rd_data[7]_INST_0_i_1 
       (.I0(\rd_data[7]_INST_0_i_3_n_0 ),
        .I1(\rd_data[7]_INST_0_i_4_n_0 ),
        .O(\rd_data[7]_INST_0_i_1_n_0 ),
        .S(Q[2]));
  MUXF7 \rd_data[7]_INST_0_i_2 
       (.I0(\rd_data[7]_INST_0_i_5_n_0 ),
        .I1(\rd_data[7]_INST_0_i_6_n_0 ),
        .O(\rd_data[7]_INST_0_i_2_n_0 ),
        .S(Q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[7]_INST_0_i_3 
       (.I0(\FIFO_DATA_reg[3] [7]),
        .I1(\FIFO_DATA_reg[2] [7]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[1] [7]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[0] [7]),
        .O(\rd_data[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[7]_INST_0_i_4 
       (.I0(\FIFO_DATA_reg[7] [7]),
        .I1(\FIFO_DATA_reg[6] [7]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[5] [7]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[4] [7]),
        .O(\rd_data[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[7]_INST_0_i_5 
       (.I0(\FIFO_DATA_reg[11] [7]),
        .I1(\FIFO_DATA_reg[10] [7]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[9] [7]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[8] [7]),
        .O(\rd_data[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[7]_INST_0_i_6 
       (.I0(\FIFO_DATA_reg[15] [7]),
        .I1(\FIFO_DATA_reg[14] [7]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[13] [7]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[12] [7]),
        .O(\rd_data[7]_INST_0_i_6_n_0 ));
  MUXF8 \rd_data[8]_INST_0 
       (.I0(\rd_data[8]_INST_0_i_1_n_0 ),
        .I1(\rd_data[8]_INST_0_i_2_n_0 ),
        .O(rd_data[8]),
        .S(Q[3]));
  MUXF7 \rd_data[8]_INST_0_i_1 
       (.I0(\rd_data[8]_INST_0_i_3_n_0 ),
        .I1(\rd_data[8]_INST_0_i_4_n_0 ),
        .O(\rd_data[8]_INST_0_i_1_n_0 ),
        .S(Q[2]));
  MUXF7 \rd_data[8]_INST_0_i_2 
       (.I0(\rd_data[8]_INST_0_i_5_n_0 ),
        .I1(\rd_data[8]_INST_0_i_6_n_0 ),
        .O(\rd_data[8]_INST_0_i_2_n_0 ),
        .S(Q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[8]_INST_0_i_3 
       (.I0(\FIFO_DATA_reg[3] [8]),
        .I1(\FIFO_DATA_reg[2] [8]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[1] [8]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[0] [8]),
        .O(\rd_data[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[8]_INST_0_i_4 
       (.I0(\FIFO_DATA_reg[7] [8]),
        .I1(\FIFO_DATA_reg[6] [8]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[5] [8]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[4] [8]),
        .O(\rd_data[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[8]_INST_0_i_5 
       (.I0(\FIFO_DATA_reg[11] [8]),
        .I1(\FIFO_DATA_reg[10] [8]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[9] [8]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[8] [8]),
        .O(\rd_data[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[8]_INST_0_i_6 
       (.I0(\FIFO_DATA_reg[15] [8]),
        .I1(\FIFO_DATA_reg[14] [8]),
        .I2(Q[1]),
        .I3(\FIFO_DATA_reg[13] [8]),
        .I4(Q[0]),
        .I5(\FIFO_DATA_reg[12] [8]),
        .O(\rd_data[8]_INST_0_i_6_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect rd_edge
       (.E(rd_index0),
        .SR(rd_edge_n_0),
        .axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .axi_arvalid(axi_arvalid),
        .axi_arvalid_0(E),
        .\axi_rdata_reg[0] (\axi_rdata_reg[0] ),
        .axi_rvalid(axi_rvalid),
        .in_delay_reg_0(in_delay_reg_2),
        .\rd_index_reg[0] (\wr_index[4]_i_6_n_0 ),
        .\rd_index_reg[0]_0 (empty_INST_0_i_1_n_0),
        .\rd_index_reg[0]_1 (\wr_index[4]_i_7_n_0 ),
        .rd_request1(rd_request1));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_index[0]_i_1 
       (.I0(Q[0]),
        .O(\rd_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_index[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_index[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_index[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rd_index[4]_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(p_0_in__0[4]));
  LUT4 #(
    .INIT(16'h0001)) 
    \rd_index[4]_i_4 
       (.I0(in_delay_reg_2[3]),
        .I1(in_delay_reg_2[2]),
        .I2(in_delay_reg_2[0]),
        .I3(in_delay_reg_2[1]),
        .O(rd_request1));
  FDRE \rd_index_reg[0] 
       (.C(axi_aclk),
        .CE(rd_index0),
        .D(\rd_index[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(rd_edge_n_0));
  FDRE \rd_index_reg[1] 
       (.C(axi_aclk),
        .CE(rd_index0),
        .D(p_0_in__0[1]),
        .Q(Q[1]),
        .R(rd_edge_n_0));
  FDRE \rd_index_reg[2] 
       (.C(axi_aclk),
        .CE(rd_index0),
        .D(p_0_in__0[2]),
        .Q(Q[2]),
        .R(rd_edge_n_0));
  FDRE \rd_index_reg[3] 
       (.C(axi_aclk),
        .CE(rd_index0),
        .D(p_0_in__0[3]),
        .Q(Q[3]),
        .R(rd_edge_n_0));
  FDRE \rd_index_reg[4] 
       (.C(axi_aclk),
        .CE(rd_index0),
        .D(p_0_in__0[4]),
        .Q(Q[4]),
        .R(rd_edge_n_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \watermark[0]_INST_0 
       (.I0(\wr_index_reg[4]_0 [0]),
        .I1(Q[0]),
        .O(watermark[0]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \watermark[1]_INST_0 
       (.I0(Q[0]),
        .I1(\wr_index_reg[4]_0 [0]),
        .I2(Q[1]),
        .I3(\wr_index_reg[4]_0 [1]),
        .O(watermark[1]));
  LUT6 #(
    .INIT(64'h4F04B0FBB0FB4F04)) 
    \watermark[2]_INST_0 
       (.I0(\wr_index_reg[4]_0 [0]),
        .I1(Q[0]),
        .I2(\wr_index_reg[4]_0 [1]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\wr_index_reg[4]_0 [2]),
        .O(watermark[2]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \watermark[3]_INST_0 
       (.I0(\watermark[4]_INST_0_i_1_n_0 ),
        .I1(Q[3]),
        .I2(\wr_index_reg[4]_0 [3]),
        .O(watermark[3]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \watermark[4]_INST_0 
       (.I0(\watermark[4]_INST_0_i_1_n_0 ),
        .I1(\wr_index_reg[4]_0 [3]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\wr_index_reg[4]_0 [4]),
        .O(watermark[4]));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    \watermark[4]_INST_0_i_1 
       (.I0(Q[2]),
        .I1(\wr_index_reg[4]_0 [2]),
        .I2(\wr_index_reg[4]_0 [0]),
        .I3(Q[0]),
        .I4(\wr_index_reg[4]_0 [1]),
        .I5(Q[1]),
        .O(\watermark[4]_INST_0_i_1_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0 wr_edge
       (.D(p_1_in),
        .E(p_0_in),
        .\FIFO_DATA_reg[0][8] (\FIFO_DATA[0][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[10][8] (\FIFO_DATA[10][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[11][8] (\FIFO_DATA[11][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[12][8] (\FIFO_DATA[12][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[13][8] (\FIFO_DATA[13][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[14][8] (\FIFO_DATA[14][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[15][8] (\FIFO_DATA[15][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[1][8] (\FIFO_DATA[1][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[2][8] (\FIFO_DATA[2][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[3][8] (\FIFO_DATA[3][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[4][8] (\FIFO_DATA[4][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[5][8] (\FIFO_DATA[5][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[6][8] (\FIFO_DATA[6][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[7][8] (\FIFO_DATA[7][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[8][8] (\FIFO_DATA[8][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[9][8] (\FIFO_DATA[9][8]_i_3_n_0 ),
        .Q(\wr_index_reg[4]_0 [3:0]),
        .SR(wr_edge_n_0),
        .axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .axi_awvalid(axi_awvalid),
        .axi_wvalid(axi_wvalid),
        .axi_wvalid_0(p_9_in),
        .clear_overflow_request(clear_overflow_request),
        .clear_overflow_request_0(wr_edge_n_163),
        .full(full),
        .in_delay_reg_0(in_delay_reg),
        .in_delay_reg_1(in_delay_reg_0),
        .in_delay_reg_2(in_delay_reg_1),
        .officialData(officialData),
        .\officialData_reg[8] ({wr_edge_n_13,wr_edge_n_14,wr_edge_n_15,wr_edge_n_16,wr_edge_n_17,wr_edge_n_18,wr_edge_n_19,wr_edge_n_20,wr_edge_n_21}),
        .\officialData_reg[8]_0 ({wr_edge_n_23,wr_edge_n_24,wr_edge_n_25,wr_edge_n_26,wr_edge_n_27,wr_edge_n_28,wr_edge_n_29,wr_edge_n_30,wr_edge_n_31}),
        .\officialData_reg[8]_1 ({wr_edge_n_33,wr_edge_n_34,wr_edge_n_35,wr_edge_n_36,wr_edge_n_37,wr_edge_n_38,wr_edge_n_39,wr_edge_n_40,wr_edge_n_41}),
        .\officialData_reg[8]_10 ({wr_edge_n_123,wr_edge_n_124,wr_edge_n_125,wr_edge_n_126,wr_edge_n_127,wr_edge_n_128,wr_edge_n_129,wr_edge_n_130,wr_edge_n_131}),
        .\officialData_reg[8]_11 ({wr_edge_n_133,wr_edge_n_134,wr_edge_n_135,wr_edge_n_136,wr_edge_n_137,wr_edge_n_138,wr_edge_n_139,wr_edge_n_140,wr_edge_n_141}),
        .\officialData_reg[8]_12 ({wr_edge_n_143,wr_edge_n_144,wr_edge_n_145,wr_edge_n_146,wr_edge_n_147,wr_edge_n_148,wr_edge_n_149,wr_edge_n_150,wr_edge_n_151}),
        .\officialData_reg[8]_13 ({wr_edge_n_153,wr_edge_n_154,wr_edge_n_155,wr_edge_n_156,wr_edge_n_157,wr_edge_n_158,wr_edge_n_159,wr_edge_n_160,wr_edge_n_161}),
        .\officialData_reg[8]_2 ({wr_edge_n_43,wr_edge_n_44,wr_edge_n_45,wr_edge_n_46,wr_edge_n_47,wr_edge_n_48,wr_edge_n_49,wr_edge_n_50,wr_edge_n_51}),
        .\officialData_reg[8]_3 ({wr_edge_n_53,wr_edge_n_54,wr_edge_n_55,wr_edge_n_56,wr_edge_n_57,wr_edge_n_58,wr_edge_n_59,wr_edge_n_60,wr_edge_n_61}),
        .\officialData_reg[8]_4 ({wr_edge_n_63,wr_edge_n_64,wr_edge_n_65,wr_edge_n_66,wr_edge_n_67,wr_edge_n_68,wr_edge_n_69,wr_edge_n_70,wr_edge_n_71}),
        .\officialData_reg[8]_5 ({wr_edge_n_73,wr_edge_n_74,wr_edge_n_75,wr_edge_n_76,wr_edge_n_77,wr_edge_n_78,wr_edge_n_79,wr_edge_n_80,wr_edge_n_81}),
        .\officialData_reg[8]_6 ({wr_edge_n_83,wr_edge_n_84,wr_edge_n_85,wr_edge_n_86,wr_edge_n_87,wr_edge_n_88,wr_edge_n_89,wr_edge_n_90,wr_edge_n_91}),
        .\officialData_reg[8]_7 ({wr_edge_n_93,wr_edge_n_94,wr_edge_n_95,wr_edge_n_96,wr_edge_n_97,wr_edge_n_98,wr_edge_n_99,wr_edge_n_100,wr_edge_n_101}),
        .\officialData_reg[8]_8 ({wr_edge_n_103,wr_edge_n_104,wr_edge_n_105,wr_edge_n_106,wr_edge_n_107,wr_edge_n_108,wr_edge_n_109,wr_edge_n_110,wr_edge_n_111}),
        .\officialData_reg[8]_9 ({wr_edge_n_113,wr_edge_n_114,wr_edge_n_115,wr_edge_n_116,wr_edge_n_117,wr_edge_n_118,wr_edge_n_119,wr_edge_n_120,wr_edge_n_121}),
        .overflow(overflow),
        .overflow13_out(overflow13_out),
        .\wr_index_reg[0] (wr_edge_n_12),
        .\wr_index_reg[0]_0 (wr_edge_n_92),
        .\wr_index_reg[0]_1 (wr_edge_n_132),
        .\wr_index_reg[0]_2 (\wr_index[4]_i_6_n_0 ),
        .\wr_index_reg[0]_3 (\wr_index[4]_i_7_n_0 ),
        .\wr_index_reg[0]_4 (empty_INST_0_i_1_n_0),
        .\wr_index_reg[1] (wr_edge_n_22),
        .\wr_index_reg[1]_0 (wr_edge_n_32),
        .\wr_index_reg[1]_1 (wr_edge_n_72),
        .\wr_index_reg[1]_2 (wr_edge_n_102),
        .\wr_index_reg[1]_3 (wr_edge_n_112),
        .\wr_index_reg[1]_4 (wr_edge_n_142),
        .\wr_index_reg[1]_5 (wr_edge_n_152),
        .\wr_index_reg[2] (wr_edge_n_42),
        .\wr_index_reg[2]_0 (wr_edge_n_52),
        .\wr_index_reg[2]_1 (wr_edge_n_62),
        .\wr_index_reg[2]_2 (wr_edge_n_122),
        .\wr_index_reg[3] (wr_edge_n_82),
        .wr_request1(wr_request1));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_index[0]_i_1 
       (.I0(\wr_index_reg[4]_0 [0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_index[1]_i_1 
       (.I0(\wr_index_reg[4]_0 [0]),
        .I1(\wr_index_reg[4]_0 [1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_index[2]_i_1 
       (.I0(\wr_index_reg[4]_0 [0]),
        .I1(\wr_index_reg[4]_0 [1]),
        .I2(\wr_index_reg[4]_0 [2]),
        .O(\wr_index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_index[3]_i_1 
       (.I0(\wr_index_reg[4]_0 [1]),
        .I1(\wr_index_reg[4]_0 [0]),
        .I2(\wr_index_reg[4]_0 [2]),
        .I3(\wr_index_reg[4]_0 [3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wr_index[4]_i_3 
       (.I0(\wr_index_reg[4]_0 [2]),
        .I1(\wr_index_reg[4]_0 [0]),
        .I2(\wr_index_reg[4]_0 [1]),
        .I3(\wr_index_reg[4]_0 [3]),
        .I4(\wr_index_reg[4]_0 [4]),
        .O(p_0_in__1[4]));
  LUT4 #(
    .INIT(16'h0001)) 
    \wr_index[4]_i_5 
       (.I0(in_delay_reg[3]),
        .I1(in_delay_reg[2]),
        .I2(in_delay_reg[0]),
        .I3(in_delay_reg[1]),
        .O(wr_request1));
  LUT2 #(
    .INIT(4'h9)) 
    \wr_index[4]_i_6 
       (.I0(Q[4]),
        .I1(\wr_index_reg[4]_0 [4]),
        .O(\wr_index[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \wr_index[4]_i_7 
       (.I0(Q[3]),
        .I1(\wr_index_reg[4]_0 [3]),
        .O(\wr_index[4]_i_7_n_0 ));
  FDRE \wr_index_reg[0] 
       (.C(axi_aclk),
        .CE(overflow13_out),
        .D(p_0_in__1[0]),
        .Q(\wr_index_reg[4]_0 [0]),
        .R(wr_edge_n_0));
  FDRE \wr_index_reg[1] 
       (.C(axi_aclk),
        .CE(overflow13_out),
        .D(p_0_in__1[1]),
        .Q(\wr_index_reg[4]_0 [1]),
        .R(wr_edge_n_0));
  FDRE \wr_index_reg[2] 
       (.C(axi_aclk),
        .CE(overflow13_out),
        .D(\wr_index[2]_i_1_n_0 ),
        .Q(\wr_index_reg[4]_0 [2]),
        .R(wr_edge_n_0));
  FDRE \wr_index_reg[3] 
       (.C(axi_aclk),
        .CE(overflow13_out),
        .D(p_0_in__1[3]),
        .Q(\wr_index_reg[4]_0 [3]),
        .R(wr_edge_n_0));
  FDRE \wr_index_reg[4] 
       (.C(axi_aclk),
        .CE(overflow13_out),
        .D(p_0_in__1[4]),
        .Q(\wr_index_reg[4]_0 [4]),
        .R(wr_edge_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect
   (SR,
    E,
    axi_arvalid_0,
    axi_aclk,
    axi_aresetn,
    rd_request1,
    \rd_index_reg[0] ,
    \rd_index_reg[0]_0 ,
    \rd_index_reg[0]_1 ,
    in_delay_reg_0,
    axi_arvalid,
    axi_rvalid,
    \axi_rdata_reg[0] );
  output [0:0]SR;
  output [0:0]E;
  output [0:0]axi_arvalid_0;
  input axi_aclk;
  input axi_aresetn;
  input rd_request1;
  input \rd_index_reg[0] ;
  input \rd_index_reg[0]_0 ;
  input \rd_index_reg[0]_1 ;
  input [3:0]in_delay_reg_0;
  input axi_arvalid;
  input axi_rvalid;
  input \axi_rdata_reg[0] ;

  wire [0:0]E;
  wire [0:0]SR;
  wire axi_aclk;
  wire axi_aresetn;
  wire axi_arvalid;
  wire [0:0]axi_arvalid_0;
  wire \axi_rdata_reg[0] ;
  wire axi_rvalid;
  wire in_delay;
  wire [3:0]in_delay_reg_0;
  wire \rd_index_reg[0] ;
  wire \rd_index_reg[0]_0 ;
  wire \rd_index_reg[0]_1 ;
  wire rd_request0;
  wire rd_request1;

  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_arvalid),
        .I1(axi_rvalid),
        .I2(\axi_rdata_reg[0] ),
        .O(axi_arvalid_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    in_delay_i_1__0
       (.I0(axi_arvalid_0),
        .I1(in_delay_reg_0[1]),
        .I2(in_delay_reg_0[0]),
        .I3(in_delay_reg_0[2]),
        .I4(in_delay_reg_0[3]),
        .O(rd_request0));
  FDRE in_delay_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(rd_request0),
        .Q(in_delay),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \rd_index[4]_i_1 
       (.I0(E),
        .I1(axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h0040404040404040)) 
    \rd_index[4]_i_2 
       (.I0(in_delay),
        .I1(axi_arvalid_0),
        .I2(rd_request1),
        .I3(\rd_index_reg[0] ),
        .I4(\rd_index_reg[0]_0 ),
        .I5(\rd_index_reg[0]_1 ),
        .O(E));
endmodule

(* ORIG_REF_NAME = "edge_detect" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0
   (SR,
    overflow13_out,
    E,
    D,
    \wr_index_reg[0] ,
    \officialData_reg[8] ,
    \wr_index_reg[1] ,
    \officialData_reg[8]_0 ,
    \wr_index_reg[1]_0 ,
    \officialData_reg[8]_1 ,
    \wr_index_reg[2] ,
    \officialData_reg[8]_2 ,
    \wr_index_reg[2]_0 ,
    \officialData_reg[8]_3 ,
    \wr_index_reg[2]_1 ,
    \officialData_reg[8]_4 ,
    \wr_index_reg[1]_1 ,
    \officialData_reg[8]_5 ,
    \wr_index_reg[3] ,
    \officialData_reg[8]_6 ,
    \wr_index_reg[0]_0 ,
    \officialData_reg[8]_7 ,
    \wr_index_reg[1]_2 ,
    \officialData_reg[8]_8 ,
    \wr_index_reg[1]_3 ,
    \officialData_reg[8]_9 ,
    \wr_index_reg[2]_2 ,
    \officialData_reg[8]_10 ,
    \wr_index_reg[0]_1 ,
    \officialData_reg[8]_11 ,
    \wr_index_reg[1]_4 ,
    \officialData_reg[8]_12 ,
    \wr_index_reg[1]_5 ,
    \officialData_reg[8]_13 ,
    axi_wvalid_0,
    clear_overflow_request_0,
    axi_aclk,
    axi_aresetn,
    Q,
    officialData,
    \FIFO_DATA_reg[15][8] ,
    \FIFO_DATA_reg[14][8] ,
    \FIFO_DATA_reg[13][8] ,
    \FIFO_DATA_reg[12][8] ,
    \FIFO_DATA_reg[11][8] ,
    \FIFO_DATA_reg[10][8] ,
    \FIFO_DATA_reg[9][8] ,
    \FIFO_DATA_reg[8][8] ,
    \FIFO_DATA_reg[7][8] ,
    \FIFO_DATA_reg[6][8] ,
    \FIFO_DATA_reg[5][8] ,
    \FIFO_DATA_reg[4][8] ,
    \FIFO_DATA_reg[3][8] ,
    \FIFO_DATA_reg[2][8] ,
    \FIFO_DATA_reg[1][8] ,
    \FIFO_DATA_reg[0][8] ,
    wr_request1,
    \wr_index_reg[0]_2 ,
    \wr_index_reg[0]_3 ,
    \wr_index_reg[0]_4 ,
    in_delay_reg_0,
    axi_wvalid,
    axi_awvalid,
    in_delay_reg_1,
    in_delay_reg_2,
    clear_overflow_request,
    full,
    overflow);
  output [0:0]SR;
  output overflow13_out;
  output [0:0]E;
  output [8:0]D;
  output [0:0]\wr_index_reg[0] ;
  output [8:0]\officialData_reg[8] ;
  output [0:0]\wr_index_reg[1] ;
  output [8:0]\officialData_reg[8]_0 ;
  output [0:0]\wr_index_reg[1]_0 ;
  output [8:0]\officialData_reg[8]_1 ;
  output [0:0]\wr_index_reg[2] ;
  output [8:0]\officialData_reg[8]_2 ;
  output [0:0]\wr_index_reg[2]_0 ;
  output [8:0]\officialData_reg[8]_3 ;
  output [0:0]\wr_index_reg[2]_1 ;
  output [8:0]\officialData_reg[8]_4 ;
  output [0:0]\wr_index_reg[1]_1 ;
  output [8:0]\officialData_reg[8]_5 ;
  output [0:0]\wr_index_reg[3] ;
  output [8:0]\officialData_reg[8]_6 ;
  output [0:0]\wr_index_reg[0]_0 ;
  output [8:0]\officialData_reg[8]_7 ;
  output [0:0]\wr_index_reg[1]_2 ;
  output [8:0]\officialData_reg[8]_8 ;
  output [0:0]\wr_index_reg[1]_3 ;
  output [8:0]\officialData_reg[8]_9 ;
  output [0:0]\wr_index_reg[2]_2 ;
  output [8:0]\officialData_reg[8]_10 ;
  output [0:0]\wr_index_reg[0]_1 ;
  output [8:0]\officialData_reg[8]_11 ;
  output [0:0]\wr_index_reg[1]_4 ;
  output [8:0]\officialData_reg[8]_12 ;
  output [0:0]\wr_index_reg[1]_5 ;
  output [8:0]\officialData_reg[8]_13 ;
  output axi_wvalid_0;
  output clear_overflow_request_0;
  input axi_aclk;
  input axi_aresetn;
  input [3:0]Q;
  input [8:0]officialData;
  input \FIFO_DATA_reg[15][8] ;
  input \FIFO_DATA_reg[14][8] ;
  input \FIFO_DATA_reg[13][8] ;
  input \FIFO_DATA_reg[12][8] ;
  input \FIFO_DATA_reg[11][8] ;
  input \FIFO_DATA_reg[10][8] ;
  input \FIFO_DATA_reg[9][8] ;
  input \FIFO_DATA_reg[8][8] ;
  input \FIFO_DATA_reg[7][8] ;
  input \FIFO_DATA_reg[6][8] ;
  input \FIFO_DATA_reg[5][8] ;
  input \FIFO_DATA_reg[4][8] ;
  input \FIFO_DATA_reg[3][8] ;
  input \FIFO_DATA_reg[2][8] ;
  input \FIFO_DATA_reg[1][8] ;
  input \FIFO_DATA_reg[0][8] ;
  input wr_request1;
  input \wr_index_reg[0]_2 ;
  input \wr_index_reg[0]_3 ;
  input \wr_index_reg[0]_4 ;
  input [3:0]in_delay_reg_0;
  input axi_wvalid;
  input axi_awvalid;
  input in_delay_reg_1;
  input in_delay_reg_2;
  input clear_overflow_request;
  input full;
  input overflow;

  wire [8:0]D;
  wire [0:0]E;
  wire \FIFO_DATA_reg[0][8] ;
  wire \FIFO_DATA_reg[10][8] ;
  wire \FIFO_DATA_reg[11][8] ;
  wire \FIFO_DATA_reg[12][8] ;
  wire \FIFO_DATA_reg[13][8] ;
  wire \FIFO_DATA_reg[14][8] ;
  wire \FIFO_DATA_reg[15][8] ;
  wire \FIFO_DATA_reg[1][8] ;
  wire \FIFO_DATA_reg[2][8] ;
  wire \FIFO_DATA_reg[3][8] ;
  wire \FIFO_DATA_reg[4][8] ;
  wire \FIFO_DATA_reg[5][8] ;
  wire \FIFO_DATA_reg[6][8] ;
  wire \FIFO_DATA_reg[7][8] ;
  wire \FIFO_DATA_reg[8][8] ;
  wire \FIFO_DATA_reg[9][8] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire axi_aclk;
  wire axi_aresetn;
  wire axi_awvalid;
  wire axi_wvalid;
  wire axi_wvalid_0;
  wire clear_overflow_request;
  wire clear_overflow_request_0;
  wire full;
  wire in_delay;
  wire [3:0]in_delay_reg_0;
  wire in_delay_reg_1;
  wire in_delay_reg_2;
  wire [8:0]officialData;
  wire [8:0]\officialData_reg[8] ;
  wire [8:0]\officialData_reg[8]_0 ;
  wire [8:0]\officialData_reg[8]_1 ;
  wire [8:0]\officialData_reg[8]_10 ;
  wire [8:0]\officialData_reg[8]_11 ;
  wire [8:0]\officialData_reg[8]_12 ;
  wire [8:0]\officialData_reg[8]_13 ;
  wire [8:0]\officialData_reg[8]_2 ;
  wire [8:0]\officialData_reg[8]_3 ;
  wire [8:0]\officialData_reg[8]_4 ;
  wire [8:0]\officialData_reg[8]_5 ;
  wire [8:0]\officialData_reg[8]_6 ;
  wire [8:0]\officialData_reg[8]_7 ;
  wire [8:0]\officialData_reg[8]_8 ;
  wire [8:0]\officialData_reg[8]_9 ;
  wire overflow;
  wire overflow13_out;
  wire [0:0]\wr_index_reg[0] ;
  wire [0:0]\wr_index_reg[0]_0 ;
  wire [0:0]\wr_index_reg[0]_1 ;
  wire \wr_index_reg[0]_2 ;
  wire \wr_index_reg[0]_3 ;
  wire \wr_index_reg[0]_4 ;
  wire [0:0]\wr_index_reg[1] ;
  wire [0:0]\wr_index_reg[1]_0 ;
  wire [0:0]\wr_index_reg[1]_1 ;
  wire [0:0]\wr_index_reg[1]_2 ;
  wire [0:0]\wr_index_reg[1]_3 ;
  wire [0:0]\wr_index_reg[1]_4 ;
  wire [0:0]\wr_index_reg[1]_5 ;
  wire [0:0]\wr_index_reg[2] ;
  wire [0:0]\wr_index_reg[2]_0 ;
  wire [0:0]\wr_index_reg[2]_1 ;
  wire [0:0]\wr_index_reg[2]_2 ;
  wire [0:0]\wr_index_reg[3] ;
  wire wr_request0;
  wire wr_request1;
  wire write_request;

  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[0][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[0][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_13 [0]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[0][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[0][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_13 [1]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[0][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[0][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_13 [2]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[0][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[0][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_13 [3]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[0][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[0][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_13 [4]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[0][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[0][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_13 [5]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[0][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[0][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_13 [6]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[0][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[0][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_13 [7]));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \FIFO_DATA[0][8]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(overflow13_out),
        .I5(axi_aresetn),
        .O(\wr_index_reg[1]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[0][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[0][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_13 [8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[10][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[10][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_3 [0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[10][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[10][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_3 [1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[10][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[10][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_3 [2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[10][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[10][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_3 [3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[10][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[10][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_3 [4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[10][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[10][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_3 [5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[10][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[10][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_3 [6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[10][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[10][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_3 [7]));
  LUT6 #(
    .INIT(64'h10000000FFFFFFFF)) 
    \FIFO_DATA[10][8]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(overflow13_out),
        .I5(axi_aresetn),
        .O(\wr_index_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[10][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[10][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_3 [8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[11][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[11][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[11][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[11][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[11][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[11][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[11][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[11][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[11][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[11][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_2 [4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[11][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[11][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_2 [5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[11][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[11][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_2 [6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[11][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[11][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_2 [7]));
  LUT6 #(
    .INIT(64'h40000000FFFFFFFF)) 
    \FIFO_DATA[11][8]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(overflow13_out),
        .I5(axi_aresetn),
        .O(\wr_index_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[11][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[11][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_2 [8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[12][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[12][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[12][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[12][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[12][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[12][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[12][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[12][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[12][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[12][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[12][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[12][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[12][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[12][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[12][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[12][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_1 [7]));
  LUT6 #(
    .INIT(64'h10000000FFFFFFFF)) 
    \FIFO_DATA[12][8]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(overflow13_out),
        .I5(axi_aresetn),
        .O(\wr_index_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[12][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[12][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_1 [8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[13][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[13][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[13][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[13][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[13][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[13][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[13][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[13][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[13][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[13][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[13][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[13][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[13][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[13][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[13][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[13][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_0 [7]));
  LUT6 #(
    .INIT(64'h40000000FFFFFFFF)) 
    \FIFO_DATA[13][8]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(overflow13_out),
        .I5(axi_aresetn),
        .O(\wr_index_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[13][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[13][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[14][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[14][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8] [0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[14][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[14][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8] [1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[14][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[14][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8] [2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[14][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[14][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8] [3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[14][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[14][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8] [4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[14][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[14][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8] [5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[14][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[14][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8] [6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[14][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[14][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8] [7]));
  LUT6 #(
    .INIT(64'h40000000FFFFFFFF)) 
    \FIFO_DATA[14][8]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(overflow13_out),
        .I5(axi_aresetn),
        .O(\wr_index_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[14][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[14][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8] [8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[15][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[15][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[15][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[15][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[15][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[15][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[15][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[15][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[15][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[15][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[15][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[15][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[15][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[15][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[15][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[15][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \FIFO_DATA[15][8]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(overflow13_out),
        .I5(axi_aresetn),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[15][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[15][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[1][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[1][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_12 [0]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[1][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[1][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_12 [1]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[1][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[1][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_12 [2]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[1][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[1][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_12 [3]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[1][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[1][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_12 [4]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[1][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[1][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_12 [5]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[1][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[1][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_12 [6]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[1][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[1][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_12 [7]));
  LUT6 #(
    .INIT(64'h01000000FFFFFFFF)) 
    \FIFO_DATA[1][8]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(overflow13_out),
        .I5(axi_aresetn),
        .O(\wr_index_reg[1]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[1][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[1][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_12 [8]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[2][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[2][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_11 [0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[2][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[2][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_11 [1]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[2][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[2][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_11 [2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[2][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[2][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_11 [3]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[2][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[2][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_11 [4]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[2][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[2][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_11 [5]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[2][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[2][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_11 [6]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[2][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[2][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_11 [7]));
  LUT6 #(
    .INIT(64'h01000000FFFFFFFF)) 
    \FIFO_DATA[2][8]_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(overflow13_out),
        .I5(axi_aresetn),
        .O(\wr_index_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[2][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[2][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_11 [8]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[3][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[3][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_10 [0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[3][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[3][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_10 [1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[3][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[3][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_10 [2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[3][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[3][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_10 [3]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[3][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[3][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_10 [4]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[3][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[3][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_10 [5]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[3][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[3][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_10 [6]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[3][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[3][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_10 [7]));
  LUT6 #(
    .INIT(64'h10000000FFFFFFFF)) 
    \FIFO_DATA[3][8]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(overflow13_out),
        .I5(axi_aresetn),
        .O(\wr_index_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[3][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[3][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_10 [8]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[4][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[4][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_9 [0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[4][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[4][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_9 [1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[4][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[4][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_9 [2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[4][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[4][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_9 [3]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[4][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[4][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_9 [4]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[4][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[4][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_9 [5]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[4][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[4][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_9 [6]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[4][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[4][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_9 [7]));
  LUT6 #(
    .INIT(64'h01000000FFFFFFFF)) 
    \FIFO_DATA[4][8]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(overflow13_out),
        .I5(axi_aresetn),
        .O(\wr_index_reg[1]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[4][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[4][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_9 [8]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[5][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[5][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_8 [0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[5][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[5][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_8 [1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[5][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[5][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_8 [2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[5][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[5][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_8 [3]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[5][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[5][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_8 [4]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[5][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[5][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_8 [5]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[5][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[5][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_8 [6]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[5][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[5][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_8 [7]));
  LUT6 #(
    .INIT(64'h10000000FFFFFFFF)) 
    \FIFO_DATA[5][8]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(overflow13_out),
        .I5(axi_aresetn),
        .O(\wr_index_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[5][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[5][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_8 [8]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[6][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[6][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_7 [0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[6][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[6][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_7 [1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[6][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[6][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_7 [2]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[6][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[6][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_7 [3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[6][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[6][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_7 [4]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[6][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[6][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_7 [5]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[6][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[6][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_7 [6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[6][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[6][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_7 [7]));
  LUT6 #(
    .INIT(64'h10000000FFFFFFFF)) 
    \FIFO_DATA[6][8]_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(overflow13_out),
        .I5(axi_aresetn),
        .O(\wr_index_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[6][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[6][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_7 [8]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[7][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[7][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_6 [0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[7][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[7][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_6 [1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[7][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[7][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_6 [2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[7][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[7][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_6 [3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[7][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[7][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_6 [4]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[7][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[7][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_6 [5]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[7][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[7][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_6 [6]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[7][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[7][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_6 [7]));
  LUT6 #(
    .INIT(64'h40000000FFFFFFFF)) 
    \FIFO_DATA[7][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(overflow13_out),
        .I5(axi_aresetn),
        .O(\wr_index_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[7][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[7][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_6 [8]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[8][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[8][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_5 [0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[8][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[8][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_5 [1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[8][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[8][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_5 [2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[8][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[8][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_5 [3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[8][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[8][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_5 [4]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[8][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[8][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_5 [5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[8][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[8][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_5 [6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[8][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[8][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_5 [7]));
  LUT6 #(
    .INIT(64'h01000000FFFFFFFF)) 
    \FIFO_DATA[8][8]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(overflow13_out),
        .I5(axi_aresetn),
        .O(\wr_index_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[8][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[8][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_5 [8]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[9][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[9][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_4 [0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[9][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[9][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_4 [1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[9][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[9][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_4 [2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[9][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[9][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_4 [3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[9][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[9][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_4 [4]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[9][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[9][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_4 [5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[9][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[9][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_4 [6]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[9][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[9][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_4 [7]));
  LUT6 #(
    .INIT(64'h10000000FFFFFFFF)) 
    \FIFO_DATA[9][8]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(overflow13_out),
        .I5(axi_aresetn),
        .O(\wr_index_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \FIFO_DATA[9][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[9][8] ),
        .I2(overflow13_out),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_4 [8]));
  LUT5 #(
    .INIT(32'h00000002)) 
    in_delay_i_1
       (.I0(axi_wvalid_0),
        .I1(in_delay_reg_0[1]),
        .I2(in_delay_reg_0[0]),
        .I3(in_delay_reg_0[2]),
        .I4(in_delay_reg_0[3]),
        .O(wr_request0));
  FDRE in_delay_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(wr_request0),
        .Q(in_delay),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4444544400005000)) 
    overflow_i_1
       (.I0(clear_overflow_request),
        .I1(axi_aresetn),
        .I2(write_request),
        .I3(full),
        .I4(overflow13_out),
        .I5(overflow),
        .O(clear_overflow_request_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    overflow_i_2
       (.I0(in_delay_reg_0[3]),
        .I1(in_delay_reg_0[2]),
        .I2(in_delay_reg_0[0]),
        .I3(in_delay_reg_0[1]),
        .I4(axi_wvalid_0),
        .I5(in_delay),
        .O(write_request));
  LUT2 #(
    .INIT(4'h1)) 
    \wr_index[4]_i_1 
       (.I0(overflow13_out),
        .I1(axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h4000404040404040)) 
    \wr_index[4]_i_2 
       (.I0(in_delay),
        .I1(axi_wvalid_0),
        .I2(wr_request1),
        .I3(\wr_index_reg[0]_2 ),
        .I4(\wr_index_reg[0]_3 ),
        .I5(\wr_index_reg[0]_4 ),
        .O(overflow13_out));
  LUT4 #(
    .INIT(16'h8000)) 
    \wr_index[4]_i_4 
       (.I0(axi_wvalid),
        .I1(axi_awvalid),
        .I2(in_delay_reg_1),
        .I3(in_delay_reg_2),
        .O(axi_wvalid_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial
   (full,
    rd_index,
    wr_index,
    watermark,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    axi_rdata,
    empty,
    axi_rvalid,
    rd_data,
    overflow,
    axi_bvalid,
    axi_aresetn,
    axi_aclk,
    axi_wdata,
    axi_awaddr,
    axi_wstrb,
    axi_araddr,
    axi_wvalid,
    axi_awvalid,
    axi_arvalid,
    clear_overflow_request,
    axi_bready,
    axi_rready);
  output full;
  output [4:0]rd_index;
  output [4:0]wr_index;
  output [4:0]watermark;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]axi_rdata;
  output empty;
  output axi_rvalid;
  output [8:0]rd_data;
  output overflow;
  output axi_bvalid;
  input axi_aresetn;
  input axi_aclk;
  input [31:0]axi_wdata;
  input [3:0]axi_awaddr;
  input [3:0]axi_wstrb;
  input [3:0]axi_araddr;
  input axi_wvalid;
  input axi_awvalid;
  input axi_arvalid;
  input clear_overflow_request;
  input axi_bready;
  input axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire axi_aclk;
  wire [3:0]axi_araddr;
  wire axi_aresetn;
  wire axi_arvalid;
  wire [3:0]axi_awaddr;
  wire axi_awvalid;
  wire axi_bready;
  wire axi_bvalid;
  wire [31:0]axi_rdata;
  wire axi_rready;
  wire axi_rvalid;
  wire [31:0]axi_wdata;
  wire [3:0]axi_wstrb;
  wire axi_wvalid;
  wire clear_overflow_request;
  wire empty;
  wire full;
  wire overflow;
  wire [8:0]rd_data;
  wire [4:0]rd_index;
  wire [4:0]watermark;
  wire [4:0]wr_index;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI serial_v1_0_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .axi_aclk(axi_aclk),
        .axi_araddr(axi_araddr),
        .axi_aresetn(axi_aresetn),
        .axi_arvalid(axi_arvalid),
        .axi_awaddr(axi_awaddr),
        .axi_awvalid(axi_awvalid),
        .axi_bready(axi_bready),
        .axi_bvalid(axi_bvalid),
        .axi_rdata(axi_rdata),
        .axi_rready(axi_rready),
        .axi_rvalid(axi_rvalid),
        .axi_wdata(axi_wdata),
        .axi_wstrb(axi_wstrb),
        .axi_wvalid(axi_wvalid),
        .clear_overflow_request(clear_overflow_request),
        .empty(empty),
        .full(full),
        .overflow(overflow),
        .rd_data(rd_data),
        .rd_index(rd_index),
        .watermark(watermark),
        .wr_index(wr_index));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI
   (full,
    rd_index,
    wr_index,
    watermark,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    axi_rdata,
    empty,
    axi_rvalid,
    rd_data,
    overflow,
    axi_bvalid,
    axi_aresetn,
    axi_aclk,
    axi_wdata,
    axi_awaddr,
    axi_wstrb,
    axi_araddr,
    axi_wvalid,
    axi_awvalid,
    axi_arvalid,
    clear_overflow_request,
    axi_bready,
    axi_rready);
  output full;
  output [4:0]rd_index;
  output [4:0]wr_index;
  output [4:0]watermark;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]axi_rdata;
  output empty;
  output axi_rvalid;
  output [8:0]rd_data;
  output overflow;
  output axi_bvalid;
  input axi_aresetn;
  input axi_aclk;
  input [31:0]axi_wdata;
  input [3:0]axi_awaddr;
  input [3:0]axi_wstrb;
  input [3:0]axi_araddr;
  input axi_wvalid;
  input axi_awvalid;
  input axi_arvalid;
  input clear_overflow_request;
  input axi_bready;
  input axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_aclk;
  wire [3:0]axi_araddr;
  wire axi_aresetn;
  wire axi_arready0;
  wire axi_arvalid;
  wire [3:0]axi_awaddr;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_awvalid;
  wire axi_bready;
  wire axi_bvalid;
  wire axi_bvalid_i_1_n_0;
  wire [31:0]axi_rdata;
  wire \axi_rdata[10]_i_1_n_0 ;
  wire \axi_rdata[11]_i_1_n_0 ;
  wire \axi_rdata[12]_i_1_n_0 ;
  wire \axi_rdata[13]_i_1_n_0 ;
  wire \axi_rdata[14]_i_1_n_0 ;
  wire \axi_rdata[15]_i_1_n_0 ;
  wire \axi_rdata[16]_i_1_n_0 ;
  wire \axi_rdata[17]_i_1_n_0 ;
  wire \axi_rdata[18]_i_1_n_0 ;
  wire \axi_rdata[19]_i_1_n_0 ;
  wire \axi_rdata[20]_i_1_n_0 ;
  wire \axi_rdata[21]_i_1_n_0 ;
  wire \axi_rdata[22]_i_1_n_0 ;
  wire \axi_rdata[23]_i_1_n_0 ;
  wire \axi_rdata[24]_i_1_n_0 ;
  wire \axi_rdata[25]_i_1_n_0 ;
  wire \axi_rdata[26]_i_1_n_0 ;
  wire \axi_rdata[27]_i_1_n_0 ;
  wire \axi_rdata[28]_i_1_n_0 ;
  wire \axi_rdata[29]_i_1_n_0 ;
  wire \axi_rdata[30]_i_1_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[9]_i_1_n_0 ;
  wire axi_rready;
  wire axi_rvalid;
  wire axi_rvalid_i_1_n_0;
  wire [31:0]axi_wdata;
  wire axi_wready0;
  wire [3:0]axi_wstrb;
  wire axi_wvalid;
  wire clear_overflow_request;
  wire empty;
  wire full;
  wire myFifo_n_20;
  wire myFifo_n_21;
  wire myFifo_n_22;
  wire myFifo_n_23;
  wire myFifo_n_24;
  wire myFifo_n_25;
  wire myFifo_n_26;
  wire myFifo_n_27;
  wire myFifo_n_28;
  wire [31:0]officialBaudRate;
  wire \officialBaudRate[15]_i_1_n_0 ;
  wire \officialBaudRate[23]_i_1_n_0 ;
  wire \officialBaudRate[31]_i_1_n_0 ;
  wire \officialBaudRate[7]_i_1_n_0 ;
  wire [31:0]officialControl;
  wire \officialControl[15]_i_1_n_0 ;
  wire \officialControl[23]_i_1_n_0 ;
  wire \officialControl[31]_i_1_n_0 ;
  wire \officialControl[7]_i_1_n_0 ;
  wire [8:0]officialData;
  wire \officialData[7]_i_1_n_0 ;
  wire \officialData[8]_i_1_n_0 ;
  wire [31:0]officialStatus;
  wire \officialStatus[15]_i_1_n_0 ;
  wire \officialStatus[23]_i_1_n_0 ;
  wire \officialStatus[31]_i_1_n_0 ;
  wire \officialStatus[7]_i_1_n_0 ;
  wire overflow;
  wire [1:0]p_0_in_0;
  wire p_7_in;
  wire p_9_in;
  wire \raddr_reg_n_0_[0] ;
  wire \raddr_reg_n_0_[1] ;
  wire [8:0]rd_data;
  wire [4:0]rd_index;
  wire [3:0]waddr;
  wire [4:0]watermark;
  wire [4:0]wr_index;

  LUT6 #(
    .INIT(64'hDFFF8AAA8AAA8AAA)) 
    aw_en_i_1
       (.I0(aw_en_reg_n_0),
        .I1(S_AXI_AWREADY),
        .I2(axi_awvalid),
        .I3(axi_wvalid),
        .I4(axi_bvalid),
        .I5(axi_bready),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    axi_awready_i_2
       (.I0(axi_wvalid),
        .I1(axi_awvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h00008000FFFF8000)) 
    axi_bvalid_i_1
       (.I0(axi_wvalid),
        .I1(axi_awvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(axi_bvalid),
        .I5(axi_bready),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[10]_i_1 
       (.I0(officialBaudRate[10]),
        .I1(officialStatus[10]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[10]),
        .O(\axi_rdata[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[11]_i_1 
       (.I0(officialBaudRate[11]),
        .I1(officialStatus[11]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[11]),
        .O(\axi_rdata[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[12]_i_1 
       (.I0(officialBaudRate[12]),
        .I1(officialStatus[12]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[12]),
        .O(\axi_rdata[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[13]_i_1 
       (.I0(officialBaudRate[13]),
        .I1(officialStatus[13]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[13]),
        .O(\axi_rdata[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[14]_i_1 
       (.I0(officialBaudRate[14]),
        .I1(officialStatus[14]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[14]),
        .O(\axi_rdata[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[15]_i_1 
       (.I0(officialBaudRate[15]),
        .I1(officialStatus[15]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[15]),
        .O(\axi_rdata[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[16]_i_1 
       (.I0(officialBaudRate[16]),
        .I1(officialStatus[16]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[16]),
        .O(\axi_rdata[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[17]_i_1 
       (.I0(officialBaudRate[17]),
        .I1(officialStatus[17]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[17]),
        .O(\axi_rdata[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[18]_i_1 
       (.I0(officialBaudRate[18]),
        .I1(officialStatus[18]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[18]),
        .O(\axi_rdata[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[19]_i_1 
       (.I0(officialBaudRate[19]),
        .I1(officialStatus[19]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[19]),
        .O(\axi_rdata[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[20]_i_1 
       (.I0(officialBaudRate[20]),
        .I1(officialStatus[20]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[20]),
        .O(\axi_rdata[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[21]_i_1 
       (.I0(officialBaudRate[21]),
        .I1(officialStatus[21]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[21]),
        .O(\axi_rdata[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[22]_i_1 
       (.I0(officialBaudRate[22]),
        .I1(officialStatus[22]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[22]),
        .O(\axi_rdata[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[23]_i_1 
       (.I0(officialBaudRate[23]),
        .I1(officialStatus[23]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[23]),
        .O(\axi_rdata[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[24]_i_1 
       (.I0(officialBaudRate[24]),
        .I1(officialStatus[24]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[24]),
        .O(\axi_rdata[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[25]_i_1 
       (.I0(officialBaudRate[25]),
        .I1(officialStatus[25]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[25]),
        .O(\axi_rdata[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[26]_i_1 
       (.I0(officialBaudRate[26]),
        .I1(officialStatus[26]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[26]),
        .O(\axi_rdata[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[27]_i_1 
       (.I0(officialBaudRate[27]),
        .I1(officialStatus[27]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[27]),
        .O(\axi_rdata[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[28]_i_1 
       (.I0(officialBaudRate[28]),
        .I1(officialStatus[28]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[28]),
        .O(\axi_rdata[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[29]_i_1 
       (.I0(officialBaudRate[29]),
        .I1(officialStatus[29]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[29]),
        .O(\axi_rdata[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[30]_i_1 
       (.I0(officialBaudRate[30]),
        .I1(officialStatus[30]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[30]),
        .O(\axi_rdata[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[31]_i_2 
       (.I0(officialBaudRate[31]),
        .I1(officialStatus[31]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[31]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[9]_i_1 
       (.I0(officialBaudRate[9]),
        .I1(officialStatus[9]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(officialControl[9]),
        .O(\axi_rdata[9]_i_1_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(myFifo_n_28),
        .Q(axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[10]_i_1_n_0 ),
        .Q(axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[11]_i_1_n_0 ),
        .Q(axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[12]_i_1_n_0 ),
        .Q(axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[13]_i_1_n_0 ),
        .Q(axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[14]_i_1_n_0 ),
        .Q(axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[15]_i_1_n_0 ),
        .Q(axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[16]_i_1_n_0 ),
        .Q(axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[17]_i_1_n_0 ),
        .Q(axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[18]_i_1_n_0 ),
        .Q(axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[19]_i_1_n_0 ),
        .Q(axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(myFifo_n_27),
        .Q(axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[20]_i_1_n_0 ),
        .Q(axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[21]_i_1_n_0 ),
        .Q(axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[22]_i_1_n_0 ),
        .Q(axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[23]_i_1_n_0 ),
        .Q(axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[24]_i_1_n_0 ),
        .Q(axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[25]_i_1_n_0 ),
        .Q(axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[26]_i_1_n_0 ),
        .Q(axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[27]_i_1_n_0 ),
        .Q(axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[28]_i_1_n_0 ),
        .Q(axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[29]_i_1_n_0 ),
        .Q(axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(myFifo_n_26),
        .Q(axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[30]_i_1_n_0 ),
        .Q(axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[31]_i_2_n_0 ),
        .Q(axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(myFifo_n_25),
        .Q(axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(myFifo_n_24),
        .Q(axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(myFifo_n_23),
        .Q(axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(myFifo_n_22),
        .Q(axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(myFifo_n_21),
        .Q(axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(myFifo_n_20),
        .Q(axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(axi_aclk),
        .CE(p_7_in),
        .D(\axi_rdata[9]_i_1_n_0 ),
        .Q(axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(axi_arvalid),
        .I2(axi_rready),
        .I3(axi_rvalid),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(axi_wvalid),
        .I1(axi_awvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIFOTEST myFifo
       (.D({myFifo_n_20,myFifo_n_21,myFifo_n_22,myFifo_n_23,myFifo_n_24,myFifo_n_25,myFifo_n_26,myFifo_n_27,myFifo_n_28}),
        .E(p_7_in),
        .Q(rd_index),
        .axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .axi_arvalid(axi_arvalid),
        .axi_awvalid(axi_awvalid),
        .\axi_rdata_reg[0] (S_AXI_ARREADY),
        .\axi_rdata_reg[8] (officialBaudRate[8:0]),
        .\axi_rdata_reg[8]_0 (officialStatus[8:0]),
        .\axi_rdata_reg[8]_1 (officialControl[8:0]),
        .axi_rvalid(axi_rvalid),
        .axi_wvalid(axi_wvalid),
        .clear_overflow_request(clear_overflow_request),
        .empty(empty),
        .full(full),
        .in_delay_reg(waddr),
        .in_delay_reg_0(S_AXI_AWREADY),
        .in_delay_reg_1(S_AXI_WREADY),
        .in_delay_reg_2({p_0_in_0,\raddr_reg_n_0_[1] ,\raddr_reg_n_0_[0] }),
        .officialData(officialData),
        .overflow(overflow),
        .p_9_in(p_9_in),
        .rd_data(rd_data),
        .watermark(watermark),
        .\wr_index_reg[4]_0 (wr_index));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[15]_i_1 
       (.I0(p_9_in),
        .I1(axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\officialBaudRate[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[23]_i_1 
       (.I0(p_9_in),
        .I1(axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\officialBaudRate[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[31]_i_1 
       (.I0(p_9_in),
        .I1(axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\officialBaudRate[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[7]_i_1 
       (.I0(p_9_in),
        .I1(axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\officialBaudRate[7]_i_1_n_0 ));
  FDRE \officialBaudRate_reg[0] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(officialBaudRate[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[10] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[10]),
        .Q(officialBaudRate[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[11] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[11]),
        .Q(officialBaudRate[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[12] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[12]),
        .Q(officialBaudRate[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[13] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[13]),
        .Q(officialBaudRate[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[14] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[14]),
        .Q(officialBaudRate[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[15] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[15]),
        .Q(officialBaudRate[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[16] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[16]),
        .Q(officialBaudRate[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[17] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[17]),
        .Q(officialBaudRate[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[18] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[18]),
        .Q(officialBaudRate[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[19] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[19]),
        .Q(officialBaudRate[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[1] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(officialBaudRate[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[20] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[20]),
        .Q(officialBaudRate[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[21] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[21]),
        .Q(officialBaudRate[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[22] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[22]),
        .Q(officialBaudRate[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[23] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[23]),
        .Q(officialBaudRate[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[24] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[24]),
        .Q(officialBaudRate[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[25] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[25]),
        .Q(officialBaudRate[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[26] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[26]),
        .Q(officialBaudRate[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[27] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[27]),
        .Q(officialBaudRate[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[28] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[28]),
        .Q(officialBaudRate[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[29] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[29]),
        .Q(officialBaudRate[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[2] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(officialBaudRate[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[30] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[30]),
        .Q(officialBaudRate[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[31] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[31]),
        .Q(officialBaudRate[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[3] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(officialBaudRate[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[4] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(officialBaudRate[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[5] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(officialBaudRate[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[6] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(officialBaudRate[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[7] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(officialBaudRate[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[8] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[8]),
        .Q(officialBaudRate[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialBaudRate_reg[9] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[9]),
        .Q(officialBaudRate[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialControl[15]_i_1 
       (.I0(p_9_in),
        .I1(axi_awaddr[3]),
        .I2(axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .O(\officialControl[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialControl[23]_i_1 
       (.I0(p_9_in),
        .I1(axi_awaddr[3]),
        .I2(axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .O(\officialControl[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialControl[31]_i_1 
       (.I0(p_9_in),
        .I1(axi_awaddr[3]),
        .I2(axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .O(\officialControl[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialControl[7]_i_1 
       (.I0(p_9_in),
        .I1(axi_awaddr[3]),
        .I2(axi_wstrb[0]),
        .I3(axi_awaddr[2]),
        .O(\officialControl[7]_i_1_n_0 ));
  FDRE \officialControl_reg[0] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(officialControl[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[10] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[10]),
        .Q(officialControl[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[11] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[11]),
        .Q(officialControl[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[12] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[12]),
        .Q(officialControl[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[13] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[13]),
        .Q(officialControl[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[14] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[14]),
        .Q(officialControl[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[15] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[15]),
        .Q(officialControl[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[16] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[16]),
        .Q(officialControl[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[17] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[17]),
        .Q(officialControl[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[18] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[18]),
        .Q(officialControl[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[19] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[19]),
        .Q(officialControl[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[1] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(officialControl[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[20] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[20]),
        .Q(officialControl[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[21] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[21]),
        .Q(officialControl[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[22] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[22]),
        .Q(officialControl[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[23] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[23]),
        .Q(officialControl[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[24] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[24]),
        .Q(officialControl[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[25] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[25]),
        .Q(officialControl[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[26] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[26]),
        .Q(officialControl[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[27] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[27]),
        .Q(officialControl[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[28] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[28]),
        .Q(officialControl[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[29] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[29]),
        .Q(officialControl[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[2] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(officialControl[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[30] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[30]),
        .Q(officialControl[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[31] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[31]),
        .Q(officialControl[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[3] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(officialControl[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[4] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(officialControl[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[5] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(officialControl[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[6] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(officialControl[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[7] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(officialControl[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[8] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[8]),
        .Q(officialControl[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialControl_reg[9] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[9]),
        .Q(officialControl[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0200)) 
    \officialData[7]_i_1 
       (.I0(p_9_in),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_wstrb[0]),
        .O(\officialData[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \officialData[8]_i_1 
       (.I0(axi_wdata[8]),
        .I1(p_9_in),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(axi_wstrb[1]),
        .I5(officialData[8]),
        .O(\officialData[8]_i_1_n_0 ));
  FDRE \officialData_reg[0] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(officialData[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialData_reg[1] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(officialData[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialData_reg[2] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(officialData[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialData_reg[3] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(officialData[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialData_reg[4] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(officialData[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialData_reg[5] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(officialData[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialData_reg[6] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(officialData[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialData_reg[7] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(officialData[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialData_reg[8] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\officialData[8]_i_1_n_0 ),
        .Q(officialData[8]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialStatus[15]_i_1 
       (.I0(p_9_in),
        .I1(axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\officialStatus[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialStatus[23]_i_1 
       (.I0(p_9_in),
        .I1(axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\officialStatus[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialStatus[31]_i_1 
       (.I0(p_9_in),
        .I1(axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\officialStatus[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialStatus[7]_i_1 
       (.I0(p_9_in),
        .I1(axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\officialStatus[7]_i_1_n_0 ));
  FDRE \officialStatus_reg[0] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(officialStatus[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[10] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[10]),
        .Q(officialStatus[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[11] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[11]),
        .Q(officialStatus[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[12] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[12]),
        .Q(officialStatus[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[13] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[13]),
        .Q(officialStatus[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[14] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[14]),
        .Q(officialStatus[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[15] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[15]),
        .Q(officialStatus[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[16] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[16]),
        .Q(officialStatus[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[17] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[17]),
        .Q(officialStatus[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[18] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[18]),
        .Q(officialStatus[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[19] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[19]),
        .Q(officialStatus[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[1] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(officialStatus[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[20] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[20]),
        .Q(officialStatus[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[21] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[21]),
        .Q(officialStatus[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[22] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[22]),
        .Q(officialStatus[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[23] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[23]),
        .Q(officialStatus[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[24] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[24]),
        .Q(officialStatus[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[25] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[25]),
        .Q(officialStatus[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[26] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[26]),
        .Q(officialStatus[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[27] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[27]),
        .Q(officialStatus[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[28] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[28]),
        .Q(officialStatus[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[29] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[29]),
        .Q(officialStatus[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[2] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(officialStatus[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[30] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[30]),
        .Q(officialStatus[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[31] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[31]),
        .Q(officialStatus[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[3] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(officialStatus[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[4] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(officialStatus[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[5] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(officialStatus[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[6] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(officialStatus[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[7] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(officialStatus[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[8] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[8]),
        .Q(officialStatus[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \officialStatus_reg[9] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[9]),
        .Q(officialStatus[9]),
        .R(axi_awready_i_1_n_0));
  FDRE \raddr_reg[0] 
       (.C(axi_aclk),
        .CE(axi_arready0),
        .D(axi_araddr[0]),
        .Q(\raddr_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \raddr_reg[1] 
       (.C(axi_aclk),
        .CE(axi_arready0),
        .D(axi_araddr[1]),
        .Q(\raddr_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \raddr_reg[2] 
       (.C(axi_aclk),
        .CE(axi_arready0),
        .D(axi_araddr[2]),
        .Q(p_0_in_0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \raddr_reg[3] 
       (.C(axi_aclk),
        .CE(axi_arready0),
        .D(axi_araddr[3]),
        .Q(p_0_in_0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \waddr_reg[0] 
       (.C(axi_aclk),
        .CE(axi_awready0),
        .D(axi_awaddr[0]),
        .Q(waddr[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \waddr_reg[1] 
       (.C(axi_aclk),
        .CE(axi_awready0),
        .D(axi_awaddr[1]),
        .Q(waddr[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \waddr_reg[2] 
       (.C(axi_aclk),
        .CE(axi_awready0),
        .D(axi_awaddr[2]),
        .Q(waddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \waddr_reg[3] 
       (.C(axi_aclk),
        .CE(axi_awready0),
        .D(axi_awaddr[3]),
        .Q(waddr[3]),
        .R(axi_awready_i_1_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "system_serial_0_10,serial,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "serial,Vivado 2024.1.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (wr_request,
    rd_request,
    clear_overflow_request,
    wr_data,
    rd_data,
    empty,
    full,
    overflow,
    wr_index,
    rd_index,
    watermark,
    axi_aclk,
    axi_aresetn,
    axi_awaddr,
    axi_awprot,
    axi_awvalid,
    axi_awready,
    axi_wdata,
    axi_wstrb,
    axi_wvalid,
    axi_wready,
    axi_bresp,
    axi_bvalid,
    axi_bready,
    axi_araddr,
    axi_arprot,
    axi_arvalid,
    axi_arready,
    axi_rdata,
    axi_rresp,
    axi_rvalid,
    axi_rready);
  input wr_request;
  input rd_request;
  input clear_overflow_request;
  input [8:0]wr_data;
  output [8:0]rd_data;
  output empty;
  output full;
  output overflow;
  output [4:0]wr_index;
  output [4:0]rd_index;
  output [4:0]watermark;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_CLK, ASSOCIATED_BUSIF AXI, ASSOCIATED_RESET axi_aresetn:reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI AWADDR" *) input [3:0]axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI AWPROT" *) input [2:0]axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI AWVALID" *) input axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI AWREADY" *) output axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI WDATA" *) input [31:0]axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI WSTRB" *) input [3:0]axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI WVALID" *) input axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI WREADY" *) output axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI BRESP" *) output [1:0]axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI BVALID" *) output axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI BREADY" *) input axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI ARADDR" *) input [3:0]axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI ARPROT" *) input [2:0]axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI ARVALID" *) input axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI ARREADY" *) output axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI RDATA" *) output [31:0]axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI RRESP" *) output [1:0]axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI RVALID" *) output axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input axi_rready;

  wire \<const0> ;
  wire axi_aclk;
  wire [3:0]axi_araddr;
  wire axi_aresetn;
  wire axi_arready;
  wire axi_arvalid;
  wire [3:0]axi_awaddr;
  wire axi_awready;
  wire axi_awvalid;
  wire axi_bready;
  wire axi_bvalid;
  wire [31:0]axi_rdata;
  wire axi_rready;
  wire axi_rvalid;
  wire [31:0]axi_wdata;
  wire axi_wready;
  wire [3:0]axi_wstrb;
  wire axi_wvalid;
  wire clear_overflow_request;
  wire empty;
  wire full;
  wire overflow;
  wire [8:0]rd_data;
  wire [4:0]rd_index;
  wire [4:0]watermark;
  wire [4:0]wr_index;

  assign axi_bresp[1] = \<const0> ;
  assign axi_bresp[0] = \<const0> ;
  assign axi_rresp[1] = \<const0> ;
  assign axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial inst
       (.S_AXI_ARREADY(axi_arready),
        .S_AXI_AWREADY(axi_awready),
        .S_AXI_WREADY(axi_wready),
        .axi_aclk(axi_aclk),
        .axi_araddr(axi_araddr),
        .axi_aresetn(axi_aresetn),
        .axi_arvalid(axi_arvalid),
        .axi_awaddr(axi_awaddr),
        .axi_awvalid(axi_awvalid),
        .axi_bready(axi_bready),
        .axi_bvalid(axi_bvalid),
        .axi_rdata(axi_rdata),
        .axi_rready(axi_rready),
        .axi_rvalid(axi_rvalid),
        .axi_wdata(axi_wdata),
        .axi_wstrb(axi_wstrb),
        .axi_wvalid(axi_wvalid),
        .clear_overflow_request(clear_overflow_request),
        .empty(empty),
        .full(full),
        .overflow(overflow),
        .rd_data(rd_data),
        .rd_index(rd_index),
        .watermark(watermark),
        .wr_index(wr_index));
endmodule
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
