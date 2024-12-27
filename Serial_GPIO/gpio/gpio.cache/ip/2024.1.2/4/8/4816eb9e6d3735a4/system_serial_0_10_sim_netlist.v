// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (lin64) Build 5164865 Thu Sep  5 14:36:28 MDT 2024
// Date        : Fri Nov 15 04:29:55 2024
// Host        : clutch13 running 64-bit Ubuntu 24.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_serial_0_10_sim_netlist.v
// Design      : system_serial_0_10
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect
   (in_delay,
    outReg_reg_0,
    outReg_reg_1,
    in_delay_reg_0,
    axi_aclk,
    outReg_reg_2,
    shiftOut_reg,
    Q,
    shiftOut_reg_0,
    shiftOut_i_2_0);
  output in_delay;
  output outReg_reg_0;
  output outReg_reg_1;
  input in_delay_reg_0;
  input axi_aclk;
  input outReg_reg_2;
  input shiftOut_reg;
  input [3:0]Q;
  input shiftOut_reg_0;
  input [1:0]shiftOut_i_2_0;

  wire [3:0]Q;
  wire axi_aclk;
  wire in_delay;
  wire in_delay_reg_0;
  wire outReg_reg_0;
  wire outReg_reg_1;
  wire outReg_reg_2;
  wire [1:0]shiftOut_i_2_0;
  wire shiftOut_i_5_n_0;
  wire shiftOut_reg;
  wire shiftOut_reg_0;

  FDRE in_delay_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(in_delay_reg_0),
        .Q(in_delay),
        .R(1'b0));
  FDRE outReg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(outReg_reg_2),
        .Q(outReg_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    shiftOut_i_2
       (.I0(outReg_reg_0),
        .I1(shiftOut_reg),
        .I2(Q[3]),
        .I3(shiftOut_reg_0),
        .I4(Q[2]),
        .I5(shiftOut_i_5_n_0),
        .O(outReg_reg_1));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    shiftOut_i_5
       (.I0(shiftOut_i_2_0[1]),
        .I1(shiftOut_i_2_0[0]),
        .I2(Q[1]),
        .I3(outReg_reg_0),
        .I4(Q[0]),
        .O(shiftOut_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "edge_detect" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0
   (outReg_reg_0,
    in_delay_reg_0,
    axi_aclk);
  output outReg_reg_0;
  input in_delay_reg_0;
  input axi_aclk;

  wire axi_aclk;
  wire in_delay;
  wire in_delay_reg_0;
  wire outReg_i_1__0_n_0;
  wire outReg_reg_0;

  FDRE in_delay_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(in_delay_reg_0),
        .Q(in_delay),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    outReg_i_1__0
       (.I0(in_delay_reg_0),
        .I1(in_delay),
        .O(outReg_i_1__0_n_0));
  FDRE outReg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(outReg_i_1__0_n_0),
        .Q(outReg_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "edge_detect" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_1
   (read_request,
    E,
    \FSM_sequential_state_reg[0] ,
    axi_aclk,
    p_0_in_0,
    axi_arvalid,
    in_delay_reg_0,
    in_delay_reg_1,
    \FSM_sequential_state_reg[3] ,
    \FSM_sequential_state_reg[3]_0 ,
    \FSM_sequential_state_reg[3]_1 );
  output read_request;
  output [0:0]E;
  output [0:0]\FSM_sequential_state_reg[0] ;
  input axi_aclk;
  input [1:0]p_0_in_0;
  input axi_arvalid;
  input in_delay_reg_0;
  input in_delay_reg_1;
  input [3:0]\FSM_sequential_state_reg[3] ;
  input \FSM_sequential_state_reg[3]_0 ;
  input \FSM_sequential_state_reg[3]_1 ;

  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg[0] ;
  wire [3:0]\FSM_sequential_state_reg[3] ;
  wire \FSM_sequential_state_reg[3]_0 ;
  wire \FSM_sequential_state_reg[3]_1 ;
  wire axi_aclk;
  wire axi_arvalid;
  wire fifoRead;
  wire in_delay;
  wire in_delay_reg_0;
  wire in_delay_reg_1;
  wire outReg_i_1__0__0_n_0;
  wire [1:0]p_0_in_0;
  wire read_request;

  LUT6 #(
    .INIT(64'hFF1F000000000000)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(\FSM_sequential_state_reg[3] [0]),
        .I1(\FSM_sequential_state_reg[3] [1]),
        .I2(\FSM_sequential_state_reg[3] [3]),
        .I3(\FSM_sequential_state_reg[3]_0 ),
        .I4(read_request),
        .I5(\FSM_sequential_state_reg[3]_1 ),
        .O(\FSM_sequential_state_reg[0] ));
  LUT5 #(
    .INIT(32'h00000040)) 
    in_delay_i_1
       (.I0(in_delay_reg_1),
        .I1(in_delay_reg_0),
        .I2(axi_arvalid),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[1]),
        .O(fifoRead));
  FDRE in_delay_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(fifoRead),
        .Q(in_delay),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000002)) 
    \latchData_reg[8]_i_1 
       (.I0(read_request),
        .I1(\FSM_sequential_state_reg[3] [3]),
        .I2(\FSM_sequential_state_reg[3] [2]),
        .I3(\FSM_sequential_state_reg[3] [1]),
        .I4(\FSM_sequential_state_reg[3] [0]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    outReg_i_1__0__0
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .I2(axi_arvalid),
        .I3(in_delay_reg_0),
        .I4(in_delay_reg_1),
        .I5(in_delay),
        .O(outReg_i_1__0__0_n_0));
  FDRE outReg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(outReg_i_1__0__0_n_0),
        .Q(read_request),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "edge_detect" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_2
   (write_request,
    E,
    outReg_reg_0,
    outReg_reg_1,
    outReg_reg_2,
    outReg_reg_3,
    outReg_reg_4,
    outReg_reg_5,
    outReg_reg_6,
    outReg_reg_7,
    outReg_reg_8,
    outReg_reg_9,
    outReg_reg_10,
    outReg_reg_11,
    outReg_reg_12,
    outReg_reg_13,
    outReg_reg_14,
    outReg_reg_15,
    outReg_reg_16,
    outReg_reg_17,
    outReg_reg_18,
    outReg_reg_19,
    outReg_reg_20,
    outReg_reg_21,
    outReg_reg_22,
    outReg_reg_23,
    outReg_reg_24,
    outReg_reg_25,
    outReg_reg_26,
    outReg_reg_27,
    outReg_reg_28,
    outReg_reg_29,
    outReg_reg_30,
    outReg_reg_31,
    outReg_reg_32,
    outReg_reg_33,
    outReg_reg_34,
    outReg_reg_35,
    outReg_reg_36,
    outReg_reg_37,
    outReg_reg_38,
    outReg_reg_39,
    outReg_reg_40,
    outReg_reg_41,
    outReg_reg_42,
    outReg_reg_43,
    outReg_reg_44,
    outReg_reg_45,
    outReg_reg_46,
    outReg_reg_47,
    outReg_reg_48,
    outReg_reg_49,
    outReg_reg_50,
    outReg_reg_51,
    outReg_reg_52,
    outReg_reg_53,
    outReg_reg_54,
    outReg_reg_55,
    outReg_reg_56,
    outReg_reg_57,
    outReg_reg_58,
    outReg_reg_59,
    outReg_reg_60,
    outReg_reg_61,
    outReg_reg_62,
    outReg_reg_63,
    outReg_reg_64,
    outReg_reg_65,
    outReg_reg_66,
    outReg_reg_67,
    outReg_reg_68,
    outReg_reg_69,
    outReg_reg_70,
    outReg_reg_71,
    outReg_reg_72,
    outReg_reg_73,
    outReg_reg_74,
    outReg_reg_75,
    outReg_reg_76,
    outReg_reg_77,
    outReg_reg_78,
    outReg_reg_79,
    outReg_reg_80,
    outReg_reg_81,
    outReg_reg_82,
    outReg_reg_83,
    outReg_reg_84,
    outReg_reg_85,
    outReg_reg_86,
    outReg_reg_87,
    outReg_reg_88,
    outReg_reg_89,
    outReg_reg_90,
    outReg_reg_91,
    outReg_reg_92,
    outReg_reg_93,
    outReg_reg_94,
    outReg_reg_95,
    outReg_reg_96,
    outReg_reg_97,
    outReg_reg_98,
    outReg_reg_99,
    outReg_reg_100,
    outReg_reg_101,
    outReg_reg_102,
    outReg_reg_103,
    outReg_reg_104,
    outReg_reg_105,
    outReg_reg_106,
    outReg_reg_107,
    outReg_reg_108,
    outReg_reg_109,
    outReg_reg_110,
    outReg_reg_111,
    outReg_reg_112,
    outReg_reg_113,
    outReg_reg_114,
    outReg_reg_115,
    outReg_reg_116,
    outReg_reg_117,
    outReg_reg_118,
    outReg_reg_119,
    outReg_reg_120,
    outReg_reg_121,
    outReg_reg_122,
    outReg_reg_123,
    outReg_reg_124,
    outReg_reg_125,
    outReg_reg_126,
    outReg_reg_127,
    outReg_reg_128,
    outReg_reg_129,
    outReg_reg_130,
    outReg_reg_131,
    outReg_reg_132,
    outReg_reg_133,
    outReg_reg_134,
    outReg_reg_135,
    outReg_reg_136,
    outReg_reg_137,
    outReg_reg_138,
    outReg_reg_139,
    outReg_reg_140,
    outReg_reg_141,
    outReg_reg_142,
    outReg_reg_143,
    outReg_reg_144,
    outReg_reg_145,
    outReg_reg_146,
    outReg_reg_147,
    outReg_reg_148,
    outReg_reg_149,
    outReg_reg_150,
    outReg_reg_151,
    outReg_reg_152,
    outReg_reg_153,
    outReg_reg_154,
    outReg_reg_155,
    outReg_reg_156,
    outReg_reg_157,
    outReg_reg_158,
    outReg_reg_159,
    p_15_in,
    axi_aclk,
    read_request,
    \rd_index_reg[0] ,
    Q,
    \rd_index_reg[0]_0 ,
    officialData,
    waddr,
    in_delay_reg_0,
    in_delay_reg_1,
    axi_awvalid,
    axi_wvalid);
  output write_request;
  output [0:0]E;
  output outReg_reg_0;
  output outReg_reg_1;
  output outReg_reg_2;
  output outReg_reg_3;
  output outReg_reg_4;
  output outReg_reg_5;
  output outReg_reg_6;
  output outReg_reg_7;
  output outReg_reg_8;
  output outReg_reg_9;
  output outReg_reg_10;
  output outReg_reg_11;
  output outReg_reg_12;
  output outReg_reg_13;
  output outReg_reg_14;
  output outReg_reg_15;
  output outReg_reg_16;
  output outReg_reg_17;
  output outReg_reg_18;
  output outReg_reg_19;
  output outReg_reg_20;
  output outReg_reg_21;
  output outReg_reg_22;
  output outReg_reg_23;
  output outReg_reg_24;
  output outReg_reg_25;
  output outReg_reg_26;
  output outReg_reg_27;
  output outReg_reg_28;
  output outReg_reg_29;
  output outReg_reg_30;
  output outReg_reg_31;
  output outReg_reg_32;
  output outReg_reg_33;
  output outReg_reg_34;
  output outReg_reg_35;
  output outReg_reg_36;
  output outReg_reg_37;
  output outReg_reg_38;
  output outReg_reg_39;
  output outReg_reg_40;
  output outReg_reg_41;
  output outReg_reg_42;
  output outReg_reg_43;
  output outReg_reg_44;
  output outReg_reg_45;
  output outReg_reg_46;
  output outReg_reg_47;
  output outReg_reg_48;
  output outReg_reg_49;
  output outReg_reg_50;
  output outReg_reg_51;
  output outReg_reg_52;
  output outReg_reg_53;
  output outReg_reg_54;
  output outReg_reg_55;
  output outReg_reg_56;
  output outReg_reg_57;
  output outReg_reg_58;
  output outReg_reg_59;
  output outReg_reg_60;
  output outReg_reg_61;
  output outReg_reg_62;
  output outReg_reg_63;
  output outReg_reg_64;
  output outReg_reg_65;
  output outReg_reg_66;
  output outReg_reg_67;
  output outReg_reg_68;
  output outReg_reg_69;
  output outReg_reg_70;
  output outReg_reg_71;
  output outReg_reg_72;
  output outReg_reg_73;
  output outReg_reg_74;
  output outReg_reg_75;
  output outReg_reg_76;
  output outReg_reg_77;
  output outReg_reg_78;
  output outReg_reg_79;
  output outReg_reg_80;
  output outReg_reg_81;
  output outReg_reg_82;
  output outReg_reg_83;
  output outReg_reg_84;
  output outReg_reg_85;
  output outReg_reg_86;
  output outReg_reg_87;
  output outReg_reg_88;
  output outReg_reg_89;
  output outReg_reg_90;
  output outReg_reg_91;
  output outReg_reg_92;
  output outReg_reg_93;
  output outReg_reg_94;
  output outReg_reg_95;
  output outReg_reg_96;
  output outReg_reg_97;
  output outReg_reg_98;
  output outReg_reg_99;
  output outReg_reg_100;
  output outReg_reg_101;
  output outReg_reg_102;
  output outReg_reg_103;
  output outReg_reg_104;
  output outReg_reg_105;
  output outReg_reg_106;
  output outReg_reg_107;
  output outReg_reg_108;
  output outReg_reg_109;
  output outReg_reg_110;
  output outReg_reg_111;
  output outReg_reg_112;
  output outReg_reg_113;
  output outReg_reg_114;
  output outReg_reg_115;
  output outReg_reg_116;
  output outReg_reg_117;
  output outReg_reg_118;
  output outReg_reg_119;
  output outReg_reg_120;
  output outReg_reg_121;
  output outReg_reg_122;
  output outReg_reg_123;
  output outReg_reg_124;
  output outReg_reg_125;
  output outReg_reg_126;
  output outReg_reg_127;
  output outReg_reg_128;
  output outReg_reg_129;
  output outReg_reg_130;
  output outReg_reg_131;
  output outReg_reg_132;
  output outReg_reg_133;
  output outReg_reg_134;
  output outReg_reg_135;
  output outReg_reg_136;
  output outReg_reg_137;
  output outReg_reg_138;
  output outReg_reg_139;
  output outReg_reg_140;
  output outReg_reg_141;
  output outReg_reg_142;
  output outReg_reg_143;
  output outReg_reg_144;
  output outReg_reg_145;
  output outReg_reg_146;
  output outReg_reg_147;
  output outReg_reg_148;
  output outReg_reg_149;
  output outReg_reg_150;
  output outReg_reg_151;
  output outReg_reg_152;
  output outReg_reg_153;
  output outReg_reg_154;
  output outReg_reg_155;
  output outReg_reg_156;
  output outReg_reg_157;
  output outReg_reg_158;
  output outReg_reg_159;
  output p_15_in;
  input axi_aclk;
  input read_request;
  input \rd_index_reg[0] ;
  input [4:0]Q;
  input [0:0]\rd_index_reg[0]_0 ;
  input [8:0]officialData;
  input [1:0]waddr;
  input in_delay_reg_0;
  input in_delay_reg_1;
  input axi_awvalid;
  input axi_wvalid;

  wire [0:0]E;
  wire [4:0]Q;
  wire axi_aclk;
  wire axi_awvalid;
  wire axi_wvalid;
  wire fifoWrite;
  wire in_delay;
  wire in_delay_reg_0;
  wire in_delay_reg_1;
  wire [8:0]officialData;
  wire outReg_i_1__1_n_0;
  wire outReg_reg_0;
  wire outReg_reg_1;
  wire outReg_reg_10;
  wire outReg_reg_100;
  wire outReg_reg_101;
  wire outReg_reg_102;
  wire outReg_reg_103;
  wire outReg_reg_104;
  wire outReg_reg_105;
  wire outReg_reg_106;
  wire outReg_reg_107;
  wire outReg_reg_108;
  wire outReg_reg_109;
  wire outReg_reg_11;
  wire outReg_reg_110;
  wire outReg_reg_111;
  wire outReg_reg_112;
  wire outReg_reg_113;
  wire outReg_reg_114;
  wire outReg_reg_115;
  wire outReg_reg_116;
  wire outReg_reg_117;
  wire outReg_reg_118;
  wire outReg_reg_119;
  wire outReg_reg_12;
  wire outReg_reg_120;
  wire outReg_reg_121;
  wire outReg_reg_122;
  wire outReg_reg_123;
  wire outReg_reg_124;
  wire outReg_reg_125;
  wire outReg_reg_126;
  wire outReg_reg_127;
  wire outReg_reg_128;
  wire outReg_reg_129;
  wire outReg_reg_13;
  wire outReg_reg_130;
  wire outReg_reg_131;
  wire outReg_reg_132;
  wire outReg_reg_133;
  wire outReg_reg_134;
  wire outReg_reg_135;
  wire outReg_reg_136;
  wire outReg_reg_137;
  wire outReg_reg_138;
  wire outReg_reg_139;
  wire outReg_reg_14;
  wire outReg_reg_140;
  wire outReg_reg_141;
  wire outReg_reg_142;
  wire outReg_reg_143;
  wire outReg_reg_144;
  wire outReg_reg_145;
  wire outReg_reg_146;
  wire outReg_reg_147;
  wire outReg_reg_148;
  wire outReg_reg_149;
  wire outReg_reg_15;
  wire outReg_reg_150;
  wire outReg_reg_151;
  wire outReg_reg_152;
  wire outReg_reg_153;
  wire outReg_reg_154;
  wire outReg_reg_155;
  wire outReg_reg_156;
  wire outReg_reg_157;
  wire outReg_reg_158;
  wire outReg_reg_159;
  wire outReg_reg_16;
  wire outReg_reg_17;
  wire outReg_reg_18;
  wire outReg_reg_19;
  wire outReg_reg_2;
  wire outReg_reg_20;
  wire outReg_reg_21;
  wire outReg_reg_22;
  wire outReg_reg_23;
  wire outReg_reg_24;
  wire outReg_reg_25;
  wire outReg_reg_26;
  wire outReg_reg_27;
  wire outReg_reg_28;
  wire outReg_reg_29;
  wire outReg_reg_3;
  wire outReg_reg_30;
  wire outReg_reg_31;
  wire outReg_reg_32;
  wire outReg_reg_33;
  wire outReg_reg_34;
  wire outReg_reg_35;
  wire outReg_reg_36;
  wire outReg_reg_37;
  wire outReg_reg_38;
  wire outReg_reg_39;
  wire outReg_reg_4;
  wire outReg_reg_40;
  wire outReg_reg_41;
  wire outReg_reg_42;
  wire outReg_reg_43;
  wire outReg_reg_44;
  wire outReg_reg_45;
  wire outReg_reg_46;
  wire outReg_reg_47;
  wire outReg_reg_48;
  wire outReg_reg_49;
  wire outReg_reg_5;
  wire outReg_reg_50;
  wire outReg_reg_51;
  wire outReg_reg_52;
  wire outReg_reg_53;
  wire outReg_reg_54;
  wire outReg_reg_55;
  wire outReg_reg_56;
  wire outReg_reg_57;
  wire outReg_reg_58;
  wire outReg_reg_59;
  wire outReg_reg_6;
  wire outReg_reg_60;
  wire outReg_reg_61;
  wire outReg_reg_62;
  wire outReg_reg_63;
  wire outReg_reg_64;
  wire outReg_reg_65;
  wire outReg_reg_66;
  wire outReg_reg_67;
  wire outReg_reg_68;
  wire outReg_reg_69;
  wire outReg_reg_7;
  wire outReg_reg_70;
  wire outReg_reg_71;
  wire outReg_reg_72;
  wire outReg_reg_73;
  wire outReg_reg_74;
  wire outReg_reg_75;
  wire outReg_reg_76;
  wire outReg_reg_77;
  wire outReg_reg_78;
  wire outReg_reg_79;
  wire outReg_reg_8;
  wire outReg_reg_80;
  wire outReg_reg_81;
  wire outReg_reg_82;
  wire outReg_reg_83;
  wire outReg_reg_84;
  wire outReg_reg_85;
  wire outReg_reg_86;
  wire outReg_reg_87;
  wire outReg_reg_88;
  wire outReg_reg_89;
  wire outReg_reg_9;
  wire outReg_reg_90;
  wire outReg_reg_91;
  wire outReg_reg_92;
  wire outReg_reg_93;
  wire outReg_reg_94;
  wire outReg_reg_95;
  wire outReg_reg_96;
  wire outReg_reg_97;
  wire outReg_reg_98;
  wire outReg_reg_99;
  wire p_15_in;
  wire \rd_index_reg[0] ;
  wire [0:0]\rd_index_reg[0]_0 ;
  wire read_request;
  wire [1:0]waddr;
  wire write_request;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \FIFO_DATA[0][0]_i_1 
       (.I0(write_request),
        .I1(officialData[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_90));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \FIFO_DATA[0][1]_i_1 
       (.I0(write_request),
        .I1(officialData[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_91));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \FIFO_DATA[0][2]_i_1 
       (.I0(write_request),
        .I1(officialData[2]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_92));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \FIFO_DATA[0][3]_i_1 
       (.I0(write_request),
        .I1(officialData[3]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_93));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \FIFO_DATA[0][4]_i_1 
       (.I0(write_request),
        .I1(officialData[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_94));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \FIFO_DATA[0][5]_i_1 
       (.I0(write_request),
        .I1(officialData[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_95));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \FIFO_DATA[0][6]_i_1 
       (.I0(write_request),
        .I1(officialData[6]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_96));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \FIFO_DATA[0][7]_i_1 
       (.I0(write_request),
        .I1(officialData[7]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_97));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \FIFO_DATA[0][8]_i_1 
       (.I0(write_request),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(outReg_reg_159));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \FIFO_DATA[0][8]_i_2 
       (.I0(write_request),
        .I1(officialData[8]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_98));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[10][0]_i_1 
       (.I0(write_request),
        .I1(officialData[0]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(outReg_reg_126));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[10][1]_i_1 
       (.I0(write_request),
        .I1(officialData[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(outReg_reg_127));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[10][2]_i_1 
       (.I0(write_request),
        .I1(officialData[2]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(outReg_reg_128));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[10][3]_i_1 
       (.I0(write_request),
        .I1(officialData[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(outReg_reg_129));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[10][4]_i_1 
       (.I0(write_request),
        .I1(officialData[4]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(outReg_reg_130));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[10][5]_i_1 
       (.I0(write_request),
        .I1(officialData[5]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(outReg_reg_131));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[10][6]_i_1 
       (.I0(write_request),
        .I1(officialData[6]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(outReg_reg_132));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[10][7]_i_1 
       (.I0(write_request),
        .I1(officialData[7]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(outReg_reg_133));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \FIFO_DATA[10][8]_i_1 
       (.I0(write_request),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(outReg_reg_149));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[10][8]_i_2 
       (.I0(write_request),
        .I1(officialData[8]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(outReg_reg_134));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[11][0]_i_1 
       (.I0(write_request),
        .I1(officialData[0]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(outReg_reg_117));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[11][1]_i_1 
       (.I0(write_request),
        .I1(officialData[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(outReg_reg_118));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[11][2]_i_1 
       (.I0(write_request),
        .I1(officialData[2]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(outReg_reg_119));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[11][3]_i_1 
       (.I0(write_request),
        .I1(officialData[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(outReg_reg_120));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[11][4]_i_1 
       (.I0(write_request),
        .I1(officialData[4]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(outReg_reg_121));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[11][5]_i_1 
       (.I0(write_request),
        .I1(officialData[5]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(outReg_reg_122));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[11][6]_i_1 
       (.I0(write_request),
        .I1(officialData[6]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(outReg_reg_123));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[11][7]_i_1 
       (.I0(write_request),
        .I1(officialData[7]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(outReg_reg_124));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \FIFO_DATA[11][8]_i_1 
       (.I0(write_request),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(outReg_reg_148));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[11][8]_i_2 
       (.I0(write_request),
        .I1(officialData[8]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(outReg_reg_125));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[12][0]_i_1 
       (.I0(write_request),
        .I1(officialData[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_0));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[12][1]_i_1 
       (.I0(write_request),
        .I1(officialData[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_1));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[12][2]_i_1 
       (.I0(write_request),
        .I1(officialData[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_2));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[12][3]_i_1 
       (.I0(write_request),
        .I1(officialData[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_3));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[12][4]_i_1 
       (.I0(write_request),
        .I1(officialData[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_4));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[12][5]_i_1 
       (.I0(write_request),
        .I1(officialData[5]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_5));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[12][6]_i_1 
       (.I0(write_request),
        .I1(officialData[6]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_6));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[12][7]_i_1 
       (.I0(write_request),
        .I1(officialData[7]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_7));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \FIFO_DATA[12][8]_i_1 
       (.I0(write_request),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(outReg_reg_147));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[12][8]_i_2 
       (.I0(write_request),
        .I1(officialData[8]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_8));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[13][0]_i_1 
       (.I0(write_request),
        .I1(officialData[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_9));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[13][1]_i_1 
       (.I0(write_request),
        .I1(officialData[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_10));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[13][2]_i_1 
       (.I0(write_request),
        .I1(officialData[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_11));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[13][3]_i_1 
       (.I0(write_request),
        .I1(officialData[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_12));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[13][4]_i_1 
       (.I0(write_request),
        .I1(officialData[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_13));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[13][5]_i_1 
       (.I0(write_request),
        .I1(officialData[5]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_14));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[13][6]_i_1 
       (.I0(write_request),
        .I1(officialData[6]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_15));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[13][7]_i_1 
       (.I0(write_request),
        .I1(officialData[7]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_16));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \FIFO_DATA[13][8]_i_1 
       (.I0(write_request),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(outReg_reg_146));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[13][8]_i_2 
       (.I0(write_request),
        .I1(officialData[8]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_17));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[14][0]_i_1 
       (.I0(write_request),
        .I1(officialData[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_18));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[14][1]_i_1 
       (.I0(write_request),
        .I1(officialData[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_19));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[14][2]_i_1 
       (.I0(write_request),
        .I1(officialData[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_20));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[14][3]_i_1 
       (.I0(write_request),
        .I1(officialData[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_21));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[14][4]_i_1 
       (.I0(write_request),
        .I1(officialData[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_22));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[14][5]_i_1 
       (.I0(write_request),
        .I1(officialData[5]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_23));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[14][6]_i_1 
       (.I0(write_request),
        .I1(officialData[6]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_24));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[14][7]_i_1 
       (.I0(write_request),
        .I1(officialData[7]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_25));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \FIFO_DATA[14][8]_i_1 
       (.I0(write_request),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(outReg_reg_145));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[14][8]_i_2 
       (.I0(write_request),
        .I1(officialData[8]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(outReg_reg_26));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \FIFO_DATA[15][0]_i_1 
       (.I0(write_request),
        .I1(officialData[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_27));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \FIFO_DATA[15][1]_i_1 
       (.I0(write_request),
        .I1(officialData[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_28));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \FIFO_DATA[15][2]_i_1 
       (.I0(write_request),
        .I1(officialData[2]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_29));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \FIFO_DATA[15][3]_i_1 
       (.I0(write_request),
        .I1(officialData[3]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_30));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \FIFO_DATA[15][4]_i_1 
       (.I0(write_request),
        .I1(officialData[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_31));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \FIFO_DATA[15][5]_i_1 
       (.I0(write_request),
        .I1(officialData[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_32));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \FIFO_DATA[15][6]_i_1 
       (.I0(write_request),
        .I1(officialData[6]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_33));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \FIFO_DATA[15][7]_i_1 
       (.I0(write_request),
        .I1(officialData[7]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_34));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FIFO_DATA[15][8]_i_1 
       (.I0(write_request),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(outReg_reg_144));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \FIFO_DATA[15][8]_i_2 
       (.I0(write_request),
        .I1(officialData[8]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_35));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[1][0]_i_1 
       (.I0(write_request),
        .I1(officialData[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_72));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[1][1]_i_1 
       (.I0(write_request),
        .I1(officialData[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_73));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[1][2]_i_1 
       (.I0(write_request),
        .I1(officialData[2]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_74));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[1][3]_i_1 
       (.I0(write_request),
        .I1(officialData[3]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_75));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[1][4]_i_1 
       (.I0(write_request),
        .I1(officialData[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_76));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[1][5]_i_1 
       (.I0(write_request),
        .I1(officialData[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_77));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[1][6]_i_1 
       (.I0(write_request),
        .I1(officialData[6]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_78));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[1][7]_i_1 
       (.I0(write_request),
        .I1(officialData[7]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_79));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \FIFO_DATA[1][8]_i_1 
       (.I0(write_request),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(outReg_reg_158));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[1][8]_i_2 
       (.I0(write_request),
        .I1(officialData[8]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_80));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[2][0]_i_1 
       (.I0(write_request),
        .I1(officialData[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_54));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[2][1]_i_1 
       (.I0(write_request),
        .I1(officialData[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_55));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[2][2]_i_1 
       (.I0(write_request),
        .I1(officialData[2]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_56));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[2][3]_i_1 
       (.I0(write_request),
        .I1(officialData[3]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_57));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[2][4]_i_1 
       (.I0(write_request),
        .I1(officialData[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_58));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[2][5]_i_1 
       (.I0(write_request),
        .I1(officialData[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_59));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[2][6]_i_1 
       (.I0(write_request),
        .I1(officialData[6]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_60));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[2][7]_i_1 
       (.I0(write_request),
        .I1(officialData[7]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_61));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \FIFO_DATA[2][8]_i_1 
       (.I0(write_request),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(outReg_reg_157));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[2][8]_i_2 
       (.I0(write_request),
        .I1(officialData[8]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_62));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[3][0]_i_1 
       (.I0(write_request),
        .I1(officialData[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_36));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[3][1]_i_1 
       (.I0(write_request),
        .I1(officialData[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_37));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[3][2]_i_1 
       (.I0(write_request),
        .I1(officialData[2]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_38));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[3][3]_i_1 
       (.I0(write_request),
        .I1(officialData[3]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_39));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[3][4]_i_1 
       (.I0(write_request),
        .I1(officialData[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_40));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[3][5]_i_1 
       (.I0(write_request),
        .I1(officialData[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_41));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[3][6]_i_1 
       (.I0(write_request),
        .I1(officialData[6]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_42));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[3][7]_i_1 
       (.I0(write_request),
        .I1(officialData[7]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_43));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \FIFO_DATA[3][8]_i_1 
       (.I0(write_request),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(outReg_reg_156));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FIFO_DATA[3][8]_i_2 
       (.I0(write_request),
        .I1(officialData[8]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_44));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \FIFO_DATA[4][0]_i_1 
       (.I0(write_request),
        .I1(officialData[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_99));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \FIFO_DATA[4][1]_i_1 
       (.I0(write_request),
        .I1(officialData[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_100));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \FIFO_DATA[4][2]_i_1 
       (.I0(write_request),
        .I1(officialData[2]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_101));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \FIFO_DATA[4][3]_i_1 
       (.I0(write_request),
        .I1(officialData[3]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_102));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \FIFO_DATA[4][4]_i_1 
       (.I0(write_request),
        .I1(officialData[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_103));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \FIFO_DATA[4][5]_i_1 
       (.I0(write_request),
        .I1(officialData[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_104));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \FIFO_DATA[4][6]_i_1 
       (.I0(write_request),
        .I1(officialData[6]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_105));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \FIFO_DATA[4][7]_i_1 
       (.I0(write_request),
        .I1(officialData[7]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_106));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \FIFO_DATA[4][8]_i_1 
       (.I0(write_request),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(outReg_reg_155));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \FIFO_DATA[4][8]_i_2 
       (.I0(write_request),
        .I1(officialData[8]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_107));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[5][0]_i_1 
       (.I0(write_request),
        .I1(officialData[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_81));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[5][1]_i_1 
       (.I0(write_request),
        .I1(officialData[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_82));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[5][2]_i_1 
       (.I0(write_request),
        .I1(officialData[2]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_83));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[5][3]_i_1 
       (.I0(write_request),
        .I1(officialData[3]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_84));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[5][4]_i_1 
       (.I0(write_request),
        .I1(officialData[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_85));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[5][5]_i_1 
       (.I0(write_request),
        .I1(officialData[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_86));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[5][6]_i_1 
       (.I0(write_request),
        .I1(officialData[6]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_87));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[5][7]_i_1 
       (.I0(write_request),
        .I1(officialData[7]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_88));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \FIFO_DATA[5][8]_i_1 
       (.I0(write_request),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(outReg_reg_154));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[5][8]_i_2 
       (.I0(write_request),
        .I1(officialData[8]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(outReg_reg_89));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[6][0]_i_1 
       (.I0(write_request),
        .I1(officialData[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_63));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[6][1]_i_1 
       (.I0(write_request),
        .I1(officialData[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_64));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[6][2]_i_1 
       (.I0(write_request),
        .I1(officialData[2]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_65));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[6][3]_i_1 
       (.I0(write_request),
        .I1(officialData[3]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_66));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[6][4]_i_1 
       (.I0(write_request),
        .I1(officialData[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_67));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[6][5]_i_1 
       (.I0(write_request),
        .I1(officialData[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_68));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[6][6]_i_1 
       (.I0(write_request),
        .I1(officialData[6]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_69));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[6][7]_i_1 
       (.I0(write_request),
        .I1(officialData[7]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_70));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \FIFO_DATA[6][8]_i_1 
       (.I0(write_request),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(outReg_reg_153));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[6][8]_i_2 
       (.I0(write_request),
        .I1(officialData[8]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_71));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[7][0]_i_1 
       (.I0(write_request),
        .I1(officialData[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_45));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[7][1]_i_1 
       (.I0(write_request),
        .I1(officialData[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_46));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[7][2]_i_1 
       (.I0(write_request),
        .I1(officialData[2]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_47));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[7][3]_i_1 
       (.I0(write_request),
        .I1(officialData[3]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_48));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[7][4]_i_1 
       (.I0(write_request),
        .I1(officialData[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_49));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[7][5]_i_1 
       (.I0(write_request),
        .I1(officialData[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_50));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[7][6]_i_1 
       (.I0(write_request),
        .I1(officialData[6]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_51));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[7][7]_i_1 
       (.I0(write_request),
        .I1(officialData[7]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_52));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \FIFO_DATA[7][8]_i_1 
       (.I0(write_request),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(outReg_reg_152));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FIFO_DATA[7][8]_i_2 
       (.I0(write_request),
        .I1(officialData[8]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(outReg_reg_53));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \FIFO_DATA[8][0]_i_1 
       (.I0(write_request),
        .I1(officialData[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(outReg_reg_135));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \FIFO_DATA[8][1]_i_1 
       (.I0(write_request),
        .I1(officialData[1]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(outReg_reg_136));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \FIFO_DATA[8][2]_i_1 
       (.I0(write_request),
        .I1(officialData[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(outReg_reg_137));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \FIFO_DATA[8][3]_i_1 
       (.I0(write_request),
        .I1(officialData[3]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(outReg_reg_138));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \FIFO_DATA[8][4]_i_1 
       (.I0(write_request),
        .I1(officialData[4]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(outReg_reg_139));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \FIFO_DATA[8][5]_i_1 
       (.I0(write_request),
        .I1(officialData[5]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(outReg_reg_140));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \FIFO_DATA[8][6]_i_1 
       (.I0(write_request),
        .I1(officialData[6]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(outReg_reg_141));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \FIFO_DATA[8][7]_i_1 
       (.I0(write_request),
        .I1(officialData[7]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(outReg_reg_142));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \FIFO_DATA[8][8]_i_1 
       (.I0(write_request),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[1]),
        .O(outReg_reg_151));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \FIFO_DATA[8][8]_i_2 
       (.I0(write_request),
        .I1(officialData[8]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(outReg_reg_143));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[9][0]_i_1 
       (.I0(write_request),
        .I1(officialData[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(outReg_reg_108));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[9][1]_i_1 
       (.I0(write_request),
        .I1(officialData[1]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(outReg_reg_109));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[9][2]_i_1 
       (.I0(write_request),
        .I1(officialData[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(outReg_reg_110));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[9][3]_i_1 
       (.I0(write_request),
        .I1(officialData[3]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(outReg_reg_111));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[9][4]_i_1 
       (.I0(write_request),
        .I1(officialData[4]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(outReg_reg_112));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[9][5]_i_1 
       (.I0(write_request),
        .I1(officialData[5]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(outReg_reg_113));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[9][6]_i_1 
       (.I0(write_request),
        .I1(officialData[6]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(outReg_reg_114));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[9][7]_i_1 
       (.I0(write_request),
        .I1(officialData[7]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(outReg_reg_115));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \FIFO_DATA[9][8]_i_1 
       (.I0(write_request),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .O(outReg_reg_150));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FIFO_DATA[9][8]_i_2 
       (.I0(write_request),
        .I1(officialData[8]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(outReg_reg_116));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    in_delay_i_1__0
       (.I0(in_delay_reg_0),
        .I1(in_delay_reg_1),
        .I2(axi_awvalid),
        .I3(axi_wvalid),
        .I4(waddr[1]),
        .I5(waddr[0]),
        .O(fifoWrite));
  FDRE in_delay_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(fifoWrite),
        .Q(in_delay),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialControl[4]_i_2 
       (.I0(axi_wvalid),
        .I1(axi_awvalid),
        .I2(in_delay_reg_1),
        .I3(in_delay_reg_0),
        .O(p_15_in));
  LUT4 #(
    .INIT(16'h0010)) 
    outReg_i_1__1
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .I2(p_15_in),
        .I3(in_delay),
        .O(outReg_i_1__1_n_0));
  FDRE outReg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(outReg_i_1__1_n_0),
        .Q(write_request),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h40444440)) 
    \rd_index[4]_i_1 
       (.I0(write_request),
        .I1(read_request),
        .I2(\rd_index_reg[0] ),
        .I3(Q[4]),
        .I4(\rd_index_reg[0]_0 ),
        .O(E));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my9x16Fifo
   (Q,
    \rd_index_reg[4]_0 ,
    E,
    \FSM_sequential_state_reg[0] ,
    \officialControl_reg[0] ,
    \rd_index_reg[3]_0 ,
    \rd_index_reg[3]_1 ,
    \rd_index_reg[3]_2 ,
    D,
    \officialBaudRate_reg[8] ,
    watermark,
    full,
    empty,
    axi_aresetn_0,
    p_15_in,
    axi_aclk,
    p_0_in_0,
    axi_arvalid,
    in_delay_reg,
    in_delay_reg_0,
    \FSM_sequential_state_reg[3] ,
    \FSM_sequential_state_reg[3]_0 ,
    \FSM_sequential_state_reg[3]_1 ,
    myParityBit_reg,
    \axi_rdata_reg[8] ,
    \axi_rdata_reg[8]_0 ,
    \axi_rdata_reg[8]_1 ,
    officialData,
    axi_aresetn,
    waddr,
    in_delay_reg_1,
    in_delay_reg_2,
    axi_awvalid,
    axi_wvalid);
  output [4:0]Q;
  output [4:0]\rd_index_reg[4]_0 ;
  output [0:0]E;
  output [0:0]\FSM_sequential_state_reg[0] ;
  output \officialControl_reg[0] ;
  output \rd_index_reg[3]_0 ;
  output \rd_index_reg[3]_1 ;
  output \rd_index_reg[3]_2 ;
  output [5:0]D;
  output [8:0]\officialBaudRate_reg[8] ;
  output [4:0]watermark;
  output full;
  output empty;
  output axi_aresetn_0;
  output p_15_in;
  input axi_aclk;
  input [1:0]p_0_in_0;
  input axi_arvalid;
  input in_delay_reg;
  input in_delay_reg_0;
  input [3:0]\FSM_sequential_state_reg[3] ;
  input \FSM_sequential_state_reg[3]_0 ;
  input \FSM_sequential_state_reg[3]_1 ;
  input myParityBit_reg;
  input [8:0]\axi_rdata_reg[8] ;
  input [8:0]\axi_rdata_reg[8]_0 ;
  input [8:0]\axi_rdata_reg[8]_1 ;
  input [8:0]officialData;
  input axi_aresetn;
  input [1:0]waddr;
  input in_delay_reg_1;
  input in_delay_reg_2;
  input axi_awvalid;
  input axi_wvalid;

  wire [5:0]D;
  wire [0:0]E;
  wire [8:0]\FIFO_DATA_reg[0]_15 ;
  wire [8:0]\FIFO_DATA_reg[10]_5 ;
  wire [8:0]\FIFO_DATA_reg[11]_4 ;
  wire [8:0]\FIFO_DATA_reg[12]_3 ;
  wire [8:0]\FIFO_DATA_reg[13]_2 ;
  wire [8:0]\FIFO_DATA_reg[14]_1 ;
  wire [8:0]\FIFO_DATA_reg[15]_0 ;
  wire [8:0]\FIFO_DATA_reg[1]_14 ;
  wire [8:0]\FIFO_DATA_reg[2]_13 ;
  wire [8:0]\FIFO_DATA_reg[3]_12 ;
  wire [8:0]\FIFO_DATA_reg[4]_11 ;
  wire [8:0]\FIFO_DATA_reg[5]_10 ;
  wire [8:0]\FIFO_DATA_reg[6]_9 ;
  wire [8:0]\FIFO_DATA_reg[7]_8 ;
  wire [8:0]\FIFO_DATA_reg[8]_7 ;
  wire [8:0]\FIFO_DATA_reg[9]_6 ;
  wire [0:0]\FSM_sequential_state_reg[0] ;
  wire [3:0]\FSM_sequential_state_reg[3] ;
  wire \FSM_sequential_state_reg[3]_0 ;
  wire \FSM_sequential_state_reg[3]_1 ;
  wire [4:0]Q;
  wire axi_aclk;
  wire axi_aresetn;
  wire axi_aresetn_0;
  wire axi_arvalid;
  wire axi_awvalid;
  wire [8:0]\axi_rdata_reg[8] ;
  wire [8:0]\axi_rdata_reg[8]_0 ;
  wire [8:0]\axi_rdata_reg[8]_1 ;
  wire axi_wvalid;
  wire empty;
  wire empty_INST_0_i_1_n_0;
  wire empty_INST_0_i_2_n_0;
  wire full;
  wire in_delay_reg;
  wire in_delay_reg_0;
  wire in_delay_reg_1;
  wire in_delay_reg_2;
  wire myParityBit_reg;
  wire myParityBit_reg_i_4_n_0;
  wire myParityBit_reg_i_5_n_0;
  wire myParityBit_reg_i_6_n_0;
  wire myParityBit_reg_i_7_n_0;
  wire myParityBit_reg_i_8_n_0;
  wire [8:0]\officialBaudRate_reg[8] ;
  wire \officialControl_reg[0] ;
  wire [8:0]officialData;
  wire [4:1]p_0_in;
  wire [1:0]p_0_in_0;
  wire [4:1]p_0_in__0;
  wire p_15_in;
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
  wire \rd_index[0]_i_1_n_0 ;
  wire \rd_index[2]_i_1_n_0 ;
  wire \rd_index_reg[3]_0 ;
  wire \rd_index_reg[3]_1 ;
  wire \rd_index_reg[3]_2 ;
  wire [4:0]\rd_index_reg[4]_0 ;
  wire read_request;
  wire [1:0]waddr;
  wire [4:0]watermark;
  wire \watermark[4]_INST_0_i_1_n_0 ;
  wire wr_edge_n_1;
  wire wr_edge_n_10;
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
  wire wr_edge_n_11;
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
  wire wr_edge_n_17;
  wire wr_edge_n_18;
  wire wr_edge_n_19;
  wire wr_edge_n_2;
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
  wire wr_edge_n_3;
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
  wire wr_edge_n_4;
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
  wire wr_edge_n_5;
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
  wire wr_edge_n_6;
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
  wire wr_edge_n_7;
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
  wire wr_edge_n_8;
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
  wire wr_edge_n_9;
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
  wire \wr_index[0]_i_1_n_0 ;
  wire write_request;

  FDRE \FIFO_DATA_reg[0][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_161),
        .D(wr_edge_n_92),
        .Q(\FIFO_DATA_reg[0]_15 [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[0][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_161),
        .D(wr_edge_n_93),
        .Q(\FIFO_DATA_reg[0]_15 [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[0][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_161),
        .D(wr_edge_n_94),
        .Q(\FIFO_DATA_reg[0]_15 [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[0][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_161),
        .D(wr_edge_n_95),
        .Q(\FIFO_DATA_reg[0]_15 [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[0][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_161),
        .D(wr_edge_n_96),
        .Q(\FIFO_DATA_reg[0]_15 [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[0][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_161),
        .D(wr_edge_n_97),
        .Q(\FIFO_DATA_reg[0]_15 [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[0][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_161),
        .D(wr_edge_n_98),
        .Q(\FIFO_DATA_reg[0]_15 [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[0][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_161),
        .D(wr_edge_n_99),
        .Q(\FIFO_DATA_reg[0]_15 [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[0][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_161),
        .D(wr_edge_n_100),
        .Q(\FIFO_DATA_reg[0]_15 [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[10][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_151),
        .D(wr_edge_n_128),
        .Q(\FIFO_DATA_reg[10]_5 [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[10][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_151),
        .D(wr_edge_n_129),
        .Q(\FIFO_DATA_reg[10]_5 [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[10][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_151),
        .D(wr_edge_n_130),
        .Q(\FIFO_DATA_reg[10]_5 [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[10][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_151),
        .D(wr_edge_n_131),
        .Q(\FIFO_DATA_reg[10]_5 [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[10][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_151),
        .D(wr_edge_n_132),
        .Q(\FIFO_DATA_reg[10]_5 [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[10][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_151),
        .D(wr_edge_n_133),
        .Q(\FIFO_DATA_reg[10]_5 [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[10][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_151),
        .D(wr_edge_n_134),
        .Q(\FIFO_DATA_reg[10]_5 [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[10][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_151),
        .D(wr_edge_n_135),
        .Q(\FIFO_DATA_reg[10]_5 [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[10][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_151),
        .D(wr_edge_n_136),
        .Q(\FIFO_DATA_reg[10]_5 [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[11][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_150),
        .D(wr_edge_n_119),
        .Q(\FIFO_DATA_reg[11]_4 [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[11][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_150),
        .D(wr_edge_n_120),
        .Q(\FIFO_DATA_reg[11]_4 [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[11][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_150),
        .D(wr_edge_n_121),
        .Q(\FIFO_DATA_reg[11]_4 [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[11][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_150),
        .D(wr_edge_n_122),
        .Q(\FIFO_DATA_reg[11]_4 [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[11][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_150),
        .D(wr_edge_n_123),
        .Q(\FIFO_DATA_reg[11]_4 [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[11][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_150),
        .D(wr_edge_n_124),
        .Q(\FIFO_DATA_reg[11]_4 [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[11][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_150),
        .D(wr_edge_n_125),
        .Q(\FIFO_DATA_reg[11]_4 [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[11][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_150),
        .D(wr_edge_n_126),
        .Q(\FIFO_DATA_reg[11]_4 [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[11][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_150),
        .D(wr_edge_n_127),
        .Q(\FIFO_DATA_reg[11]_4 [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[12][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_149),
        .D(wr_edge_n_2),
        .Q(\FIFO_DATA_reg[12]_3 [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[12][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_149),
        .D(wr_edge_n_3),
        .Q(\FIFO_DATA_reg[12]_3 [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[12][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_149),
        .D(wr_edge_n_4),
        .Q(\FIFO_DATA_reg[12]_3 [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[12][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_149),
        .D(wr_edge_n_5),
        .Q(\FIFO_DATA_reg[12]_3 [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[12][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_149),
        .D(wr_edge_n_6),
        .Q(\FIFO_DATA_reg[12]_3 [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[12][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_149),
        .D(wr_edge_n_7),
        .Q(\FIFO_DATA_reg[12]_3 [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[12][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_149),
        .D(wr_edge_n_8),
        .Q(\FIFO_DATA_reg[12]_3 [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[12][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_149),
        .D(wr_edge_n_9),
        .Q(\FIFO_DATA_reg[12]_3 [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[12][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_149),
        .D(wr_edge_n_10),
        .Q(\FIFO_DATA_reg[12]_3 [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[13][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_148),
        .D(wr_edge_n_11),
        .Q(\FIFO_DATA_reg[13]_2 [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[13][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_148),
        .D(wr_edge_n_12),
        .Q(\FIFO_DATA_reg[13]_2 [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[13][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_148),
        .D(wr_edge_n_13),
        .Q(\FIFO_DATA_reg[13]_2 [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[13][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_148),
        .D(wr_edge_n_14),
        .Q(\FIFO_DATA_reg[13]_2 [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[13][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_148),
        .D(wr_edge_n_15),
        .Q(\FIFO_DATA_reg[13]_2 [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[13][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_148),
        .D(wr_edge_n_16),
        .Q(\FIFO_DATA_reg[13]_2 [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[13][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_148),
        .D(wr_edge_n_17),
        .Q(\FIFO_DATA_reg[13]_2 [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[13][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_148),
        .D(wr_edge_n_18),
        .Q(\FIFO_DATA_reg[13]_2 [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[13][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_148),
        .D(wr_edge_n_19),
        .Q(\FIFO_DATA_reg[13]_2 [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[14][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_147),
        .D(wr_edge_n_20),
        .Q(\FIFO_DATA_reg[14]_1 [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[14][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_147),
        .D(wr_edge_n_21),
        .Q(\FIFO_DATA_reg[14]_1 [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[14][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_147),
        .D(wr_edge_n_22),
        .Q(\FIFO_DATA_reg[14]_1 [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[14][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_147),
        .D(wr_edge_n_23),
        .Q(\FIFO_DATA_reg[14]_1 [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[14][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_147),
        .D(wr_edge_n_24),
        .Q(\FIFO_DATA_reg[14]_1 [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[14][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_147),
        .D(wr_edge_n_25),
        .Q(\FIFO_DATA_reg[14]_1 [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[14][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_147),
        .D(wr_edge_n_26),
        .Q(\FIFO_DATA_reg[14]_1 [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[14][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_147),
        .D(wr_edge_n_27),
        .Q(\FIFO_DATA_reg[14]_1 [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[14][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_147),
        .D(wr_edge_n_28),
        .Q(\FIFO_DATA_reg[14]_1 [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[15][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_146),
        .D(wr_edge_n_29),
        .Q(\FIFO_DATA_reg[15]_0 [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[15][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_146),
        .D(wr_edge_n_30),
        .Q(\FIFO_DATA_reg[15]_0 [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[15][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_146),
        .D(wr_edge_n_31),
        .Q(\FIFO_DATA_reg[15]_0 [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[15][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_146),
        .D(wr_edge_n_32),
        .Q(\FIFO_DATA_reg[15]_0 [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[15][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_146),
        .D(wr_edge_n_33),
        .Q(\FIFO_DATA_reg[15]_0 [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[15][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_146),
        .D(wr_edge_n_34),
        .Q(\FIFO_DATA_reg[15]_0 [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[15][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_146),
        .D(wr_edge_n_35),
        .Q(\FIFO_DATA_reg[15]_0 [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[15][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_146),
        .D(wr_edge_n_36),
        .Q(\FIFO_DATA_reg[15]_0 [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[15][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_146),
        .D(wr_edge_n_37),
        .Q(\FIFO_DATA_reg[15]_0 [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[1][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_160),
        .D(wr_edge_n_74),
        .Q(\FIFO_DATA_reg[1]_14 [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[1][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_160),
        .D(wr_edge_n_75),
        .Q(\FIFO_DATA_reg[1]_14 [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[1][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_160),
        .D(wr_edge_n_76),
        .Q(\FIFO_DATA_reg[1]_14 [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[1][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_160),
        .D(wr_edge_n_77),
        .Q(\FIFO_DATA_reg[1]_14 [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[1][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_160),
        .D(wr_edge_n_78),
        .Q(\FIFO_DATA_reg[1]_14 [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[1][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_160),
        .D(wr_edge_n_79),
        .Q(\FIFO_DATA_reg[1]_14 [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[1][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_160),
        .D(wr_edge_n_80),
        .Q(\FIFO_DATA_reg[1]_14 [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[1][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_160),
        .D(wr_edge_n_81),
        .Q(\FIFO_DATA_reg[1]_14 [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[1][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_160),
        .D(wr_edge_n_82),
        .Q(\FIFO_DATA_reg[1]_14 [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[2][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_159),
        .D(wr_edge_n_56),
        .Q(\FIFO_DATA_reg[2]_13 [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[2][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_159),
        .D(wr_edge_n_57),
        .Q(\FIFO_DATA_reg[2]_13 [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[2][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_159),
        .D(wr_edge_n_58),
        .Q(\FIFO_DATA_reg[2]_13 [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[2][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_159),
        .D(wr_edge_n_59),
        .Q(\FIFO_DATA_reg[2]_13 [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[2][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_159),
        .D(wr_edge_n_60),
        .Q(\FIFO_DATA_reg[2]_13 [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[2][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_159),
        .D(wr_edge_n_61),
        .Q(\FIFO_DATA_reg[2]_13 [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[2][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_159),
        .D(wr_edge_n_62),
        .Q(\FIFO_DATA_reg[2]_13 [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[2][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_159),
        .D(wr_edge_n_63),
        .Q(\FIFO_DATA_reg[2]_13 [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[2][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_159),
        .D(wr_edge_n_64),
        .Q(\FIFO_DATA_reg[2]_13 [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[3][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_158),
        .D(wr_edge_n_38),
        .Q(\FIFO_DATA_reg[3]_12 [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[3][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_158),
        .D(wr_edge_n_39),
        .Q(\FIFO_DATA_reg[3]_12 [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[3][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_158),
        .D(wr_edge_n_40),
        .Q(\FIFO_DATA_reg[3]_12 [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[3][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_158),
        .D(wr_edge_n_41),
        .Q(\FIFO_DATA_reg[3]_12 [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[3][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_158),
        .D(wr_edge_n_42),
        .Q(\FIFO_DATA_reg[3]_12 [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[3][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_158),
        .D(wr_edge_n_43),
        .Q(\FIFO_DATA_reg[3]_12 [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[3][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_158),
        .D(wr_edge_n_44),
        .Q(\FIFO_DATA_reg[3]_12 [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[3][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_158),
        .D(wr_edge_n_45),
        .Q(\FIFO_DATA_reg[3]_12 [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[3][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_158),
        .D(wr_edge_n_46),
        .Q(\FIFO_DATA_reg[3]_12 [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[4][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_157),
        .D(wr_edge_n_101),
        .Q(\FIFO_DATA_reg[4]_11 [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[4][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_157),
        .D(wr_edge_n_102),
        .Q(\FIFO_DATA_reg[4]_11 [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[4][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_157),
        .D(wr_edge_n_103),
        .Q(\FIFO_DATA_reg[4]_11 [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[4][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_157),
        .D(wr_edge_n_104),
        .Q(\FIFO_DATA_reg[4]_11 [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[4][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_157),
        .D(wr_edge_n_105),
        .Q(\FIFO_DATA_reg[4]_11 [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[4][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_157),
        .D(wr_edge_n_106),
        .Q(\FIFO_DATA_reg[4]_11 [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[4][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_157),
        .D(wr_edge_n_107),
        .Q(\FIFO_DATA_reg[4]_11 [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[4][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_157),
        .D(wr_edge_n_108),
        .Q(\FIFO_DATA_reg[4]_11 [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[4][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_157),
        .D(wr_edge_n_109),
        .Q(\FIFO_DATA_reg[4]_11 [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[5][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_156),
        .D(wr_edge_n_83),
        .Q(\FIFO_DATA_reg[5]_10 [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[5][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_156),
        .D(wr_edge_n_84),
        .Q(\FIFO_DATA_reg[5]_10 [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[5][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_156),
        .D(wr_edge_n_85),
        .Q(\FIFO_DATA_reg[5]_10 [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[5][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_156),
        .D(wr_edge_n_86),
        .Q(\FIFO_DATA_reg[5]_10 [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[5][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_156),
        .D(wr_edge_n_87),
        .Q(\FIFO_DATA_reg[5]_10 [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[5][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_156),
        .D(wr_edge_n_88),
        .Q(\FIFO_DATA_reg[5]_10 [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[5][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_156),
        .D(wr_edge_n_89),
        .Q(\FIFO_DATA_reg[5]_10 [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[5][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_156),
        .D(wr_edge_n_90),
        .Q(\FIFO_DATA_reg[5]_10 [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[5][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_156),
        .D(wr_edge_n_91),
        .Q(\FIFO_DATA_reg[5]_10 [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[6][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_155),
        .D(wr_edge_n_65),
        .Q(\FIFO_DATA_reg[6]_9 [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[6][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_155),
        .D(wr_edge_n_66),
        .Q(\FIFO_DATA_reg[6]_9 [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[6][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_155),
        .D(wr_edge_n_67),
        .Q(\FIFO_DATA_reg[6]_9 [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[6][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_155),
        .D(wr_edge_n_68),
        .Q(\FIFO_DATA_reg[6]_9 [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[6][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_155),
        .D(wr_edge_n_69),
        .Q(\FIFO_DATA_reg[6]_9 [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[6][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_155),
        .D(wr_edge_n_70),
        .Q(\FIFO_DATA_reg[6]_9 [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[6][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_155),
        .D(wr_edge_n_71),
        .Q(\FIFO_DATA_reg[6]_9 [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[6][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_155),
        .D(wr_edge_n_72),
        .Q(\FIFO_DATA_reg[6]_9 [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[6][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_155),
        .D(wr_edge_n_73),
        .Q(\FIFO_DATA_reg[6]_9 [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[7][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_154),
        .D(wr_edge_n_47),
        .Q(\FIFO_DATA_reg[7]_8 [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[7][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_154),
        .D(wr_edge_n_48),
        .Q(\FIFO_DATA_reg[7]_8 [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[7][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_154),
        .D(wr_edge_n_49),
        .Q(\FIFO_DATA_reg[7]_8 [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[7][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_154),
        .D(wr_edge_n_50),
        .Q(\FIFO_DATA_reg[7]_8 [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[7][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_154),
        .D(wr_edge_n_51),
        .Q(\FIFO_DATA_reg[7]_8 [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[7][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_154),
        .D(wr_edge_n_52),
        .Q(\FIFO_DATA_reg[7]_8 [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[7][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_154),
        .D(wr_edge_n_53),
        .Q(\FIFO_DATA_reg[7]_8 [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[7][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_154),
        .D(wr_edge_n_54),
        .Q(\FIFO_DATA_reg[7]_8 [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[7][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_154),
        .D(wr_edge_n_55),
        .Q(\FIFO_DATA_reg[7]_8 [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[8][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_153),
        .D(wr_edge_n_137),
        .Q(\FIFO_DATA_reg[8]_7 [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[8][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_153),
        .D(wr_edge_n_138),
        .Q(\FIFO_DATA_reg[8]_7 [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[8][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_153),
        .D(wr_edge_n_139),
        .Q(\FIFO_DATA_reg[8]_7 [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[8][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_153),
        .D(wr_edge_n_140),
        .Q(\FIFO_DATA_reg[8]_7 [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[8][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_153),
        .D(wr_edge_n_141),
        .Q(\FIFO_DATA_reg[8]_7 [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[8][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_153),
        .D(wr_edge_n_142),
        .Q(\FIFO_DATA_reg[8]_7 [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[8][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_153),
        .D(wr_edge_n_143),
        .Q(\FIFO_DATA_reg[8]_7 [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[8][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_153),
        .D(wr_edge_n_144),
        .Q(\FIFO_DATA_reg[8]_7 [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[8][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_153),
        .D(wr_edge_n_145),
        .Q(\FIFO_DATA_reg[8]_7 [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[9][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_152),
        .D(wr_edge_n_110),
        .Q(\FIFO_DATA_reg[9]_6 [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[9][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_152),
        .D(wr_edge_n_111),
        .Q(\FIFO_DATA_reg[9]_6 [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[9][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_152),
        .D(wr_edge_n_112),
        .Q(\FIFO_DATA_reg[9]_6 [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[9][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_152),
        .D(wr_edge_n_113),
        .Q(\FIFO_DATA_reg[9]_6 [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[9][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_152),
        .D(wr_edge_n_114),
        .Q(\FIFO_DATA_reg[9]_6 [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[9][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_152),
        .D(wr_edge_n_115),
        .Q(\FIFO_DATA_reg[9]_6 [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[9][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_152),
        .D(wr_edge_n_116),
        .Q(\FIFO_DATA_reg[9]_6 [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[9][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_152),
        .D(wr_edge_n_117),
        .Q(\FIFO_DATA_reg[9]_6 [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[9][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_152),
        .D(wr_edge_n_118),
        .Q(\FIFO_DATA_reg[9]_6 [8]),
        .R(axi_aresetn_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata_reg[8]_0 [0]),
        .I1(\axi_rdata_reg[8]_1 [0]),
        .I2(p_0_in_0[0]),
        .I3(\axi_rdata_reg[8] [0]),
        .I4(p_0_in_0[1]),
        .I5(D[0]),
        .O(\officialBaudRate_reg[8] [0]));
  LUT6 #(
    .INIT(64'hCCFFCC00F055F055)) 
    \axi_rdata[1]_i_1 
       (.I0(\rd_data[1]_INST_0_i_1_n_0 ),
        .I1(\axi_rdata_reg[8]_0 [1]),
        .I2(\axi_rdata_reg[8]_1 [1]),
        .I3(p_0_in_0[0]),
        .I4(\axi_rdata_reg[8] [1]),
        .I5(p_0_in_0[1]),
        .O(\officialBaudRate_reg[8] [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata_reg[8]_0 [2]),
        .I1(\axi_rdata_reg[8]_1 [2]),
        .I2(p_0_in_0[0]),
        .I3(\axi_rdata_reg[8] [2]),
        .I4(p_0_in_0[1]),
        .I5(\rd_index_reg[3]_1 ),
        .O(\officialBaudRate_reg[8] [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata_reg[8]_0 [3]),
        .I1(\axi_rdata_reg[8]_1 [3]),
        .I2(p_0_in_0[0]),
        .I3(\axi_rdata_reg[8] [3]),
        .I4(p_0_in_0[1]),
        .I5(\rd_index_reg[3]_2 ),
        .O(\officialBaudRate_reg[8] [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata_reg[8]_0 [4]),
        .I1(\axi_rdata_reg[8]_1 [4]),
        .I2(p_0_in_0[0]),
        .I3(\axi_rdata_reg[8] [4]),
        .I4(p_0_in_0[1]),
        .I5(\rd_index_reg[3]_0 ),
        .O(\officialBaudRate_reg[8] [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata_reg[8]_0 [5]),
        .I1(\axi_rdata_reg[8]_1 [5]),
        .I2(p_0_in_0[0]),
        .I3(\axi_rdata_reg[8] [5]),
        .I4(p_0_in_0[1]),
        .I5(D[2]),
        .O(\officialBaudRate_reg[8] [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata_reg[8]_0 [6]),
        .I1(\axi_rdata_reg[8]_1 [6]),
        .I2(p_0_in_0[0]),
        .I3(\axi_rdata_reg[8] [6]),
        .I4(p_0_in_0[1]),
        .I5(D[3]),
        .O(\officialBaudRate_reg[8] [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata_reg[8]_0 [7]),
        .I1(\axi_rdata_reg[8]_1 [7]),
        .I2(p_0_in_0[0]),
        .I3(\axi_rdata_reg[8] [7]),
        .I4(p_0_in_0[1]),
        .I5(D[4]),
        .O(\officialBaudRate_reg[8] [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata_reg[8]_0 [8]),
        .I1(\axi_rdata_reg[8]_1 [8]),
        .I2(p_0_in_0[0]),
        .I3(\axi_rdata_reg[8] [8]),
        .I4(p_0_in_0[1]),
        .I5(D[5]),
        .O(\officialBaudRate_reg[8] [8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h09)) 
    empty_INST_0
       (.I0(\rd_index_reg[4]_0 [4]),
        .I1(Q[4]),
        .I2(empty_INST_0_i_1_n_0),
        .O(empty));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    empty_INST_0_i_1
       (.I0(Q[1]),
        .I1(\rd_index_reg[4]_0 [1]),
        .I2(Q[0]),
        .I3(\rd_index_reg[4]_0 [0]),
        .I4(empty_INST_0_i_2_n_0),
        .O(empty_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    empty_INST_0_i_2
       (.I0(\rd_index_reg[4]_0 [3]),
        .I1(Q[3]),
        .I2(\rd_index_reg[4]_0 [2]),
        .I3(Q[2]),
        .O(empty_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h06)) 
    full_INST_0
       (.I0(\rd_index_reg[4]_0 [4]),
        .I1(Q[4]),
        .I2(empty_INST_0_i_1_n_0),
        .O(full));
  LUT6 #(
    .INIT(64'h995599A599AA99A5)) 
    myParityBit_reg_i_1
       (.I0(myParityBit_reg),
        .I1(myParityBit_reg_i_4_n_0),
        .I2(myParityBit_reg_i_5_n_0),
        .I3(\axi_rdata_reg[8] [0]),
        .I4(\axi_rdata_reg[8] [1]),
        .I5(myParityBit_reg_i_6_n_0),
        .O(\officialControl_reg[0] ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    myParityBit_reg_i_4
       (.I0(\rd_index_reg[3]_0 ),
        .I1(\rd_index_reg[3]_1 ),
        .I2(\rd_data[1]_INST_0_i_1_n_0 ),
        .I3(\rd_index_reg[3]_2 ),
        .I4(D[2]),
        .I5(myParityBit_reg_i_7_n_0),
        .O(myParityBit_reg_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    myParityBit_reg_i_5
       (.I0(\rd_index_reg[3]_0 ),
        .I1(\rd_index_reg[3]_1 ),
        .I2(\rd_data[1]_INST_0_i_1_n_0 ),
        .I3(myParityBit_reg_i_7_n_0),
        .I4(\rd_index_reg[3]_2 ),
        .O(myParityBit_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    myParityBit_reg_i_6
       (.I0(\rd_index_reg[3]_0 ),
        .I1(\rd_index_reg[3]_1 ),
        .I2(\rd_data[1]_INST_0_i_1_n_0 ),
        .I3(D[0]),
        .I4(D[3]),
        .I5(myParityBit_reg_i_8_n_0),
        .O(myParityBit_reg_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    myParityBit_reg_i_7
       (.I0(\rd_data[0]_INST_0_i_2_n_0 ),
        .I1(\rd_index_reg[4]_0 [3]),
        .I2(\rd_data[0]_INST_0_i_1_n_0 ),
        .O(myParityBit_reg_i_7_n_0));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    myParityBit_reg_i_8
       (.I0(\rd_data[3]_INST_0_i_1_n_0 ),
        .I1(\rd_data[3]_INST_0_i_2_n_0 ),
        .I2(\rd_data[5]_INST_0_i_1_n_0 ),
        .I3(\rd_index_reg[4]_0 [3]),
        .I4(\rd_data[5]_INST_0_i_2_n_0 ),
        .O(myParityBit_reg_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data[0]_INST_0 
       (.I0(\rd_data[0]_INST_0_i_1_n_0 ),
        .I1(\rd_index_reg[4]_0 [3]),
        .I2(\rd_data[0]_INST_0_i_2_n_0 ),
        .O(D[0]));
  MUXF7 \rd_data[0]_INST_0_i_1 
       (.I0(\rd_data[0]_INST_0_i_3_n_0 ),
        .I1(\rd_data[0]_INST_0_i_4_n_0 ),
        .O(\rd_data[0]_INST_0_i_1_n_0 ),
        .S(\rd_index_reg[4]_0 [2]));
  MUXF7 \rd_data[0]_INST_0_i_2 
       (.I0(\rd_data[0]_INST_0_i_5_n_0 ),
        .I1(\rd_data[0]_INST_0_i_6_n_0 ),
        .O(\rd_data[0]_INST_0_i_2_n_0 ),
        .S(\rd_index_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[0]_INST_0_i_3 
       (.I0(\FIFO_DATA_reg[11]_4 [0]),
        .I1(\FIFO_DATA_reg[10]_5 [0]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[9]_6 [0]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[8]_7 [0]),
        .O(\rd_data[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[0]_INST_0_i_4 
       (.I0(\FIFO_DATA_reg[15]_0 [0]),
        .I1(\FIFO_DATA_reg[14]_1 [0]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[13]_2 [0]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[12]_3 [0]),
        .O(\rd_data[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[0]_INST_0_i_5 
       (.I0(\FIFO_DATA_reg[3]_12 [0]),
        .I1(\FIFO_DATA_reg[2]_13 [0]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[1]_14 [0]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[0]_15 [0]),
        .O(\rd_data[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[0]_INST_0_i_6 
       (.I0(\FIFO_DATA_reg[7]_8 [0]),
        .I1(\FIFO_DATA_reg[6]_9 [0]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[5]_10 [0]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[4]_11 [0]),
        .O(\rd_data[0]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rd_data[1]_INST_0 
       (.I0(\rd_data[1]_INST_0_i_1_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \rd_data[1]_INST_0_i_1 
       (.I0(\rd_data[1]_INST_0_i_2_n_0 ),
        .I1(\rd_data[1]_INST_0_i_3_n_0 ),
        .I2(\rd_data[1]_INST_0_i_4_n_0 ),
        .I3(\rd_index_reg[4]_0 [2]),
        .I4(\rd_data[1]_INST_0_i_5_n_0 ),
        .I5(\rd_index_reg[4]_0 [3]),
        .O(\rd_data[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \rd_data[1]_INST_0_i_2 
       (.I0(\FIFO_DATA_reg[13]_2 [1]),
        .I1(\FIFO_DATA_reg[12]_3 [1]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[15]_0 [1]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[14]_1 [1]),
        .O(\rd_data[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \rd_data[1]_INST_0_i_3 
       (.I0(\FIFO_DATA_reg[9]_6 [1]),
        .I1(\FIFO_DATA_reg[8]_7 [1]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[11]_4 [1]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[10]_5 [1]),
        .O(\rd_data[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \rd_data[1]_INST_0_i_4 
       (.I0(\FIFO_DATA_reg[5]_10 [1]),
        .I1(\FIFO_DATA_reg[4]_11 [1]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[7]_8 [1]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[6]_9 [1]),
        .O(\rd_data[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \rd_data[1]_INST_0_i_5 
       (.I0(\FIFO_DATA_reg[1]_14 [1]),
        .I1(\FIFO_DATA_reg[0]_15 [1]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[3]_12 [1]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[2]_13 [1]),
        .O(\rd_data[1]_INST_0_i_5_n_0 ));
  MUXF8 \rd_data[2]_INST_0 
       (.I0(\rd_data[2]_INST_0_i_1_n_0 ),
        .I1(\rd_data[2]_INST_0_i_2_n_0 ),
        .O(\rd_index_reg[3]_1 ),
        .S(\rd_index_reg[4]_0 [3]));
  MUXF7 \rd_data[2]_INST_0_i_1 
       (.I0(\rd_data[2]_INST_0_i_3_n_0 ),
        .I1(\rd_data[2]_INST_0_i_4_n_0 ),
        .O(\rd_data[2]_INST_0_i_1_n_0 ),
        .S(\rd_index_reg[4]_0 [2]));
  MUXF7 \rd_data[2]_INST_0_i_2 
       (.I0(\rd_data[2]_INST_0_i_5_n_0 ),
        .I1(\rd_data[2]_INST_0_i_6_n_0 ),
        .O(\rd_data[2]_INST_0_i_2_n_0 ),
        .S(\rd_index_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[2]_INST_0_i_3 
       (.I0(\FIFO_DATA_reg[3]_12 [2]),
        .I1(\FIFO_DATA_reg[2]_13 [2]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[1]_14 [2]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[0]_15 [2]),
        .O(\rd_data[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[2]_INST_0_i_4 
       (.I0(\FIFO_DATA_reg[7]_8 [2]),
        .I1(\FIFO_DATA_reg[6]_9 [2]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[5]_10 [2]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[4]_11 [2]),
        .O(\rd_data[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[2]_INST_0_i_5 
       (.I0(\FIFO_DATA_reg[11]_4 [2]),
        .I1(\FIFO_DATA_reg[10]_5 [2]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[9]_6 [2]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[8]_7 [2]),
        .O(\rd_data[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[2]_INST_0_i_6 
       (.I0(\FIFO_DATA_reg[15]_0 [2]),
        .I1(\FIFO_DATA_reg[14]_1 [2]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[13]_2 [2]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[12]_3 [2]),
        .O(\rd_data[2]_INST_0_i_6_n_0 ));
  MUXF8 \rd_data[3]_INST_0 
       (.I0(\rd_data[3]_INST_0_i_1_n_0 ),
        .I1(\rd_data[3]_INST_0_i_2_n_0 ),
        .O(\rd_index_reg[3]_2 ),
        .S(\rd_index_reg[4]_0 [3]));
  MUXF7 \rd_data[3]_INST_0_i_1 
       (.I0(\rd_data[3]_INST_0_i_3_n_0 ),
        .I1(\rd_data[3]_INST_0_i_4_n_0 ),
        .O(\rd_data[3]_INST_0_i_1_n_0 ),
        .S(\rd_index_reg[4]_0 [2]));
  MUXF7 \rd_data[3]_INST_0_i_2 
       (.I0(\rd_data[3]_INST_0_i_5_n_0 ),
        .I1(\rd_data[3]_INST_0_i_6_n_0 ),
        .O(\rd_data[3]_INST_0_i_2_n_0 ),
        .S(\rd_index_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[3]_INST_0_i_3 
       (.I0(\FIFO_DATA_reg[3]_12 [3]),
        .I1(\FIFO_DATA_reg[2]_13 [3]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[1]_14 [3]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[0]_15 [3]),
        .O(\rd_data[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[3]_INST_0_i_4 
       (.I0(\FIFO_DATA_reg[7]_8 [3]),
        .I1(\FIFO_DATA_reg[6]_9 [3]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[5]_10 [3]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[4]_11 [3]),
        .O(\rd_data[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[3]_INST_0_i_5 
       (.I0(\FIFO_DATA_reg[11]_4 [3]),
        .I1(\FIFO_DATA_reg[10]_5 [3]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[9]_6 [3]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[8]_7 [3]),
        .O(\rd_data[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[3]_INST_0_i_6 
       (.I0(\FIFO_DATA_reg[15]_0 [3]),
        .I1(\FIFO_DATA_reg[14]_1 [3]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[13]_2 [3]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[12]_3 [3]),
        .O(\rd_data[3]_INST_0_i_6_n_0 ));
  MUXF8 \rd_data[4]_INST_0 
       (.I0(\rd_data[4]_INST_0_i_1_n_0 ),
        .I1(\rd_data[4]_INST_0_i_2_n_0 ),
        .O(\rd_index_reg[3]_0 ),
        .S(\rd_index_reg[4]_0 [3]));
  MUXF7 \rd_data[4]_INST_0_i_1 
       (.I0(\rd_data[4]_INST_0_i_3_n_0 ),
        .I1(\rd_data[4]_INST_0_i_4_n_0 ),
        .O(\rd_data[4]_INST_0_i_1_n_0 ),
        .S(\rd_index_reg[4]_0 [2]));
  MUXF7 \rd_data[4]_INST_0_i_2 
       (.I0(\rd_data[4]_INST_0_i_5_n_0 ),
        .I1(\rd_data[4]_INST_0_i_6_n_0 ),
        .O(\rd_data[4]_INST_0_i_2_n_0 ),
        .S(\rd_index_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[4]_INST_0_i_3 
       (.I0(\FIFO_DATA_reg[3]_12 [4]),
        .I1(\FIFO_DATA_reg[2]_13 [4]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[1]_14 [4]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[0]_15 [4]),
        .O(\rd_data[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[4]_INST_0_i_4 
       (.I0(\FIFO_DATA_reg[7]_8 [4]),
        .I1(\FIFO_DATA_reg[6]_9 [4]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[5]_10 [4]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[4]_11 [4]),
        .O(\rd_data[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[4]_INST_0_i_5 
       (.I0(\FIFO_DATA_reg[11]_4 [4]),
        .I1(\FIFO_DATA_reg[10]_5 [4]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[9]_6 [4]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[8]_7 [4]),
        .O(\rd_data[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[4]_INST_0_i_6 
       (.I0(\FIFO_DATA_reg[15]_0 [4]),
        .I1(\FIFO_DATA_reg[14]_1 [4]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[13]_2 [4]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[12]_3 [4]),
        .O(\rd_data[4]_INST_0_i_6_n_0 ));
  MUXF8 \rd_data[5]_INST_0 
       (.I0(\rd_data[5]_INST_0_i_1_n_0 ),
        .I1(\rd_data[5]_INST_0_i_2_n_0 ),
        .O(D[2]),
        .S(\rd_index_reg[4]_0 [3]));
  MUXF7 \rd_data[5]_INST_0_i_1 
       (.I0(\rd_data[5]_INST_0_i_3_n_0 ),
        .I1(\rd_data[5]_INST_0_i_4_n_0 ),
        .O(\rd_data[5]_INST_0_i_1_n_0 ),
        .S(\rd_index_reg[4]_0 [2]));
  MUXF7 \rd_data[5]_INST_0_i_2 
       (.I0(\rd_data[5]_INST_0_i_5_n_0 ),
        .I1(\rd_data[5]_INST_0_i_6_n_0 ),
        .O(\rd_data[5]_INST_0_i_2_n_0 ),
        .S(\rd_index_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[5]_INST_0_i_3 
       (.I0(\FIFO_DATA_reg[3]_12 [5]),
        .I1(\FIFO_DATA_reg[2]_13 [5]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[1]_14 [5]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[0]_15 [5]),
        .O(\rd_data[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[5]_INST_0_i_4 
       (.I0(\FIFO_DATA_reg[7]_8 [5]),
        .I1(\FIFO_DATA_reg[6]_9 [5]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[5]_10 [5]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[4]_11 [5]),
        .O(\rd_data[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[5]_INST_0_i_5 
       (.I0(\FIFO_DATA_reg[11]_4 [5]),
        .I1(\FIFO_DATA_reg[10]_5 [5]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[9]_6 [5]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[8]_7 [5]),
        .O(\rd_data[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[5]_INST_0_i_6 
       (.I0(\FIFO_DATA_reg[15]_0 [5]),
        .I1(\FIFO_DATA_reg[14]_1 [5]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[13]_2 [5]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[12]_3 [5]),
        .O(\rd_data[5]_INST_0_i_6_n_0 ));
  MUXF8 \rd_data[6]_INST_0 
       (.I0(\rd_data[6]_INST_0_i_1_n_0 ),
        .I1(\rd_data[6]_INST_0_i_2_n_0 ),
        .O(D[3]),
        .S(\rd_index_reg[4]_0 [3]));
  MUXF7 \rd_data[6]_INST_0_i_1 
       (.I0(\rd_data[6]_INST_0_i_3_n_0 ),
        .I1(\rd_data[6]_INST_0_i_4_n_0 ),
        .O(\rd_data[6]_INST_0_i_1_n_0 ),
        .S(\rd_index_reg[4]_0 [2]));
  MUXF7 \rd_data[6]_INST_0_i_2 
       (.I0(\rd_data[6]_INST_0_i_5_n_0 ),
        .I1(\rd_data[6]_INST_0_i_6_n_0 ),
        .O(\rd_data[6]_INST_0_i_2_n_0 ),
        .S(\rd_index_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[6]_INST_0_i_3 
       (.I0(\FIFO_DATA_reg[3]_12 [6]),
        .I1(\FIFO_DATA_reg[2]_13 [6]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[1]_14 [6]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[0]_15 [6]),
        .O(\rd_data[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[6]_INST_0_i_4 
       (.I0(\FIFO_DATA_reg[7]_8 [6]),
        .I1(\FIFO_DATA_reg[6]_9 [6]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[5]_10 [6]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[4]_11 [6]),
        .O(\rd_data[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[6]_INST_0_i_5 
       (.I0(\FIFO_DATA_reg[11]_4 [6]),
        .I1(\FIFO_DATA_reg[10]_5 [6]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[9]_6 [6]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[8]_7 [6]),
        .O(\rd_data[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[6]_INST_0_i_6 
       (.I0(\FIFO_DATA_reg[15]_0 [6]),
        .I1(\FIFO_DATA_reg[14]_1 [6]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[13]_2 [6]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[12]_3 [6]),
        .O(\rd_data[6]_INST_0_i_6_n_0 ));
  MUXF8 \rd_data[7]_INST_0 
       (.I0(\rd_data[7]_INST_0_i_1_n_0 ),
        .I1(\rd_data[7]_INST_0_i_2_n_0 ),
        .O(D[4]),
        .S(\rd_index_reg[4]_0 [3]));
  MUXF7 \rd_data[7]_INST_0_i_1 
       (.I0(\rd_data[7]_INST_0_i_3_n_0 ),
        .I1(\rd_data[7]_INST_0_i_4_n_0 ),
        .O(\rd_data[7]_INST_0_i_1_n_0 ),
        .S(\rd_index_reg[4]_0 [2]));
  MUXF7 \rd_data[7]_INST_0_i_2 
       (.I0(\rd_data[7]_INST_0_i_5_n_0 ),
        .I1(\rd_data[7]_INST_0_i_6_n_0 ),
        .O(\rd_data[7]_INST_0_i_2_n_0 ),
        .S(\rd_index_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[7]_INST_0_i_3 
       (.I0(\FIFO_DATA_reg[3]_12 [7]),
        .I1(\FIFO_DATA_reg[2]_13 [7]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[1]_14 [7]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[0]_15 [7]),
        .O(\rd_data[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[7]_INST_0_i_4 
       (.I0(\FIFO_DATA_reg[7]_8 [7]),
        .I1(\FIFO_DATA_reg[6]_9 [7]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[5]_10 [7]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[4]_11 [7]),
        .O(\rd_data[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[7]_INST_0_i_5 
       (.I0(\FIFO_DATA_reg[11]_4 [7]),
        .I1(\FIFO_DATA_reg[10]_5 [7]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[9]_6 [7]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[8]_7 [7]),
        .O(\rd_data[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[7]_INST_0_i_6 
       (.I0(\FIFO_DATA_reg[15]_0 [7]),
        .I1(\FIFO_DATA_reg[14]_1 [7]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[13]_2 [7]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[12]_3 [7]),
        .O(\rd_data[7]_INST_0_i_6_n_0 ));
  MUXF8 \rd_data[8]_INST_0 
       (.I0(\rd_data[8]_INST_0_i_1_n_0 ),
        .I1(\rd_data[8]_INST_0_i_2_n_0 ),
        .O(D[5]),
        .S(\rd_index_reg[4]_0 [3]));
  MUXF7 \rd_data[8]_INST_0_i_1 
       (.I0(\rd_data[8]_INST_0_i_3_n_0 ),
        .I1(\rd_data[8]_INST_0_i_4_n_0 ),
        .O(\rd_data[8]_INST_0_i_1_n_0 ),
        .S(\rd_index_reg[4]_0 [2]));
  MUXF7 \rd_data[8]_INST_0_i_2 
       (.I0(\rd_data[8]_INST_0_i_5_n_0 ),
        .I1(\rd_data[8]_INST_0_i_6_n_0 ),
        .O(\rd_data[8]_INST_0_i_2_n_0 ),
        .S(\rd_index_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[8]_INST_0_i_3 
       (.I0(\FIFO_DATA_reg[3]_12 [8]),
        .I1(\FIFO_DATA_reg[2]_13 [8]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[1]_14 [8]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[0]_15 [8]),
        .O(\rd_data[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[8]_INST_0_i_4 
       (.I0(\FIFO_DATA_reg[7]_8 [8]),
        .I1(\FIFO_DATA_reg[6]_9 [8]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[5]_10 [8]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[4]_11 [8]),
        .O(\rd_data[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[8]_INST_0_i_5 
       (.I0(\FIFO_DATA_reg[11]_4 [8]),
        .I1(\FIFO_DATA_reg[10]_5 [8]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[9]_6 [8]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[8]_7 [8]),
        .O(\rd_data[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[8]_INST_0_i_6 
       (.I0(\FIFO_DATA_reg[15]_0 [8]),
        .I1(\FIFO_DATA_reg[14]_1 [8]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[13]_2 [8]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[12]_3 [8]),
        .O(\rd_data[8]_INST_0_i_6_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_1 rd_edge
       (.E(E),
        .\FSM_sequential_state_reg[0] (\FSM_sequential_state_reg[0] ),
        .\FSM_sequential_state_reg[3] (\FSM_sequential_state_reg[3] ),
        .\FSM_sequential_state_reg[3]_0 (\FSM_sequential_state_reg[3]_0 ),
        .\FSM_sequential_state_reg[3]_1 (\FSM_sequential_state_reg[3]_1 ),
        .axi_aclk(axi_aclk),
        .axi_arvalid(axi_arvalid),
        .in_delay_reg_0(in_delay_reg),
        .in_delay_reg_1(in_delay_reg_0),
        .p_0_in_0(p_0_in_0),
        .read_request(read_request));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_index[0]_i_1 
       (.I0(\rd_index_reg[4]_0 [0]),
        .O(\rd_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_index[1]_i_1 
       (.I0(\rd_index_reg[4]_0 [1]),
        .I1(\rd_index_reg[4]_0 [0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_index[2]_i_1 
       (.I0(\rd_index_reg[4]_0 [2]),
        .I1(\rd_index_reg[4]_0 [0]),
        .I2(\rd_index_reg[4]_0 [1]),
        .O(\rd_index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rd_index[3]_i_1 
       (.I0(\rd_index_reg[4]_0 [3]),
        .I1(\rd_index_reg[4]_0 [1]),
        .I2(\rd_index_reg[4]_0 [0]),
        .I3(\rd_index_reg[4]_0 [2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rd_index[4]_i_2 
       (.I0(\rd_index_reg[4]_0 [4]),
        .I1(\rd_index_reg[4]_0 [3]),
        .I2(\rd_index_reg[4]_0 [2]),
        .I3(\rd_index_reg[4]_0 [0]),
        .I4(\rd_index_reg[4]_0 [1]),
        .O(p_0_in__0[4]));
  FDRE \rd_index_reg[0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_1),
        .D(\rd_index[0]_i_1_n_0 ),
        .Q(\rd_index_reg[4]_0 [0]),
        .R(axi_aresetn_0));
  FDRE \rd_index_reg[1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_1),
        .D(p_0_in__0[1]),
        .Q(\rd_index_reg[4]_0 [1]),
        .R(axi_aresetn_0));
  FDRE \rd_index_reg[2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_1),
        .D(\rd_index[2]_i_1_n_0 ),
        .Q(\rd_index_reg[4]_0 [2]),
        .R(axi_aresetn_0));
  FDRE \rd_index_reg[3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_1),
        .D(p_0_in__0[3]),
        .Q(\rd_index_reg[4]_0 [3]),
        .R(axi_aresetn_0));
  FDRE \rd_index_reg[4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_1),
        .D(p_0_in__0[4]),
        .Q(\rd_index_reg[4]_0 [4]),
        .R(axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \watermark[0]_INST_0 
       (.I0(Q[0]),
        .I1(\rd_index_reg[4]_0 [0]),
        .O(watermark[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \watermark[1]_INST_0 
       (.I0(Q[0]),
        .I1(\rd_index_reg[4]_0 [0]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(Q[1]),
        .O(watermark[1]));
  LUT6 #(
    .INIT(64'h6696969966966696)) 
    \watermark[2]_INST_0 
       (.I0(\rd_index_reg[4]_0 [2]),
        .I1(Q[2]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\rd_index_reg[4]_0 [0]),
        .O(watermark[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \watermark[3]_INST_0 
       (.I0(\rd_index_reg[4]_0 [3]),
        .I1(Q[3]),
        .I2(\watermark[4]_INST_0_i_1_n_0 ),
        .O(watermark[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h96996696)) 
    \watermark[4]_INST_0 
       (.I0(\rd_index_reg[4]_0 [4]),
        .I1(Q[4]),
        .I2(\rd_index_reg[4]_0 [3]),
        .I3(Q[3]),
        .I4(\watermark[4]_INST_0_i_1_n_0 ),
        .O(watermark[4]));
  LUT6 #(
    .INIT(64'h2F02FFFF00002F02)) 
    \watermark[4]_INST_0_i_1 
       (.I0(\rd_index_reg[4]_0 [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\rd_index_reg[4]_0 [1]),
        .I4(Q[2]),
        .I5(\rd_index_reg[4]_0 [2]),
        .O(\watermark[4]_INST_0_i_1_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_2 wr_edge
       (.E(wr_edge_n_1),
        .Q(Q),
        .axi_aclk(axi_aclk),
        .axi_awvalid(axi_awvalid),
        .axi_wvalid(axi_wvalid),
        .in_delay_reg_0(in_delay_reg_1),
        .in_delay_reg_1(in_delay_reg_2),
        .officialData(officialData),
        .outReg_reg_0(wr_edge_n_2),
        .outReg_reg_1(wr_edge_n_3),
        .outReg_reg_10(wr_edge_n_12),
        .outReg_reg_100(wr_edge_n_102),
        .outReg_reg_101(wr_edge_n_103),
        .outReg_reg_102(wr_edge_n_104),
        .outReg_reg_103(wr_edge_n_105),
        .outReg_reg_104(wr_edge_n_106),
        .outReg_reg_105(wr_edge_n_107),
        .outReg_reg_106(wr_edge_n_108),
        .outReg_reg_107(wr_edge_n_109),
        .outReg_reg_108(wr_edge_n_110),
        .outReg_reg_109(wr_edge_n_111),
        .outReg_reg_11(wr_edge_n_13),
        .outReg_reg_110(wr_edge_n_112),
        .outReg_reg_111(wr_edge_n_113),
        .outReg_reg_112(wr_edge_n_114),
        .outReg_reg_113(wr_edge_n_115),
        .outReg_reg_114(wr_edge_n_116),
        .outReg_reg_115(wr_edge_n_117),
        .outReg_reg_116(wr_edge_n_118),
        .outReg_reg_117(wr_edge_n_119),
        .outReg_reg_118(wr_edge_n_120),
        .outReg_reg_119(wr_edge_n_121),
        .outReg_reg_12(wr_edge_n_14),
        .outReg_reg_120(wr_edge_n_122),
        .outReg_reg_121(wr_edge_n_123),
        .outReg_reg_122(wr_edge_n_124),
        .outReg_reg_123(wr_edge_n_125),
        .outReg_reg_124(wr_edge_n_126),
        .outReg_reg_125(wr_edge_n_127),
        .outReg_reg_126(wr_edge_n_128),
        .outReg_reg_127(wr_edge_n_129),
        .outReg_reg_128(wr_edge_n_130),
        .outReg_reg_129(wr_edge_n_131),
        .outReg_reg_13(wr_edge_n_15),
        .outReg_reg_130(wr_edge_n_132),
        .outReg_reg_131(wr_edge_n_133),
        .outReg_reg_132(wr_edge_n_134),
        .outReg_reg_133(wr_edge_n_135),
        .outReg_reg_134(wr_edge_n_136),
        .outReg_reg_135(wr_edge_n_137),
        .outReg_reg_136(wr_edge_n_138),
        .outReg_reg_137(wr_edge_n_139),
        .outReg_reg_138(wr_edge_n_140),
        .outReg_reg_139(wr_edge_n_141),
        .outReg_reg_14(wr_edge_n_16),
        .outReg_reg_140(wr_edge_n_142),
        .outReg_reg_141(wr_edge_n_143),
        .outReg_reg_142(wr_edge_n_144),
        .outReg_reg_143(wr_edge_n_145),
        .outReg_reg_144(wr_edge_n_146),
        .outReg_reg_145(wr_edge_n_147),
        .outReg_reg_146(wr_edge_n_148),
        .outReg_reg_147(wr_edge_n_149),
        .outReg_reg_148(wr_edge_n_150),
        .outReg_reg_149(wr_edge_n_151),
        .outReg_reg_15(wr_edge_n_17),
        .outReg_reg_150(wr_edge_n_152),
        .outReg_reg_151(wr_edge_n_153),
        .outReg_reg_152(wr_edge_n_154),
        .outReg_reg_153(wr_edge_n_155),
        .outReg_reg_154(wr_edge_n_156),
        .outReg_reg_155(wr_edge_n_157),
        .outReg_reg_156(wr_edge_n_158),
        .outReg_reg_157(wr_edge_n_159),
        .outReg_reg_158(wr_edge_n_160),
        .outReg_reg_159(wr_edge_n_161),
        .outReg_reg_16(wr_edge_n_18),
        .outReg_reg_17(wr_edge_n_19),
        .outReg_reg_18(wr_edge_n_20),
        .outReg_reg_19(wr_edge_n_21),
        .outReg_reg_2(wr_edge_n_4),
        .outReg_reg_20(wr_edge_n_22),
        .outReg_reg_21(wr_edge_n_23),
        .outReg_reg_22(wr_edge_n_24),
        .outReg_reg_23(wr_edge_n_25),
        .outReg_reg_24(wr_edge_n_26),
        .outReg_reg_25(wr_edge_n_27),
        .outReg_reg_26(wr_edge_n_28),
        .outReg_reg_27(wr_edge_n_29),
        .outReg_reg_28(wr_edge_n_30),
        .outReg_reg_29(wr_edge_n_31),
        .outReg_reg_3(wr_edge_n_5),
        .outReg_reg_30(wr_edge_n_32),
        .outReg_reg_31(wr_edge_n_33),
        .outReg_reg_32(wr_edge_n_34),
        .outReg_reg_33(wr_edge_n_35),
        .outReg_reg_34(wr_edge_n_36),
        .outReg_reg_35(wr_edge_n_37),
        .outReg_reg_36(wr_edge_n_38),
        .outReg_reg_37(wr_edge_n_39),
        .outReg_reg_38(wr_edge_n_40),
        .outReg_reg_39(wr_edge_n_41),
        .outReg_reg_4(wr_edge_n_6),
        .outReg_reg_40(wr_edge_n_42),
        .outReg_reg_41(wr_edge_n_43),
        .outReg_reg_42(wr_edge_n_44),
        .outReg_reg_43(wr_edge_n_45),
        .outReg_reg_44(wr_edge_n_46),
        .outReg_reg_45(wr_edge_n_47),
        .outReg_reg_46(wr_edge_n_48),
        .outReg_reg_47(wr_edge_n_49),
        .outReg_reg_48(wr_edge_n_50),
        .outReg_reg_49(wr_edge_n_51),
        .outReg_reg_5(wr_edge_n_7),
        .outReg_reg_50(wr_edge_n_52),
        .outReg_reg_51(wr_edge_n_53),
        .outReg_reg_52(wr_edge_n_54),
        .outReg_reg_53(wr_edge_n_55),
        .outReg_reg_54(wr_edge_n_56),
        .outReg_reg_55(wr_edge_n_57),
        .outReg_reg_56(wr_edge_n_58),
        .outReg_reg_57(wr_edge_n_59),
        .outReg_reg_58(wr_edge_n_60),
        .outReg_reg_59(wr_edge_n_61),
        .outReg_reg_6(wr_edge_n_8),
        .outReg_reg_60(wr_edge_n_62),
        .outReg_reg_61(wr_edge_n_63),
        .outReg_reg_62(wr_edge_n_64),
        .outReg_reg_63(wr_edge_n_65),
        .outReg_reg_64(wr_edge_n_66),
        .outReg_reg_65(wr_edge_n_67),
        .outReg_reg_66(wr_edge_n_68),
        .outReg_reg_67(wr_edge_n_69),
        .outReg_reg_68(wr_edge_n_70),
        .outReg_reg_69(wr_edge_n_71),
        .outReg_reg_7(wr_edge_n_9),
        .outReg_reg_70(wr_edge_n_72),
        .outReg_reg_71(wr_edge_n_73),
        .outReg_reg_72(wr_edge_n_74),
        .outReg_reg_73(wr_edge_n_75),
        .outReg_reg_74(wr_edge_n_76),
        .outReg_reg_75(wr_edge_n_77),
        .outReg_reg_76(wr_edge_n_78),
        .outReg_reg_77(wr_edge_n_79),
        .outReg_reg_78(wr_edge_n_80),
        .outReg_reg_79(wr_edge_n_81),
        .outReg_reg_8(wr_edge_n_10),
        .outReg_reg_80(wr_edge_n_82),
        .outReg_reg_81(wr_edge_n_83),
        .outReg_reg_82(wr_edge_n_84),
        .outReg_reg_83(wr_edge_n_85),
        .outReg_reg_84(wr_edge_n_86),
        .outReg_reg_85(wr_edge_n_87),
        .outReg_reg_86(wr_edge_n_88),
        .outReg_reg_87(wr_edge_n_89),
        .outReg_reg_88(wr_edge_n_90),
        .outReg_reg_89(wr_edge_n_91),
        .outReg_reg_9(wr_edge_n_11),
        .outReg_reg_90(wr_edge_n_92),
        .outReg_reg_91(wr_edge_n_93),
        .outReg_reg_92(wr_edge_n_94),
        .outReg_reg_93(wr_edge_n_95),
        .outReg_reg_94(wr_edge_n_96),
        .outReg_reg_95(wr_edge_n_97),
        .outReg_reg_96(wr_edge_n_98),
        .outReg_reg_97(wr_edge_n_99),
        .outReg_reg_98(wr_edge_n_100),
        .outReg_reg_99(wr_edge_n_101),
        .p_15_in(p_15_in),
        .\rd_index_reg[0] (empty_INST_0_i_1_n_0),
        .\rd_index_reg[0]_0 (\rd_index_reg[4]_0 [4]),
        .read_request(read_request),
        .waddr(waddr),
        .write_request(write_request));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_index[0]_i_1 
       (.I0(Q[0]),
        .O(\wr_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_index[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_index[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wr_index[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(p_0_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_index[4]_i_1 
       (.I0(axi_aresetn),
        .O(axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wr_index[4]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(p_0_in[4]));
  FDRE \wr_index_reg[0] 
       (.C(axi_aclk),
        .CE(write_request),
        .D(\wr_index[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(axi_aresetn_0));
  FDRE \wr_index_reg[1] 
       (.C(axi_aclk),
        .CE(write_request),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(axi_aresetn_0));
  FDRE \wr_index_reg[2] 
       (.C(axi_aclk),
        .CE(write_request),
        .D(p_0_in[2]),
        .Q(Q[2]),
        .R(axi_aresetn_0));
  FDRE \wr_index_reg[3] 
       (.C(axi_aclk),
        .CE(write_request),
        .D(p_0_in[3]),
        .Q(Q[3]),
        .R(axi_aresetn_0));
  FDRE \wr_index_reg[4] 
       (.C(axi_aclk),
        .CE(write_request),
        .D(p_0_in[4]),
        .Q(Q[4]),
        .R(axi_aresetn_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial
   (outReg_reg,
    axi_wready_reg,
    axi_awready_reg,
    axi_arready_reg,
    axi_bvalid,
    tx_out,
    axi_rvalid_reg,
    Q,
    \wr_index_reg[4] ,
    \rd_index_reg[4] ,
    baudClockOut,
    \rd_index_reg[3] ,
    \rd_index_reg[3]_0 ,
    \rd_index_reg[3]_1 ,
    D,
    watermark,
    full,
    empty,
    axi_rdata,
    axi_aclk,
    axi_wvalid,
    axi_awvalid,
    axi_bready,
    axi_aresetn,
    axi_arvalid,
    axi_rready,
    axi_wdata,
    axi_araddr,
    axi_awaddr,
    axi_wstrb);
  output outReg_reg;
  output axi_wready_reg;
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_bvalid;
  output tx_out;
  output axi_rvalid_reg;
  output [1:0]Q;
  output [4:0]\wr_index_reg[4] ;
  output [4:0]\rd_index_reg[4] ;
  output baudClockOut;
  output \rd_index_reg[3] ;
  output \rd_index_reg[3]_0 ;
  output \rd_index_reg[3]_1 ;
  output [5:0]D;
  output [4:0]watermark;
  output full;
  output empty;
  output [31:0]axi_rdata;
  input axi_aclk;
  input axi_wvalid;
  input axi_awvalid;
  input axi_bready;
  input axi_aresetn;
  input axi_arvalid;
  input axi_rready;
  input [31:0]axi_wdata;
  input [1:0]axi_araddr;
  input [1:0]axi_awaddr;
  input [3:0]axi_wstrb;

  wire [5:0]D;
  wire [1:0]Q;
  wire aw_en_i_1_n_0;
  wire axi_aclk;
  wire [1:0]axi_araddr;
  wire axi_aresetn;
  wire axi_arready_reg;
  wire axi_arvalid;
  wire [1:0]axi_awaddr;
  wire axi_awready_reg;
  wire axi_awvalid;
  wire axi_bready;
  wire axi_bvalid;
  wire axi_bvalid_i_1_n_0;
  wire [31:0]axi_rdata;
  wire axi_rready;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg;
  wire [31:0]axi_wdata;
  wire axi_wready_reg;
  wire [3:0]axi_wstrb;
  wire axi_wvalid;
  wire baudClockOut;
  wire \edge_detect_2/in_delay ;
  wire empty;
  wire full;
  wire keepCount0;
  wire outReg_i_1_n_0;
  wire outReg_reg;
  wire outSignal_i_1_n_0;
  wire \rd_index_reg[3] ;
  wire \rd_index_reg[3]_0 ;
  wire \rd_index_reg[3]_1 ;
  wire [4:0]\rd_index_reg[4] ;
  wire serial_v1_0_AXI_inst_n_0;
  wire serial_v1_0_AXI_inst_n_10;
  wire serial_v1_0_AXI_inst_n_3;
  wire serial_v1_0_AXI_inst_n_30;
  wire serial_v1_0_AXI_inst_n_47;
  wire shiftOut_i_1_n_0;
  wire sixteenXslower_i_1_n_0;
  wire ticking;
  wire [3:0]ticks2;
  wire tx_out;
  wire [4:0]watermark;
  wire [4:0]\wr_index_reg[4] ;

  LUT6 #(
    .INIT(64'hDFFF8AAA8AAA8AAA)) 
    aw_en_i_1
       (.I0(serial_v1_0_AXI_inst_n_10),
        .I1(axi_awready_reg),
        .I2(axi_awvalid),
        .I3(axi_wvalid),
        .I4(axi_bvalid),
        .I5(axi_bready),
        .O(aw_en_i_1_n_0));
  LUT6 #(
    .INIT(64'h00008000FFFF8000)) 
    axi_bvalid_i_1
       (.I0(axi_wvalid),
        .I1(axi_awvalid),
        .I2(axi_wready_reg),
        .I3(axi_awready_reg),
        .I4(axi_bvalid),
        .I5(axi_bready),
        .O(axi_bvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg),
        .I1(axi_arvalid),
        .I2(axi_rvalid_reg),
        .I3(axi_rready),
        .O(axi_rvalid_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    outReg_i_1
       (.I0(serial_v1_0_AXI_inst_n_3),
        .I1(\edge_detect_2/in_delay ),
        .O(outReg_i_1_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    outSignal_i_1
       (.I0(Q[0]),
        .I1(keepCount0),
        .I2(serial_v1_0_AXI_inst_n_0),
        .O(outSignal_i_1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI serial_v1_0_AXI_inst
       (.CO(keepCount0),
        .D({D[5:2],\rd_index_reg[3] ,\rd_index_reg[3]_1 ,\rd_index_reg[3]_0 ,D[1:0]}),
        .E(serial_v1_0_AXI_inst_n_30),
        .Q(\wr_index_reg[4] ),
        .aw_en_reg_0(serial_v1_0_AXI_inst_n_10),
        .aw_en_reg_1(aw_en_i_1_n_0),
        .axi_aclk(axi_aclk),
        .axi_araddr(axi_araddr),
        .axi_aresetn(axi_aresetn),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_arvalid(axi_arvalid),
        .axi_awaddr(axi_awaddr),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_awvalid(axi_awvalid),
        .axi_bvalid(axi_bvalid),
        .axi_bvalid_reg_0(axi_bvalid_i_1_n_0),
        .axi_rdata(axi_rdata),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_rvalid_reg_1(axi_rvalid_i_1_n_0),
        .axi_wdata(axi_wdata),
        .axi_wready_reg_0(axi_wready_reg),
        .axi_wstrb(axi_wstrb),
        .axi_wvalid(axi_wvalid),
        .baudClockOut(baudClockOut),
        .empty(empty),
        .full(full),
        .in_delay(\edge_detect_2/in_delay ),
        .\officialControl_reg[5]_0 (Q),
        .outReg_reg(outReg_reg),
        .outReg_reg_0(serial_v1_0_AXI_inst_n_47),
        .outReg_reg_1(outReg_i_1_n_0),
        .outSignal_reg_0(serial_v1_0_AXI_inst_n_0),
        .outSignal_reg_1(outSignal_i_1_n_0),
        .\rd_index_reg[4] (\rd_index_reg[4] ),
        .shiftOut_reg_0(shiftOut_i_1_n_0),
        .sixteenXslower_reg_0(serial_v1_0_AXI_inst_n_3),
        .sixteenXslower_reg_1(sixteenXslower_i_1_n_0),
        .ticking(ticking),
        .\ticks2_reg[3]_0 (ticks2),
        .tx_out(tx_out),
        .watermark(watermark));
  LUT4 #(
    .INIT(16'hBF80)) 
    shiftOut_i_1
       (.I0(serial_v1_0_AXI_inst_n_47),
        .I1(serial_v1_0_AXI_inst_n_30),
        .I2(axi_aresetn),
        .I3(tx_out),
        .O(shiftOut_i_1_n_0));
  LUT6 #(
    .INIT(64'h30000000AAAAAAAA)) 
    sixteenXslower_i_1
       (.I0(serial_v1_0_AXI_inst_n_3),
        .I1(ticks2[0]),
        .I2(ticks2[2]),
        .I3(ticks2[3]),
        .I4(ticks2[1]),
        .I5(ticking),
        .O(sixteenXslower_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI
   (outSignal_reg_0,
    ticking,
    in_delay,
    sixteenXslower_reg_0,
    outReg_reg,
    axi_wready_reg_0,
    axi_awready_reg_0,
    axi_arready_reg_0,
    CO,
    axi_bvalid,
    aw_en_reg_0,
    tx_out,
    axi_rvalid_reg_0,
    \ticks2_reg[3]_0 ,
    Q,
    \rd_index_reg[4] ,
    \officialControl_reg[5]_0 ,
    baudClockOut,
    E,
    D,
    watermark,
    full,
    empty,
    outReg_reg_0,
    axi_rdata,
    axi_aclk,
    outReg_reg_1,
    outSignal_reg_1,
    sixteenXslower_reg_1,
    axi_bvalid_reg_0,
    aw_en_reg_1,
    shiftOut_reg_0,
    axi_rvalid_reg_1,
    axi_arvalid,
    axi_aresetn,
    axi_wdata,
    axi_araddr,
    axi_awaddr,
    axi_wvalid,
    axi_awvalid,
    axi_wstrb);
  output outSignal_reg_0;
  output ticking;
  output in_delay;
  output sixteenXslower_reg_0;
  output outReg_reg;
  output axi_wready_reg_0;
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output [0:0]CO;
  output axi_bvalid;
  output aw_en_reg_0;
  output tx_out;
  output axi_rvalid_reg_0;
  output [3:0]\ticks2_reg[3]_0 ;
  output [4:0]Q;
  output [4:0]\rd_index_reg[4] ;
  output [1:0]\officialControl_reg[5]_0 ;
  output baudClockOut;
  output [0:0]E;
  output [8:0]D;
  output [4:0]watermark;
  output full;
  output empty;
  output outReg_reg_0;
  output [31:0]axi_rdata;
  input axi_aclk;
  input outReg_reg_1;
  input outSignal_reg_1;
  input sixteenXslower_reg_1;
  input axi_bvalid_reg_0;
  input aw_en_reg_1;
  input shiftOut_reg_0;
  input axi_rvalid_reg_1;
  input axi_arvalid;
  input axi_aresetn;
  input [31:0]axi_wdata;
  input [1:0]axi_araddr;
  input [1:0]axi_awaddr;
  input axi_wvalid;
  input axi_awvalid;
  input [3:0]axi_wstrb;

  wire [0:0]CO;
  wire [8:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire [3:2]PARITY_CONTROL;
  wire [4:0]Q;
  wire aw_en_reg_0;
  wire aw_en_reg_1;
  wire axi_aclk;
  wire [1:0]axi_araddr;
  wire axi_aresetn;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire axi_arvalid;
  wire [1:0]axi_awaddr;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_awvalid;
  wire axi_bvalid;
  wire axi_bvalid_reg_0;
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
  wire axi_rvalid_reg_0;
  wire axi_rvalid_reg_1;
  wire [31:0]axi_wdata;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire [3:0]axi_wstrb;
  wire axi_wvalid;
  wire baudClockOut;
  wire empty;
  wire full;
  wire in_delay;
  wire keepCount0_carry__0_i_1_n_0;
  wire keepCount0_carry__0_i_2_n_0;
  wire keepCount0_carry__0_i_3_n_0;
  wire keepCount0_carry__0_i_4_n_0;
  wire keepCount0_carry__0_n_0;
  wire keepCount0_carry__0_n_1;
  wire keepCount0_carry__0_n_2;
  wire keepCount0_carry__0_n_3;
  wire keepCount0_carry__1_i_1_n_0;
  wire keepCount0_carry__1_i_2_n_0;
  wire keepCount0_carry__1_i_3_n_0;
  wire keepCount0_carry__1_i_4_n_0;
  wire keepCount0_carry__1_n_0;
  wire keepCount0_carry__1_n_1;
  wire keepCount0_carry__1_n_2;
  wire keepCount0_carry__1_n_3;
  wire keepCount0_carry__2_i_1_n_0;
  wire keepCount0_carry__2_i_2_n_0;
  wire keepCount0_carry__2_i_3_n_0;
  wire keepCount0_carry__2_i_4_n_0;
  wire keepCount0_carry__2_n_0;
  wire keepCount0_carry__2_n_1;
  wire keepCount0_carry__2_n_2;
  wire keepCount0_carry__2_n_3;
  wire keepCount0_carry__3_i_1_n_0;
  wire keepCount0_carry_i_1_n_0;
  wire keepCount0_carry_i_2_n_0;
  wire keepCount0_carry_i_3_n_0;
  wire keepCount0_carry_i_4_n_0;
  wire keepCount0_carry_n_0;
  wire keepCount0_carry_n_1;
  wire keepCount0_carry_n_2;
  wire keepCount0_carry_n_3;
  wire \keepCount[0]_i_3_n_0 ;
  wire \keepCount[0]_i_4_n_0 ;
  wire \keepCount[0]_i_5_n_0 ;
  wire \keepCount[0]_i_6_n_0 ;
  wire \keepCount[12]_i_2_n_0 ;
  wire \keepCount[12]_i_3_n_0 ;
  wire \keepCount[12]_i_4_n_0 ;
  wire \keepCount[12]_i_5_n_0 ;
  wire \keepCount[16]_i_2_n_0 ;
  wire \keepCount[16]_i_3_n_0 ;
  wire \keepCount[16]_i_4_n_0 ;
  wire \keepCount[16]_i_5_n_0 ;
  wire \keepCount[20]_i_2_n_0 ;
  wire \keepCount[20]_i_3_n_0 ;
  wire \keepCount[20]_i_4_n_0 ;
  wire \keepCount[20]_i_5_n_0 ;
  wire \keepCount[24]_i_2_n_0 ;
  wire \keepCount[24]_i_3_n_0 ;
  wire \keepCount[24]_i_4_n_0 ;
  wire \keepCount[24]_i_5_n_0 ;
  wire \keepCount[28]_i_2_n_0 ;
  wire \keepCount[28]_i_3_n_0 ;
  wire \keepCount[28]_i_4_n_0 ;
  wire \keepCount[4]_i_2_n_0 ;
  wire \keepCount[4]_i_3_n_0 ;
  wire \keepCount[4]_i_4_n_0 ;
  wire \keepCount[4]_i_5_n_0 ;
  wire \keepCount[8]_i_2_n_0 ;
  wire \keepCount[8]_i_3_n_0 ;
  wire \keepCount[8]_i_4_n_0 ;
  wire \keepCount[8]_i_5_n_0 ;
  wire \keepCount_reg[0]_i_2_n_0 ;
  wire \keepCount_reg[0]_i_2_n_1 ;
  wire \keepCount_reg[0]_i_2_n_2 ;
  wire \keepCount_reg[0]_i_2_n_3 ;
  wire \keepCount_reg[0]_i_2_n_4 ;
  wire \keepCount_reg[0]_i_2_n_5 ;
  wire \keepCount_reg[0]_i_2_n_6 ;
  wire \keepCount_reg[0]_i_2_n_7 ;
  wire \keepCount_reg[12]_i_1_n_0 ;
  wire \keepCount_reg[12]_i_1_n_1 ;
  wire \keepCount_reg[12]_i_1_n_2 ;
  wire \keepCount_reg[12]_i_1_n_3 ;
  wire \keepCount_reg[12]_i_1_n_4 ;
  wire \keepCount_reg[12]_i_1_n_5 ;
  wire \keepCount_reg[12]_i_1_n_6 ;
  wire \keepCount_reg[12]_i_1_n_7 ;
  wire \keepCount_reg[16]_i_1_n_0 ;
  wire \keepCount_reg[16]_i_1_n_1 ;
  wire \keepCount_reg[16]_i_1_n_2 ;
  wire \keepCount_reg[16]_i_1_n_3 ;
  wire \keepCount_reg[16]_i_1_n_4 ;
  wire \keepCount_reg[16]_i_1_n_5 ;
  wire \keepCount_reg[16]_i_1_n_6 ;
  wire \keepCount_reg[16]_i_1_n_7 ;
  wire \keepCount_reg[20]_i_1_n_0 ;
  wire \keepCount_reg[20]_i_1_n_1 ;
  wire \keepCount_reg[20]_i_1_n_2 ;
  wire \keepCount_reg[20]_i_1_n_3 ;
  wire \keepCount_reg[20]_i_1_n_4 ;
  wire \keepCount_reg[20]_i_1_n_5 ;
  wire \keepCount_reg[20]_i_1_n_6 ;
  wire \keepCount_reg[20]_i_1_n_7 ;
  wire \keepCount_reg[24]_i_1_n_0 ;
  wire \keepCount_reg[24]_i_1_n_1 ;
  wire \keepCount_reg[24]_i_1_n_2 ;
  wire \keepCount_reg[24]_i_1_n_3 ;
  wire \keepCount_reg[24]_i_1_n_4 ;
  wire \keepCount_reg[24]_i_1_n_5 ;
  wire \keepCount_reg[24]_i_1_n_6 ;
  wire \keepCount_reg[24]_i_1_n_7 ;
  wire \keepCount_reg[28]_i_1_n_0 ;
  wire \keepCount_reg[28]_i_1_n_1 ;
  wire \keepCount_reg[28]_i_1_n_2 ;
  wire \keepCount_reg[28]_i_1_n_3 ;
  wire \keepCount_reg[28]_i_1_n_4 ;
  wire \keepCount_reg[28]_i_1_n_5 ;
  wire \keepCount_reg[28]_i_1_n_6 ;
  wire \keepCount_reg[28]_i_1_n_7 ;
  wire \keepCount_reg[32]_i_1_n_0 ;
  wire \keepCount_reg[32]_i_1_n_1 ;
  wire \keepCount_reg[32]_i_1_n_2 ;
  wire \keepCount_reg[32]_i_1_n_3 ;
  wire \keepCount_reg[32]_i_1_n_4 ;
  wire \keepCount_reg[32]_i_1_n_5 ;
  wire \keepCount_reg[32]_i_1_n_6 ;
  wire \keepCount_reg[32]_i_1_n_7 ;
  wire \keepCount_reg[36]_i_1_n_0 ;
  wire \keepCount_reg[36]_i_1_n_1 ;
  wire \keepCount_reg[36]_i_1_n_2 ;
  wire \keepCount_reg[36]_i_1_n_3 ;
  wire \keepCount_reg[36]_i_1_n_4 ;
  wire \keepCount_reg[36]_i_1_n_5 ;
  wire \keepCount_reg[36]_i_1_n_6 ;
  wire \keepCount_reg[36]_i_1_n_7 ;
  wire \keepCount_reg[40]_i_1_n_0 ;
  wire \keepCount_reg[40]_i_1_n_1 ;
  wire \keepCount_reg[40]_i_1_n_2 ;
  wire \keepCount_reg[40]_i_1_n_3 ;
  wire \keepCount_reg[40]_i_1_n_4 ;
  wire \keepCount_reg[40]_i_1_n_5 ;
  wire \keepCount_reg[40]_i_1_n_6 ;
  wire \keepCount_reg[40]_i_1_n_7 ;
  wire \keepCount_reg[44]_i_1_n_0 ;
  wire \keepCount_reg[44]_i_1_n_1 ;
  wire \keepCount_reg[44]_i_1_n_2 ;
  wire \keepCount_reg[44]_i_1_n_3 ;
  wire \keepCount_reg[44]_i_1_n_4 ;
  wire \keepCount_reg[44]_i_1_n_5 ;
  wire \keepCount_reg[44]_i_1_n_6 ;
  wire \keepCount_reg[44]_i_1_n_7 ;
  wire \keepCount_reg[48]_i_1_n_2 ;
  wire \keepCount_reg[48]_i_1_n_3 ;
  wire \keepCount_reg[48]_i_1_n_5 ;
  wire \keepCount_reg[48]_i_1_n_6 ;
  wire \keepCount_reg[48]_i_1_n_7 ;
  wire \keepCount_reg[4]_i_1_n_0 ;
  wire \keepCount_reg[4]_i_1_n_1 ;
  wire \keepCount_reg[4]_i_1_n_2 ;
  wire \keepCount_reg[4]_i_1_n_3 ;
  wire \keepCount_reg[4]_i_1_n_4 ;
  wire \keepCount_reg[4]_i_1_n_5 ;
  wire \keepCount_reg[4]_i_1_n_6 ;
  wire \keepCount_reg[4]_i_1_n_7 ;
  wire \keepCount_reg[8]_i_1_n_0 ;
  wire \keepCount_reg[8]_i_1_n_1 ;
  wire \keepCount_reg[8]_i_1_n_2 ;
  wire \keepCount_reg[8]_i_1_n_3 ;
  wire \keepCount_reg[8]_i_1_n_4 ;
  wire \keepCount_reg[8]_i_1_n_5 ;
  wire \keepCount_reg[8]_i_1_n_6 ;
  wire \keepCount_reg[8]_i_1_n_7 ;
  wire \keepCount_reg_n_0_[0] ;
  wire \keepCount_reg_n_0_[1] ;
  wire \keepCount_reg_n_0_[2] ;
  wire \keepCount_reg_n_0_[3] ;
  wire \keepCount_reg_n_0_[4] ;
  wire \keepCount_reg_n_0_[5] ;
  wire \keepCount_reg_n_0_[6] ;
  wire \keepCount_reg_n_0_[7] ;
  wire latchData0;
  wire \latchData_reg_n_0_[0] ;
  wire \latchData_reg_n_0_[7] ;
  wire \latchData_reg_n_0_[8] ;
  wire my9x16Fifo_inst_n_12;
  wire my9x16Fifo_inst_n_22;
  wire my9x16Fifo_inst_n_23;
  wire my9x16Fifo_inst_n_24;
  wire my9x16Fifo_inst_n_25;
  wire my9x16Fifo_inst_n_26;
  wire my9x16Fifo_inst_n_27;
  wire my9x16Fifo_inst_n_28;
  wire my9x16Fifo_inst_n_29;
  wire my9x16Fifo_inst_n_30;
  wire my9x16Fifo_inst_n_38;
  wire myParityBit;
  wire myParityBit__0;
  wire myParityBit_reg_i_3_n_0;
  wire [31:0]officialBaudRate;
  wire \officialBaudRate[15]_i_1_n_0 ;
  wire \officialBaudRate[23]_i_1_n_0 ;
  wire \officialBaudRate[31]_i_1_n_0 ;
  wire \officialBaudRate[7]_i_1_n_0 ;
  wire [1:0]\officialControl_reg[5]_0 ;
  wire \officialControl_reg_n_0_[0] ;
  wire \officialControl_reg_n_0_[10] ;
  wire \officialControl_reg_n_0_[11] ;
  wire \officialControl_reg_n_0_[12] ;
  wire \officialControl_reg_n_0_[13] ;
  wire \officialControl_reg_n_0_[14] ;
  wire \officialControl_reg_n_0_[15] ;
  wire \officialControl_reg_n_0_[16] ;
  wire \officialControl_reg_n_0_[17] ;
  wire \officialControl_reg_n_0_[18] ;
  wire \officialControl_reg_n_0_[19] ;
  wire \officialControl_reg_n_0_[1] ;
  wire \officialControl_reg_n_0_[20] ;
  wire \officialControl_reg_n_0_[21] ;
  wire \officialControl_reg_n_0_[22] ;
  wire \officialControl_reg_n_0_[23] ;
  wire \officialControl_reg_n_0_[24] ;
  wire \officialControl_reg_n_0_[25] ;
  wire \officialControl_reg_n_0_[26] ;
  wire \officialControl_reg_n_0_[27] ;
  wire \officialControl_reg_n_0_[28] ;
  wire \officialControl_reg_n_0_[29] ;
  wire \officialControl_reg_n_0_[30] ;
  wire \officialControl_reg_n_0_[31] ;
  wire \officialControl_reg_n_0_[6] ;
  wire \officialControl_reg_n_0_[7] ;
  wire \officialControl_reg_n_0_[8] ;
  wire \officialControl_reg_n_0_[9] ;
  wire [8:0]officialData;
  wire \officialData[7]_i_1_n_0 ;
  wire \officialData[8]_i_1_n_0 ;
  wire [29:29]officialStatus;
  wire \officialStatus[15]_i_1_n_0 ;
  wire \officialStatus[23]_i_1_n_0 ;
  wire \officialStatus[31]_i_1_n_0 ;
  wire \officialStatus[7]_i_1_n_0 ;
  wire [31:0]officialStatus__0;
  wire outReg_reg;
  wire outReg_reg_0;
  wire outReg_reg_1;
  wire outSignal;
  wire outSignal_reg_0;
  wire outSignal_reg_1;
  wire [1:0]p_0_in_0;
  wire [42:0]p_0_in__0_1;
  wire p_13_in;
  wire p_15_in;
  wire [31:5]p_1_in__0;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire \raddr[2]_i_1_n_0 ;
  wire \raddr[3]_i_1_n_0 ;
  wire [4:0]\rd_index_reg[4] ;
  wire shiftOut_i_3_n_0;
  wire shiftOut_i_4_n_0;
  wire shiftOut_reg_0;
  wire sixteenXslower_reg_0;
  wire sixteenXslower_reg_1;
  wire [3:0]state__0;
  wire [3:0]state__1;
  wire ticking;
  wire \ticks2[1]_i_1_n_0 ;
  wire \ticks2[2]_i_1_n_0 ;
  wire \ticks2[3]_i_1_n_0 ;
  wire ticks2_n_0;
  wire [3:0]\ticks2_reg[3]_0 ;
  wire \ticks[0]_i_2_n_0 ;
  wire [50:0]ticks_reg;
  wire \ticks_reg[0]_i_1_n_0 ;
  wire \ticks_reg[0]_i_1_n_1 ;
  wire \ticks_reg[0]_i_1_n_2 ;
  wire \ticks_reg[0]_i_1_n_3 ;
  wire \ticks_reg[0]_i_1_n_4 ;
  wire \ticks_reg[0]_i_1_n_5 ;
  wire \ticks_reg[0]_i_1_n_6 ;
  wire \ticks_reg[0]_i_1_n_7 ;
  wire \ticks_reg[12]_i_1_n_0 ;
  wire \ticks_reg[12]_i_1_n_1 ;
  wire \ticks_reg[12]_i_1_n_2 ;
  wire \ticks_reg[12]_i_1_n_3 ;
  wire \ticks_reg[12]_i_1_n_4 ;
  wire \ticks_reg[12]_i_1_n_5 ;
  wire \ticks_reg[12]_i_1_n_6 ;
  wire \ticks_reg[12]_i_1_n_7 ;
  wire \ticks_reg[16]_i_1_n_0 ;
  wire \ticks_reg[16]_i_1_n_1 ;
  wire \ticks_reg[16]_i_1_n_2 ;
  wire \ticks_reg[16]_i_1_n_3 ;
  wire \ticks_reg[16]_i_1_n_4 ;
  wire \ticks_reg[16]_i_1_n_5 ;
  wire \ticks_reg[16]_i_1_n_6 ;
  wire \ticks_reg[16]_i_1_n_7 ;
  wire \ticks_reg[20]_i_1_n_0 ;
  wire \ticks_reg[20]_i_1_n_1 ;
  wire \ticks_reg[20]_i_1_n_2 ;
  wire \ticks_reg[20]_i_1_n_3 ;
  wire \ticks_reg[20]_i_1_n_4 ;
  wire \ticks_reg[20]_i_1_n_5 ;
  wire \ticks_reg[20]_i_1_n_6 ;
  wire \ticks_reg[20]_i_1_n_7 ;
  wire \ticks_reg[24]_i_1_n_0 ;
  wire \ticks_reg[24]_i_1_n_1 ;
  wire \ticks_reg[24]_i_1_n_2 ;
  wire \ticks_reg[24]_i_1_n_3 ;
  wire \ticks_reg[24]_i_1_n_4 ;
  wire \ticks_reg[24]_i_1_n_5 ;
  wire \ticks_reg[24]_i_1_n_6 ;
  wire \ticks_reg[24]_i_1_n_7 ;
  wire \ticks_reg[28]_i_1_n_0 ;
  wire \ticks_reg[28]_i_1_n_1 ;
  wire \ticks_reg[28]_i_1_n_2 ;
  wire \ticks_reg[28]_i_1_n_3 ;
  wire \ticks_reg[28]_i_1_n_4 ;
  wire \ticks_reg[28]_i_1_n_5 ;
  wire \ticks_reg[28]_i_1_n_6 ;
  wire \ticks_reg[28]_i_1_n_7 ;
  wire \ticks_reg[32]_i_1_n_0 ;
  wire \ticks_reg[32]_i_1_n_1 ;
  wire \ticks_reg[32]_i_1_n_2 ;
  wire \ticks_reg[32]_i_1_n_3 ;
  wire \ticks_reg[32]_i_1_n_4 ;
  wire \ticks_reg[32]_i_1_n_5 ;
  wire \ticks_reg[32]_i_1_n_6 ;
  wire \ticks_reg[32]_i_1_n_7 ;
  wire \ticks_reg[36]_i_1_n_0 ;
  wire \ticks_reg[36]_i_1_n_1 ;
  wire \ticks_reg[36]_i_1_n_2 ;
  wire \ticks_reg[36]_i_1_n_3 ;
  wire \ticks_reg[36]_i_1_n_4 ;
  wire \ticks_reg[36]_i_1_n_5 ;
  wire \ticks_reg[36]_i_1_n_6 ;
  wire \ticks_reg[36]_i_1_n_7 ;
  wire \ticks_reg[40]_i_1_n_0 ;
  wire \ticks_reg[40]_i_1_n_1 ;
  wire \ticks_reg[40]_i_1_n_2 ;
  wire \ticks_reg[40]_i_1_n_3 ;
  wire \ticks_reg[40]_i_1_n_4 ;
  wire \ticks_reg[40]_i_1_n_5 ;
  wire \ticks_reg[40]_i_1_n_6 ;
  wire \ticks_reg[40]_i_1_n_7 ;
  wire \ticks_reg[44]_i_1_n_0 ;
  wire \ticks_reg[44]_i_1_n_1 ;
  wire \ticks_reg[44]_i_1_n_2 ;
  wire \ticks_reg[44]_i_1_n_3 ;
  wire \ticks_reg[44]_i_1_n_4 ;
  wire \ticks_reg[44]_i_1_n_5 ;
  wire \ticks_reg[44]_i_1_n_6 ;
  wire \ticks_reg[44]_i_1_n_7 ;
  wire \ticks_reg[48]_i_1_n_2 ;
  wire \ticks_reg[48]_i_1_n_3 ;
  wire \ticks_reg[48]_i_1_n_5 ;
  wire \ticks_reg[48]_i_1_n_6 ;
  wire \ticks_reg[48]_i_1_n_7 ;
  wire \ticks_reg[4]_i_1_n_0 ;
  wire \ticks_reg[4]_i_1_n_1 ;
  wire \ticks_reg[4]_i_1_n_2 ;
  wire \ticks_reg[4]_i_1_n_3 ;
  wire \ticks_reg[4]_i_1_n_4 ;
  wire \ticks_reg[4]_i_1_n_5 ;
  wire \ticks_reg[4]_i_1_n_6 ;
  wire \ticks_reg[4]_i_1_n_7 ;
  wire \ticks_reg[8]_i_1_n_0 ;
  wire \ticks_reg[8]_i_1_n_1 ;
  wire \ticks_reg[8]_i_1_n_2 ;
  wire \ticks_reg[8]_i_1_n_3 ;
  wire \ticks_reg[8]_i_1_n_4 ;
  wire \ticks_reg[8]_i_1_n_5 ;
  wire \ticks_reg[8]_i_1_n_6 ;
  wire \ticks_reg[8]_i_1_n_7 ;
  wire tx_out;
  wire [3:2]waddr;
  wire \waddr[2]_i_1_n_0 ;
  wire \waddr[3]_i_1_n_0 ;
  wire [4:0]watermark;
  wire [3:0]NLW_keepCount0_carry_O_UNCONNECTED;
  wire [3:0]NLW_keepCount0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_keepCount0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_keepCount0_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_keepCount0_carry__3_CO_UNCONNECTED;
  wire [3:0]NLW_keepCount0_carry__3_O_UNCONNECTED;
  wire [3:2]\NLW_keepCount_reg[48]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_keepCount_reg[48]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_ticks_reg[48]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_ticks_reg[48]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF000000FD)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\officialControl_reg_n_0_[1] ),
        .I2(\officialControl_reg_n_0_[0] ),
        .I3(state__0[3]),
        .I4(state__0[0]),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(state__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0FF8FFF)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(PARITY_CONTROL[3]),
        .I1(PARITY_CONTROL[2]),
        .I2(\officialControl_reg_n_0_[0] ),
        .I3(\officialControl_reg_n_0_[1] ),
        .I4(\FSM_sequential_state[2]_i_4_n_0 ),
        .I5(\FSM_sequential_state[1]_i_4_n_0 ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBAAABAABBA)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state__0[3]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(\FSM_sequential_state[1]_i_3_n_0 ),
        .O(state__1[1]));
  LUT6 #(
    .INIT(64'h0014000054555555)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\FSM_sequential_state[1]_i_4_n_0 ),
        .I1(PARITY_CONTROL[3]),
        .I2(PARITY_CONTROL[2]),
        .I3(\officialControl_reg_n_0_[0] ),
        .I4(\officialControl_reg_n_0_[1] ),
        .I5(\FSM_sequential_state[2]_i_4_n_0 ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F060F000F00060)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(PARITY_CONTROL[3]),
        .I1(PARITY_CONTROL[2]),
        .I2(state__0[2]),
        .I3(state__0[0]),
        .I4(\officialControl_reg_n_0_[1] ),
        .I5(\officialControl_reg_n_0_[0] ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[3]),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0303744433337444)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state__0[3]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(\FSM_sequential_state[2]_i_3_n_0 ),
        .O(state__1[2]));
  LUT6 #(
    .INIT(64'h5155555555555115)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state__0[1]),
        .I1(\officialControl_reg_n_0_[1] ),
        .I2(\officialControl_reg_n_0_[0] ),
        .I3(\FSM_sequential_state[2]_i_4_n_0 ),
        .I4(PARITY_CONTROL[3]),
        .I5(PARITY_CONTROL[2]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hF060F0F6)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(PARITY_CONTROL[3]),
        .I1(PARITY_CONTROL[2]),
        .I2(state__0[0]),
        .I3(\officialControl_reg_n_0_[1] ),
        .I4(\officialControl_reg_n_0_[0] ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFAB000000)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(state__0[0]),
        .I1(\officialControl_reg_n_0_[1] ),
        .I2(\officialControl_reg_n_0_[0] ),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(state__0[3]),
        .O(state__1[3]));
  LUT6 #(
    .INIT(64'h5555555555404040)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(state__0[2]),
        .I1(PARITY_CONTROL[2]),
        .I2(PARITY_CONTROL[3]),
        .I3(\officialControl_reg_n_0_[1] ),
        .I4(\officialControl_reg_n_0_[0] ),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "STOP:1100,PARITY:1010,DATA8:1011,DATA6:1000,DATA7:1001,DATA5:0111,START:0001,IDLE:0000,DATA4:0110,DATA2:0100,DATA3:0101,DATA1:0011,DATA0:0010" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(axi_aclk),
        .CE(E),
        .D(state__1[0]),
        .Q(state__0[0]),
        .R(my9x16Fifo_inst_n_38));
  (* FSM_ENCODED_STATES = "STOP:1100,PARITY:1010,DATA8:1011,DATA6:1000,DATA7:1001,DATA5:0111,START:0001,IDLE:0000,DATA4:0110,DATA2:0100,DATA3:0101,DATA1:0011,DATA0:0010" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(axi_aclk),
        .CE(E),
        .D(state__1[1]),
        .Q(state__0[1]),
        .R(my9x16Fifo_inst_n_38));
  (* FSM_ENCODED_STATES = "STOP:1100,PARITY:1010,DATA8:1011,DATA6:1000,DATA7:1001,DATA5:0111,START:0001,IDLE:0000,DATA4:0110,DATA2:0100,DATA3:0101,DATA1:0011,DATA0:0010" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(axi_aclk),
        .CE(E),
        .D(state__1[2]),
        .Q(state__0[2]),
        .R(my9x16Fifo_inst_n_38));
  (* FSM_ENCODED_STATES = "STOP:1100,PARITY:1010,DATA8:1011,DATA6:1000,DATA7:1001,DATA5:0111,START:0001,IDLE:0000,DATA4:0110,DATA2:0100,DATA3:0101,DATA1:0011,DATA0:0010" *) 
  FDRE \FSM_sequential_state_reg[3] 
       (.C(axi_aclk),
        .CE(E),
        .D(state__1[3]),
        .Q(state__0[3]),
        .R(my9x16Fifo_inst_n_38));
  FDSE aw_en_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(aw_en_reg_1),
        .Q(aw_en_reg_0),
        .S(my9x16Fifo_inst_n_38));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(my9x16Fifo_inst_n_38));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_awready_i_1
       (.I0(axi_wvalid),
        .I1(axi_awvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(my9x16Fifo_inst_n_38));
  FDRE axi_bvalid_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_reg_0),
        .Q(axi_bvalid),
        .R(my9x16Fifo_inst_n_38));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[10]_i_1 
       (.I0(officialBaudRate[10]),
        .I1(officialStatus__0[10]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[10] ),
        .O(\axi_rdata[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[11]_i_1 
       (.I0(officialBaudRate[11]),
        .I1(officialStatus__0[11]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[11] ),
        .O(\axi_rdata[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[12]_i_1 
       (.I0(officialBaudRate[12]),
        .I1(officialStatus__0[12]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[12] ),
        .O(\axi_rdata[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[13]_i_1 
       (.I0(officialBaudRate[13]),
        .I1(officialStatus__0[13]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[13] ),
        .O(\axi_rdata[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[14]_i_1 
       (.I0(officialBaudRate[14]),
        .I1(officialStatus__0[14]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[14] ),
        .O(\axi_rdata[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[15]_i_1 
       (.I0(officialBaudRate[15]),
        .I1(officialStatus__0[15]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[15] ),
        .O(\axi_rdata[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[16]_i_1 
       (.I0(officialBaudRate[16]),
        .I1(officialStatus__0[16]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[16] ),
        .O(\axi_rdata[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[17]_i_1 
       (.I0(officialBaudRate[17]),
        .I1(officialStatus__0[17]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[18]_i_1 
       (.I0(officialBaudRate[18]),
        .I1(officialStatus__0[18]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[18] ),
        .O(\axi_rdata[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[19]_i_1 
       (.I0(officialBaudRate[19]),
        .I1(officialStatus__0[19]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[19] ),
        .O(\axi_rdata[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[20]_i_1 
       (.I0(officialBaudRate[20]),
        .I1(officialStatus__0[20]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[20] ),
        .O(\axi_rdata[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[21]_i_1 
       (.I0(officialBaudRate[21]),
        .I1(officialStatus__0[21]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[21] ),
        .O(\axi_rdata[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[22]_i_1 
       (.I0(officialBaudRate[22]),
        .I1(officialStatus__0[22]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[22] ),
        .O(\axi_rdata[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[23]_i_1 
       (.I0(officialBaudRate[23]),
        .I1(officialStatus__0[23]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[23] ),
        .O(\axi_rdata[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[24]_i_1 
       (.I0(officialBaudRate[24]),
        .I1(officialStatus__0[24]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[25]_i_1 
       (.I0(officialBaudRate[25]),
        .I1(officialStatus__0[25]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[25] ),
        .O(\axi_rdata[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[26]_i_1 
       (.I0(officialBaudRate[26]),
        .I1(officialStatus__0[26]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[26] ),
        .O(\axi_rdata[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[27]_i_1 
       (.I0(officialBaudRate[27]),
        .I1(officialStatus__0[27]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[27] ),
        .O(\axi_rdata[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[28]_i_1 
       (.I0(officialBaudRate[28]),
        .I1(officialStatus__0[28]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[28] ),
        .O(\axi_rdata[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[29]_i_1 
       (.I0(officialBaudRate[29]),
        .I1(officialStatus),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[29] ),
        .O(\axi_rdata[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[30]_i_1 
       (.I0(officialBaudRate[30]),
        .I1(officialStatus__0[30]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[30] ),
        .O(\axi_rdata[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(axi_rvalid_reg_0),
        .O(p_13_in));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[31]_i_2 
       (.I0(officialBaudRate[31]),
        .I1(officialStatus__0[31]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[31] ),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[9]_i_1 
       (.I0(officialBaudRate[9]),
        .I1(officialStatus__0[9]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[9] ),
        .O(\axi_rdata[9]_i_1_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(my9x16Fifo_inst_n_30),
        .Q(axi_rdata[0]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[10] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[10]_i_1_n_0 ),
        .Q(axi_rdata[10]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[11] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[11]_i_1_n_0 ),
        .Q(axi_rdata[11]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[12] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[12]_i_1_n_0 ),
        .Q(axi_rdata[12]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[13] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[13]_i_1_n_0 ),
        .Q(axi_rdata[13]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[14] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[14]_i_1_n_0 ),
        .Q(axi_rdata[14]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[15] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[15]_i_1_n_0 ),
        .Q(axi_rdata[15]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[16] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[16]_i_1_n_0 ),
        .Q(axi_rdata[16]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[17] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[17]_i_1_n_0 ),
        .Q(axi_rdata[17]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[18] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[18]_i_1_n_0 ),
        .Q(axi_rdata[18]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[19] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[19]_i_1_n_0 ),
        .Q(axi_rdata[19]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[1] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(my9x16Fifo_inst_n_29),
        .Q(axi_rdata[1]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[20] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[20]_i_1_n_0 ),
        .Q(axi_rdata[20]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[21] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[21]_i_1_n_0 ),
        .Q(axi_rdata[21]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[22] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[22]_i_1_n_0 ),
        .Q(axi_rdata[22]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[23] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[23]_i_1_n_0 ),
        .Q(axi_rdata[23]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[24] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[24]_i_1_n_0 ),
        .Q(axi_rdata[24]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[25] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[25]_i_1_n_0 ),
        .Q(axi_rdata[25]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[26] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[26]_i_1_n_0 ),
        .Q(axi_rdata[26]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[27] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[27]_i_1_n_0 ),
        .Q(axi_rdata[27]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[28] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[28]_i_1_n_0 ),
        .Q(axi_rdata[28]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[29] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[29]_i_1_n_0 ),
        .Q(axi_rdata[29]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[2] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(my9x16Fifo_inst_n_28),
        .Q(axi_rdata[2]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[30] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[30]_i_1_n_0 ),
        .Q(axi_rdata[30]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[31] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[31]_i_2_n_0 ),
        .Q(axi_rdata[31]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[3] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(my9x16Fifo_inst_n_27),
        .Q(axi_rdata[3]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[4] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(my9x16Fifo_inst_n_26),
        .Q(axi_rdata[4]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[5] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(my9x16Fifo_inst_n_25),
        .Q(axi_rdata[5]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[6] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(my9x16Fifo_inst_n_24),
        .Q(axi_rdata[6]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[7] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(my9x16Fifo_inst_n_23),
        .Q(axi_rdata[7]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[8] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(my9x16Fifo_inst_n_22),
        .Q(axi_rdata[8]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \axi_rdata_reg[9] 
       (.C(axi_aclk),
        .CE(p_13_in),
        .D(\axi_rdata[9]_i_1_n_0 ),
        .Q(axi_rdata[9]),
        .R(my9x16Fifo_inst_n_38));
  FDRE axi_rvalid_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_reg_1),
        .Q(axi_rvalid_reg_0),
        .R(my9x16Fifo_inst_n_38));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(axi_wvalid),
        .I1(axi_awvalid),
        .I2(axi_wready_reg_0),
        .I3(aw_en_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(my9x16Fifo_inst_n_38));
  LUT2 #(
    .INIT(4'h8)) 
    baudClockOut_INST_0
       (.I0(outSignal_reg_0),
        .I1(\officialControl_reg[5]_0 [1]),
        .O(baudClockOut));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect edge_detect_2
       (.Q(state__0),
        .axi_aclk(axi_aclk),
        .in_delay(in_delay),
        .in_delay_reg_0(sixteenXslower_reg_0),
        .outReg_reg_0(outReg_reg),
        .outReg_reg_1(outReg_reg_0),
        .outReg_reg_2(outReg_reg_1),
        .shiftOut_i_2_0({p_7_in,\latchData_reg_n_0_[0] }),
        .shiftOut_reg(shiftOut_i_3_n_0),
        .shiftOut_reg_0(shiftOut_i_4_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0 edge_detect_inst
       (.axi_aclk(axi_aclk),
        .in_delay_reg_0(outSignal_reg_0),
        .outReg_reg_0(ticking));
  CARRY4 keepCount0_carry
       (.CI(1'b0),
        .CO({keepCount0_carry_n_0,keepCount0_carry_n_1,keepCount0_carry_n_2,keepCount0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_keepCount0_carry_O_UNCONNECTED[3:0]),
        .S({keepCount0_carry_i_1_n_0,keepCount0_carry_i_2_n_0,keepCount0_carry_i_3_n_0,keepCount0_carry_i_4_n_0}));
  CARRY4 keepCount0_carry__0
       (.CI(keepCount0_carry_n_0),
        .CO({keepCount0_carry__0_n_0,keepCount0_carry__0_n_1,keepCount0_carry__0_n_2,keepCount0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_keepCount0_carry__0_O_UNCONNECTED[3:0]),
        .S({keepCount0_carry__0_i_1_n_0,keepCount0_carry__0_i_2_n_0,keepCount0_carry__0_i_3_n_0,keepCount0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__0_i_1
       (.I0(p_0_in__0_1[21]),
        .I1(ticks_reg[21]),
        .I2(p_0_in__0_1[22]),
        .I3(ticks_reg[22]),
        .I4(ticks_reg[23]),
        .I5(p_0_in__0_1[23]),
        .O(keepCount0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__0_i_2
       (.I0(p_0_in__0_1[18]),
        .I1(ticks_reg[18]),
        .I2(p_0_in__0_1[19]),
        .I3(ticks_reg[19]),
        .I4(ticks_reg[20]),
        .I5(p_0_in__0_1[20]),
        .O(keepCount0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__0_i_3
       (.I0(p_0_in__0_1[15]),
        .I1(ticks_reg[15]),
        .I2(p_0_in__0_1[16]),
        .I3(ticks_reg[16]),
        .I4(ticks_reg[17]),
        .I5(p_0_in__0_1[17]),
        .O(keepCount0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__0_i_4
       (.I0(p_0_in__0_1[12]),
        .I1(ticks_reg[12]),
        .I2(p_0_in__0_1[13]),
        .I3(ticks_reg[13]),
        .I4(ticks_reg[14]),
        .I5(p_0_in__0_1[14]),
        .O(keepCount0_carry__0_i_4_n_0));
  CARRY4 keepCount0_carry__1
       (.CI(keepCount0_carry__0_n_0),
        .CO({keepCount0_carry__1_n_0,keepCount0_carry__1_n_1,keepCount0_carry__1_n_2,keepCount0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_keepCount0_carry__1_O_UNCONNECTED[3:0]),
        .S({keepCount0_carry__1_i_1_n_0,keepCount0_carry__1_i_2_n_0,keepCount0_carry__1_i_3_n_0,keepCount0_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__1_i_1
       (.I0(p_0_in__0_1[33]),
        .I1(ticks_reg[33]),
        .I2(p_0_in__0_1[34]),
        .I3(ticks_reg[34]),
        .I4(ticks_reg[35]),
        .I5(p_0_in__0_1[35]),
        .O(keepCount0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__1_i_2
       (.I0(p_0_in__0_1[32]),
        .I1(ticks_reg[32]),
        .I2(p_0_in__0_1[30]),
        .I3(ticks_reg[30]),
        .I4(ticks_reg[31]),
        .I5(p_0_in__0_1[31]),
        .O(keepCount0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__1_i_3
       (.I0(p_0_in__0_1[29]),
        .I1(ticks_reg[29]),
        .I2(p_0_in__0_1[27]),
        .I3(ticks_reg[27]),
        .I4(ticks_reg[28]),
        .I5(p_0_in__0_1[28]),
        .O(keepCount0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__1_i_4
       (.I0(p_0_in__0_1[24]),
        .I1(ticks_reg[24]),
        .I2(p_0_in__0_1[25]),
        .I3(ticks_reg[25]),
        .I4(ticks_reg[26]),
        .I5(p_0_in__0_1[26]),
        .O(keepCount0_carry__1_i_4_n_0));
  CARRY4 keepCount0_carry__2
       (.CI(keepCount0_carry__1_n_0),
        .CO({keepCount0_carry__2_n_0,keepCount0_carry__2_n_1,keepCount0_carry__2_n_2,keepCount0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_keepCount0_carry__2_O_UNCONNECTED[3:0]),
        .S({keepCount0_carry__2_i_1_n_0,keepCount0_carry__2_i_2_n_0,keepCount0_carry__2_i_3_n_0,keepCount0_carry__2_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    keepCount0_carry__2_i_1
       (.I0(ticks_reg[46]),
        .I1(ticks_reg[45]),
        .I2(ticks_reg[47]),
        .O(keepCount0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h1001)) 
    keepCount0_carry__2_i_2
       (.I0(ticks_reg[44]),
        .I1(ticks_reg[43]),
        .I2(ticks_reg[42]),
        .I3(p_0_in__0_1[42]),
        .O(keepCount0_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__2_i_3
       (.I0(p_0_in__0_1[39]),
        .I1(ticks_reg[39]),
        .I2(p_0_in__0_1[40]),
        .I3(ticks_reg[40]),
        .I4(ticks_reg[41]),
        .I5(p_0_in__0_1[41]),
        .O(keepCount0_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__2_i_4
       (.I0(p_0_in__0_1[36]),
        .I1(ticks_reg[36]),
        .I2(p_0_in__0_1[37]),
        .I3(ticks_reg[37]),
        .I4(ticks_reg[38]),
        .I5(p_0_in__0_1[38]),
        .O(keepCount0_carry__2_i_4_n_0));
  CARRY4 keepCount0_carry__3
       (.CI(keepCount0_carry__2_n_0),
        .CO({NLW_keepCount0_carry__3_CO_UNCONNECTED[3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_keepCount0_carry__3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,keepCount0_carry__3_i_1_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    keepCount0_carry__3_i_1
       (.I0(ticks_reg[49]),
        .I1(ticks_reg[48]),
        .I2(ticks_reg[50]),
        .O(keepCount0_carry__3_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry_i_1
       (.I0(p_0_in__0_1[9]),
        .I1(ticks_reg[9]),
        .I2(p_0_in__0_1[10]),
        .I3(ticks_reg[10]),
        .I4(ticks_reg[11]),
        .I5(p_0_in__0_1[11]),
        .O(keepCount0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry_i_2
       (.I0(p_0_in__0_1[7]),
        .I1(ticks_reg[7]),
        .I2(p_0_in__0_1[6]),
        .I3(ticks_reg[6]),
        .I4(ticks_reg[8]),
        .I5(p_0_in__0_1[8]),
        .O(keepCount0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry_i_3
       (.I0(p_0_in__0_1[4]),
        .I1(ticks_reg[4]),
        .I2(p_0_in__0_1[3]),
        .I3(ticks_reg[3]),
        .I4(ticks_reg[5]),
        .I5(p_0_in__0_1[5]),
        .O(keepCount0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry_i_4
       (.I0(ticks_reg[0]),
        .I1(p_0_in__0_1[0]),
        .I2(p_0_in__0_1[2]),
        .I3(ticks_reg[2]),
        .I4(p_0_in__0_1[1]),
        .I5(ticks_reg[1]),
        .O(keepCount0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \keepCount[0]_i_1 
       (.I0(CO),
        .I1(\officialControl_reg[5]_0 [0]),
        .O(outSignal));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[0]_i_3 
       (.I0(officialBaudRate[4]),
        .I1(\keepCount_reg_n_0_[3] ),
        .O(\keepCount[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[0]_i_4 
       (.I0(officialBaudRate[3]),
        .I1(\keepCount_reg_n_0_[2] ),
        .O(\keepCount[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[0]_i_5 
       (.I0(officialBaudRate[2]),
        .I1(\keepCount_reg_n_0_[1] ),
        .O(\keepCount[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[0]_i_6 
       (.I0(officialBaudRate[1]),
        .I1(\keepCount_reg_n_0_[0] ),
        .O(\keepCount[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[12]_i_2 
       (.I0(officialBaudRate[16]),
        .I1(p_0_in__0_1[7]),
        .O(\keepCount[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[12]_i_3 
       (.I0(officialBaudRate[15]),
        .I1(p_0_in__0_1[6]),
        .O(\keepCount[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[12]_i_4 
       (.I0(officialBaudRate[14]),
        .I1(p_0_in__0_1[5]),
        .O(\keepCount[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[12]_i_5 
       (.I0(officialBaudRate[13]),
        .I1(p_0_in__0_1[4]),
        .O(\keepCount[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[16]_i_2 
       (.I0(officialBaudRate[20]),
        .I1(p_0_in__0_1[11]),
        .O(\keepCount[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[16]_i_3 
       (.I0(officialBaudRate[19]),
        .I1(p_0_in__0_1[10]),
        .O(\keepCount[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[16]_i_4 
       (.I0(officialBaudRate[18]),
        .I1(p_0_in__0_1[9]),
        .O(\keepCount[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[16]_i_5 
       (.I0(officialBaudRate[17]),
        .I1(p_0_in__0_1[8]),
        .O(\keepCount[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[20]_i_2 
       (.I0(officialBaudRate[24]),
        .I1(p_0_in__0_1[15]),
        .O(\keepCount[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[20]_i_3 
       (.I0(officialBaudRate[23]),
        .I1(p_0_in__0_1[14]),
        .O(\keepCount[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[20]_i_4 
       (.I0(officialBaudRate[22]),
        .I1(p_0_in__0_1[13]),
        .O(\keepCount[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[20]_i_5 
       (.I0(officialBaudRate[21]),
        .I1(p_0_in__0_1[12]),
        .O(\keepCount[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[24]_i_2 
       (.I0(officialBaudRate[28]),
        .I1(p_0_in__0_1[19]),
        .O(\keepCount[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[24]_i_3 
       (.I0(officialBaudRate[27]),
        .I1(p_0_in__0_1[18]),
        .O(\keepCount[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[24]_i_4 
       (.I0(officialBaudRate[26]),
        .I1(p_0_in__0_1[17]),
        .O(\keepCount[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[24]_i_5 
       (.I0(officialBaudRate[25]),
        .I1(p_0_in__0_1[16]),
        .O(\keepCount[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[28]_i_2 
       (.I0(officialBaudRate[31]),
        .I1(p_0_in__0_1[22]),
        .O(\keepCount[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[28]_i_3 
       (.I0(officialBaudRate[30]),
        .I1(p_0_in__0_1[21]),
        .O(\keepCount[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[28]_i_4 
       (.I0(officialBaudRate[29]),
        .I1(p_0_in__0_1[20]),
        .O(\keepCount[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[4]_i_2 
       (.I0(officialBaudRate[8]),
        .I1(\keepCount_reg_n_0_[7] ),
        .O(\keepCount[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[4]_i_3 
       (.I0(officialBaudRate[7]),
        .I1(\keepCount_reg_n_0_[6] ),
        .O(\keepCount[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[4]_i_4 
       (.I0(officialBaudRate[6]),
        .I1(\keepCount_reg_n_0_[5] ),
        .O(\keepCount[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[4]_i_5 
       (.I0(officialBaudRate[5]),
        .I1(\keepCount_reg_n_0_[4] ),
        .O(\keepCount[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[8]_i_2 
       (.I0(officialBaudRate[12]),
        .I1(p_0_in__0_1[3]),
        .O(\keepCount[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[8]_i_3 
       (.I0(officialBaudRate[11]),
        .I1(p_0_in__0_1[2]),
        .O(\keepCount[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[8]_i_4 
       (.I0(officialBaudRate[10]),
        .I1(p_0_in__0_1[1]),
        .O(\keepCount[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[8]_i_5 
       (.I0(officialBaudRate[9]),
        .I1(p_0_in__0_1[0]),
        .O(\keepCount[8]_i_5_n_0 ));
  FDRE \keepCount_reg[0] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[0]_i_2_n_7 ),
        .Q(\keepCount_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\keepCount_reg[0]_i_2_n_0 ,\keepCount_reg[0]_i_2_n_1 ,\keepCount_reg[0]_i_2_n_2 ,\keepCount_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(officialBaudRate[4:1]),
        .O({\keepCount_reg[0]_i_2_n_4 ,\keepCount_reg[0]_i_2_n_5 ,\keepCount_reg[0]_i_2_n_6 ,\keepCount_reg[0]_i_2_n_7 }),
        .S({\keepCount[0]_i_3_n_0 ,\keepCount[0]_i_4_n_0 ,\keepCount[0]_i_5_n_0 ,\keepCount[0]_i_6_n_0 }));
  FDRE \keepCount_reg[10] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[8]_i_1_n_5 ),
        .Q(p_0_in__0_1[2]),
        .R(1'b0));
  FDRE \keepCount_reg[11] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[8]_i_1_n_4 ),
        .Q(p_0_in__0_1[3]),
        .R(1'b0));
  FDRE \keepCount_reg[12] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[12]_i_1_n_7 ),
        .Q(p_0_in__0_1[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[12]_i_1 
       (.CI(\keepCount_reg[8]_i_1_n_0 ),
        .CO({\keepCount_reg[12]_i_1_n_0 ,\keepCount_reg[12]_i_1_n_1 ,\keepCount_reg[12]_i_1_n_2 ,\keepCount_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(officialBaudRate[16:13]),
        .O({\keepCount_reg[12]_i_1_n_4 ,\keepCount_reg[12]_i_1_n_5 ,\keepCount_reg[12]_i_1_n_6 ,\keepCount_reg[12]_i_1_n_7 }),
        .S({\keepCount[12]_i_2_n_0 ,\keepCount[12]_i_3_n_0 ,\keepCount[12]_i_4_n_0 ,\keepCount[12]_i_5_n_0 }));
  FDRE \keepCount_reg[13] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[12]_i_1_n_6 ),
        .Q(p_0_in__0_1[5]),
        .R(1'b0));
  FDRE \keepCount_reg[14] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[12]_i_1_n_5 ),
        .Q(p_0_in__0_1[6]),
        .R(1'b0));
  FDRE \keepCount_reg[15] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[12]_i_1_n_4 ),
        .Q(p_0_in__0_1[7]),
        .R(1'b0));
  FDRE \keepCount_reg[16] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[16]_i_1_n_7 ),
        .Q(p_0_in__0_1[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[16]_i_1 
       (.CI(\keepCount_reg[12]_i_1_n_0 ),
        .CO({\keepCount_reg[16]_i_1_n_0 ,\keepCount_reg[16]_i_1_n_1 ,\keepCount_reg[16]_i_1_n_2 ,\keepCount_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(officialBaudRate[20:17]),
        .O({\keepCount_reg[16]_i_1_n_4 ,\keepCount_reg[16]_i_1_n_5 ,\keepCount_reg[16]_i_1_n_6 ,\keepCount_reg[16]_i_1_n_7 }),
        .S({\keepCount[16]_i_2_n_0 ,\keepCount[16]_i_3_n_0 ,\keepCount[16]_i_4_n_0 ,\keepCount[16]_i_5_n_0 }));
  FDRE \keepCount_reg[17] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[16]_i_1_n_6 ),
        .Q(p_0_in__0_1[9]),
        .R(1'b0));
  FDRE \keepCount_reg[18] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[16]_i_1_n_5 ),
        .Q(p_0_in__0_1[10]),
        .R(1'b0));
  FDRE \keepCount_reg[19] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[16]_i_1_n_4 ),
        .Q(p_0_in__0_1[11]),
        .R(1'b0));
  FDRE \keepCount_reg[1] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[0]_i_2_n_6 ),
        .Q(\keepCount_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \keepCount_reg[20] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[20]_i_1_n_7 ),
        .Q(p_0_in__0_1[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[20]_i_1 
       (.CI(\keepCount_reg[16]_i_1_n_0 ),
        .CO({\keepCount_reg[20]_i_1_n_0 ,\keepCount_reg[20]_i_1_n_1 ,\keepCount_reg[20]_i_1_n_2 ,\keepCount_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(officialBaudRate[24:21]),
        .O({\keepCount_reg[20]_i_1_n_4 ,\keepCount_reg[20]_i_1_n_5 ,\keepCount_reg[20]_i_1_n_6 ,\keepCount_reg[20]_i_1_n_7 }),
        .S({\keepCount[20]_i_2_n_0 ,\keepCount[20]_i_3_n_0 ,\keepCount[20]_i_4_n_0 ,\keepCount[20]_i_5_n_0 }));
  FDRE \keepCount_reg[21] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[20]_i_1_n_6 ),
        .Q(p_0_in__0_1[13]),
        .R(1'b0));
  FDRE \keepCount_reg[22] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[20]_i_1_n_5 ),
        .Q(p_0_in__0_1[14]),
        .R(1'b0));
  FDRE \keepCount_reg[23] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[20]_i_1_n_4 ),
        .Q(p_0_in__0_1[15]),
        .R(1'b0));
  FDRE \keepCount_reg[24] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[24]_i_1_n_7 ),
        .Q(p_0_in__0_1[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[24]_i_1 
       (.CI(\keepCount_reg[20]_i_1_n_0 ),
        .CO({\keepCount_reg[24]_i_1_n_0 ,\keepCount_reg[24]_i_1_n_1 ,\keepCount_reg[24]_i_1_n_2 ,\keepCount_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(officialBaudRate[28:25]),
        .O({\keepCount_reg[24]_i_1_n_4 ,\keepCount_reg[24]_i_1_n_5 ,\keepCount_reg[24]_i_1_n_6 ,\keepCount_reg[24]_i_1_n_7 }),
        .S({\keepCount[24]_i_2_n_0 ,\keepCount[24]_i_3_n_0 ,\keepCount[24]_i_4_n_0 ,\keepCount[24]_i_5_n_0 }));
  FDRE \keepCount_reg[25] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[24]_i_1_n_6 ),
        .Q(p_0_in__0_1[17]),
        .R(1'b0));
  FDRE \keepCount_reg[26] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[24]_i_1_n_5 ),
        .Q(p_0_in__0_1[18]),
        .R(1'b0));
  FDRE \keepCount_reg[27] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[24]_i_1_n_4 ),
        .Q(p_0_in__0_1[19]),
        .R(1'b0));
  FDRE \keepCount_reg[28] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[28]_i_1_n_7 ),
        .Q(p_0_in__0_1[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[28]_i_1 
       (.CI(\keepCount_reg[24]_i_1_n_0 ),
        .CO({\keepCount_reg[28]_i_1_n_0 ,\keepCount_reg[28]_i_1_n_1 ,\keepCount_reg[28]_i_1_n_2 ,\keepCount_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,officialBaudRate[31:29]}),
        .O({\keepCount_reg[28]_i_1_n_4 ,\keepCount_reg[28]_i_1_n_5 ,\keepCount_reg[28]_i_1_n_6 ,\keepCount_reg[28]_i_1_n_7 }),
        .S({p_0_in__0_1[23],\keepCount[28]_i_2_n_0 ,\keepCount[28]_i_3_n_0 ,\keepCount[28]_i_4_n_0 }));
  FDRE \keepCount_reg[29] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[28]_i_1_n_6 ),
        .Q(p_0_in__0_1[21]),
        .R(1'b0));
  FDRE \keepCount_reg[2] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[0]_i_2_n_5 ),
        .Q(\keepCount_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \keepCount_reg[30] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[28]_i_1_n_5 ),
        .Q(p_0_in__0_1[22]),
        .R(1'b0));
  FDRE \keepCount_reg[31] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[28]_i_1_n_4 ),
        .Q(p_0_in__0_1[23]),
        .R(1'b0));
  FDRE \keepCount_reg[32] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[32]_i_1_n_7 ),
        .Q(p_0_in__0_1[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[32]_i_1 
       (.CI(\keepCount_reg[28]_i_1_n_0 ),
        .CO({\keepCount_reg[32]_i_1_n_0 ,\keepCount_reg[32]_i_1_n_1 ,\keepCount_reg[32]_i_1_n_2 ,\keepCount_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\keepCount_reg[32]_i_1_n_4 ,\keepCount_reg[32]_i_1_n_5 ,\keepCount_reg[32]_i_1_n_6 ,\keepCount_reg[32]_i_1_n_7 }),
        .S(p_0_in__0_1[27:24]));
  FDRE \keepCount_reg[33] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[32]_i_1_n_6 ),
        .Q(p_0_in__0_1[25]),
        .R(1'b0));
  FDRE \keepCount_reg[34] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[32]_i_1_n_5 ),
        .Q(p_0_in__0_1[26]),
        .R(1'b0));
  FDRE \keepCount_reg[35] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[32]_i_1_n_4 ),
        .Q(p_0_in__0_1[27]),
        .R(1'b0));
  FDRE \keepCount_reg[36] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[36]_i_1_n_7 ),
        .Q(p_0_in__0_1[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[36]_i_1 
       (.CI(\keepCount_reg[32]_i_1_n_0 ),
        .CO({\keepCount_reg[36]_i_1_n_0 ,\keepCount_reg[36]_i_1_n_1 ,\keepCount_reg[36]_i_1_n_2 ,\keepCount_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\keepCount_reg[36]_i_1_n_4 ,\keepCount_reg[36]_i_1_n_5 ,\keepCount_reg[36]_i_1_n_6 ,\keepCount_reg[36]_i_1_n_7 }),
        .S(p_0_in__0_1[31:28]));
  FDRE \keepCount_reg[37] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[36]_i_1_n_6 ),
        .Q(p_0_in__0_1[29]),
        .R(1'b0));
  FDRE \keepCount_reg[38] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[36]_i_1_n_5 ),
        .Q(p_0_in__0_1[30]),
        .R(1'b0));
  FDRE \keepCount_reg[39] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[36]_i_1_n_4 ),
        .Q(p_0_in__0_1[31]),
        .R(1'b0));
  FDRE \keepCount_reg[3] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[0]_i_2_n_4 ),
        .Q(\keepCount_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \keepCount_reg[40] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[40]_i_1_n_7 ),
        .Q(p_0_in__0_1[32]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[40]_i_1 
       (.CI(\keepCount_reg[36]_i_1_n_0 ),
        .CO({\keepCount_reg[40]_i_1_n_0 ,\keepCount_reg[40]_i_1_n_1 ,\keepCount_reg[40]_i_1_n_2 ,\keepCount_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\keepCount_reg[40]_i_1_n_4 ,\keepCount_reg[40]_i_1_n_5 ,\keepCount_reg[40]_i_1_n_6 ,\keepCount_reg[40]_i_1_n_7 }),
        .S(p_0_in__0_1[35:32]));
  FDRE \keepCount_reg[41] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[40]_i_1_n_6 ),
        .Q(p_0_in__0_1[33]),
        .R(1'b0));
  FDRE \keepCount_reg[42] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[40]_i_1_n_5 ),
        .Q(p_0_in__0_1[34]),
        .R(1'b0));
  FDRE \keepCount_reg[43] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[40]_i_1_n_4 ),
        .Q(p_0_in__0_1[35]),
        .R(1'b0));
  FDRE \keepCount_reg[44] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[44]_i_1_n_7 ),
        .Q(p_0_in__0_1[36]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[44]_i_1 
       (.CI(\keepCount_reg[40]_i_1_n_0 ),
        .CO({\keepCount_reg[44]_i_1_n_0 ,\keepCount_reg[44]_i_1_n_1 ,\keepCount_reg[44]_i_1_n_2 ,\keepCount_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\keepCount_reg[44]_i_1_n_4 ,\keepCount_reg[44]_i_1_n_5 ,\keepCount_reg[44]_i_1_n_6 ,\keepCount_reg[44]_i_1_n_7 }),
        .S(p_0_in__0_1[39:36]));
  FDRE \keepCount_reg[45] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[44]_i_1_n_6 ),
        .Q(p_0_in__0_1[37]),
        .R(1'b0));
  FDRE \keepCount_reg[46] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[44]_i_1_n_5 ),
        .Q(p_0_in__0_1[38]),
        .R(1'b0));
  FDRE \keepCount_reg[47] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[44]_i_1_n_4 ),
        .Q(p_0_in__0_1[39]),
        .R(1'b0));
  FDRE \keepCount_reg[48] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[48]_i_1_n_7 ),
        .Q(p_0_in__0_1[40]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[48]_i_1 
       (.CI(\keepCount_reg[44]_i_1_n_0 ),
        .CO({\NLW_keepCount_reg[48]_i_1_CO_UNCONNECTED [3:2],\keepCount_reg[48]_i_1_n_2 ,\keepCount_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_keepCount_reg[48]_i_1_O_UNCONNECTED [3],\keepCount_reg[48]_i_1_n_5 ,\keepCount_reg[48]_i_1_n_6 ,\keepCount_reg[48]_i_1_n_7 }),
        .S({1'b0,p_0_in__0_1[42:40]}));
  FDRE \keepCount_reg[49] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[48]_i_1_n_6 ),
        .Q(p_0_in__0_1[41]),
        .R(1'b0));
  FDRE \keepCount_reg[4] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[4]_i_1_n_7 ),
        .Q(\keepCount_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[4]_i_1 
       (.CI(\keepCount_reg[0]_i_2_n_0 ),
        .CO({\keepCount_reg[4]_i_1_n_0 ,\keepCount_reg[4]_i_1_n_1 ,\keepCount_reg[4]_i_1_n_2 ,\keepCount_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(officialBaudRate[8:5]),
        .O({\keepCount_reg[4]_i_1_n_4 ,\keepCount_reg[4]_i_1_n_5 ,\keepCount_reg[4]_i_1_n_6 ,\keepCount_reg[4]_i_1_n_7 }),
        .S({\keepCount[4]_i_2_n_0 ,\keepCount[4]_i_3_n_0 ,\keepCount[4]_i_4_n_0 ,\keepCount[4]_i_5_n_0 }));
  FDRE \keepCount_reg[50] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[48]_i_1_n_5 ),
        .Q(p_0_in__0_1[42]),
        .R(1'b0));
  FDRE \keepCount_reg[5] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[4]_i_1_n_6 ),
        .Q(\keepCount_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \keepCount_reg[6] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[4]_i_1_n_5 ),
        .Q(\keepCount_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \keepCount_reg[7] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[4]_i_1_n_4 ),
        .Q(\keepCount_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \keepCount_reg[8] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[8]_i_1_n_7 ),
        .Q(p_0_in__0_1[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[8]_i_1 
       (.CI(\keepCount_reg[4]_i_1_n_0 ),
        .CO({\keepCount_reg[8]_i_1_n_0 ,\keepCount_reg[8]_i_1_n_1 ,\keepCount_reg[8]_i_1_n_2 ,\keepCount_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(officialBaudRate[12:9]),
        .O({\keepCount_reg[8]_i_1_n_4 ,\keepCount_reg[8]_i_1_n_5 ,\keepCount_reg[8]_i_1_n_6 ,\keepCount_reg[8]_i_1_n_7 }),
        .S({\keepCount[8]_i_2_n_0 ,\keepCount[8]_i_3_n_0 ,\keepCount[8]_i_4_n_0 ,\keepCount[8]_i_5_n_0 }));
  FDRE \keepCount_reg[9] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[8]_i_1_n_6 ),
        .Q(p_0_in__0_1[1]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \latchData_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(latchData0),
        .GE(1'b1),
        .Q(\latchData_reg_n_0_[0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \latchData_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(latchData0),
        .GE(1'b1),
        .Q(p_7_in));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \latchData_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(latchData0),
        .GE(1'b1),
        .Q(p_6_in));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \latchData_reg[3] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(latchData0),
        .GE(1'b1),
        .Q(p_5_in));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \latchData_reg[4] 
       (.CLR(1'b0),
        .D(D[4]),
        .G(latchData0),
        .GE(1'b1),
        .Q(p_4_in));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \latchData_reg[5] 
       (.CLR(1'b0),
        .D(D[5]),
        .G(latchData0),
        .GE(1'b1),
        .Q(p_3_in));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \latchData_reg[6] 
       (.CLR(1'b0),
        .D(D[6]),
        .G(latchData0),
        .GE(1'b1),
        .Q(p_2_in));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \latchData_reg[7] 
       (.CLR(1'b0),
        .D(D[7]),
        .G(latchData0),
        .GE(1'b1),
        .Q(\latchData_reg_n_0_[7] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \latchData_reg[8] 
       (.CLR(1'b0),
        .D(D[8]),
        .G(latchData0),
        .GE(1'b1),
        .Q(\latchData_reg_n_0_[8] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my9x16Fifo my9x16Fifo_inst
       (.D({D[8:5],D[1:0]}),
        .E(latchData0),
        .\FSM_sequential_state_reg[0] (E),
        .\FSM_sequential_state_reg[3] (state__0),
        .\FSM_sequential_state_reg[3]_0 (\FSM_sequential_state[3]_i_3_n_0 ),
        .\FSM_sequential_state_reg[3]_1 (outReg_reg),
        .Q(Q),
        .axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .axi_aresetn_0(my9x16Fifo_inst_n_38),
        .axi_arvalid(axi_arvalid),
        .axi_awvalid(axi_awvalid),
        .\axi_rdata_reg[8] ({\officialControl_reg_n_0_[8] ,\officialControl_reg_n_0_[7] ,\officialControl_reg_n_0_[6] ,\officialControl_reg[5]_0 ,PARITY_CONTROL,\officialControl_reg_n_0_[1] ,\officialControl_reg_n_0_[0] }),
        .\axi_rdata_reg[8]_0 (officialBaudRate[8:0]),
        .\axi_rdata_reg[8]_1 (officialStatus__0[8:0]),
        .axi_wvalid(axi_wvalid),
        .empty(empty),
        .full(full),
        .in_delay_reg(axi_arready_reg_0),
        .in_delay_reg_0(axi_rvalid_reg_0),
        .in_delay_reg_1(axi_wready_reg_0),
        .in_delay_reg_2(axi_awready_reg_0),
        .myParityBit_reg(myParityBit_reg_i_3_n_0),
        .\officialBaudRate_reg[8] ({my9x16Fifo_inst_n_22,my9x16Fifo_inst_n_23,my9x16Fifo_inst_n_24,my9x16Fifo_inst_n_25,my9x16Fifo_inst_n_26,my9x16Fifo_inst_n_27,my9x16Fifo_inst_n_28,my9x16Fifo_inst_n_29,my9x16Fifo_inst_n_30}),
        .\officialControl_reg[0] (my9x16Fifo_inst_n_12),
        .officialData(officialData),
        .p_0_in_0(p_0_in_0),
        .p_15_in(p_15_in),
        .\rd_index_reg[3]_0 (D[4]),
        .\rd_index_reg[3]_1 (D[2]),
        .\rd_index_reg[3]_2 (D[3]),
        .\rd_index_reg[4]_0 (\rd_index_reg[4] ),
        .waddr(waddr),
        .watermark(watermark));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    myParityBit_reg
       (.CLR(1'b0),
        .D(my9x16Fifo_inst_n_12),
        .G(myParityBit__0),
        .GE(1'b1),
        .Q(myParityBit));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    myParityBit_reg_i_2
       (.I0(PARITY_CONTROL[3]),
        .I1(PARITY_CONTROL[2]),
        .O(myParityBit__0));
  LUT2 #(
    .INIT(4'hB)) 
    myParityBit_reg_i_3
       (.I0(PARITY_CONTROL[3]),
        .I1(PARITY_CONTROL[2]),
        .O(myParityBit_reg_i_3_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[15]_i_1 
       (.I0(p_15_in),
        .I1(axi_wstrb[1]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialBaudRate[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[23]_i_1 
       (.I0(p_15_in),
        .I1(axi_wstrb[2]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialBaudRate[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[31]_i_1 
       (.I0(p_15_in),
        .I1(axi_wstrb[3]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialBaudRate[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[7]_i_1 
       (.I0(p_15_in),
        .I1(axi_wstrb[0]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialBaudRate[7]_i_1_n_0 ));
  FDRE \officialBaudRate_reg[0] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(officialBaudRate[0]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[10] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[10]),
        .Q(officialBaudRate[10]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[11] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[11]),
        .Q(officialBaudRate[11]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[12] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[12]),
        .Q(officialBaudRate[12]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[13] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[13]),
        .Q(officialBaudRate[13]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[14] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[14]),
        .Q(officialBaudRate[14]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[15] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[15]),
        .Q(officialBaudRate[15]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[16] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[16]),
        .Q(officialBaudRate[16]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[17] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[17]),
        .Q(officialBaudRate[17]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[18] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[18]),
        .Q(officialBaudRate[18]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[19] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[19]),
        .Q(officialBaudRate[19]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[1] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(officialBaudRate[1]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[20] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[20]),
        .Q(officialBaudRate[20]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[21] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[21]),
        .Q(officialBaudRate[21]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[22] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[22]),
        .Q(officialBaudRate[22]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[23] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[23]),
        .Q(officialBaudRate[23]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[24] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[24]),
        .Q(officialBaudRate[24]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[25] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[25]),
        .Q(officialBaudRate[25]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[26] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[26]),
        .Q(officialBaudRate[26]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[27] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[27]),
        .Q(officialBaudRate[27]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[28] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[28]),
        .Q(officialBaudRate[28]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[29] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[29]),
        .Q(officialBaudRate[29]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[2] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(officialBaudRate[2]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[30] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[30]),
        .Q(officialBaudRate[30]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[31] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[31]),
        .Q(officialBaudRate[31]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[3] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(officialBaudRate[3]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[4] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(officialBaudRate[4]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[5] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(officialBaudRate[5]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[6] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(officialBaudRate[6]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[7] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(officialBaudRate[7]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[8] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[8]),
        .Q(officialBaudRate[8]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialBaudRate_reg[9] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[9]),
        .Q(officialBaudRate[9]),
        .R(my9x16Fifo_inst_n_38));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialControl[15]_i_1 
       (.I0(p_15_in),
        .I1(axi_awaddr[1]),
        .I2(axi_wstrb[1]),
        .I3(axi_awaddr[0]),
        .O(p_1_in__0[15]));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialControl[23]_i_1 
       (.I0(p_15_in),
        .I1(axi_awaddr[1]),
        .I2(axi_wstrb[2]),
        .I3(axi_awaddr[0]),
        .O(p_1_in__0[23]));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialControl[31]_i_1 
       (.I0(p_15_in),
        .I1(axi_awaddr[1]),
        .I2(axi_wstrb[3]),
        .I3(axi_awaddr[0]),
        .O(p_1_in__0[31]));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialControl[4]_i_1 
       (.I0(p_15_in),
        .I1(axi_awaddr[1]),
        .I2(axi_wstrb[0]),
        .I3(axi_awaddr[0]),
        .O(p_1_in__0[5]));
  FDRE \officialControl_reg[0] 
       (.C(axi_aclk),
        .CE(p_1_in__0[5]),
        .D(axi_wdata[0]),
        .Q(\officialControl_reg_n_0_[0] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[10] 
       (.C(axi_aclk),
        .CE(p_1_in__0[15]),
        .D(axi_wdata[10]),
        .Q(\officialControl_reg_n_0_[10] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[11] 
       (.C(axi_aclk),
        .CE(p_1_in__0[15]),
        .D(axi_wdata[11]),
        .Q(\officialControl_reg_n_0_[11] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[12] 
       (.C(axi_aclk),
        .CE(p_1_in__0[15]),
        .D(axi_wdata[12]),
        .Q(\officialControl_reg_n_0_[12] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[13] 
       (.C(axi_aclk),
        .CE(p_1_in__0[15]),
        .D(axi_wdata[13]),
        .Q(\officialControl_reg_n_0_[13] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[14] 
       (.C(axi_aclk),
        .CE(p_1_in__0[15]),
        .D(axi_wdata[14]),
        .Q(\officialControl_reg_n_0_[14] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[15] 
       (.C(axi_aclk),
        .CE(p_1_in__0[15]),
        .D(axi_wdata[15]),
        .Q(\officialControl_reg_n_0_[15] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[16] 
       (.C(axi_aclk),
        .CE(p_1_in__0[23]),
        .D(axi_wdata[16]),
        .Q(\officialControl_reg_n_0_[16] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[17] 
       (.C(axi_aclk),
        .CE(p_1_in__0[23]),
        .D(axi_wdata[17]),
        .Q(\officialControl_reg_n_0_[17] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[18] 
       (.C(axi_aclk),
        .CE(p_1_in__0[23]),
        .D(axi_wdata[18]),
        .Q(\officialControl_reg_n_0_[18] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[19] 
       (.C(axi_aclk),
        .CE(p_1_in__0[23]),
        .D(axi_wdata[19]),
        .Q(\officialControl_reg_n_0_[19] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[1] 
       (.C(axi_aclk),
        .CE(p_1_in__0[5]),
        .D(axi_wdata[1]),
        .Q(\officialControl_reg_n_0_[1] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[20] 
       (.C(axi_aclk),
        .CE(p_1_in__0[23]),
        .D(axi_wdata[20]),
        .Q(\officialControl_reg_n_0_[20] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[21] 
       (.C(axi_aclk),
        .CE(p_1_in__0[23]),
        .D(axi_wdata[21]),
        .Q(\officialControl_reg_n_0_[21] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[22] 
       (.C(axi_aclk),
        .CE(p_1_in__0[23]),
        .D(axi_wdata[22]),
        .Q(\officialControl_reg_n_0_[22] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[23] 
       (.C(axi_aclk),
        .CE(p_1_in__0[23]),
        .D(axi_wdata[23]),
        .Q(\officialControl_reg_n_0_[23] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[24] 
       (.C(axi_aclk),
        .CE(p_1_in__0[31]),
        .D(axi_wdata[24]),
        .Q(\officialControl_reg_n_0_[24] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[25] 
       (.C(axi_aclk),
        .CE(p_1_in__0[31]),
        .D(axi_wdata[25]),
        .Q(\officialControl_reg_n_0_[25] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[26] 
       (.C(axi_aclk),
        .CE(p_1_in__0[31]),
        .D(axi_wdata[26]),
        .Q(\officialControl_reg_n_0_[26] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[27] 
       (.C(axi_aclk),
        .CE(p_1_in__0[31]),
        .D(axi_wdata[27]),
        .Q(\officialControl_reg_n_0_[27] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[28] 
       (.C(axi_aclk),
        .CE(p_1_in__0[31]),
        .D(axi_wdata[28]),
        .Q(\officialControl_reg_n_0_[28] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[29] 
       (.C(axi_aclk),
        .CE(p_1_in__0[31]),
        .D(axi_wdata[29]),
        .Q(\officialControl_reg_n_0_[29] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[2] 
       (.C(axi_aclk),
        .CE(p_1_in__0[5]),
        .D(axi_wdata[2]),
        .Q(PARITY_CONTROL[2]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[30] 
       (.C(axi_aclk),
        .CE(p_1_in__0[31]),
        .D(axi_wdata[30]),
        .Q(\officialControl_reg_n_0_[30] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[31] 
       (.C(axi_aclk),
        .CE(p_1_in__0[31]),
        .D(axi_wdata[31]),
        .Q(\officialControl_reg_n_0_[31] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[3] 
       (.C(axi_aclk),
        .CE(p_1_in__0[5]),
        .D(axi_wdata[3]),
        .Q(PARITY_CONTROL[3]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[4] 
       (.C(axi_aclk),
        .CE(p_1_in__0[5]),
        .D(axi_wdata[4]),
        .Q(\officialControl_reg[5]_0 [0]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[5] 
       (.C(axi_aclk),
        .CE(p_1_in__0[5]),
        .D(axi_wdata[5]),
        .Q(\officialControl_reg[5]_0 [1]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[6] 
       (.C(axi_aclk),
        .CE(p_1_in__0[5]),
        .D(axi_wdata[6]),
        .Q(\officialControl_reg_n_0_[6] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[7] 
       (.C(axi_aclk),
        .CE(p_1_in__0[5]),
        .D(axi_wdata[7]),
        .Q(\officialControl_reg_n_0_[7] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[8] 
       (.C(axi_aclk),
        .CE(p_1_in__0[15]),
        .D(axi_wdata[8]),
        .Q(\officialControl_reg_n_0_[8] ),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialControl_reg[9] 
       (.C(axi_aclk),
        .CE(p_1_in__0[15]),
        .D(axi_wdata[9]),
        .Q(\officialControl_reg_n_0_[9] ),
        .R(my9x16Fifo_inst_n_38));
  LUT4 #(
    .INIT(16'h0200)) 
    \officialData[7]_i_1 
       (.I0(p_15_in),
        .I1(axi_awaddr[1]),
        .I2(axi_awaddr[0]),
        .I3(axi_wstrb[0]),
        .O(\officialData[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \officialData[8]_i_1 
       (.I0(axi_wdata[8]),
        .I1(p_15_in),
        .I2(axi_awaddr[1]),
        .I3(axi_awaddr[0]),
        .I4(axi_wstrb[1]),
        .I5(officialData[8]),
        .O(\officialData[8]_i_1_n_0 ));
  FDRE \officialData_reg[0] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(officialData[0]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialData_reg[1] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(officialData[1]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialData_reg[2] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(officialData[2]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialData_reg[3] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(officialData[3]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialData_reg[4] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(officialData[4]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialData_reg[5] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(officialData[5]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialData_reg[6] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(officialData[6]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialData_reg[7] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(officialData[7]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialData_reg[8] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\officialData[8]_i_1_n_0 ),
        .Q(officialData[8]),
        .R(my9x16Fifo_inst_n_38));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialStatus[15]_i_1 
       (.I0(p_15_in),
        .I1(axi_wstrb[1]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialStatus[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialStatus[23]_i_1 
       (.I0(p_15_in),
        .I1(axi_wstrb[2]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialStatus[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialStatus[31]_i_1 
       (.I0(p_15_in),
        .I1(axi_wstrb[3]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialStatus[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialStatus[7]_i_1 
       (.I0(p_15_in),
        .I1(axi_wstrb[0]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialStatus[7]_i_1_n_0 ));
  FDRE \officialStatus_reg[0] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(officialStatus__0[0]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[10] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[10]),
        .Q(officialStatus__0[10]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[11] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[11]),
        .Q(officialStatus__0[11]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[12] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[12]),
        .Q(officialStatus__0[12]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[13] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[13]),
        .Q(officialStatus__0[13]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[14] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[14]),
        .Q(officialStatus__0[14]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[15] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[15]),
        .Q(officialStatus__0[15]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[16] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[16]),
        .Q(officialStatus__0[16]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[17] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[17]),
        .Q(officialStatus__0[17]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[18] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[18]),
        .Q(officialStatus__0[18]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[19] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[19]),
        .Q(officialStatus__0[19]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[1] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(officialStatus__0[1]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[20] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[20]),
        .Q(officialStatus__0[20]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[21] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[21]),
        .Q(officialStatus__0[21]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[22] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[22]),
        .Q(officialStatus__0[22]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[23] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[23]),
        .Q(officialStatus__0[23]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[24] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[24]),
        .Q(officialStatus__0[24]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[25] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[25]),
        .Q(officialStatus__0[25]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[26] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[26]),
        .Q(officialStatus__0[26]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[27] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[27]),
        .Q(officialStatus__0[27]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[28] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[28]),
        .Q(officialStatus__0[28]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[29] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[29]),
        .Q(officialStatus),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[2] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(officialStatus__0[2]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[30] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[30]),
        .Q(officialStatus__0[30]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[31] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[31]),
        .Q(officialStatus__0[31]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[3] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(officialStatus__0[3]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[4] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(officialStatus__0[4]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[5] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(officialStatus__0[5]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[6] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(officialStatus__0[6]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[7] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(officialStatus__0[7]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[8] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[8]),
        .Q(officialStatus__0[8]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \officialStatus_reg[9] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[9]),
        .Q(officialStatus__0[9]),
        .R(my9x16Fifo_inst_n_38));
  FDRE outSignal_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(outSignal_reg_1),
        .Q(outSignal_reg_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \raddr[2]_i_1 
       (.I0(axi_araddr[0]),
        .I1(axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(p_0_in_0[0]),
        .O(\raddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \raddr[3]_i_1 
       (.I0(axi_araddr[1]),
        .I1(axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(p_0_in_0[1]),
        .O(\raddr[3]_i_1_n_0 ));
  FDRE \raddr_reg[2] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\raddr[2]_i_1_n_0 ),
        .Q(p_0_in_0[0]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \raddr_reg[3] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\raddr[3]_i_1_n_0 ),
        .Q(p_0_in_0[1]),
        .R(my9x16Fifo_inst_n_38));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    shiftOut_i_3
       (.I0(\latchData_reg_n_0_[8] ),
        .I1(myParityBit),
        .I2(state__0[1]),
        .I3(\latchData_reg_n_0_[7] ),
        .I4(state__0[0]),
        .I5(p_2_in),
        .O(shiftOut_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    shiftOut_i_4
       (.I0(p_3_in),
        .I1(p_4_in),
        .I2(state__0[1]),
        .I3(p_5_in),
        .I4(state__0[0]),
        .I5(p_6_in),
        .O(shiftOut_i_4_n_0));
  FDRE shiftOut_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(shiftOut_reg_0),
        .Q(tx_out),
        .R(1'b0));
  FDRE sixteenXslower_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(sixteenXslower_reg_1),
        .Q(sixteenXslower_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1555)) 
    ticks2
       (.I0(\ticks2_reg[3]_0 [0]),
        .I1(\ticks2_reg[3]_0 [1]),
        .I2(\ticks2_reg[3]_0 [2]),
        .I3(\ticks2_reg[3]_0 [3]),
        .O(ticks2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h2666)) 
    \ticks2[1]_i_1 
       (.I0(\ticks2_reg[3]_0 [0]),
        .I1(\ticks2_reg[3]_0 [1]),
        .I2(\ticks2_reg[3]_0 [2]),
        .I3(\ticks2_reg[3]_0 [3]),
        .O(\ticks2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h3878)) 
    \ticks2[2]_i_1 
       (.I0(\ticks2_reg[3]_0 [0]),
        .I1(\ticks2_reg[3]_0 [1]),
        .I2(\ticks2_reg[3]_0 [2]),
        .I3(\ticks2_reg[3]_0 [3]),
        .O(\ticks2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h3F80)) 
    \ticks2[3]_i_1 
       (.I0(\ticks2_reg[3]_0 [0]),
        .I1(\ticks2_reg[3]_0 [1]),
        .I2(\ticks2_reg[3]_0 [2]),
        .I3(\ticks2_reg[3]_0 [3]),
        .O(\ticks2[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks2_reg[0] 
       (.C(axi_aclk),
        .CE(ticking),
        .D(ticks2_n_0),
        .Q(\ticks2_reg[3]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks2_reg[1] 
       (.C(axi_aclk),
        .CE(ticking),
        .D(\ticks2[1]_i_1_n_0 ),
        .Q(\ticks2_reg[3]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks2_reg[2] 
       (.C(axi_aclk),
        .CE(ticking),
        .D(\ticks2[2]_i_1_n_0 ),
        .Q(\ticks2_reg[3]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks2_reg[3] 
       (.C(axi_aclk),
        .CE(ticking),
        .D(\ticks2[3]_i_1_n_0 ),
        .Q(\ticks2_reg[3]_0 [3]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \ticks[0]_i_2 
       (.I0(ticks_reg[0]),
        .O(\ticks[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[0] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[0]_i_1_n_7 ),
        .Q(ticks_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\ticks_reg[0]_i_1_n_0 ,\ticks_reg[0]_i_1_n_1 ,\ticks_reg[0]_i_1_n_2 ,\ticks_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ticks_reg[0]_i_1_n_4 ,\ticks_reg[0]_i_1_n_5 ,\ticks_reg[0]_i_1_n_6 ,\ticks_reg[0]_i_1_n_7 }),
        .S({ticks_reg[3:1],\ticks[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[10] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[8]_i_1_n_5 ),
        .Q(ticks_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[11] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[8]_i_1_n_4 ),
        .Q(ticks_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[12] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[12]_i_1_n_7 ),
        .Q(ticks_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[12]_i_1 
       (.CI(\ticks_reg[8]_i_1_n_0 ),
        .CO({\ticks_reg[12]_i_1_n_0 ,\ticks_reg[12]_i_1_n_1 ,\ticks_reg[12]_i_1_n_2 ,\ticks_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[12]_i_1_n_4 ,\ticks_reg[12]_i_1_n_5 ,\ticks_reg[12]_i_1_n_6 ,\ticks_reg[12]_i_1_n_7 }),
        .S(ticks_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[13] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[12]_i_1_n_6 ),
        .Q(ticks_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[14] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[12]_i_1_n_5 ),
        .Q(ticks_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[15] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[12]_i_1_n_4 ),
        .Q(ticks_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[16] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[16]_i_1_n_7 ),
        .Q(ticks_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[16]_i_1 
       (.CI(\ticks_reg[12]_i_1_n_0 ),
        .CO({\ticks_reg[16]_i_1_n_0 ,\ticks_reg[16]_i_1_n_1 ,\ticks_reg[16]_i_1_n_2 ,\ticks_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[16]_i_1_n_4 ,\ticks_reg[16]_i_1_n_5 ,\ticks_reg[16]_i_1_n_6 ,\ticks_reg[16]_i_1_n_7 }),
        .S(ticks_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[17] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[16]_i_1_n_6 ),
        .Q(ticks_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[18] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[16]_i_1_n_5 ),
        .Q(ticks_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[19] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[16]_i_1_n_4 ),
        .Q(ticks_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[1] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[0]_i_1_n_6 ),
        .Q(ticks_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[20] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[20]_i_1_n_7 ),
        .Q(ticks_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[20]_i_1 
       (.CI(\ticks_reg[16]_i_1_n_0 ),
        .CO({\ticks_reg[20]_i_1_n_0 ,\ticks_reg[20]_i_1_n_1 ,\ticks_reg[20]_i_1_n_2 ,\ticks_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[20]_i_1_n_4 ,\ticks_reg[20]_i_1_n_5 ,\ticks_reg[20]_i_1_n_6 ,\ticks_reg[20]_i_1_n_7 }),
        .S(ticks_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[21] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[20]_i_1_n_6 ),
        .Q(ticks_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[22] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[20]_i_1_n_5 ),
        .Q(ticks_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[23] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[20]_i_1_n_4 ),
        .Q(ticks_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[24] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[24]_i_1_n_7 ),
        .Q(ticks_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[24]_i_1 
       (.CI(\ticks_reg[20]_i_1_n_0 ),
        .CO({\ticks_reg[24]_i_1_n_0 ,\ticks_reg[24]_i_1_n_1 ,\ticks_reg[24]_i_1_n_2 ,\ticks_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[24]_i_1_n_4 ,\ticks_reg[24]_i_1_n_5 ,\ticks_reg[24]_i_1_n_6 ,\ticks_reg[24]_i_1_n_7 }),
        .S(ticks_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[25] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[24]_i_1_n_6 ),
        .Q(ticks_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[26] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[24]_i_1_n_5 ),
        .Q(ticks_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[27] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[24]_i_1_n_4 ),
        .Q(ticks_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[28] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[28]_i_1_n_7 ),
        .Q(ticks_reg[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[28]_i_1 
       (.CI(\ticks_reg[24]_i_1_n_0 ),
        .CO({\ticks_reg[28]_i_1_n_0 ,\ticks_reg[28]_i_1_n_1 ,\ticks_reg[28]_i_1_n_2 ,\ticks_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[28]_i_1_n_4 ,\ticks_reg[28]_i_1_n_5 ,\ticks_reg[28]_i_1_n_6 ,\ticks_reg[28]_i_1_n_7 }),
        .S(ticks_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[29] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[28]_i_1_n_6 ),
        .Q(ticks_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[2] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[0]_i_1_n_5 ),
        .Q(ticks_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[30] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[28]_i_1_n_5 ),
        .Q(ticks_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[31] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[28]_i_1_n_4 ),
        .Q(ticks_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[32] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[32]_i_1_n_7 ),
        .Q(ticks_reg[32]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[32]_i_1 
       (.CI(\ticks_reg[28]_i_1_n_0 ),
        .CO({\ticks_reg[32]_i_1_n_0 ,\ticks_reg[32]_i_1_n_1 ,\ticks_reg[32]_i_1_n_2 ,\ticks_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[32]_i_1_n_4 ,\ticks_reg[32]_i_1_n_5 ,\ticks_reg[32]_i_1_n_6 ,\ticks_reg[32]_i_1_n_7 }),
        .S(ticks_reg[35:32]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[33] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[32]_i_1_n_6 ),
        .Q(ticks_reg[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[34] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[32]_i_1_n_5 ),
        .Q(ticks_reg[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[35] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[32]_i_1_n_4 ),
        .Q(ticks_reg[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[36] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[36]_i_1_n_7 ),
        .Q(ticks_reg[36]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[36]_i_1 
       (.CI(\ticks_reg[32]_i_1_n_0 ),
        .CO({\ticks_reg[36]_i_1_n_0 ,\ticks_reg[36]_i_1_n_1 ,\ticks_reg[36]_i_1_n_2 ,\ticks_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[36]_i_1_n_4 ,\ticks_reg[36]_i_1_n_5 ,\ticks_reg[36]_i_1_n_6 ,\ticks_reg[36]_i_1_n_7 }),
        .S(ticks_reg[39:36]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[37] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[36]_i_1_n_6 ),
        .Q(ticks_reg[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[38] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[36]_i_1_n_5 ),
        .Q(ticks_reg[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[39] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[36]_i_1_n_4 ),
        .Q(ticks_reg[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[3] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[0]_i_1_n_4 ),
        .Q(ticks_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[40] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[40]_i_1_n_7 ),
        .Q(ticks_reg[40]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[40]_i_1 
       (.CI(\ticks_reg[36]_i_1_n_0 ),
        .CO({\ticks_reg[40]_i_1_n_0 ,\ticks_reg[40]_i_1_n_1 ,\ticks_reg[40]_i_1_n_2 ,\ticks_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[40]_i_1_n_4 ,\ticks_reg[40]_i_1_n_5 ,\ticks_reg[40]_i_1_n_6 ,\ticks_reg[40]_i_1_n_7 }),
        .S(ticks_reg[43:40]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[41] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[40]_i_1_n_6 ),
        .Q(ticks_reg[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[42] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[40]_i_1_n_5 ),
        .Q(ticks_reg[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[43] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[40]_i_1_n_4 ),
        .Q(ticks_reg[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[44] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[44]_i_1_n_7 ),
        .Q(ticks_reg[44]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[44]_i_1 
       (.CI(\ticks_reg[40]_i_1_n_0 ),
        .CO({\ticks_reg[44]_i_1_n_0 ,\ticks_reg[44]_i_1_n_1 ,\ticks_reg[44]_i_1_n_2 ,\ticks_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[44]_i_1_n_4 ,\ticks_reg[44]_i_1_n_5 ,\ticks_reg[44]_i_1_n_6 ,\ticks_reg[44]_i_1_n_7 }),
        .S(ticks_reg[47:44]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[45] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[44]_i_1_n_6 ),
        .Q(ticks_reg[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[46] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[44]_i_1_n_5 ),
        .Q(ticks_reg[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[47] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[44]_i_1_n_4 ),
        .Q(ticks_reg[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[48] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[48]_i_1_n_7 ),
        .Q(ticks_reg[48]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[48]_i_1 
       (.CI(\ticks_reg[44]_i_1_n_0 ),
        .CO({\NLW_ticks_reg[48]_i_1_CO_UNCONNECTED [3:2],\ticks_reg[48]_i_1_n_2 ,\ticks_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_ticks_reg[48]_i_1_O_UNCONNECTED [3],\ticks_reg[48]_i_1_n_5 ,\ticks_reg[48]_i_1_n_6 ,\ticks_reg[48]_i_1_n_7 }),
        .S({1'b0,ticks_reg[50:48]}));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[49] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[48]_i_1_n_6 ),
        .Q(ticks_reg[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[4] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[4]_i_1_n_7 ),
        .Q(ticks_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[4]_i_1 
       (.CI(\ticks_reg[0]_i_1_n_0 ),
        .CO({\ticks_reg[4]_i_1_n_0 ,\ticks_reg[4]_i_1_n_1 ,\ticks_reg[4]_i_1_n_2 ,\ticks_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[4]_i_1_n_4 ,\ticks_reg[4]_i_1_n_5 ,\ticks_reg[4]_i_1_n_6 ,\ticks_reg[4]_i_1_n_7 }),
        .S(ticks_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[50] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[48]_i_1_n_5 ),
        .Q(ticks_reg[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[5] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[4]_i_1_n_6 ),
        .Q(ticks_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[6] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[4]_i_1_n_5 ),
        .Q(ticks_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[7] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[4]_i_1_n_4 ),
        .Q(ticks_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[8] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[8]_i_1_n_7 ),
        .Q(ticks_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[8]_i_1 
       (.CI(\ticks_reg[4]_i_1_n_0 ),
        .CO({\ticks_reg[8]_i_1_n_0 ,\ticks_reg[8]_i_1_n_1 ,\ticks_reg[8]_i_1_n_2 ,\ticks_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[8]_i_1_n_4 ,\ticks_reg[8]_i_1_n_5 ,\ticks_reg[8]_i_1_n_6 ,\ticks_reg[8]_i_1_n_7 }),
        .S(ticks_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[9] 
       (.C(axi_aclk),
        .CE(\officialControl_reg[5]_0 [0]),
        .D(\ticks_reg[8]_i_1_n_6 ),
        .Q(ticks_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \waddr[2]_i_1 
       (.I0(axi_awaddr[0]),
        .I1(axi_wvalid),
        .I2(axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(aw_en_reg_0),
        .I5(waddr[2]),
        .O(\waddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \waddr[3]_i_1 
       (.I0(axi_awaddr[1]),
        .I1(axi_wvalid),
        .I2(axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(aw_en_reg_0),
        .I5(waddr[3]),
        .O(\waddr[3]_i_1_n_0 ));
  FDRE \waddr_reg[2] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\waddr[2]_i_1_n_0 ),
        .Q(waddr[2]),
        .R(my9x16Fifo_inst_n_38));
  FDRE \waddr_reg[3] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\waddr[3]_i_1_n_0 ),
        .Q(waddr[3]),
        .R(my9x16Fifo_inst_n_38));
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
    baudClockOut,
    tx_out,
    overflow,
    wr_index,
    rd_index,
    watermark,
    enableing,
    testing,
    txBaud,
    sixteenXslowerOut,
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
  output baudClockOut;
  output tx_out;
  output overflow;
  output [4:0]wr_index;
  output [4:0]rd_index;
  output [4:0]watermark;
  output enableing;
  output testing;
  output txBaud;
  output sixteenXslowerOut;
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
  wire baudClockOut;
  wire empty;
  wire enableing;
  wire full;
  wire \inst/serial_v1_0_AXI_inst/i_/i_/i__n_0 ;
  wire n_0_414;
  wire n_0_415;
  wire n_0_416;
  wire n_0_417;
  wire n_0_418;
  wire n_0_419;
  wire n_0_420;
  wire n_0_421;
  wire n_0_422;
  wire n_0_423;
  wire n_0_424;
  wire n_0_425;
  wire n_0_427;
  wire n_0_428;
  wire n_0_429;
  wire [8:0]rd_data;
  wire [4:0]rd_index;
  wire sixteenXslowerOut;
  wire testing;
  wire tx_out;
  wire [4:0]watermark;
  wire [4:0]wr_index;

  assign axi_bresp[1] = \<const0> ;
  assign axi_bresp[0] = \<const0> ;
  assign axi_rresp[1] = \<const0> ;
  assign axi_rresp[0] = \<const0> ;
  assign overflow = \<const0> ;
  assign txBaud = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_414
       (.I0(axi_aresetn),
        .O(n_0_414));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_415
       (.I0(axi_aresetn),
        .O(n_0_415));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_416
       (.I0(axi_aresetn),
        .O(n_0_416));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_417
       (.I0(axi_aresetn),
        .O(n_0_417));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_418
       (.I0(axi_aresetn),
        .O(n_0_418));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_419
       (.I0(axi_aresetn),
        .O(n_0_419));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_420
       (.I0(axi_aresetn),
        .O(n_0_420));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_421
       (.I0(axi_aresetn),
        .O(n_0_421));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_422
       (.I0(axi_aresetn),
        .O(n_0_422));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_423
       (.I0(axi_aresetn),
        .O(n_0_423));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_424
       (.I0(axi_aresetn),
        .O(n_0_424));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_425
       (.I0(axi_aresetn),
        .O(n_0_425));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_427
       (.I0(axi_aresetn),
        .O(n_0_427));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_428
       (.I0(axi_aresetn),
        .O(n_0_428));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_429
       (.I0(axi_aresetn),
        .O(n_0_429));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial inst
       (.D({rd_data[8:5],rd_data[1:0]}),
        .Q({testing,enableing}),
        .axi_aclk(axi_aclk),
        .axi_araddr(axi_araddr[3:2]),
        .axi_aresetn(axi_aresetn),
        .axi_arready_reg(axi_arready),
        .axi_arvalid(axi_arvalid),
        .axi_awaddr(axi_awaddr[3:2]),
        .axi_awready_reg(axi_awready),
        .axi_awvalid(axi_awvalid),
        .axi_bready(axi_bready),
        .axi_bvalid(axi_bvalid),
        .axi_rdata(axi_rdata),
        .axi_rready(axi_rready),
        .axi_rvalid_reg(axi_rvalid),
        .axi_wdata(axi_wdata),
        .axi_wready_reg(axi_wready),
        .axi_wstrb(axi_wstrb),
        .axi_wvalid(axi_wvalid),
        .baudClockOut(baudClockOut),
        .empty(empty),
        .full(full),
        .outReg_reg(sixteenXslowerOut),
        .\rd_index_reg[3] (rd_data[4]),
        .\rd_index_reg[3]_0 (rd_data[2]),
        .\rd_index_reg[3]_1 (rd_data[3]),
        .\rd_index_reg[4] (rd_index),
        .tx_out(tx_out),
        .watermark(watermark),
        .\wr_index_reg[4] (wr_index));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \inst/serial_v1_0_AXI_inst/i_/i_/i_ 
       (.I0(axi_aresetn),
        .O(\inst/serial_v1_0_AXI_inst/i_/i_/i__n_0 ));
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
