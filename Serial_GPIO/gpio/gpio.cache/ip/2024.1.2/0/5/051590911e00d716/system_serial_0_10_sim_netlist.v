// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (lin64) Build 5164865 Thu Sep  5 14:36:28 MDT 2024
// Date        : Fri Nov 15 19:15:04 2024
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
    myParityBit,
    shiftOut_reg,
    shiftOut_reg_0,
    shiftOut_reg_1);
  output in_delay;
  output outReg_reg_0;
  output outReg_reg_1;
  input in_delay_reg_0;
  input axi_aclk;
  input outReg_reg_2;
  input myParityBit;
  input shiftOut_reg;
  input shiftOut_reg_0;
  input shiftOut_reg_1;

  wire axi_aclk;
  wire in_delay;
  wire in_delay_reg_0;
  wire myParityBit;
  wire outReg_reg_0;
  wire outReg_reg_1;
  wire outReg_reg_2;
  wire shiftOut_reg;
  wire shiftOut_reg_0;
  wire shiftOut_reg_1;

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
  LUT5 #(
    .INIT(32'hCFC00A0A)) 
    shiftOut_i_2
       (.I0(outReg_reg_0),
        .I1(myParityBit),
        .I2(shiftOut_reg),
        .I3(shiftOut_reg_0),
        .I4(shiftOut_reg_1),
        .O(outReg_reg_1));
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
  wire outReg_i_1_n_0;
  wire outReg_reg_0;

  FDRE in_delay_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(in_delay_reg_0),
        .Q(in_delay),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    outReg_i_1
       (.I0(in_delay_reg_0),
        .I1(in_delay),
        .O(outReg_i_1_n_0));
  FDRE outReg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(outReg_i_1_n_0),
        .Q(outReg_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "edge_detect" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_1
   (outReg_reg_0,
    outReg_reg_1,
    outReg_reg_2,
    shiftOut1_out,
    count,
    E,
    outReg_reg_3,
    axi_aclk,
    \count_reg[0] ,
    \state_reg[2] ,
    \state_reg[1] ,
    \state_reg[1]_0 ,
    \count_reg[0]_0 ,
    p_0_in_0,
    in_delay_reg_0,
    axi_arvalid,
    in_delay_reg_1,
    axi_aresetn,
    \count_reg[0]_1 ,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    \state_reg[2]_0 ,
    \count_reg[0]_2 ,
    \state_reg[0]_2 ,
    Q,
    \rd_index_reg[0] ,
    \rd_index_reg[0]_0 ,
    write_request);
  output outReg_reg_0;
  output outReg_reg_1;
  output outReg_reg_2;
  output shiftOut1_out;
  output count;
  output [0:0]E;
  output [0:0]outReg_reg_3;
  input axi_aclk;
  input \count_reg[0] ;
  input \state_reg[2] ;
  input \state_reg[1] ;
  input \state_reg[1]_0 ;
  input \count_reg[0]_0 ;
  input [1:0]p_0_in_0;
  input in_delay_reg_0;
  input axi_arvalid;
  input in_delay_reg_1;
  input axi_aresetn;
  input \count_reg[0]_1 ;
  input \state_reg[0] ;
  input \state_reg[0]_0 ;
  input [0:0]\state_reg[0]_1 ;
  input \state_reg[2]_0 ;
  input \count_reg[0]_2 ;
  input \state_reg[0]_2 ;
  input [0:0]Q;
  input \rd_index_reg[0] ;
  input [0:0]\rd_index_reg[0]_0 ;
  input write_request;

  wire [0:0]E;
  wire [0:0]Q;
  wire axi_aclk;
  wire axi_aresetn;
  wire axi_arvalid;
  wire count;
  wire \count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[0]_2 ;
  wire fifoRead;
  wire in_delay;
  wire in_delay_reg_0;
  wire in_delay_reg_1;
  wire outReg_i_1__0_n_0;
  wire outReg_reg_0;
  wire outReg_reg_1;
  wire outReg_reg_2;
  wire [0:0]outReg_reg_3;
  wire [1:0]p_0_in_0;
  wire \rd_index_reg[0] ;
  wire [0:0]\rd_index_reg[0]_0 ;
  wire read_request;
  wire shiftOut1_out;
  wire \state[0]_i_2_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_7_n_0 ;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire [0:0]\state_reg[0]_1 ;
  wire \state_reg[0]_2 ;
  wire \state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire \state_reg[2] ;
  wire \state_reg[2]_0 ;
  wire write_request;

  LUT6 #(
    .INIT(64'hA808000000000000)) 
    \count[3]_i_1 
       (.I0(axi_aresetn),
        .I1(\count_reg[0]_1 ),
        .I2(\count_reg[0]_0 ),
        .I3(\count_reg[0]_2 ),
        .I4(read_request),
        .I5(\count_reg[0] ),
        .O(count));
  LUT5 #(
    .INIT(32'h00000040)) 
    in_delay_i_1
       (.I0(p_0_in_0[1]),
        .I1(in_delay_reg_1),
        .I2(axi_arvalid),
        .I3(in_delay_reg_0),
        .I4(p_0_in_0[0]),
        .O(fifoRead));
  FDRE in_delay_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(fifoRead),
        .Q(in_delay),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \latchData_reg[8]_i_1 
       (.I0(\count_reg[0]_0 ),
        .I1(\state_reg[2] ),
        .I2(\state_reg[1]_0 ),
        .I3(read_request),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    outReg_i_1__0
       (.I0(p_0_in_0[0]),
        .I1(in_delay_reg_0),
        .I2(axi_arvalid),
        .I3(in_delay_reg_1),
        .I4(p_0_in_0[1]),
        .I5(in_delay),
        .O(outReg_i_1__0_n_0));
  FDRE outReg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(outReg_i_1__0_n_0),
        .Q(read_request),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000A2A8)) 
    \rd_index[4]_i_1 
       (.I0(read_request),
        .I1(Q),
        .I2(\rd_index_reg[0] ),
        .I3(\rd_index_reg[0]_0 ),
        .I4(write_request),
        .O(outReg_reg_3));
  LUT6 #(
    .INIT(64'h08A8000000000000)) 
    shiftOut_i_3
       (.I0(axi_aresetn),
        .I1(\count_reg[0]_1 ),
        .I2(\count_reg[0]_0 ),
        .I3(\state_reg[2] ),
        .I4(read_request),
        .I5(\count_reg[0] ),
        .O(shiftOut1_out));
  LUT4 #(
    .INIT(16'h8F80)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\count_reg[0] ),
        .I2(\state[2]_i_3_n_0 ),
        .I3(\count_reg[0]_0 ),
        .O(outReg_reg_2));
  LUT6 #(
    .INIT(64'hDC55FFFF10110000)) 
    \state[0]_i_2 
       (.I0(\count_reg[0]_0 ),
        .I1(\state_reg[1]_0 ),
        .I2(\state_reg[0]_1 ),
        .I3(\state_reg[2] ),
        .I4(read_request),
        .I5(\state_reg[0]_2 ),
        .O(\state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFDF00)) 
    \state[1]_i_1 
       (.I0(read_request),
        .I1(\state_reg[1] ),
        .I2(\count_reg[0] ),
        .I3(\state[2]_i_3_n_0 ),
        .I4(\state_reg[1]_0 ),
        .O(outReg_reg_1));
  LUT4 #(
    .INIT(16'h8F80)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\count_reg[0] ),
        .I2(\state[2]_i_3_n_0 ),
        .I3(\state_reg[2] ),
        .O(outReg_reg_0));
  LUT6 #(
    .INIT(64'h3030F80800000000)) 
    \state[2]_i_2 
       (.I0(\state_reg[0]_1 ),
        .I1(\state_reg[2] ),
        .I2(\state_reg[1]_0 ),
        .I3(\state_reg[2]_0 ),
        .I4(\count_reg[0]_0 ),
        .I5(read_request),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB8000000)) 
    \state[2]_i_3 
       (.I0(\state_reg[0] ),
        .I1(axi_aresetn),
        .I2(\state_reg[0]_0 ),
        .I3(read_request),
        .I4(\count_reg[0] ),
        .I5(\state[2]_i_7_n_0 ),
        .O(\state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \state[2]_i_7 
       (.I0(read_request),
        .I1(\state_reg[2] ),
        .I2(\state_reg[1]_0 ),
        .I3(\count_reg[0]_0 ),
        .I4(axi_aresetn),
        .O(\state[2]_i_7_n_0 ));
endmodule

(* ORIG_REF_NAME = "edge_detect" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_2
   (write_request,
    p_19_in,
    E,
    \wr_index_reg[3] ,
    \wr_index_reg[3]_0 ,
    \wr_index_reg[3]_1 ,
    \wr_index_reg[3]_2 ,
    \wr_index_reg[3]_3 ,
    \wr_index_reg[3]_4 ,
    \wr_index_reg[3]_5 ,
    \wr_index_reg[3]_6 ,
    \wr_index_reg[3]_7 ,
    \wr_index_reg[3]_8 ,
    \wr_index_reg[3]_9 ,
    \wr_index_reg[3]_10 ,
    \wr_index_reg[3]_11 ,
    \wr_index_reg[3]_12 ,
    \wr_index_reg[3]_13 ,
    D,
    \officialData_reg[8] ,
    \officialData_reg[8]_0 ,
    \officialData_reg[8]_1 ,
    \officialData_reg[8]_2 ,
    \officialData_reg[8]_3 ,
    \officialData_reg[8]_4 ,
    \officialData_reg[8]_5 ,
    \officialData_reg[8]_6 ,
    \officialData_reg[8]_7 ,
    \officialData_reg[8]_8 ,
    \officialData_reg[8]_9 ,
    \officialData_reg[8]_10 ,
    \officialData_reg[8]_11 ,
    \officialData_reg[8]_12 ,
    \officialData_reg[8]_13 ,
    axi_aclk,
    waddr,
    axi_awvalid,
    axi_wvalid,
    in_delay_reg_0,
    in_delay_reg_1,
    Q,
    axi_aresetn,
    officialData,
    \FIFO_DATA_reg[7][0] ,
    \FIFO_DATA_reg[15][0] ,
    \FIFO_DATA_reg[3][0] ,
    \FIFO_DATA_reg[11][0] ,
    \FIFO_DATA_reg[5][0] ,
    \FIFO_DATA_reg[13][0] ,
    \FIFO_DATA_reg[1][0] ,
    \FIFO_DATA_reg[9][0] ,
    \FIFO_DATA_reg[6][0] ,
    \FIFO_DATA_reg[14][0] ,
    \FIFO_DATA_reg[4][0] ,
    \FIFO_DATA_reg[12][0] ,
    \FIFO_DATA_reg[2][0] ,
    \FIFO_DATA_reg[10][0] ,
    \FIFO_DATA_reg[0][0] ,
    \FIFO_DATA_reg[8][0] );
  output write_request;
  output p_19_in;
  output [0:0]E;
  output [0:0]\wr_index_reg[3] ;
  output [0:0]\wr_index_reg[3]_0 ;
  output [0:0]\wr_index_reg[3]_1 ;
  output [0:0]\wr_index_reg[3]_2 ;
  output [0:0]\wr_index_reg[3]_3 ;
  output [0:0]\wr_index_reg[3]_4 ;
  output [0:0]\wr_index_reg[3]_5 ;
  output [0:0]\wr_index_reg[3]_6 ;
  output [0:0]\wr_index_reg[3]_7 ;
  output [0:0]\wr_index_reg[3]_8 ;
  output [0:0]\wr_index_reg[3]_9 ;
  output [0:0]\wr_index_reg[3]_10 ;
  output [0:0]\wr_index_reg[3]_11 ;
  output [0:0]\wr_index_reg[3]_12 ;
  output [0:0]\wr_index_reg[3]_13 ;
  output [8:0]D;
  output [8:0]\officialData_reg[8] ;
  output [8:0]\officialData_reg[8]_0 ;
  output [8:0]\officialData_reg[8]_1 ;
  output [8:0]\officialData_reg[8]_2 ;
  output [8:0]\officialData_reg[8]_3 ;
  output [8:0]\officialData_reg[8]_4 ;
  output [8:0]\officialData_reg[8]_5 ;
  output [8:0]\officialData_reg[8]_6 ;
  output [8:0]\officialData_reg[8]_7 ;
  output [8:0]\officialData_reg[8]_8 ;
  output [8:0]\officialData_reg[8]_9 ;
  output [8:0]\officialData_reg[8]_10 ;
  output [8:0]\officialData_reg[8]_11 ;
  output [8:0]\officialData_reg[8]_12 ;
  output [8:0]\officialData_reg[8]_13 ;
  input axi_aclk;
  input [1:0]waddr;
  input axi_awvalid;
  input axi_wvalid;
  input in_delay_reg_0;
  input in_delay_reg_1;
  input [3:0]Q;
  input axi_aresetn;
  input [8:0]officialData;
  input \FIFO_DATA_reg[7][0] ;
  input \FIFO_DATA_reg[15][0] ;
  input \FIFO_DATA_reg[3][0] ;
  input \FIFO_DATA_reg[11][0] ;
  input \FIFO_DATA_reg[5][0] ;
  input \FIFO_DATA_reg[13][0] ;
  input \FIFO_DATA_reg[1][0] ;
  input \FIFO_DATA_reg[9][0] ;
  input \FIFO_DATA_reg[6][0] ;
  input \FIFO_DATA_reg[14][0] ;
  input \FIFO_DATA_reg[4][0] ;
  input \FIFO_DATA_reg[12][0] ;
  input \FIFO_DATA_reg[2][0] ;
  input \FIFO_DATA_reg[10][0] ;
  input \FIFO_DATA_reg[0][0] ;
  input \FIFO_DATA_reg[8][0] ;

  wire [8:0]D;
  wire [0:0]E;
  wire \FIFO_DATA_reg[0][0] ;
  wire \FIFO_DATA_reg[10][0] ;
  wire \FIFO_DATA_reg[11][0] ;
  wire \FIFO_DATA_reg[12][0] ;
  wire \FIFO_DATA_reg[13][0] ;
  wire \FIFO_DATA_reg[14][0] ;
  wire \FIFO_DATA_reg[15][0] ;
  wire \FIFO_DATA_reg[1][0] ;
  wire \FIFO_DATA_reg[2][0] ;
  wire \FIFO_DATA_reg[3][0] ;
  wire \FIFO_DATA_reg[4][0] ;
  wire \FIFO_DATA_reg[5][0] ;
  wire \FIFO_DATA_reg[6][0] ;
  wire \FIFO_DATA_reg[7][0] ;
  wire \FIFO_DATA_reg[8][0] ;
  wire \FIFO_DATA_reg[9][0] ;
  wire [3:0]Q;
  wire axi_aclk;
  wire axi_aresetn;
  wire axi_awvalid;
  wire axi_wvalid;
  wire fifoWrite;
  wire in_delay;
  wire in_delay_reg_0;
  wire in_delay_reg_1;
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
  wire outReg_i_1__1_n_0;
  wire p_19_in;
  wire [1:0]waddr;
  wire [0:0]\wr_index_reg[3] ;
  wire [0:0]\wr_index_reg[3]_0 ;
  wire [0:0]\wr_index_reg[3]_1 ;
  wire [0:0]\wr_index_reg[3]_10 ;
  wire [0:0]\wr_index_reg[3]_11 ;
  wire [0:0]\wr_index_reg[3]_12 ;
  wire [0:0]\wr_index_reg[3]_13 ;
  wire [0:0]\wr_index_reg[3]_2 ;
  wire [0:0]\wr_index_reg[3]_3 ;
  wire [0:0]\wr_index_reg[3]_4 ;
  wire [0:0]\wr_index_reg[3]_5 ;
  wire [0:0]\wr_index_reg[3]_6 ;
  wire [0:0]\wr_index_reg[3]_7 ;
  wire [0:0]\wr_index_reg[3]_8 ;
  wire [0:0]\wr_index_reg[3]_9 ;
  wire write_request;

  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[0][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[0][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_12 [0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[0][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[0][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_12 [1]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[0][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[0][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_12 [2]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[0][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[0][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_12 [3]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[0][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[0][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_12 [4]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[0][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[0][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_12 [5]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[0][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[0][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_12 [6]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[0][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[0][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_12 [7]));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \FIFO_DATA[0][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(write_request),
        .I5(axi_aresetn),
        .O(\wr_index_reg[3]_13 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[0][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[0][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_12 [8]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[10][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[10][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_11 [0]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[10][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[10][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_11 [1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[10][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[10][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_11 [2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[10][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[10][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_11 [3]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[10][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[10][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_11 [4]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[10][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[10][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_11 [5]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[10][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[10][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_11 [6]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[10][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[10][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_11 [7]));
  LUT6 #(
    .INIT(64'h00200000FFFFFFFF)) 
    \FIFO_DATA[10][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(write_request),
        .I5(axi_aresetn),
        .O(\wr_index_reg[3]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[10][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[10][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_11 [8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[11][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[11][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[11][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[11][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[11][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[11][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[11][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[11][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[11][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[11][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[11][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[11][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[11][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[11][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[11][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[11][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_1 [7]));
  LUT6 #(
    .INIT(64'h00800000FFFFFFFF)) 
    \FIFO_DATA[11][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(write_request),
        .I5(axi_aresetn),
        .O(\wr_index_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[11][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[11][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_1 [8]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[12][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[12][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_9 [0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[12][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[12][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_9 [1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[12][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[12][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_9 [2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[12][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[12][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_9 [3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[12][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[12][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_9 [4]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[12][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[12][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_9 [5]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[12][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[12][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_9 [6]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[12][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[12][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_9 [7]));
  LUT6 #(
    .INIT(64'h02000000FFFFFFFF)) 
    \FIFO_DATA[12][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(write_request),
        .I5(axi_aresetn),
        .O(\wr_index_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[12][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[12][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_9 [8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[13][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[13][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_3 [0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[13][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[13][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_3 [1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[13][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[13][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_3 [2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[13][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[13][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_3 [3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[13][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[13][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_3 [4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[13][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[13][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_3 [5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[13][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[13][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_3 [6]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[13][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[13][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_3 [7]));
  LUT6 #(
    .INIT(64'h20000000FFFFFFFF)) 
    \FIFO_DATA[13][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(write_request),
        .I5(axi_aresetn),
        .O(\wr_index_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[13][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[13][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_3 [8]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[14][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[14][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_7 [0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[14][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[14][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_7 [1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[14][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[14][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_7 [2]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[14][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[14][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_7 [3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[14][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[14][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_7 [4]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[14][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[14][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_7 [5]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[14][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[14][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_7 [6]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[14][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[14][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_7 [7]));
  LUT6 #(
    .INIT(64'h20000000FFFFFFFF)) 
    \FIFO_DATA[14][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(write_request),
        .I5(axi_aresetn),
        .O(\wr_index_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[14][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[14][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_7 [8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[15][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[15][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8] [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[15][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[15][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8] [1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[15][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[15][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8] [2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[15][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[15][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8] [3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[15][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[15][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8] [4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[15][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[15][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8] [5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[15][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[15][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8] [6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[15][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[15][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8] [7]));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \FIFO_DATA[15][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(write_request),
        .I5(axi_aresetn),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[15][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[15][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8] [8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[1][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[1][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_4 [0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[1][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[1][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_4 [1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[1][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[1][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_4 [2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[1][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[1][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_4 [3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[1][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[1][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_4 [4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[1][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[1][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_4 [5]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[1][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[1][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_4 [6]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[1][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[1][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_4 [7]));
  LUT6 #(
    .INIT(64'h00100000FFFFFFFF)) 
    \FIFO_DATA[1][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(write_request),
        .I5(axi_aresetn),
        .O(\wr_index_reg[3]_12 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[1][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[1][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_4 [8]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[2][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[2][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_10 [0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[2][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[2][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_10 [1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[2][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[2][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_10 [2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[2][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[2][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_10 [3]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[2][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[2][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_10 [4]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[2][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[2][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_10 [5]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[2][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[2][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_10 [6]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[2][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[2][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_10 [7]));
  LUT6 #(
    .INIT(64'h00100000FFFFFFFF)) 
    \FIFO_DATA[2][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(write_request),
        .I5(axi_aresetn),
        .O(\wr_index_reg[3]_11 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[2][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[2][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_10 [8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[3][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[3][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[3][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[3][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[3][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[3][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[3][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[3][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[3][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[3][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[3][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[3][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[3][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[3][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[3][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[3][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_0 [7]));
  LUT6 #(
    .INIT(64'h00400000FFFFFFFF)) 
    \FIFO_DATA[3][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(write_request),
        .I5(axi_aresetn),
        .O(\wr_index_reg[3]_10 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[3][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[3][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[4][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[4][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_8 [0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[4][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[4][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_8 [1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[4][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[4][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_8 [2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[4][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[4][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_8 [3]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[4][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[4][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_8 [4]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[4][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[4][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_8 [5]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[4][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[4][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_8 [6]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[4][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[4][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_8 [7]));
  LUT6 #(
    .INIT(64'h01000000FFFFFFFF)) 
    \FIFO_DATA[4][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(write_request),
        .I5(axi_aresetn),
        .O(\wr_index_reg[3]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[4][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[4][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_8 [8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[5][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[5][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[5][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[5][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[5][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[5][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[5][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[5][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[5][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[5][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_2 [4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[5][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[5][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_2 [5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[5][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[5][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_2 [6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[5][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[5][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_2 [7]));
  LUT6 #(
    .INIT(64'h10000000FFFFFFFF)) 
    \FIFO_DATA[5][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(write_request),
        .I5(axi_aresetn),
        .O(\wr_index_reg[3]_8 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[5][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[5][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_2 [8]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[6][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[6][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_6 [0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[6][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[6][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_6 [1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[6][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[6][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_6 [2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[6][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[6][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_6 [3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[6][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[6][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_6 [4]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[6][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[6][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_6 [5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[6][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[6][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_6 [6]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[6][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[6][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_6 [7]));
  LUT6 #(
    .INIT(64'h10000000FFFFFFFF)) 
    \FIFO_DATA[6][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(write_request),
        .I5(axi_aresetn),
        .O(\wr_index_reg[3]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[6][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[6][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_6 [8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[7][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[7][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[7][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[7][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[7][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[7][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[7][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[7][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[7][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[7][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[7][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[7][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[7][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[7][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[7][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[7][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h40000000FFFFFFFF)) 
    \FIFO_DATA[7][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(write_request),
        .I5(axi_aresetn),
        .O(\wr_index_reg[3]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[7][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[7][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[8][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[8][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_13 [0]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[8][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[8][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_13 [1]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[8][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[8][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_13 [2]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[8][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[8][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_13 [3]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[8][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[8][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_13 [4]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[8][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[8][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_13 [5]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[8][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[8][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_13 [6]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[8][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[8][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_13 [7]));
  LUT6 #(
    .INIT(64'h00020000FFFFFFFF)) 
    \FIFO_DATA[8][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(write_request),
        .I5(axi_aresetn),
        .O(\wr_index_reg[3]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[8][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[8][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_13 [8]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[9][0]_i_1 
       (.I0(officialData[0]),
        .I1(\FIFO_DATA_reg[9][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_5 [0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[9][1]_i_1 
       (.I0(officialData[1]),
        .I1(\FIFO_DATA_reg[9][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_5 [1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[9][2]_i_1 
       (.I0(officialData[2]),
        .I1(\FIFO_DATA_reg[9][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_5 [2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[9][3]_i_1 
       (.I0(officialData[3]),
        .I1(\FIFO_DATA_reg[9][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_5 [3]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[9][4]_i_1 
       (.I0(officialData[4]),
        .I1(\FIFO_DATA_reg[9][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_5 [4]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[9][5]_i_1 
       (.I0(officialData[5]),
        .I1(\FIFO_DATA_reg[9][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_5 [5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[9][6]_i_1 
       (.I0(officialData[6]),
        .I1(\FIFO_DATA_reg[9][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_5 [6]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[9][7]_i_1 
       (.I0(officialData[7]),
        .I1(\FIFO_DATA_reg[9][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_5 [7]));
  LUT6 #(
    .INIT(64'h00200000FFFFFFFF)) 
    \FIFO_DATA[9][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(write_request),
        .I5(axi_aresetn),
        .O(\wr_index_reg[3]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \FIFO_DATA[9][8]_i_2 
       (.I0(officialData[8]),
        .I1(\FIFO_DATA_reg[9][0] ),
        .I2(write_request),
        .I3(axi_aresetn),
        .O(\officialData_reg[8]_5 [8]));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    in_delay_i_1__0
       (.I0(axi_awvalid),
        .I1(axi_wvalid),
        .I2(in_delay_reg_0),
        .I3(in_delay_reg_1),
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
       (.I0(in_delay_reg_1),
        .I1(in_delay_reg_0),
        .I2(axi_wvalid),
        .I3(axi_awvalid),
        .O(p_19_in));
  LUT4 #(
    .INIT(16'h0010)) 
    outReg_i_1__1
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .I2(p_19_in),
        .I3(in_delay),
        .O(outReg_i_1__1_n_0));
  FDRE outReg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(outReg_i_1__1_n_0),
        .Q(write_request),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my9x16Fifo
   (watermark,
    Q,
    \rd_index_reg[4]_0 ,
    outReg_reg,
    outReg_reg_0,
    outReg_reg_1,
    p_19_in,
    SR,
    full,
    empty,
    shiftOut1_out,
    count,
    E,
    \officialControl_reg[0] ,
    \rd_index_reg[3]_0 ,
    \rd_index_reg[3]_1 ,
    \rd_index_reg[3]_2 ,
    D,
    \officialBaudRate_reg[8] ,
    axi_aclk,
    \count_reg[0] ,
    \state_reg[2] ,
    \state_reg[1] ,
    \state_reg[1]_0 ,
    \count_reg[0]_0 ,
    waddr,
    axi_awvalid,
    axi_wvalid,
    in_delay_reg,
    in_delay_reg_0,
    p_0_in_0,
    in_delay_reg_1,
    axi_arvalid,
    in_delay_reg_2,
    axi_aresetn,
    officialData,
    \count_reg[0]_1 ,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    \axi_rdata_reg[8] ,
    \state_reg[2]_0 ,
    \count_reg[0]_2 ,
    \state_reg[0]_1 ,
    myParityBit_reg_i_1_0,
    myParityBit_reg_i_1_1,
    \axi_rdata_reg[8]_0 ,
    \axi_rdata_reg[8]_1 );
  output [4:0]watermark;
  output [4:0]Q;
  output [4:0]\rd_index_reg[4]_0 ;
  output outReg_reg;
  output outReg_reg_0;
  output outReg_reg_1;
  output p_19_in;
  output [0:0]SR;
  output full;
  output empty;
  output shiftOut1_out;
  output count;
  output [0:0]E;
  output \officialControl_reg[0] ;
  output \rd_index_reg[3]_0 ;
  output \rd_index_reg[3]_1 ;
  output \rd_index_reg[3]_2 ;
  output [5:0]D;
  output [8:0]\officialBaudRate_reg[8] ;
  input axi_aclk;
  input \count_reg[0] ;
  input \state_reg[2] ;
  input \state_reg[1] ;
  input \state_reg[1]_0 ;
  input \count_reg[0]_0 ;
  input [1:0]waddr;
  input axi_awvalid;
  input axi_wvalid;
  input in_delay_reg;
  input in_delay_reg_0;
  input [1:0]p_0_in_0;
  input in_delay_reg_1;
  input axi_arvalid;
  input in_delay_reg_2;
  input axi_aresetn;
  input [8:0]officialData;
  input \count_reg[0]_1 ;
  input \state_reg[0] ;
  input \state_reg[0]_0 ;
  input [8:0]\axi_rdata_reg[8] ;
  input \state_reg[2]_0 ;
  input \count_reg[0]_2 ;
  input \state_reg[0]_1 ;
  input myParityBit_reg_i_1_0;
  input myParityBit_reg_i_1_1;
  input [8:0]\axi_rdata_reg[8]_0 ;
  input [8:0]\axi_rdata_reg[8]_1 ;

  wire [5:0]D;
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
  wire [4:0]Q;
  wire [0:0]SR;
  wire axi_aclk;
  wire axi_aresetn;
  wire axi_arvalid;
  wire axi_awvalid;
  wire [8:0]\axi_rdata_reg[8] ;
  wire [8:0]\axi_rdata_reg[8]_0 ;
  wire [8:0]\axi_rdata_reg[8]_1 ;
  wire axi_wvalid;
  wire count;
  wire \count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[0]_2 ;
  wire empty;
  wire empty_INST_0_i_1_n_0;
  wire full;
  wire in_delay_reg;
  wire in_delay_reg_0;
  wire in_delay_reg_1;
  wire in_delay_reg_2;
  wire myParityBit_reg_i_1_0;
  wire myParityBit_reg_i_1_1;
  wire myParityBit_reg_i_3_n_0;
  wire myParityBit_reg_i_4_n_0;
  wire myParityBit_reg_i_5_n_0;
  wire myParityBit_reg_i_7_n_0;
  wire [8:0]\officialBaudRate_reg[8] ;
  wire \officialControl_reg[0] ;
  wire [8:0]officialData;
  wire outReg_reg;
  wire outReg_reg_0;
  wire outReg_reg_1;
  wire [4:1]p_0_in;
  wire [1:0]p_0_in_0;
  wire [4:1]p_0_in__0;
  wire p_19_in;
  wire [8:0]p_1_in;
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
  wire rd_edge_n_6;
  wire \rd_index[0]_i_1_n_0 ;
  wire \rd_index[4]_i_3_n_0 ;
  wire \rd_index[4]_i_4_n_0 ;
  wire \rd_index_reg[3]_0 ;
  wire \rd_index_reg[3]_1 ;
  wire \rd_index_reg[3]_2 ;
  wire [4:0]\rd_index_reg[4]_0 ;
  wire shiftOut1_out;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire \state_reg[2] ;
  wire \state_reg[2]_0 ;
  wire [1:0]waddr;
  wire [4:0]watermark;
  wire \watermark[4]_INST_0_i_1_n_0 ;
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
  wire wr_edge_n_3;
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

  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FIFO_DATA[0][8]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\FIFO_DATA[0][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FIFO_DATA[10][8]_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\FIFO_DATA[10][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \FIFO_DATA[11][8]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\FIFO_DATA[11][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \FIFO_DATA[12][8]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\FIFO_DATA[12][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FIFO_DATA[13][8]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\FIFO_DATA[13][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FIFO_DATA[14][8]_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\FIFO_DATA[14][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FIFO_DATA[15][8]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\FIFO_DATA[15][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FIFO_DATA[1][8]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\FIFO_DATA[1][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FIFO_DATA[2][8]_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\FIFO_DATA[2][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    \FIFO_DATA[3][8]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\FIFO_DATA[3][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FIFO_DATA[4][8]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\FIFO_DATA[4][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FIFO_DATA[5][8]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\FIFO_DATA[5][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FIFO_DATA[6][8]_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\FIFO_DATA[6][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FIFO_DATA[7][8]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\FIFO_DATA[7][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \FIFO_DATA[8][8]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\FIFO_DATA[8][8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FIFO_DATA[9][8]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\FIFO_DATA[9][8]_i_3_n_0 ));
  FDRE \FIFO_DATA_reg[0][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_17),
        .D(wr_edge_n_152),
        .Q(\FIFO_DATA_reg[0]_15 [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[0][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_17),
        .D(wr_edge_n_151),
        .Q(\FIFO_DATA_reg[0]_15 [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[0][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_17),
        .D(wr_edge_n_150),
        .Q(\FIFO_DATA_reg[0]_15 [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[0][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_17),
        .D(wr_edge_n_149),
        .Q(\FIFO_DATA_reg[0]_15 [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[0][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_17),
        .D(wr_edge_n_148),
        .Q(\FIFO_DATA_reg[0]_15 [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[0][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_17),
        .D(wr_edge_n_147),
        .Q(\FIFO_DATA_reg[0]_15 [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[0][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_17),
        .D(wr_edge_n_146),
        .Q(\FIFO_DATA_reg[0]_15 [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[0][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_17),
        .D(wr_edge_n_145),
        .Q(\FIFO_DATA_reg[0]_15 [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[0][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_17),
        .D(wr_edge_n_144),
        .Q(\FIFO_DATA_reg[0]_15 [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[10][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_7),
        .D(wr_edge_n_143),
        .Q(\FIFO_DATA_reg[10]_5 [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[10][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_7),
        .D(wr_edge_n_142),
        .Q(\FIFO_DATA_reg[10]_5 [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[10][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_7),
        .D(wr_edge_n_141),
        .Q(\FIFO_DATA_reg[10]_5 [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[10][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_7),
        .D(wr_edge_n_140),
        .Q(\FIFO_DATA_reg[10]_5 [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[10][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_7),
        .D(wr_edge_n_139),
        .Q(\FIFO_DATA_reg[10]_5 [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[10][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_7),
        .D(wr_edge_n_138),
        .Q(\FIFO_DATA_reg[10]_5 [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[10][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_7),
        .D(wr_edge_n_137),
        .Q(\FIFO_DATA_reg[10]_5 [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[10][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_7),
        .D(wr_edge_n_136),
        .Q(\FIFO_DATA_reg[10]_5 [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[10][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_7),
        .D(wr_edge_n_135),
        .Q(\FIFO_DATA_reg[10]_5 [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[11][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_6),
        .D(wr_edge_n_53),
        .Q(\FIFO_DATA_reg[11]_4 [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[11][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_6),
        .D(wr_edge_n_52),
        .Q(\FIFO_DATA_reg[11]_4 [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[11][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_6),
        .D(wr_edge_n_51),
        .Q(\FIFO_DATA_reg[11]_4 [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[11][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_6),
        .D(wr_edge_n_50),
        .Q(\FIFO_DATA_reg[11]_4 [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[11][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_6),
        .D(wr_edge_n_49),
        .Q(\FIFO_DATA_reg[11]_4 [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[11][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_6),
        .D(wr_edge_n_48),
        .Q(\FIFO_DATA_reg[11]_4 [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[11][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_6),
        .D(wr_edge_n_47),
        .Q(\FIFO_DATA_reg[11]_4 [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[11][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_6),
        .D(wr_edge_n_46),
        .Q(\FIFO_DATA_reg[11]_4 [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[11][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_6),
        .D(wr_edge_n_45),
        .Q(\FIFO_DATA_reg[11]_4 [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[12][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_5),
        .D(wr_edge_n_125),
        .Q(\FIFO_DATA_reg[12]_3 [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[12][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_5),
        .D(wr_edge_n_124),
        .Q(\FIFO_DATA_reg[12]_3 [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[12][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_5),
        .D(wr_edge_n_123),
        .Q(\FIFO_DATA_reg[12]_3 [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[12][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_5),
        .D(wr_edge_n_122),
        .Q(\FIFO_DATA_reg[12]_3 [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[12][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_5),
        .D(wr_edge_n_121),
        .Q(\FIFO_DATA_reg[12]_3 [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[12][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_5),
        .D(wr_edge_n_120),
        .Q(\FIFO_DATA_reg[12]_3 [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[12][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_5),
        .D(wr_edge_n_119),
        .Q(\FIFO_DATA_reg[12]_3 [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[12][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_5),
        .D(wr_edge_n_118),
        .Q(\FIFO_DATA_reg[12]_3 [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[12][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_5),
        .D(wr_edge_n_117),
        .Q(\FIFO_DATA_reg[12]_3 [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[13][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_4),
        .D(wr_edge_n_71),
        .Q(\FIFO_DATA_reg[13]_2 [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[13][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_4),
        .D(wr_edge_n_70),
        .Q(\FIFO_DATA_reg[13]_2 [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[13][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_4),
        .D(wr_edge_n_69),
        .Q(\FIFO_DATA_reg[13]_2 [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[13][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_4),
        .D(wr_edge_n_68),
        .Q(\FIFO_DATA_reg[13]_2 [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[13][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_4),
        .D(wr_edge_n_67),
        .Q(\FIFO_DATA_reg[13]_2 [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[13][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_4),
        .D(wr_edge_n_66),
        .Q(\FIFO_DATA_reg[13]_2 [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[13][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_4),
        .D(wr_edge_n_65),
        .Q(\FIFO_DATA_reg[13]_2 [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[13][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_4),
        .D(wr_edge_n_64),
        .Q(\FIFO_DATA_reg[13]_2 [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[13][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_4),
        .D(wr_edge_n_63),
        .Q(\FIFO_DATA_reg[13]_2 [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[14][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_3),
        .D(wr_edge_n_107),
        .Q(\FIFO_DATA_reg[14]_1 [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[14][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_3),
        .D(wr_edge_n_106),
        .Q(\FIFO_DATA_reg[14]_1 [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[14][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_3),
        .D(wr_edge_n_105),
        .Q(\FIFO_DATA_reg[14]_1 [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[14][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_3),
        .D(wr_edge_n_104),
        .Q(\FIFO_DATA_reg[14]_1 [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[14][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_3),
        .D(wr_edge_n_103),
        .Q(\FIFO_DATA_reg[14]_1 [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[14][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_3),
        .D(wr_edge_n_102),
        .Q(\FIFO_DATA_reg[14]_1 [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[14][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_3),
        .D(wr_edge_n_101),
        .Q(\FIFO_DATA_reg[14]_1 [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[14][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_3),
        .D(wr_edge_n_100),
        .Q(\FIFO_DATA_reg[14]_1 [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[14][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_3),
        .D(wr_edge_n_99),
        .Q(\FIFO_DATA_reg[14]_1 [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[15][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_2),
        .D(p_1_in[0]),
        .Q(\FIFO_DATA_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[15][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_2),
        .D(p_1_in[1]),
        .Q(\FIFO_DATA_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[15][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_2),
        .D(p_1_in[2]),
        .Q(\FIFO_DATA_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[15][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_2),
        .D(p_1_in[3]),
        .Q(\FIFO_DATA_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[15][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_2),
        .D(p_1_in[4]),
        .Q(\FIFO_DATA_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[15][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_2),
        .D(p_1_in[5]),
        .Q(\FIFO_DATA_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[15][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_2),
        .D(p_1_in[6]),
        .Q(\FIFO_DATA_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[15][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_2),
        .D(p_1_in[7]),
        .Q(\FIFO_DATA_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[15][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_2),
        .D(p_1_in[8]),
        .Q(\FIFO_DATA_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[1][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_16),
        .D(wr_edge_n_80),
        .Q(\FIFO_DATA_reg[1]_14 [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[1][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_16),
        .D(wr_edge_n_79),
        .Q(\FIFO_DATA_reg[1]_14 [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[1][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_16),
        .D(wr_edge_n_78),
        .Q(\FIFO_DATA_reg[1]_14 [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[1][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_16),
        .D(wr_edge_n_77),
        .Q(\FIFO_DATA_reg[1]_14 [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[1][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_16),
        .D(wr_edge_n_76),
        .Q(\FIFO_DATA_reg[1]_14 [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[1][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_16),
        .D(wr_edge_n_75),
        .Q(\FIFO_DATA_reg[1]_14 [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[1][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_16),
        .D(wr_edge_n_74),
        .Q(\FIFO_DATA_reg[1]_14 [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[1][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_16),
        .D(wr_edge_n_73),
        .Q(\FIFO_DATA_reg[1]_14 [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[1][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_16),
        .D(wr_edge_n_72),
        .Q(\FIFO_DATA_reg[1]_14 [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[2][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_15),
        .D(wr_edge_n_134),
        .Q(\FIFO_DATA_reg[2]_13 [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[2][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_15),
        .D(wr_edge_n_133),
        .Q(\FIFO_DATA_reg[2]_13 [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[2][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_15),
        .D(wr_edge_n_132),
        .Q(\FIFO_DATA_reg[2]_13 [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[2][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_15),
        .D(wr_edge_n_131),
        .Q(\FIFO_DATA_reg[2]_13 [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[2][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_15),
        .D(wr_edge_n_130),
        .Q(\FIFO_DATA_reg[2]_13 [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[2][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_15),
        .D(wr_edge_n_129),
        .Q(\FIFO_DATA_reg[2]_13 [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[2][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_15),
        .D(wr_edge_n_128),
        .Q(\FIFO_DATA_reg[2]_13 [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[2][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_15),
        .D(wr_edge_n_127),
        .Q(\FIFO_DATA_reg[2]_13 [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[2][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_15),
        .D(wr_edge_n_126),
        .Q(\FIFO_DATA_reg[2]_13 [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[3][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_14),
        .D(wr_edge_n_44),
        .Q(\FIFO_DATA_reg[3]_12 [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[3][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_14),
        .D(wr_edge_n_43),
        .Q(\FIFO_DATA_reg[3]_12 [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[3][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_14),
        .D(wr_edge_n_42),
        .Q(\FIFO_DATA_reg[3]_12 [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[3][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_14),
        .D(wr_edge_n_41),
        .Q(\FIFO_DATA_reg[3]_12 [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[3][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_14),
        .D(wr_edge_n_40),
        .Q(\FIFO_DATA_reg[3]_12 [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[3][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_14),
        .D(wr_edge_n_39),
        .Q(\FIFO_DATA_reg[3]_12 [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[3][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_14),
        .D(wr_edge_n_38),
        .Q(\FIFO_DATA_reg[3]_12 [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[3][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_14),
        .D(wr_edge_n_37),
        .Q(\FIFO_DATA_reg[3]_12 [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[3][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_14),
        .D(wr_edge_n_36),
        .Q(\FIFO_DATA_reg[3]_12 [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[4][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_13),
        .D(wr_edge_n_116),
        .Q(\FIFO_DATA_reg[4]_11 [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[4][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_13),
        .D(wr_edge_n_115),
        .Q(\FIFO_DATA_reg[4]_11 [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[4][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_13),
        .D(wr_edge_n_114),
        .Q(\FIFO_DATA_reg[4]_11 [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[4][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_13),
        .D(wr_edge_n_113),
        .Q(\FIFO_DATA_reg[4]_11 [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[4][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_13),
        .D(wr_edge_n_112),
        .Q(\FIFO_DATA_reg[4]_11 [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[4][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_13),
        .D(wr_edge_n_111),
        .Q(\FIFO_DATA_reg[4]_11 [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[4][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_13),
        .D(wr_edge_n_110),
        .Q(\FIFO_DATA_reg[4]_11 [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[4][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_13),
        .D(wr_edge_n_109),
        .Q(\FIFO_DATA_reg[4]_11 [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[4][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_13),
        .D(wr_edge_n_108),
        .Q(\FIFO_DATA_reg[4]_11 [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[5][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_62),
        .Q(\FIFO_DATA_reg[5]_10 [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[5][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_61),
        .Q(\FIFO_DATA_reg[5]_10 [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[5][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_60),
        .Q(\FIFO_DATA_reg[5]_10 [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[5][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_59),
        .Q(\FIFO_DATA_reg[5]_10 [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[5][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_58),
        .Q(\FIFO_DATA_reg[5]_10 [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[5][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_57),
        .Q(\FIFO_DATA_reg[5]_10 [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[5][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_56),
        .Q(\FIFO_DATA_reg[5]_10 [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[5][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_55),
        .Q(\FIFO_DATA_reg[5]_10 [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[5][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_54),
        .Q(\FIFO_DATA_reg[5]_10 [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[6][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_11),
        .D(wr_edge_n_98),
        .Q(\FIFO_DATA_reg[6]_9 [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[6][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_11),
        .D(wr_edge_n_97),
        .Q(\FIFO_DATA_reg[6]_9 [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[6][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_11),
        .D(wr_edge_n_96),
        .Q(\FIFO_DATA_reg[6]_9 [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[6][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_11),
        .D(wr_edge_n_95),
        .Q(\FIFO_DATA_reg[6]_9 [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[6][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_11),
        .D(wr_edge_n_94),
        .Q(\FIFO_DATA_reg[6]_9 [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[6][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_11),
        .D(wr_edge_n_93),
        .Q(\FIFO_DATA_reg[6]_9 [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[6][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_11),
        .D(wr_edge_n_92),
        .Q(\FIFO_DATA_reg[6]_9 [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[6][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_11),
        .D(wr_edge_n_91),
        .Q(\FIFO_DATA_reg[6]_9 [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[6][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_11),
        .D(wr_edge_n_90),
        .Q(\FIFO_DATA_reg[6]_9 [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[7][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_10),
        .D(wr_edge_n_26),
        .Q(\FIFO_DATA_reg[7]_8 [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[7][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_10),
        .D(wr_edge_n_25),
        .Q(\FIFO_DATA_reg[7]_8 [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[7][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_10),
        .D(wr_edge_n_24),
        .Q(\FIFO_DATA_reg[7]_8 [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[7][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_10),
        .D(wr_edge_n_23),
        .Q(\FIFO_DATA_reg[7]_8 [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[7][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_10),
        .D(wr_edge_n_22),
        .Q(\FIFO_DATA_reg[7]_8 [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[7][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_10),
        .D(wr_edge_n_21),
        .Q(\FIFO_DATA_reg[7]_8 [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[7][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_10),
        .D(wr_edge_n_20),
        .Q(\FIFO_DATA_reg[7]_8 [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[7][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_10),
        .D(wr_edge_n_19),
        .Q(\FIFO_DATA_reg[7]_8 [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[7][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_10),
        .D(wr_edge_n_18),
        .Q(\FIFO_DATA_reg[7]_8 [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[8][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_9),
        .D(wr_edge_n_161),
        .Q(\FIFO_DATA_reg[8]_7 [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[8][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_9),
        .D(wr_edge_n_160),
        .Q(\FIFO_DATA_reg[8]_7 [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[8][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_9),
        .D(wr_edge_n_159),
        .Q(\FIFO_DATA_reg[8]_7 [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[8][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_9),
        .D(wr_edge_n_158),
        .Q(\FIFO_DATA_reg[8]_7 [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[8][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_9),
        .D(wr_edge_n_157),
        .Q(\FIFO_DATA_reg[8]_7 [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[8][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_9),
        .D(wr_edge_n_156),
        .Q(\FIFO_DATA_reg[8]_7 [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[8][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_9),
        .D(wr_edge_n_155),
        .Q(\FIFO_DATA_reg[8]_7 [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[8][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_9),
        .D(wr_edge_n_154),
        .Q(\FIFO_DATA_reg[8]_7 [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[8][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_9),
        .D(wr_edge_n_153),
        .Q(\FIFO_DATA_reg[8]_7 [8]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[9][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_8),
        .D(wr_edge_n_89),
        .Q(\FIFO_DATA_reg[9]_6 [0]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[9][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_8),
        .D(wr_edge_n_88),
        .Q(\FIFO_DATA_reg[9]_6 [1]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[9][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_8),
        .D(wr_edge_n_87),
        .Q(\FIFO_DATA_reg[9]_6 [2]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[9][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_8),
        .D(wr_edge_n_86),
        .Q(\FIFO_DATA_reg[9]_6 [3]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[9][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_8),
        .D(wr_edge_n_85),
        .Q(\FIFO_DATA_reg[9]_6 [4]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[9][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_8),
        .D(wr_edge_n_84),
        .Q(\FIFO_DATA_reg[9]_6 [5]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[9][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_8),
        .D(wr_edge_n_83),
        .Q(\FIFO_DATA_reg[9]_6 [6]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[9][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_8),
        .D(wr_edge_n_82),
        .Q(\FIFO_DATA_reg[9]_6 [7]),
        .R(1'b0));
  FDRE \FIFO_DATA_reg[9][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_8),
        .D(wr_edge_n_81),
        .Q(\FIFO_DATA_reg[9]_6 [8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata_reg[8]_0 [0]),
        .I1(\axi_rdata_reg[8]_1 [0]),
        .I2(p_0_in_0[0]),
        .I3(\axi_rdata_reg[8] [0]),
        .I4(p_0_in_0[1]),
        .I5(\rd_index_reg[3]_0 ),
        .O(\officialBaudRate_reg[8] [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata_reg[8]_0 [1]),
        .I1(\axi_rdata_reg[8]_1 [1]),
        .I2(p_0_in_0[0]),
        .I3(\axi_rdata_reg[8] [1]),
        .I4(p_0_in_0[1]),
        .I5(D[0]),
        .O(\officialBaudRate_reg[8] [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata_reg[8]_0 [2]),
        .I1(\axi_rdata_reg[8]_1 [2]),
        .I2(p_0_in_0[0]),
        .I3(\axi_rdata_reg[8] [2]),
        .I4(p_0_in_0[1]),
        .I5(D[1]),
        .O(\officialBaudRate_reg[8] [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata_reg[8]_0 [3]),
        .I1(\axi_rdata_reg[8]_1 [3]),
        .I2(p_0_in_0[0]),
        .I3(\axi_rdata_reg[8] [3]),
        .I4(p_0_in_0[1]),
        .I5(\rd_index_reg[3]_1 ),
        .O(\officialBaudRate_reg[8] [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata_reg[8]_0 [4]),
        .I1(\axi_rdata_reg[8]_1 [4]),
        .I2(p_0_in_0[0]),
        .I3(\axi_rdata_reg[8] [4]),
        .I4(p_0_in_0[1]),
        .I5(D[2]),
        .O(\officialBaudRate_reg[8] [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata_reg[8]_0 [5]),
        .I1(\axi_rdata_reg[8]_1 [5]),
        .I2(p_0_in_0[0]),
        .I3(\axi_rdata_reg[8] [5]),
        .I4(p_0_in_0[1]),
        .I5(\rd_index_reg[3]_2 ),
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
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h80204010)) 
    empty_INST_0
       (.I0(\rd_index_reg[4]_0 [4]),
        .I1(\rd_index_reg[4]_0 [3]),
        .I2(empty_INST_0_i_1_n_0),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(empty));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    empty_INST_0_i_1
       (.I0(Q[2]),
        .I1(\rd_index_reg[4]_0 [1]),
        .I2(\rd_index_reg[4]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\rd_index_reg[4]_0 [2]),
        .O(empty_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h40108020)) 
    full_INST_0
       (.I0(\rd_index_reg[4]_0 [4]),
        .I1(\rd_index_reg[4]_0 [3]),
        .I2(empty_INST_0_i_1_n_0),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(full));
  MUXF7 myParityBit_reg_i_1
       (.I0(myParityBit_reg_i_3_n_0),
        .I1(myParityBit_reg_i_4_n_0),
        .O(\officialControl_reg[0] ),
        .S(\axi_rdata_reg[8] [0]));
  LUT6 #(
    .INIT(64'h4B78B487B4874B78)) 
    myParityBit_reg_i_3
       (.I0(myParityBit_reg_i_5_n_0),
        .I1(myParityBit_reg_i_1_0),
        .I2(\rd_index_reg[3]_0 ),
        .I3(\rd_index_reg[3]_1 ),
        .I4(myParityBit_reg_i_7_n_0),
        .I5(myParityBit_reg_i_1_1),
        .O(myParityBit_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'h6996966969966996)) 
    myParityBit_reg_i_4
       (.I0(\rd_index_reg[3]_0 ),
        .I1(\rd_index_reg[3]_1 ),
        .I2(\rd_index_reg[3]_2 ),
        .I3(myParityBit_reg_i_7_n_0),
        .I4(\axi_rdata_reg[8] [3]),
        .I5(\axi_rdata_reg[8] [2]),
        .O(myParityBit_reg_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    myParityBit_reg_i_5
       (.I0(\rd_index_reg[3]_2 ),
        .I1(\rd_index_reg[3]_1 ),
        .I2(D[3]),
        .O(myParityBit_reg_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    myParityBit_reg_i_7
       (.I0(D[2]),
        .I1(D[0]),
        .I2(D[1]),
        .O(myParityBit_reg_i_7_n_0));
  MUXF8 \rd_data[0]_INST_0 
       (.I0(\rd_data[0]_INST_0_i_1_n_0 ),
        .I1(\rd_data[0]_INST_0_i_2_n_0 ),
        .O(\rd_index_reg[3]_0 ),
        .S(\rd_index_reg[4]_0 [3]));
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
       (.I0(\FIFO_DATA_reg[3]_12 [0]),
        .I1(\FIFO_DATA_reg[2]_13 [0]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[1]_14 [0]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[0]_15 [0]),
        .O(\rd_data[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[0]_INST_0_i_4 
       (.I0(\FIFO_DATA_reg[7]_8 [0]),
        .I1(\FIFO_DATA_reg[6]_9 [0]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[5]_10 [0]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[4]_11 [0]),
        .O(\rd_data[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[0]_INST_0_i_5 
       (.I0(\FIFO_DATA_reg[11]_4 [0]),
        .I1(\FIFO_DATA_reg[10]_5 [0]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[9]_6 [0]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[8]_7 [0]),
        .O(\rd_data[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[0]_INST_0_i_6 
       (.I0(\FIFO_DATA_reg[15]_0 [0]),
        .I1(\FIFO_DATA_reg[14]_1 [0]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[13]_2 [0]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[12]_3 [0]),
        .O(\rd_data[0]_INST_0_i_6_n_0 ));
  MUXF8 \rd_data[1]_INST_0 
       (.I0(\rd_data[1]_INST_0_i_1_n_0 ),
        .I1(\rd_data[1]_INST_0_i_2_n_0 ),
        .O(D[0]),
        .S(\rd_index_reg[4]_0 [3]));
  MUXF7 \rd_data[1]_INST_0_i_1 
       (.I0(\rd_data[1]_INST_0_i_3_n_0 ),
        .I1(\rd_data[1]_INST_0_i_4_n_0 ),
        .O(\rd_data[1]_INST_0_i_1_n_0 ),
        .S(\rd_index_reg[4]_0 [2]));
  MUXF7 \rd_data[1]_INST_0_i_2 
       (.I0(\rd_data[1]_INST_0_i_5_n_0 ),
        .I1(\rd_data[1]_INST_0_i_6_n_0 ),
        .O(\rd_data[1]_INST_0_i_2_n_0 ),
        .S(\rd_index_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[1]_INST_0_i_3 
       (.I0(\FIFO_DATA_reg[3]_12 [1]),
        .I1(\FIFO_DATA_reg[2]_13 [1]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[1]_14 [1]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[0]_15 [1]),
        .O(\rd_data[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[1]_INST_0_i_4 
       (.I0(\FIFO_DATA_reg[7]_8 [1]),
        .I1(\FIFO_DATA_reg[6]_9 [1]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[5]_10 [1]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[4]_11 [1]),
        .O(\rd_data[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[1]_INST_0_i_5 
       (.I0(\FIFO_DATA_reg[11]_4 [1]),
        .I1(\FIFO_DATA_reg[10]_5 [1]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[9]_6 [1]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[8]_7 [1]),
        .O(\rd_data[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[1]_INST_0_i_6 
       (.I0(\FIFO_DATA_reg[15]_0 [1]),
        .I1(\FIFO_DATA_reg[14]_1 [1]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\FIFO_DATA_reg[13]_2 [1]),
        .I4(\rd_index_reg[4]_0 [0]),
        .I5(\FIFO_DATA_reg[12]_3 [1]),
        .O(\rd_data[1]_INST_0_i_6_n_0 ));
  MUXF8 \rd_data[2]_INST_0 
       (.I0(\rd_data[2]_INST_0_i_1_n_0 ),
        .I1(\rd_data[2]_INST_0_i_2_n_0 ),
        .O(D[1]),
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
        .O(\rd_index_reg[3]_1 ),
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
        .O(D[2]),
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
        .O(\rd_index_reg[3]_2 ),
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
        .Q(\rd_index_reg[4]_0 [4]),
        .axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .axi_arvalid(axi_arvalid),
        .count(count),
        .\count_reg[0] (\count_reg[0] ),
        .\count_reg[0]_0 (\count_reg[0]_0 ),
        .\count_reg[0]_1 (\count_reg[0]_1 ),
        .\count_reg[0]_2 (\count_reg[0]_2 ),
        .in_delay_reg_0(in_delay_reg_1),
        .in_delay_reg_1(in_delay_reg_2),
        .outReg_reg_0(outReg_reg),
        .outReg_reg_1(outReg_reg_0),
        .outReg_reg_2(outReg_reg_1),
        .outReg_reg_3(rd_edge_n_6),
        .p_0_in_0(p_0_in_0),
        .\rd_index_reg[0] (\rd_index[4]_i_3_n_0 ),
        .\rd_index_reg[0]_0 (Q[4]),
        .shiftOut1_out(shiftOut1_out),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[0]_0 (\state_reg[0]_0 ),
        .\state_reg[0]_1 (\axi_rdata_reg[8] [8]),
        .\state_reg[0]_2 (\state_reg[0]_1 ),
        .\state_reg[1] (\state_reg[1] ),
        .\state_reg[1]_0 (\state_reg[1]_0 ),
        .\state_reg[2] (\state_reg[2] ),
        .\state_reg[2]_0 (\state_reg[2]_0 ),
        .write_request(write_request));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_index[0]_i_1 
       (.I0(\rd_index_reg[4]_0 [0]),
        .O(\rd_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_index[1]_i_1 
       (.I0(\rd_index_reg[4]_0 [0]),
        .I1(\rd_index_reg[4]_0 [1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_index[2]_i_1 
       (.I0(\rd_index_reg[4]_0 [1]),
        .I1(\rd_index_reg[4]_0 [0]),
        .I2(\rd_index_reg[4]_0 [2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_index[3]_i_1 
       (.I0(\rd_index_reg[4]_0 [2]),
        .I1(\rd_index_reg[4]_0 [0]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(\rd_index_reg[4]_0 [3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rd_index[4]_i_2 
       (.I0(\rd_index_reg[4]_0 [3]),
        .I1(\rd_index_reg[4]_0 [1]),
        .I2(\rd_index_reg[4]_0 [0]),
        .I3(\rd_index_reg[4]_0 [2]),
        .I4(\rd_index_reg[4]_0 [4]),
        .O(p_0_in__0[4]));
  LUT3 #(
    .INIT(8'hDE)) 
    \rd_index[4]_i_3 
       (.I0(Q[3]),
        .I1(\rd_index[4]_i_4_n_0 ),
        .I2(\rd_index_reg[4]_0 [3]),
        .O(\rd_index[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FF7DFFDBFFBEFFE)) 
    \rd_index[4]_i_4 
       (.I0(Q[2]),
        .I1(\rd_index_reg[4]_0 [1]),
        .I2(\rd_index_reg[4]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\rd_index_reg[4]_0 [2]),
        .O(\rd_index[4]_i_4_n_0 ));
  FDRE \rd_index_reg[0] 
       (.C(axi_aclk),
        .CE(rd_edge_n_6),
        .D(\rd_index[0]_i_1_n_0 ),
        .Q(\rd_index_reg[4]_0 [0]),
        .R(SR));
  FDRE \rd_index_reg[1] 
       (.C(axi_aclk),
        .CE(rd_edge_n_6),
        .D(p_0_in__0[1]),
        .Q(\rd_index_reg[4]_0 [1]),
        .R(SR));
  FDRE \rd_index_reg[2] 
       (.C(axi_aclk),
        .CE(rd_edge_n_6),
        .D(p_0_in__0[2]),
        .Q(\rd_index_reg[4]_0 [2]),
        .R(SR));
  FDRE \rd_index_reg[3] 
       (.C(axi_aclk),
        .CE(rd_edge_n_6),
        .D(p_0_in__0[3]),
        .Q(\rd_index_reg[4]_0 [3]),
        .R(SR));
  FDRE \rd_index_reg[4] 
       (.C(axi_aclk),
        .CE(rd_edge_n_6),
        .D(p_0_in__0[4]),
        .Q(\rd_index_reg[4]_0 [4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \watermark[0]_INST_0 
       (.I0(Q[0]),
        .I1(\rd_index_reg[4]_0 [0]),
        .O(watermark[0]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \watermark[1]_INST_0 
       (.I0(\rd_index_reg[4]_0 [0]),
        .I1(Q[0]),
        .I2(\rd_index_reg[4]_0 [1]),
        .I3(Q[1]),
        .O(watermark[1]));
  LUT6 #(
    .INIT(64'h20BADF45DF4520BA)) 
    \watermark[2]_INST_0 
       (.I0(\rd_index_reg[4]_0 [1]),
        .I1(Q[0]),
        .I2(\rd_index_reg[4]_0 [0]),
        .I3(Q[1]),
        .I4(\rd_index_reg[4]_0 [2]),
        .I5(Q[2]),
        .O(watermark[2]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \watermark[3]_INST_0 
       (.I0(\watermark[4]_INST_0_i_1_n_0 ),
        .I1(\rd_index_reg[4]_0 [3]),
        .I2(Q[3]),
        .O(watermark[3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    \watermark[4]_INST_0 
       (.I0(\rd_index_reg[4]_0 [3]),
        .I1(\watermark[4]_INST_0_i_1_n_0 ),
        .I2(Q[3]),
        .I3(\rd_index_reg[4]_0 [4]),
        .I4(Q[4]),
        .O(watermark[4]));
  LUT6 #(
    .INIT(64'hA2AA2022FBFFBABB)) 
    \watermark[4]_INST_0_i_1 
       (.I0(Q[2]),
        .I1(\rd_index_reg[4]_0 [1]),
        .I2(Q[0]),
        .I3(\rd_index_reg[4]_0 [0]),
        .I4(Q[1]),
        .I5(\rd_index_reg[4]_0 [2]),
        .O(\watermark[4]_INST_0_i_1_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_2 wr_edge
       (.D({wr_edge_n_18,wr_edge_n_19,wr_edge_n_20,wr_edge_n_21,wr_edge_n_22,wr_edge_n_23,wr_edge_n_24,wr_edge_n_25,wr_edge_n_26}),
        .E(wr_edge_n_2),
        .\FIFO_DATA_reg[0][0] (\FIFO_DATA[0][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[10][0] (\FIFO_DATA[10][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[11][0] (\FIFO_DATA[11][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[12][0] (\FIFO_DATA[12][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[13][0] (\FIFO_DATA[13][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[14][0] (\FIFO_DATA[14][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[15][0] (\FIFO_DATA[15][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[1][0] (\FIFO_DATA[1][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[2][0] (\FIFO_DATA[2][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[3][0] (\FIFO_DATA[3][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[4][0] (\FIFO_DATA[4][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[5][0] (\FIFO_DATA[5][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[6][0] (\FIFO_DATA[6][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[7][0] (\FIFO_DATA[7][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[8][0] (\FIFO_DATA[8][8]_i_3_n_0 ),
        .\FIFO_DATA_reg[9][0] (\FIFO_DATA[9][8]_i_3_n_0 ),
        .Q(Q[3:0]),
        .axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .axi_awvalid(axi_awvalid),
        .axi_wvalid(axi_wvalid),
        .in_delay_reg_0(in_delay_reg),
        .in_delay_reg_1(in_delay_reg_0),
        .officialData(officialData),
        .\officialData_reg[8] (p_1_in),
        .\officialData_reg[8]_0 ({wr_edge_n_36,wr_edge_n_37,wr_edge_n_38,wr_edge_n_39,wr_edge_n_40,wr_edge_n_41,wr_edge_n_42,wr_edge_n_43,wr_edge_n_44}),
        .\officialData_reg[8]_1 ({wr_edge_n_45,wr_edge_n_46,wr_edge_n_47,wr_edge_n_48,wr_edge_n_49,wr_edge_n_50,wr_edge_n_51,wr_edge_n_52,wr_edge_n_53}),
        .\officialData_reg[8]_10 ({wr_edge_n_126,wr_edge_n_127,wr_edge_n_128,wr_edge_n_129,wr_edge_n_130,wr_edge_n_131,wr_edge_n_132,wr_edge_n_133,wr_edge_n_134}),
        .\officialData_reg[8]_11 ({wr_edge_n_135,wr_edge_n_136,wr_edge_n_137,wr_edge_n_138,wr_edge_n_139,wr_edge_n_140,wr_edge_n_141,wr_edge_n_142,wr_edge_n_143}),
        .\officialData_reg[8]_12 ({wr_edge_n_144,wr_edge_n_145,wr_edge_n_146,wr_edge_n_147,wr_edge_n_148,wr_edge_n_149,wr_edge_n_150,wr_edge_n_151,wr_edge_n_152}),
        .\officialData_reg[8]_13 ({wr_edge_n_153,wr_edge_n_154,wr_edge_n_155,wr_edge_n_156,wr_edge_n_157,wr_edge_n_158,wr_edge_n_159,wr_edge_n_160,wr_edge_n_161}),
        .\officialData_reg[8]_2 ({wr_edge_n_54,wr_edge_n_55,wr_edge_n_56,wr_edge_n_57,wr_edge_n_58,wr_edge_n_59,wr_edge_n_60,wr_edge_n_61,wr_edge_n_62}),
        .\officialData_reg[8]_3 ({wr_edge_n_63,wr_edge_n_64,wr_edge_n_65,wr_edge_n_66,wr_edge_n_67,wr_edge_n_68,wr_edge_n_69,wr_edge_n_70,wr_edge_n_71}),
        .\officialData_reg[8]_4 ({wr_edge_n_72,wr_edge_n_73,wr_edge_n_74,wr_edge_n_75,wr_edge_n_76,wr_edge_n_77,wr_edge_n_78,wr_edge_n_79,wr_edge_n_80}),
        .\officialData_reg[8]_5 ({wr_edge_n_81,wr_edge_n_82,wr_edge_n_83,wr_edge_n_84,wr_edge_n_85,wr_edge_n_86,wr_edge_n_87,wr_edge_n_88,wr_edge_n_89}),
        .\officialData_reg[8]_6 ({wr_edge_n_90,wr_edge_n_91,wr_edge_n_92,wr_edge_n_93,wr_edge_n_94,wr_edge_n_95,wr_edge_n_96,wr_edge_n_97,wr_edge_n_98}),
        .\officialData_reg[8]_7 ({wr_edge_n_99,wr_edge_n_100,wr_edge_n_101,wr_edge_n_102,wr_edge_n_103,wr_edge_n_104,wr_edge_n_105,wr_edge_n_106,wr_edge_n_107}),
        .\officialData_reg[8]_8 ({wr_edge_n_108,wr_edge_n_109,wr_edge_n_110,wr_edge_n_111,wr_edge_n_112,wr_edge_n_113,wr_edge_n_114,wr_edge_n_115,wr_edge_n_116}),
        .\officialData_reg[8]_9 ({wr_edge_n_117,wr_edge_n_118,wr_edge_n_119,wr_edge_n_120,wr_edge_n_121,wr_edge_n_122,wr_edge_n_123,wr_edge_n_124,wr_edge_n_125}),
        .p_19_in(p_19_in),
        .waddr(waddr),
        .\wr_index_reg[3] (wr_edge_n_3),
        .\wr_index_reg[3]_0 (wr_edge_n_4),
        .\wr_index_reg[3]_1 (wr_edge_n_5),
        .\wr_index_reg[3]_10 (wr_edge_n_14),
        .\wr_index_reg[3]_11 (wr_edge_n_15),
        .\wr_index_reg[3]_12 (wr_edge_n_16),
        .\wr_index_reg[3]_13 (wr_edge_n_17),
        .\wr_index_reg[3]_2 (wr_edge_n_6),
        .\wr_index_reg[3]_3 (wr_edge_n_7),
        .\wr_index_reg[3]_4 (wr_edge_n_8),
        .\wr_index_reg[3]_5 (wr_edge_n_9),
        .\wr_index_reg[3]_6 (wr_edge_n_10),
        .\wr_index_reg[3]_7 (wr_edge_n_11),
        .\wr_index_reg[3]_8 (wr_edge_n_12),
        .\wr_index_reg[3]_9 (wr_edge_n_13),
        .write_request(write_request));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_index[0]_i_1 
       (.I0(Q[0]),
        .O(\wr_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_index[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_index[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_index[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(p_0_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_index[4]_i_1 
       (.I0(axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wr_index[4]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(p_0_in[4]));
  FDRE \wr_index_reg[0] 
       (.C(axi_aclk),
        .CE(write_request),
        .D(\wr_index[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \wr_index_reg[1] 
       (.C(axi_aclk),
        .CE(write_request),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \wr_index_reg[2] 
       (.C(axi_aclk),
        .CE(write_request),
        .D(p_0_in[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \wr_index_reg[3] 
       (.C(axi_aclk),
        .CE(write_request),
        .D(p_0_in[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \wr_index_reg[4] 
       (.C(axi_aclk),
        .CE(write_request),
        .D(p_0_in[4]),
        .Q(Q[4]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial
   (watermark,
    wr_index,
    rd_index,
    rd_data,
    baudTick,
    txBaud,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    Q,
    S_AXI_ARREADY,
    axi_rdata,
    axi_rvalid_reg,
    full,
    empty,
    baudClockOut,
    axi_bvalid,
    tx_out,
    TXIdle,
    axi_aclk,
    axi_wdata,
    axi_araddr,
    axi_arvalid,
    axi_awaddr,
    axi_awvalid,
    axi_wvalid,
    axi_wstrb,
    axi_aresetn,
    axi_bready,
    axi_rready);
  output [4:0]watermark;
  output [4:0]wr_index;
  output [4:0]rd_index;
  output [8:0]rd_data;
  output baudTick;
  output txBaud;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [1:0]Q;
  output S_AXI_ARREADY;
  output [31:0]axi_rdata;
  output axi_rvalid_reg;
  output full;
  output empty;
  output baudClockOut;
  output axi_bvalid;
  output tx_out;
  output TXIdle;
  input axi_aclk;
  input [31:0]axi_wdata;
  input [1:0]axi_araddr;
  input axi_arvalid;
  input [1:0]axi_awaddr;
  input axi_awvalid;
  input axi_wvalid;
  input [3:0]axi_wstrb;
  input axi_aresetn;
  input axi_bready;
  input axi_rready;

  wire [1:0]Q;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire TXIdle;
  wire aw_en_i_1_n_0;
  wire axi_aclk;
  wire [1:0]axi_araddr;
  wire axi_aresetn;
  wire axi_arvalid;
  wire [1:0]axi_awaddr;
  wire axi_awvalid;
  wire axi_bready;
  wire axi_bvalid;
  wire axi_bvalid_i_1_n_0;
  wire [31:0]axi_rdata;
  wire axi_rready;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg;
  wire [31:0]axi_wdata;
  wire [3:0]axi_wstrb;
  wire axi_wvalid;
  wire baudClockOut;
  wire baudTick;
  wire \edge_detect_2/in_delay ;
  wire empty;
  wire full;
  wire keepCount0;
  wire latchData0;
  wire outReg_i_1__2_n_0;
  wire outSignal_i_1_n_0;
  wire [8:0]rd_data;
  wire [4:0]rd_index;
  wire serial_v1_0_AXI_inst_n_13;
  wire serial_v1_0_AXI_inst_n_4;
  wire serial_v1_0_AXI_inst_n_7;
  wire serial_v1_0_AXI_inst_n_81;
  wire shiftOut1_out;
  wire shiftOut_i_1_n_0;
  wire sixteenXslower_i_1_n_0;
  wire testIdle_i_1_n_0;
  wire [3:0]ticks2;
  wire txBaud;
  wire tx_out;
  wire [4:0]watermark;
  wire [4:0]wr_index;

  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(axi_wvalid),
        .I2(axi_awvalid),
        .I3(serial_v1_0_AXI_inst_n_13),
        .I4(axi_bvalid),
        .I5(axi_bready),
        .O(aw_en_i_1_n_0));
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
  LUT4 #(
    .INIT(16'h7444)) 
    axi_rvalid_i_1
       (.I0(axi_rready),
        .I1(axi_rvalid_reg),
        .I2(axi_arvalid),
        .I3(S_AXI_ARREADY),
        .O(axi_rvalid_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    outReg_i_1__2
       (.I0(serial_v1_0_AXI_inst_n_7),
        .I1(\edge_detect_2/in_delay ),
        .O(outReg_i_1__2_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    outSignal_i_1
       (.I0(Q[0]),
        .I1(keepCount0),
        .I2(serial_v1_0_AXI_inst_n_4),
        .O(outSignal_i_1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI serial_v1_0_AXI_inst
       (.CO(keepCount0),
        .E(latchData0),
        .Q(wr_index),
        .TXIdle(TXIdle),
        .aw_en_reg_0(serial_v1_0_AXI_inst_n_13),
        .aw_en_reg_1(aw_en_i_1_n_0),
        .axi_aclk(axi_aclk),
        .axi_araddr(axi_araddr),
        .axi_aresetn(axi_aresetn),
        .axi_arready_reg_0(S_AXI_ARREADY),
        .axi_arvalid(axi_arvalid),
        .axi_awaddr(axi_awaddr),
        .axi_awready_reg_0(S_AXI_AWREADY),
        .axi_awvalid(axi_awvalid),
        .axi_bvalid(axi_bvalid),
        .axi_bvalid_reg_0(axi_bvalid_i_1_n_0),
        .axi_rdata(axi_rdata),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_rvalid_reg_1(axi_rvalid_i_1_n_0),
        .axi_wdata(axi_wdata),
        .axi_wready_reg_0(S_AXI_WREADY),
        .axi_wstrb(axi_wstrb),
        .axi_wvalid(axi_wvalid),
        .baudClockOut(baudClockOut),
        .empty(empty),
        .full(full),
        .in_delay(\edge_detect_2/in_delay ),
        .\officialControl_reg[5]_0 (Q),
        .outReg_reg(baudTick),
        .outReg_reg_0(txBaud),
        .outReg_reg_1(serial_v1_0_AXI_inst_n_81),
        .outReg_reg_2(outReg_i_1__2_n_0),
        .outSignal_reg_0(serial_v1_0_AXI_inst_n_4),
        .outSignal_reg_1(outSignal_i_1_n_0),
        .rd_data(rd_data),
        .\rd_index_reg[4] (rd_index),
        .shiftOut1_out(shiftOut1_out),
        .shiftOut_reg_0(shiftOut_i_1_n_0),
        .sixteenXslower_reg_0(serial_v1_0_AXI_inst_n_7),
        .sixteenXslower_reg_1(sixteenXslower_i_1_n_0),
        .testIdle_reg_0(testIdle_i_1_n_0),
        .\ticks2_reg[3]_0 (ticks2),
        .tx_out(tx_out),
        .watermark(watermark));
  LUT3 #(
    .INIT(8'hB8)) 
    shiftOut_i_1
       (.I0(serial_v1_0_AXI_inst_n_81),
        .I1(shiftOut1_out),
        .I2(tx_out),
        .O(shiftOut_i_1_n_0));
  LUT6 #(
    .INIT(64'h30000000AAAAAAAA)) 
    sixteenXslower_i_1
       (.I0(serial_v1_0_AXI_inst_n_7),
        .I1(ticks2[0]),
        .I2(ticks2[2]),
        .I3(ticks2[3]),
        .I4(ticks2[1]),
        .I5(baudTick),
        .O(sixteenXslower_i_1_n_0));
  LUT4 #(
    .INIT(16'hFF80)) 
    testIdle_i_1
       (.I0(axi_aresetn),
        .I1(latchData0),
        .I2(txBaud),
        .I3(TXIdle),
        .O(testIdle_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI
   (\ticks2_reg[3]_0 ,
    outSignal_reg_0,
    outReg_reg,
    in_delay,
    sixteenXslower_reg_0,
    outReg_reg_0,
    axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    axi_bvalid,
    aw_en_reg_0,
    tx_out,
    TXIdle,
    axi_rvalid_reg_0,
    watermark,
    Q,
    \rd_index_reg[4] ,
    rd_data,
    E,
    \officialControl_reg[5]_0 ,
    axi_rdata,
    full,
    empty,
    CO,
    baudClockOut,
    shiftOut1_out,
    outReg_reg_1,
    axi_aclk,
    outReg_reg_2,
    outSignal_reg_1,
    sixteenXslower_reg_1,
    axi_bvalid_reg_0,
    aw_en_reg_1,
    shiftOut_reg_0,
    testIdle_reg_0,
    axi_rvalid_reg_1,
    axi_wdata,
    axi_araddr,
    axi_arvalid,
    axi_awaddr,
    axi_awvalid,
    axi_wvalid,
    axi_wstrb,
    axi_aresetn);
  output [3:0]\ticks2_reg[3]_0 ;
  output outSignal_reg_0;
  output outReg_reg;
  output in_delay;
  output sixteenXslower_reg_0;
  output outReg_reg_0;
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output axi_bvalid;
  output aw_en_reg_0;
  output tx_out;
  output TXIdle;
  output axi_rvalid_reg_0;
  output [4:0]watermark;
  output [4:0]Q;
  output [4:0]\rd_index_reg[4] ;
  output [8:0]rd_data;
  output [0:0]E;
  output [1:0]\officialControl_reg[5]_0 ;
  output [31:0]axi_rdata;
  output full;
  output empty;
  output [0:0]CO;
  output baudClockOut;
  output shiftOut1_out;
  output outReg_reg_1;
  input axi_aclk;
  input outReg_reg_2;
  input outSignal_reg_1;
  input sixteenXslower_reg_1;
  input axi_bvalid_reg_0;
  input aw_en_reg_1;
  input shiftOut_reg_0;
  input testIdle_reg_0;
  input axi_rvalid_reg_1;
  input [31:0]axi_wdata;
  input [1:0]axi_araddr;
  input axi_arvalid;
  input [1:0]axi_awaddr;
  input axi_awvalid;
  input axi_wvalid;
  input [3:0]axi_wstrb;
  input axi_aresetn;

  wire [0:0]CO;
  wire [0:0]E;
  wire [3:2]PARITY_CONTROL;
  wire [4:0]Q;
  wire SECOND_STOP;
  wire TXIdle;
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
  wire count;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_2_n_0 ;
  wire \count[3]_i_3_n_0 ;
  wire \count[3]_i_4_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire empty;
  wire full;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
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
  wire [50:8]keepCount_reg;
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
  wire [8:0]latchData;
  wire my9x16Fifo_inst_n_15;
  wire my9x16Fifo_inst_n_16;
  wire my9x16Fifo_inst_n_17;
  wire my9x16Fifo_inst_n_19;
  wire my9x16Fifo_inst_n_25;
  wire my9x16Fifo_inst_n_35;
  wire my9x16Fifo_inst_n_36;
  wire my9x16Fifo_inst_n_37;
  wire my9x16Fifo_inst_n_38;
  wire my9x16Fifo_inst_n_39;
  wire my9x16Fifo_inst_n_40;
  wire my9x16Fifo_inst_n_41;
  wire my9x16Fifo_inst_n_42;
  wire my9x16Fifo_inst_n_43;
  wire myParityBit;
  wire myParityBit__0;
  wire myParityBit_reg_i_6_n_0;
  wire myParityBit_reg_i_8_n_0;
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
  wire outReg_reg_2;
  wire outSignal;
  wire outSignal_reg_0;
  wire outSignal_reg_1;
  wire [1:0]p_0_in_0;
  wire p_17_in;
  wire p_19_in;
  wire [31:5]p_1_in;
  wire \raddr[2]_i_1_n_0 ;
  wire \raddr[3]_i_1_n_0 ;
  wire [8:0]rd_data;
  wire [4:0]\rd_index_reg[4] ;
  wire shiftOut1_out;
  wire shiftOut_i_4_n_0;
  wire shiftOut_i_5_n_0;
  wire shiftOut_i_6_n_0;
  wire shiftOut_reg_0;
  wire sixteenXslower_reg_0;
  wire sixteenXslower_reg_1;
  wire \state1_inferred__0/i__carry_n_2 ;
  wire \state1_inferred__0/i__carry_n_3 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state[2]_i_6_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire testIdle_reg_0;
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
  wire [3:2]\NLW_state1_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_ticks_reg[48]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_ticks_reg[48]_i_1_O_UNCONNECTED ;

  FDSE aw_en_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(aw_en_reg_1),
        .Q(aw_en_reg_0),
        .S(my9x16Fifo_inst_n_19));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
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
        .R(my9x16Fifo_inst_n_19));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_1
       (.I0(aw_en_reg_0),
        .I1(axi_awvalid),
        .I2(axi_wvalid),
        .I3(axi_awready_reg_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(my9x16Fifo_inst_n_19));
  FDRE axi_bvalid_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_reg_0),
        .Q(axi_bvalid),
        .R(my9x16Fifo_inst_n_19));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[10]_i_1 
       (.I0(officialBaudRate[10]),
        .I1(officialStatus__0[10]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[10] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[11]_i_1 
       (.I0(officialBaudRate[11]),
        .I1(officialStatus__0[11]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[11] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[12]_i_1 
       (.I0(officialBaudRate[12]),
        .I1(officialStatus__0[12]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[12] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[13]_i_1 
       (.I0(officialBaudRate[13]),
        .I1(officialStatus__0[13]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[13] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[14]_i_1 
       (.I0(officialBaudRate[14]),
        .I1(officialStatus__0[14]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[14] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[15]_i_1 
       (.I0(officialBaudRate[15]),
        .I1(officialStatus__0[15]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[15] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[16]_i_1 
       (.I0(officialBaudRate[16]),
        .I1(officialStatus__0[16]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[16] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[17]_i_1 
       (.I0(officialBaudRate[17]),
        .I1(officialStatus__0[17]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[17] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[18]_i_1 
       (.I0(officialBaudRate[18]),
        .I1(officialStatus__0[18]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[18] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[19]_i_1 
       (.I0(officialBaudRate[19]),
        .I1(officialStatus__0[19]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[19] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[20]_i_1 
       (.I0(officialBaudRate[20]),
        .I1(officialStatus__0[20]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[20] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[21]_i_1 
       (.I0(officialBaudRate[21]),
        .I1(officialStatus__0[21]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[21] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[22]_i_1 
       (.I0(officialBaudRate[22]),
        .I1(officialStatus__0[22]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[22] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[23]_i_1 
       (.I0(officialBaudRate[23]),
        .I1(officialStatus__0[23]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[23] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[24]_i_1 
       (.I0(officialBaudRate[24]),
        .I1(officialStatus__0[24]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[24] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[25]_i_1 
       (.I0(officialBaudRate[25]),
        .I1(officialStatus__0[25]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[25] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[26]_i_1 
       (.I0(officialBaudRate[26]),
        .I1(officialStatus__0[26]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[26] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[27]_i_1 
       (.I0(officialBaudRate[27]),
        .I1(officialStatus__0[27]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[27] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[28]_i_1 
       (.I0(officialBaudRate[28]),
        .I1(officialStatus__0[28]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[28] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[29]_i_1 
       (.I0(officialBaudRate[29]),
        .I1(officialStatus),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[29] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[30]_i_1 
       (.I0(officialBaudRate[30]),
        .I1(officialStatus__0[30]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[30] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(axi_arvalid),
        .I2(axi_rvalid_reg_0),
        .O(p_17_in));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[31]_i_2 
       (.I0(officialBaudRate[31]),
        .I1(officialStatus__0[31]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[31] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[9]_i_1 
       (.I0(officialBaudRate[9]),
        .I1(officialStatus__0[9]),
        .I2(p_0_in_0[0]),
        .I3(\officialControl_reg_n_0_[9] ),
        .I4(p_0_in_0[1]),
        .O(\axi_rdata[9]_i_1_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(my9x16Fifo_inst_n_43),
        .Q(axi_rdata[0]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[10] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[10]_i_1_n_0 ),
        .Q(axi_rdata[10]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[11] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[11]_i_1_n_0 ),
        .Q(axi_rdata[11]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[12] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[12]_i_1_n_0 ),
        .Q(axi_rdata[12]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[13] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[13]_i_1_n_0 ),
        .Q(axi_rdata[13]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[14] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[14]_i_1_n_0 ),
        .Q(axi_rdata[14]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[15] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[15]_i_1_n_0 ),
        .Q(axi_rdata[15]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[16] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[16]_i_1_n_0 ),
        .Q(axi_rdata[16]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[17] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[17]_i_1_n_0 ),
        .Q(axi_rdata[17]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[18] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[18]_i_1_n_0 ),
        .Q(axi_rdata[18]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[19] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[19]_i_1_n_0 ),
        .Q(axi_rdata[19]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[1] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(my9x16Fifo_inst_n_42),
        .Q(axi_rdata[1]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[20] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[20]_i_1_n_0 ),
        .Q(axi_rdata[20]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[21] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[21]_i_1_n_0 ),
        .Q(axi_rdata[21]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[22] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[22]_i_1_n_0 ),
        .Q(axi_rdata[22]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[23] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[23]_i_1_n_0 ),
        .Q(axi_rdata[23]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[24] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[24]_i_1_n_0 ),
        .Q(axi_rdata[24]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[25] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[25]_i_1_n_0 ),
        .Q(axi_rdata[25]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[26] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[26]_i_1_n_0 ),
        .Q(axi_rdata[26]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[27] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[27]_i_1_n_0 ),
        .Q(axi_rdata[27]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[28] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[28]_i_1_n_0 ),
        .Q(axi_rdata[28]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[29] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[29]_i_1_n_0 ),
        .Q(axi_rdata[29]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[2] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(my9x16Fifo_inst_n_41),
        .Q(axi_rdata[2]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[30] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[30]_i_1_n_0 ),
        .Q(axi_rdata[30]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[31] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[31]_i_2_n_0 ),
        .Q(axi_rdata[31]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[3] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(my9x16Fifo_inst_n_40),
        .Q(axi_rdata[3]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[4] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(my9x16Fifo_inst_n_39),
        .Q(axi_rdata[4]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[5] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(my9x16Fifo_inst_n_38),
        .Q(axi_rdata[5]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[6] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(my9x16Fifo_inst_n_37),
        .Q(axi_rdata[6]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[7] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(my9x16Fifo_inst_n_36),
        .Q(axi_rdata[7]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[8] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(my9x16Fifo_inst_n_35),
        .Q(axi_rdata[8]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \axi_rdata_reg[9] 
       (.C(axi_aclk),
        .CE(p_17_in),
        .D(\axi_rdata[9]_i_1_n_0 ),
        .Q(axi_rdata[9]),
        .R(my9x16Fifo_inst_n_19));
  FDRE axi_rvalid_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_reg_1),
        .Q(axi_rvalid_reg_0),
        .R(my9x16Fifo_inst_n_19));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
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
        .R(my9x16Fifo_inst_n_19));
  LUT2 #(
    .INIT(4'h8)) 
    baudClockOut_INST_0
       (.I0(outSignal_reg_0),
        .I1(\officialControl_reg[5]_0 [1]),
        .O(baudClockOut));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \count[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \count[2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[2] ),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \count[3]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[3] ),
        .O(\count[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000FFD5FFD5FF)) 
    \count[3]_i_3 
       (.I0(\state1_inferred__0/i__carry_n_2 ),
        .I1(PARITY_CONTROL[3]),
        .I2(PARITY_CONTROL[2]),
        .I3(\state_reg_n_0_[1] ),
        .I4(SECOND_STOP),
        .I5(\state_reg_n_0_[2] ),
        .O(\count[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[3]_i_4 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\count[3]_i_4_n_0 ));
  FDRE \count_reg[0] 
       (.C(axi_aclk),
        .CE(count),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(axi_aclk),
        .CE(count),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \count_reg[2] 
       (.C(axi_aclk),
        .CE(count),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \count_reg[3] 
       (.C(axi_aclk),
        .CE(count),
        .D(\count[3]_i_2_n_0 ),
        .Q(\count_reg_n_0_[3] ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect edge_detect_2
       (.axi_aclk(axi_aclk),
        .in_delay(in_delay),
        .in_delay_reg_0(sixteenXslower_reg_0),
        .myParityBit(myParityBit),
        .outReg_reg_0(outReg_reg_0),
        .outReg_reg_1(outReg_reg_1),
        .outReg_reg_2(outReg_reg_2),
        .shiftOut_reg(\state_reg_n_0_[0] ),
        .shiftOut_reg_0(shiftOut_i_4_n_0),
        .shiftOut_reg_1(\state_reg_n_0_[1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0 edge_detect_inst
       (.axi_aclk(axi_aclk),
        .in_delay_reg_0(outSignal_reg_0),
        .outReg_reg_0(outReg_reg));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(\count_reg_n_0_[3] ),
        .O(i__carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h84000084)) 
    i__carry_i_2
       (.I0(\officialControl_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\officialControl_reg_n_0_[0] ),
        .O(i__carry_i_2_n_0));
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
       (.I0(ticks_reg[23]),
        .I1(keepCount_reg[31]),
        .I2(ticks_reg[22]),
        .I3(keepCount_reg[30]),
        .I4(keepCount_reg[29]),
        .I5(ticks_reg[21]),
        .O(keepCount0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__0_i_2
       (.I0(ticks_reg[20]),
        .I1(keepCount_reg[28]),
        .I2(ticks_reg[19]),
        .I3(keepCount_reg[27]),
        .I4(keepCount_reg[26]),
        .I5(ticks_reg[18]),
        .O(keepCount0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__0_i_3
       (.I0(ticks_reg[17]),
        .I1(keepCount_reg[25]),
        .I2(ticks_reg[16]),
        .I3(keepCount_reg[24]),
        .I4(keepCount_reg[23]),
        .I5(ticks_reg[15]),
        .O(keepCount0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__0_i_4
       (.I0(ticks_reg[14]),
        .I1(keepCount_reg[22]),
        .I2(ticks_reg[13]),
        .I3(keepCount_reg[21]),
        .I4(keepCount_reg[20]),
        .I5(ticks_reg[12]),
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
       (.I0(ticks_reg[35]),
        .I1(keepCount_reg[43]),
        .I2(ticks_reg[34]),
        .I3(keepCount_reg[42]),
        .I4(keepCount_reg[41]),
        .I5(ticks_reg[33]),
        .O(keepCount0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__1_i_2
       (.I0(ticks_reg[32]),
        .I1(keepCount_reg[40]),
        .I2(ticks_reg[31]),
        .I3(keepCount_reg[39]),
        .I4(keepCount_reg[38]),
        .I5(ticks_reg[30]),
        .O(keepCount0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__1_i_3
       (.I0(ticks_reg[29]),
        .I1(keepCount_reg[37]),
        .I2(ticks_reg[28]),
        .I3(keepCount_reg[36]),
        .I4(keepCount_reg[35]),
        .I5(ticks_reg[27]),
        .O(keepCount0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__1_i_4
       (.I0(ticks_reg[26]),
        .I1(keepCount_reg[34]),
        .I2(ticks_reg[25]),
        .I3(keepCount_reg[33]),
        .I4(keepCount_reg[32]),
        .I5(ticks_reg[24]),
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
       (.I0(ticks_reg[47]),
        .I1(ticks_reg[46]),
        .I2(ticks_reg[45]),
        .O(keepCount0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h1001)) 
    keepCount0_carry__2_i_2
       (.I0(ticks_reg[44]),
        .I1(ticks_reg[43]),
        .I2(keepCount_reg[50]),
        .I3(ticks_reg[42]),
        .O(keepCount0_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__2_i_3
       (.I0(ticks_reg[41]),
        .I1(keepCount_reg[49]),
        .I2(ticks_reg[40]),
        .I3(keepCount_reg[48]),
        .I4(keepCount_reg[47]),
        .I5(ticks_reg[39]),
        .O(keepCount0_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__2_i_4
       (.I0(ticks_reg[38]),
        .I1(keepCount_reg[46]),
        .I2(ticks_reg[37]),
        .I3(keepCount_reg[45]),
        .I4(keepCount_reg[44]),
        .I5(ticks_reg[36]),
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
       (.I0(ticks_reg[50]),
        .I1(ticks_reg[49]),
        .I2(ticks_reg[48]),
        .O(keepCount0_carry__3_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry_i_1
       (.I0(ticks_reg[11]),
        .I1(keepCount_reg[19]),
        .I2(ticks_reg[10]),
        .I3(keepCount_reg[18]),
        .I4(keepCount_reg[17]),
        .I5(ticks_reg[9]),
        .O(keepCount0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry_i_2
       (.I0(ticks_reg[8]),
        .I1(keepCount_reg[16]),
        .I2(ticks_reg[7]),
        .I3(keepCount_reg[15]),
        .I4(keepCount_reg[14]),
        .I5(ticks_reg[6]),
        .O(keepCount0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry_i_3
       (.I0(ticks_reg[5]),
        .I1(keepCount_reg[13]),
        .I2(ticks_reg[4]),
        .I3(keepCount_reg[12]),
        .I4(keepCount_reg[11]),
        .I5(ticks_reg[3]),
        .O(keepCount0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry_i_4
       (.I0(ticks_reg[2]),
        .I1(keepCount_reg[10]),
        .I2(ticks_reg[1]),
        .I3(keepCount_reg[9]),
        .I4(keepCount_reg[8]),
        .I5(ticks_reg[0]),
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
        .I1(keepCount_reg[15]),
        .O(\keepCount[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[12]_i_3 
       (.I0(officialBaudRate[15]),
        .I1(keepCount_reg[14]),
        .O(\keepCount[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[12]_i_4 
       (.I0(officialBaudRate[14]),
        .I1(keepCount_reg[13]),
        .O(\keepCount[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[12]_i_5 
       (.I0(officialBaudRate[13]),
        .I1(keepCount_reg[12]),
        .O(\keepCount[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[16]_i_2 
       (.I0(officialBaudRate[20]),
        .I1(keepCount_reg[19]),
        .O(\keepCount[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[16]_i_3 
       (.I0(officialBaudRate[19]),
        .I1(keepCount_reg[18]),
        .O(\keepCount[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[16]_i_4 
       (.I0(officialBaudRate[18]),
        .I1(keepCount_reg[17]),
        .O(\keepCount[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[16]_i_5 
       (.I0(officialBaudRate[17]),
        .I1(keepCount_reg[16]),
        .O(\keepCount[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[20]_i_2 
       (.I0(officialBaudRate[24]),
        .I1(keepCount_reg[23]),
        .O(\keepCount[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[20]_i_3 
       (.I0(officialBaudRate[23]),
        .I1(keepCount_reg[22]),
        .O(\keepCount[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[20]_i_4 
       (.I0(officialBaudRate[22]),
        .I1(keepCount_reg[21]),
        .O(\keepCount[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[20]_i_5 
       (.I0(officialBaudRate[21]),
        .I1(keepCount_reg[20]),
        .O(\keepCount[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[24]_i_2 
       (.I0(officialBaudRate[28]),
        .I1(keepCount_reg[27]),
        .O(\keepCount[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[24]_i_3 
       (.I0(officialBaudRate[27]),
        .I1(keepCount_reg[26]),
        .O(\keepCount[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[24]_i_4 
       (.I0(officialBaudRate[26]),
        .I1(keepCount_reg[25]),
        .O(\keepCount[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[24]_i_5 
       (.I0(officialBaudRate[25]),
        .I1(keepCount_reg[24]),
        .O(\keepCount[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[28]_i_2 
       (.I0(officialBaudRate[31]),
        .I1(keepCount_reg[30]),
        .O(\keepCount[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[28]_i_3 
       (.I0(officialBaudRate[30]),
        .I1(keepCount_reg[29]),
        .O(\keepCount[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[28]_i_4 
       (.I0(officialBaudRate[29]),
        .I1(keepCount_reg[28]),
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
        .I1(keepCount_reg[11]),
        .O(\keepCount[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[8]_i_3 
       (.I0(officialBaudRate[11]),
        .I1(keepCount_reg[10]),
        .O(\keepCount[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[8]_i_4 
       (.I0(officialBaudRate[10]),
        .I1(keepCount_reg[9]),
        .O(\keepCount[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[8]_i_5 
       (.I0(officialBaudRate[9]),
        .I1(keepCount_reg[8]),
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
        .Q(keepCount_reg[10]),
        .R(1'b0));
  FDRE \keepCount_reg[11] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[8]_i_1_n_4 ),
        .Q(keepCount_reg[11]),
        .R(1'b0));
  FDRE \keepCount_reg[12] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[12]_i_1_n_7 ),
        .Q(keepCount_reg[12]),
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
        .Q(keepCount_reg[13]),
        .R(1'b0));
  FDRE \keepCount_reg[14] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[12]_i_1_n_5 ),
        .Q(keepCount_reg[14]),
        .R(1'b0));
  FDRE \keepCount_reg[15] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[12]_i_1_n_4 ),
        .Q(keepCount_reg[15]),
        .R(1'b0));
  FDRE \keepCount_reg[16] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[16]_i_1_n_7 ),
        .Q(keepCount_reg[16]),
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
        .Q(keepCount_reg[17]),
        .R(1'b0));
  FDRE \keepCount_reg[18] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[16]_i_1_n_5 ),
        .Q(keepCount_reg[18]),
        .R(1'b0));
  FDRE \keepCount_reg[19] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[16]_i_1_n_4 ),
        .Q(keepCount_reg[19]),
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
        .Q(keepCount_reg[20]),
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
        .Q(keepCount_reg[21]),
        .R(1'b0));
  FDRE \keepCount_reg[22] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[20]_i_1_n_5 ),
        .Q(keepCount_reg[22]),
        .R(1'b0));
  FDRE \keepCount_reg[23] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[20]_i_1_n_4 ),
        .Q(keepCount_reg[23]),
        .R(1'b0));
  FDRE \keepCount_reg[24] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[24]_i_1_n_7 ),
        .Q(keepCount_reg[24]),
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
        .Q(keepCount_reg[25]),
        .R(1'b0));
  FDRE \keepCount_reg[26] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[24]_i_1_n_5 ),
        .Q(keepCount_reg[26]),
        .R(1'b0));
  FDRE \keepCount_reg[27] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[24]_i_1_n_4 ),
        .Q(keepCount_reg[27]),
        .R(1'b0));
  FDRE \keepCount_reg[28] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[28]_i_1_n_7 ),
        .Q(keepCount_reg[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[28]_i_1 
       (.CI(\keepCount_reg[24]_i_1_n_0 ),
        .CO({\keepCount_reg[28]_i_1_n_0 ,\keepCount_reg[28]_i_1_n_1 ,\keepCount_reg[28]_i_1_n_2 ,\keepCount_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,officialBaudRate[31:29]}),
        .O({\keepCount_reg[28]_i_1_n_4 ,\keepCount_reg[28]_i_1_n_5 ,\keepCount_reg[28]_i_1_n_6 ,\keepCount_reg[28]_i_1_n_7 }),
        .S({keepCount_reg[31],\keepCount[28]_i_2_n_0 ,\keepCount[28]_i_3_n_0 ,\keepCount[28]_i_4_n_0 }));
  FDRE \keepCount_reg[29] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[28]_i_1_n_6 ),
        .Q(keepCount_reg[29]),
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
        .Q(keepCount_reg[30]),
        .R(1'b0));
  FDRE \keepCount_reg[31] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[28]_i_1_n_4 ),
        .Q(keepCount_reg[31]),
        .R(1'b0));
  FDRE \keepCount_reg[32] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[32]_i_1_n_7 ),
        .Q(keepCount_reg[32]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[32]_i_1 
       (.CI(\keepCount_reg[28]_i_1_n_0 ),
        .CO({\keepCount_reg[32]_i_1_n_0 ,\keepCount_reg[32]_i_1_n_1 ,\keepCount_reg[32]_i_1_n_2 ,\keepCount_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\keepCount_reg[32]_i_1_n_4 ,\keepCount_reg[32]_i_1_n_5 ,\keepCount_reg[32]_i_1_n_6 ,\keepCount_reg[32]_i_1_n_7 }),
        .S(keepCount_reg[35:32]));
  FDRE \keepCount_reg[33] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[32]_i_1_n_6 ),
        .Q(keepCount_reg[33]),
        .R(1'b0));
  FDRE \keepCount_reg[34] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[32]_i_1_n_5 ),
        .Q(keepCount_reg[34]),
        .R(1'b0));
  FDRE \keepCount_reg[35] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[32]_i_1_n_4 ),
        .Q(keepCount_reg[35]),
        .R(1'b0));
  FDRE \keepCount_reg[36] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[36]_i_1_n_7 ),
        .Q(keepCount_reg[36]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[36]_i_1 
       (.CI(\keepCount_reg[32]_i_1_n_0 ),
        .CO({\keepCount_reg[36]_i_1_n_0 ,\keepCount_reg[36]_i_1_n_1 ,\keepCount_reg[36]_i_1_n_2 ,\keepCount_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\keepCount_reg[36]_i_1_n_4 ,\keepCount_reg[36]_i_1_n_5 ,\keepCount_reg[36]_i_1_n_6 ,\keepCount_reg[36]_i_1_n_7 }),
        .S(keepCount_reg[39:36]));
  FDRE \keepCount_reg[37] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[36]_i_1_n_6 ),
        .Q(keepCount_reg[37]),
        .R(1'b0));
  FDRE \keepCount_reg[38] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[36]_i_1_n_5 ),
        .Q(keepCount_reg[38]),
        .R(1'b0));
  FDRE \keepCount_reg[39] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[36]_i_1_n_4 ),
        .Q(keepCount_reg[39]),
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
        .Q(keepCount_reg[40]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[40]_i_1 
       (.CI(\keepCount_reg[36]_i_1_n_0 ),
        .CO({\keepCount_reg[40]_i_1_n_0 ,\keepCount_reg[40]_i_1_n_1 ,\keepCount_reg[40]_i_1_n_2 ,\keepCount_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\keepCount_reg[40]_i_1_n_4 ,\keepCount_reg[40]_i_1_n_5 ,\keepCount_reg[40]_i_1_n_6 ,\keepCount_reg[40]_i_1_n_7 }),
        .S(keepCount_reg[43:40]));
  FDRE \keepCount_reg[41] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[40]_i_1_n_6 ),
        .Q(keepCount_reg[41]),
        .R(1'b0));
  FDRE \keepCount_reg[42] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[40]_i_1_n_5 ),
        .Q(keepCount_reg[42]),
        .R(1'b0));
  FDRE \keepCount_reg[43] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[40]_i_1_n_4 ),
        .Q(keepCount_reg[43]),
        .R(1'b0));
  FDRE \keepCount_reg[44] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[44]_i_1_n_7 ),
        .Q(keepCount_reg[44]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[44]_i_1 
       (.CI(\keepCount_reg[40]_i_1_n_0 ),
        .CO({\keepCount_reg[44]_i_1_n_0 ,\keepCount_reg[44]_i_1_n_1 ,\keepCount_reg[44]_i_1_n_2 ,\keepCount_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\keepCount_reg[44]_i_1_n_4 ,\keepCount_reg[44]_i_1_n_5 ,\keepCount_reg[44]_i_1_n_6 ,\keepCount_reg[44]_i_1_n_7 }),
        .S(keepCount_reg[47:44]));
  FDRE \keepCount_reg[45] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[44]_i_1_n_6 ),
        .Q(keepCount_reg[45]),
        .R(1'b0));
  FDRE \keepCount_reg[46] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[44]_i_1_n_5 ),
        .Q(keepCount_reg[46]),
        .R(1'b0));
  FDRE \keepCount_reg[47] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[44]_i_1_n_4 ),
        .Q(keepCount_reg[47]),
        .R(1'b0));
  FDRE \keepCount_reg[48] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[48]_i_1_n_7 ),
        .Q(keepCount_reg[48]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[48]_i_1 
       (.CI(\keepCount_reg[44]_i_1_n_0 ),
        .CO({\NLW_keepCount_reg[48]_i_1_CO_UNCONNECTED [3:2],\keepCount_reg[48]_i_1_n_2 ,\keepCount_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_keepCount_reg[48]_i_1_O_UNCONNECTED [3],\keepCount_reg[48]_i_1_n_5 ,\keepCount_reg[48]_i_1_n_6 ,\keepCount_reg[48]_i_1_n_7 }),
        .S({1'b0,keepCount_reg[50:48]}));
  FDRE \keepCount_reg[49] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[48]_i_1_n_6 ),
        .Q(keepCount_reg[49]),
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
        .Q(keepCount_reg[50]),
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
        .Q(keepCount_reg[8]),
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
        .Q(keepCount_reg[9]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \latchData_reg[0] 
       (.CLR(1'b0),
        .D(rd_data[0]),
        .G(E),
        .GE(1'b1),
        .Q(latchData[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \latchData_reg[1] 
       (.CLR(1'b0),
        .D(rd_data[1]),
        .G(E),
        .GE(1'b1),
        .Q(latchData[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \latchData_reg[2] 
       (.CLR(1'b0),
        .D(rd_data[2]),
        .G(E),
        .GE(1'b1),
        .Q(latchData[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \latchData_reg[3] 
       (.CLR(1'b0),
        .D(rd_data[3]),
        .G(E),
        .GE(1'b1),
        .Q(latchData[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \latchData_reg[4] 
       (.CLR(1'b0),
        .D(rd_data[4]),
        .G(E),
        .GE(1'b1),
        .Q(latchData[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \latchData_reg[5] 
       (.CLR(1'b0),
        .D(rd_data[5]),
        .G(E),
        .GE(1'b1),
        .Q(latchData[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \latchData_reg[6] 
       (.CLR(1'b0),
        .D(rd_data[6]),
        .G(E),
        .GE(1'b1),
        .Q(latchData[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \latchData_reg[7] 
       (.CLR(1'b0),
        .D(rd_data[7]),
        .G(E),
        .GE(1'b1),
        .Q(latchData[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \latchData_reg[8] 
       (.CLR(1'b0),
        .D(rd_data[8]),
        .G(E),
        .GE(1'b1),
        .Q(latchData[8]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my9x16Fifo my9x16Fifo_inst
       (.D({rd_data[8:6],rd_data[4],rd_data[2:1]}),
        .E(E),
        .Q(Q),
        .SR(my9x16Fifo_inst_n_19),
        .axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .axi_arvalid(axi_arvalid),
        .axi_awvalid(axi_awvalid),
        .\axi_rdata_reg[8] ({SECOND_STOP,\officialControl_reg_n_0_[7] ,\officialControl_reg_n_0_[6] ,\officialControl_reg[5]_0 ,PARITY_CONTROL,\officialControl_reg_n_0_[1] ,\officialControl_reg_n_0_[0] }),
        .\axi_rdata_reg[8]_0 (officialBaudRate[8:0]),
        .\axi_rdata_reg[8]_1 (officialStatus__0[8:0]),
        .axi_wvalid(axi_wvalid),
        .count(count),
        .\count_reg[0] (outReg_reg_0),
        .\count_reg[0]_0 (\state_reg_n_0_[0] ),
        .\count_reg[0]_1 (\count[3]_i_3_n_0 ),
        .\count_reg[0]_2 (\count[3]_i_4_n_0 ),
        .empty(empty),
        .full(full),
        .in_delay_reg(axi_wready_reg_0),
        .in_delay_reg_0(axi_awready_reg_0),
        .in_delay_reg_1(axi_rvalid_reg_0),
        .in_delay_reg_2(axi_arready_reg_0),
        .myParityBit_reg_i_1_0(myParityBit_reg_i_6_n_0),
        .myParityBit_reg_i_1_1(myParityBit_reg_i_8_n_0),
        .\officialBaudRate_reg[8] ({my9x16Fifo_inst_n_35,my9x16Fifo_inst_n_36,my9x16Fifo_inst_n_37,my9x16Fifo_inst_n_38,my9x16Fifo_inst_n_39,my9x16Fifo_inst_n_40,my9x16Fifo_inst_n_41,my9x16Fifo_inst_n_42,my9x16Fifo_inst_n_43}),
        .\officialControl_reg[0] (my9x16Fifo_inst_n_25),
        .officialData(officialData),
        .outReg_reg(my9x16Fifo_inst_n_15),
        .outReg_reg_0(my9x16Fifo_inst_n_16),
        .outReg_reg_1(my9x16Fifo_inst_n_17),
        .p_0_in_0(p_0_in_0),
        .p_19_in(p_19_in),
        .\rd_index_reg[3]_0 (rd_data[0]),
        .\rd_index_reg[3]_1 (rd_data[3]),
        .\rd_index_reg[3]_2 (rd_data[5]),
        .\rd_index_reg[4]_0 (\rd_index_reg[4] ),
        .shiftOut1_out(shiftOut1_out),
        .\state_reg[0] (\state[2]_i_5_n_0 ),
        .\state_reg[0]_0 (\state[2]_i_6_n_0 ),
        .\state_reg[0]_1 (\state[0]_i_3_n_0 ),
        .\state_reg[1] (\state[1]_i_2_n_0 ),
        .\state_reg[1]_0 (\state_reg_n_0_[1] ),
        .\state_reg[2] (\state_reg_n_0_[2] ),
        .\state_reg[2]_0 (\state[2]_i_4_n_0 ),
        .waddr(waddr),
        .watermark(watermark));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    myParityBit_reg
       (.CLR(1'b0),
        .D(my9x16Fifo_inst_n_25),
        .G(myParityBit__0),
        .GE(1'b1),
        .Q(myParityBit));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h6)) 
    myParityBit_reg_i_2
       (.I0(PARITY_CONTROL[3]),
        .I1(PARITY_CONTROL[2]),
        .O(myParityBit__0));
  LUT2 #(
    .INIT(4'h6)) 
    myParityBit_reg_i_6
       (.I0(\officialControl_reg_n_0_[0] ),
        .I1(\officialControl_reg_n_0_[1] ),
        .O(myParityBit_reg_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    myParityBit_reg_i_8
       (.I0(PARITY_CONTROL[2]),
        .I1(PARITY_CONTROL[3]),
        .O(myParityBit_reg_i_8_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[15]_i_1 
       (.I0(p_19_in),
        .I1(axi_wstrb[1]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialBaudRate[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[23]_i_1 
       (.I0(p_19_in),
        .I1(axi_wstrb[2]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialBaudRate[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[31]_i_1 
       (.I0(p_19_in),
        .I1(axi_wstrb[3]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialBaudRate[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[7]_i_1 
       (.I0(p_19_in),
        .I1(axi_wstrb[0]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialBaudRate[7]_i_1_n_0 ));
  FDRE \officialBaudRate_reg[0] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(officialBaudRate[0]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[10] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[10]),
        .Q(officialBaudRate[10]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[11] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[11]),
        .Q(officialBaudRate[11]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[12] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[12]),
        .Q(officialBaudRate[12]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[13] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[13]),
        .Q(officialBaudRate[13]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[14] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[14]),
        .Q(officialBaudRate[14]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[15] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[15]),
        .Q(officialBaudRate[15]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[16] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[16]),
        .Q(officialBaudRate[16]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[17] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[17]),
        .Q(officialBaudRate[17]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[18] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[18]),
        .Q(officialBaudRate[18]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[19] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[19]),
        .Q(officialBaudRate[19]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[1] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(officialBaudRate[1]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[20] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[20]),
        .Q(officialBaudRate[20]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[21] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[21]),
        .Q(officialBaudRate[21]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[22] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[22]),
        .Q(officialBaudRate[22]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[23] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[23]),
        .Q(officialBaudRate[23]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[24] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[24]),
        .Q(officialBaudRate[24]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[25] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[25]),
        .Q(officialBaudRate[25]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[26] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[26]),
        .Q(officialBaudRate[26]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[27] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[27]),
        .Q(officialBaudRate[27]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[28] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[28]),
        .Q(officialBaudRate[28]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[29] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[29]),
        .Q(officialBaudRate[29]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[2] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(officialBaudRate[2]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[30] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[30]),
        .Q(officialBaudRate[30]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[31] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[31]),
        .Q(officialBaudRate[31]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[3] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(officialBaudRate[3]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[4] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(officialBaudRate[4]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[5] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(officialBaudRate[5]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[6] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(officialBaudRate[6]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[7] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(officialBaudRate[7]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[8] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[8]),
        .Q(officialBaudRate[8]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialBaudRate_reg[9] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[9]),
        .Q(officialBaudRate[9]),
        .R(my9x16Fifo_inst_n_19));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialControl[15]_i_1 
       (.I0(p_19_in),
        .I1(axi_awaddr[1]),
        .I2(axi_wstrb[1]),
        .I3(axi_awaddr[0]),
        .O(p_1_in[8]));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialControl[23]_i_1 
       (.I0(p_19_in),
        .I1(axi_awaddr[1]),
        .I2(axi_wstrb[2]),
        .I3(axi_awaddr[0]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialControl[31]_i_1 
       (.I0(p_19_in),
        .I1(axi_awaddr[1]),
        .I2(axi_wstrb[3]),
        .I3(axi_awaddr[0]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialControl[4]_i_1 
       (.I0(p_19_in),
        .I1(axi_awaddr[1]),
        .I2(axi_wstrb[0]),
        .I3(axi_awaddr[0]),
        .O(p_1_in[5]));
  FDRE \officialControl_reg[0] 
       (.C(axi_aclk),
        .CE(p_1_in[5]),
        .D(axi_wdata[0]),
        .Q(\officialControl_reg_n_0_[0] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[10] 
       (.C(axi_aclk),
        .CE(p_1_in[8]),
        .D(axi_wdata[10]),
        .Q(\officialControl_reg_n_0_[10] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[11] 
       (.C(axi_aclk),
        .CE(p_1_in[8]),
        .D(axi_wdata[11]),
        .Q(\officialControl_reg_n_0_[11] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[12] 
       (.C(axi_aclk),
        .CE(p_1_in[8]),
        .D(axi_wdata[12]),
        .Q(\officialControl_reg_n_0_[12] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[13] 
       (.C(axi_aclk),
        .CE(p_1_in[8]),
        .D(axi_wdata[13]),
        .Q(\officialControl_reg_n_0_[13] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[14] 
       (.C(axi_aclk),
        .CE(p_1_in[8]),
        .D(axi_wdata[14]),
        .Q(\officialControl_reg_n_0_[14] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[15] 
       (.C(axi_aclk),
        .CE(p_1_in[8]),
        .D(axi_wdata[15]),
        .Q(\officialControl_reg_n_0_[15] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[16] 
       (.C(axi_aclk),
        .CE(p_1_in[23]),
        .D(axi_wdata[16]),
        .Q(\officialControl_reg_n_0_[16] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[17] 
       (.C(axi_aclk),
        .CE(p_1_in[23]),
        .D(axi_wdata[17]),
        .Q(\officialControl_reg_n_0_[17] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[18] 
       (.C(axi_aclk),
        .CE(p_1_in[23]),
        .D(axi_wdata[18]),
        .Q(\officialControl_reg_n_0_[18] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[19] 
       (.C(axi_aclk),
        .CE(p_1_in[23]),
        .D(axi_wdata[19]),
        .Q(\officialControl_reg_n_0_[19] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[1] 
       (.C(axi_aclk),
        .CE(p_1_in[5]),
        .D(axi_wdata[1]),
        .Q(\officialControl_reg_n_0_[1] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[20] 
       (.C(axi_aclk),
        .CE(p_1_in[23]),
        .D(axi_wdata[20]),
        .Q(\officialControl_reg_n_0_[20] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[21] 
       (.C(axi_aclk),
        .CE(p_1_in[23]),
        .D(axi_wdata[21]),
        .Q(\officialControl_reg_n_0_[21] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[22] 
       (.C(axi_aclk),
        .CE(p_1_in[23]),
        .D(axi_wdata[22]),
        .Q(\officialControl_reg_n_0_[22] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[23] 
       (.C(axi_aclk),
        .CE(p_1_in[23]),
        .D(axi_wdata[23]),
        .Q(\officialControl_reg_n_0_[23] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[24] 
       (.C(axi_aclk),
        .CE(p_1_in[31]),
        .D(axi_wdata[24]),
        .Q(\officialControl_reg_n_0_[24] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[25] 
       (.C(axi_aclk),
        .CE(p_1_in[31]),
        .D(axi_wdata[25]),
        .Q(\officialControl_reg_n_0_[25] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[26] 
       (.C(axi_aclk),
        .CE(p_1_in[31]),
        .D(axi_wdata[26]),
        .Q(\officialControl_reg_n_0_[26] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[27] 
       (.C(axi_aclk),
        .CE(p_1_in[31]),
        .D(axi_wdata[27]),
        .Q(\officialControl_reg_n_0_[27] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[28] 
       (.C(axi_aclk),
        .CE(p_1_in[31]),
        .D(axi_wdata[28]),
        .Q(\officialControl_reg_n_0_[28] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[29] 
       (.C(axi_aclk),
        .CE(p_1_in[31]),
        .D(axi_wdata[29]),
        .Q(\officialControl_reg_n_0_[29] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[2] 
       (.C(axi_aclk),
        .CE(p_1_in[5]),
        .D(axi_wdata[2]),
        .Q(PARITY_CONTROL[2]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[30] 
       (.C(axi_aclk),
        .CE(p_1_in[31]),
        .D(axi_wdata[30]),
        .Q(\officialControl_reg_n_0_[30] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[31] 
       (.C(axi_aclk),
        .CE(p_1_in[31]),
        .D(axi_wdata[31]),
        .Q(\officialControl_reg_n_0_[31] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[3] 
       (.C(axi_aclk),
        .CE(p_1_in[5]),
        .D(axi_wdata[3]),
        .Q(PARITY_CONTROL[3]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[4] 
       (.C(axi_aclk),
        .CE(p_1_in[5]),
        .D(axi_wdata[4]),
        .Q(\officialControl_reg[5]_0 [0]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[5] 
       (.C(axi_aclk),
        .CE(p_1_in[5]),
        .D(axi_wdata[5]),
        .Q(\officialControl_reg[5]_0 [1]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[6] 
       (.C(axi_aclk),
        .CE(p_1_in[5]),
        .D(axi_wdata[6]),
        .Q(\officialControl_reg_n_0_[6] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[7] 
       (.C(axi_aclk),
        .CE(p_1_in[5]),
        .D(axi_wdata[7]),
        .Q(\officialControl_reg_n_0_[7] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[8] 
       (.C(axi_aclk),
        .CE(p_1_in[8]),
        .D(axi_wdata[8]),
        .Q(SECOND_STOP),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialControl_reg[9] 
       (.C(axi_aclk),
        .CE(p_1_in[8]),
        .D(axi_wdata[9]),
        .Q(\officialControl_reg_n_0_[9] ),
        .R(my9x16Fifo_inst_n_19));
  LUT4 #(
    .INIT(16'h0200)) 
    \officialData[7]_i_1 
       (.I0(p_19_in),
        .I1(axi_awaddr[1]),
        .I2(axi_awaddr[0]),
        .I3(axi_wstrb[0]),
        .O(\officialData[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \officialData[8]_i_1 
       (.I0(axi_wdata[8]),
        .I1(p_19_in),
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
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialData_reg[1] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(officialData[1]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialData_reg[2] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(officialData[2]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialData_reg[3] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(officialData[3]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialData_reg[4] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(officialData[4]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialData_reg[5] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(officialData[5]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialData_reg[6] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(officialData[6]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialData_reg[7] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(officialData[7]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialData_reg[8] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\officialData[8]_i_1_n_0 ),
        .Q(officialData[8]),
        .R(my9x16Fifo_inst_n_19));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialStatus[15]_i_1 
       (.I0(p_19_in),
        .I1(axi_wstrb[1]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialStatus[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialStatus[23]_i_1 
       (.I0(p_19_in),
        .I1(axi_wstrb[2]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialStatus[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialStatus[31]_i_1 
       (.I0(p_19_in),
        .I1(axi_wstrb[3]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialStatus[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialStatus[7]_i_1 
       (.I0(p_19_in),
        .I1(axi_wstrb[0]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialStatus[7]_i_1_n_0 ));
  FDRE \officialStatus_reg[0] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(officialStatus__0[0]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[10] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[10]),
        .Q(officialStatus__0[10]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[11] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[11]),
        .Q(officialStatus__0[11]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[12] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[12]),
        .Q(officialStatus__0[12]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[13] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[13]),
        .Q(officialStatus__0[13]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[14] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[14]),
        .Q(officialStatus__0[14]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[15] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[15]),
        .Q(officialStatus__0[15]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[16] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[16]),
        .Q(officialStatus__0[16]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[17] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[17]),
        .Q(officialStatus__0[17]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[18] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[18]),
        .Q(officialStatus__0[18]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[19] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[19]),
        .Q(officialStatus__0[19]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[1] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(officialStatus__0[1]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[20] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[20]),
        .Q(officialStatus__0[20]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[21] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[21]),
        .Q(officialStatus__0[21]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[22] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[22]),
        .Q(officialStatus__0[22]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[23] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[23]),
        .Q(officialStatus__0[23]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[24] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[24]),
        .Q(officialStatus__0[24]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[25] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[25]),
        .Q(officialStatus__0[25]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[26] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[26]),
        .Q(officialStatus__0[26]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[27] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[27]),
        .Q(officialStatus__0[27]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[28] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[28]),
        .Q(officialStatus__0[28]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[29] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[29]),
        .Q(officialStatus),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[2] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(officialStatus__0[2]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[30] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[30]),
        .Q(officialStatus__0[30]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[31] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[31]),
        .Q(officialStatus__0[31]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[3] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(officialStatus__0[3]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[4] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(officialStatus__0[4]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[5] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(officialStatus__0[5]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[6] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(officialStatus__0[6]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[7] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(officialStatus__0[7]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[8] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[8]),
        .Q(officialStatus__0[8]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \officialStatus_reg[9] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[9]),
        .Q(officialStatus__0[9]),
        .R(my9x16Fifo_inst_n_19));
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
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
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
        .R(my9x16Fifo_inst_n_19));
  FDRE \raddr_reg[3] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\raddr[3]_i_1_n_0 ),
        .Q(p_0_in_0[1]),
        .R(my9x16Fifo_inst_n_19));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    shiftOut_i_4
       (.I0(latchData[8]),
        .I1(\count_reg_n_0_[3] ),
        .I2(shiftOut_i_5_n_0),
        .I3(\count_reg_n_0_[2] ),
        .I4(shiftOut_i_6_n_0),
        .O(shiftOut_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    shiftOut_i_5
       (.I0(latchData[7]),
        .I1(latchData[6]),
        .I2(\count_reg_n_0_[1] ),
        .I3(latchData[5]),
        .I4(\count_reg_n_0_[0] ),
        .I5(latchData[4]),
        .O(shiftOut_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    shiftOut_i_6
       (.I0(latchData[3]),
        .I1(latchData[2]),
        .I2(\count_reg_n_0_[1] ),
        .I3(latchData[1]),
        .I4(\count_reg_n_0_[0] ),
        .I5(latchData[0]),
        .O(shiftOut_i_6_n_0));
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
  CARRY4 \state1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\NLW_state1_inferred__0/i__carry_CO_UNCONNECTED [3:2],\state1_inferred__0/i__carry_n_2 ,\state1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1_n_0,i__carry_i_2_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \state[0]_i_3 
       (.I0(PARITY_CONTROL[2]),
        .I1(PARITY_CONTROL[3]),
        .I2(\state1_inferred__0/i__carry_n_2 ),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCDDCDDDD22222222)) 
    \state[1]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(PARITY_CONTROL[2]),
        .I3(PARITY_CONTROL[3]),
        .I4(\state1_inferred__0/i__carry_n_2 ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h0082)) 
    \state[2]_i_4 
       (.I0(\state1_inferred__0/i__carry_n_2 ),
        .I1(PARITY_CONTROL[2]),
        .I2(PARITY_CONTROL[3]),
        .I3(\state_reg_n_0_[2] ),
        .O(\state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \state[2]_i_5 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h32232222FFFFFFFF)) 
    \state[2]_i_6 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(PARITY_CONTROL[3]),
        .I3(PARITY_CONTROL[2]),
        .I4(\state1_inferred__0/i__carry_n_2 ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[2]_i_6_n_0 ));
  FDRE \state_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(my9x16Fifo_inst_n_17),
        .Q(\state_reg_n_0_[0] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \state_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(my9x16Fifo_inst_n_16),
        .Q(\state_reg_n_0_[1] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE \state_reg[2] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(my9x16Fifo_inst_n_15),
        .Q(\state_reg_n_0_[2] ),
        .R(my9x16Fifo_inst_n_19));
  FDRE testIdle_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(testIdle_reg_0),
        .Q(TXIdle),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h1555)) 
    ticks2
       (.I0(\ticks2_reg[3]_0 [0]),
        .I1(\ticks2_reg[3]_0 [1]),
        .I2(\ticks2_reg[3]_0 [2]),
        .I3(\ticks2_reg[3]_0 [3]),
        .O(ticks2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h2666)) 
    \ticks2[1]_i_1 
       (.I0(\ticks2_reg[3]_0 [0]),
        .I1(\ticks2_reg[3]_0 [1]),
        .I2(\ticks2_reg[3]_0 [2]),
        .I3(\ticks2_reg[3]_0 [3]),
        .O(\ticks2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h3878)) 
    \ticks2[2]_i_1 
       (.I0(\ticks2_reg[3]_0 [0]),
        .I1(\ticks2_reg[3]_0 [1]),
        .I2(\ticks2_reg[3]_0 [2]),
        .I3(\ticks2_reg[3]_0 [3]),
        .O(\ticks2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
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
        .CE(outReg_reg),
        .D(ticks2_n_0),
        .Q(\ticks2_reg[3]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks2_reg[1] 
       (.C(axi_aclk),
        .CE(outReg_reg),
        .D(\ticks2[1]_i_1_n_0 ),
        .Q(\ticks2_reg[3]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks2_reg[2] 
       (.C(axi_aclk),
        .CE(outReg_reg),
        .D(\ticks2[2]_i_1_n_0 ),
        .Q(\ticks2_reg[3]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks2_reg[3] 
       (.C(axi_aclk),
        .CE(outReg_reg),
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
    .INIT(64'hFFFFBFFF00008000)) 
    \waddr[2]_i_1 
       (.I0(axi_awaddr[0]),
        .I1(aw_en_reg_0),
        .I2(axi_awvalid),
        .I3(axi_wvalid),
        .I4(axi_awready_reg_0),
        .I5(waddr[2]),
        .O(\waddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \waddr[3]_i_1 
       (.I0(axi_awaddr[1]),
        .I1(aw_en_reg_0),
        .I2(axi_awvalid),
        .I3(axi_wvalid),
        .I4(axi_awready_reg_0),
        .I5(waddr[3]),
        .O(\waddr[3]_i_1_n_0 ));
  FDRE \waddr_reg[2] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\waddr[2]_i_1_n_0 ),
        .Q(waddr[2]),
        .R(my9x16Fifo_inst_n_19));
  FDRE \waddr_reg[3] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\waddr[3]_i_1_n_0 ),
        .Q(waddr[3]),
        .R(my9x16Fifo_inst_n_19));
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
    baudTick,
    TXGo,
    TXIdle,
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
  output baudTick;
  output TXGo;
  output TXIdle;
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
  wire \<const1> ;
  wire TXIdle;
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
  wire baudTick;
  wire empty;
  wire enableing;
  wire full;
  wire [8:0]rd_data;
  wire [4:0]rd_index;
  wire testing;
  wire txBaud;
  wire tx_out;
  wire [4:0]watermark;
  wire [4:0]wr_index;

  assign TXGo = \<const1> ;
  assign axi_bresp[1] = \<const0> ;
  assign axi_bresp[0] = \<const0> ;
  assign axi_rresp[1] = \<const0> ;
  assign axi_rresp[0] = \<const0> ;
  assign overflow = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial inst
       (.Q({testing,enableing}),
        .S_AXI_ARREADY(axi_arready),
        .S_AXI_AWREADY(axi_awready),
        .S_AXI_WREADY(axi_wready),
        .TXIdle(TXIdle),
        .axi_aclk(axi_aclk),
        .axi_araddr(axi_araddr[3:2]),
        .axi_aresetn(axi_aresetn),
        .axi_arvalid(axi_arvalid),
        .axi_awaddr(axi_awaddr[3:2]),
        .axi_awvalid(axi_awvalid),
        .axi_bready(axi_bready),
        .axi_bvalid(axi_bvalid),
        .axi_rdata(axi_rdata),
        .axi_rready(axi_rready),
        .axi_rvalid_reg(axi_rvalid),
        .axi_wdata(axi_wdata),
        .axi_wstrb(axi_wstrb),
        .axi_wvalid(axi_wvalid),
        .baudClockOut(baudClockOut),
        .baudTick(baudTick),
        .empty(empty),
        .full(full),
        .rd_data(rd_data),
        .rd_index(rd_index),
        .txBaud(txBaud),
        .tx_out(tx_out),
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
