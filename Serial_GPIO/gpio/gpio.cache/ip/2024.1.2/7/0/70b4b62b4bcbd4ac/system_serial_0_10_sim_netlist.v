// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (lin64) Build 5164865 Thu Sep  5 14:36:28 MDT 2024
// Date        : Tue Nov 12 14:23:27 2024
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
   (\FSM_sequential_state_reg[1] ,
    axi_aresetn_0,
    fifoRead,
    outReg_reg_0,
    state,
    axi_aresetn,
    p_0_in_0,
    axi_arvalid,
    outReg_reg_1,
    outReg_reg_2);
  output \FSM_sequential_state_reg[1] ;
  output axi_aresetn_0;
  input fifoRead;
  input outReg_reg_0;
  input [2:0]state;
  input axi_aresetn;
  input [1:0]p_0_in_0;
  input axi_arvalid;
  input outReg_reg_1;
  input outReg_reg_2;

  wire \FSM_sequential_state_reg[1] ;
  wire axi_aresetn;
  wire axi_aresetn_0;
  wire axi_arvalid;
  wire fifoRead;
  wire in_delay;
  wire outReg_i_1_n_0;
  wire outReg_reg_0;
  wire outReg_reg_1;
  wire outReg_reg_2;
  wire [1:0]p_0_in_0;
  wire readSig;
  wire [2:0]state;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h99980000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(readSig),
        .I4(axi_aresetn),
        .O(\FSM_sequential_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h08082220)) 
    \count[3]_i_2 
       (.I0(axi_aresetn),
        .I1(state[2]),
        .I2(state[1]),
        .I3(readSig),
        .I4(state[0]),
        .O(axi_aresetn_0));
  FDRE in_delay_reg
       (.C(outReg_reg_0),
        .CE(1'b1),
        .D(fifoRead),
        .Q(in_delay),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    outReg_i_1
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .I2(axi_arvalid),
        .I3(outReg_reg_1),
        .I4(outReg_reg_2),
        .I5(in_delay),
        .O(outReg_i_1_n_0));
  FDRE outReg_reg
       (.C(outReg_reg_0),
        .CE(1'b1),
        .D(outReg_i_1_n_0),
        .Q(readSig),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "edge_detect" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0
   (fifoRead,
    E,
    axi_aclk,
    p_0_in_0,
    axi_arvalid,
    in_delay_reg_0,
    in_delay_reg_1,
    write_request);
  output fifoRead;
  output [0:0]E;
  input axi_aclk;
  input [1:0]p_0_in_0;
  input axi_arvalid;
  input in_delay_reg_0;
  input in_delay_reg_1;
  input write_request;

  wire [0:0]E;
  wire axi_aclk;
  wire axi_arvalid;
  wire fifoRead;
  wire in_delay;
  wire in_delay_reg_0;
  wire in_delay_reg_1;
  wire outReg_i_1__0_n_0;
  wire [1:0]p_0_in_0;
  wire read_request;
  wire write_request;

  LUT5 #(
    .INIT(32'h00000020)) 
    in_delay_i_1
       (.I0(in_delay_reg_1),
        .I1(in_delay_reg_0),
        .I2(axi_arvalid),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .O(fifoRead));
  FDRE in_delay_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(fifoRead),
        .Q(in_delay),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    outReg_i_1__0
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .I2(axi_arvalid),
        .I3(in_delay_reg_0),
        .I4(in_delay_reg_1),
        .I5(in_delay),
        .O(outReg_i_1__0_n_0));
  FDRE outReg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(outReg_i_1__0_n_0),
        .Q(read_request),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_index[4]_i_1 
       (.I0(read_request),
        .I1(write_request),
        .O(E));
endmodule

(* ORIG_REF_NAME = "edge_detect" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_1
   (write_request,
    \wr_index_reg[3] ,
    \wr_index_reg[2] ,
    \wr_index_reg[2]_0 ,
    \wr_index_reg[0] ,
    \wr_index_reg[3]_0 ,
    \wr_index_reg[0]_0 ,
    \wr_index_reg[1] ,
    \wr_index_reg[0]_1 ,
    \wr_index_reg[2]_1 ,
    \wr_index_reg[3]_1 ,
    \wr_index_reg[3]_2 ,
    \wr_index_reg[3]_3 ,
    \wr_index_reg[3]_4 ,
    \wr_index_reg[3]_5 ,
    \wr_index_reg[3]_6 ,
    \wr_index_reg[3]_7 ,
    \wr_index_reg[1]_0 ,
    \wr_index_reg[1]_1 ,
    \wr_index_reg[1]_2 ,
    \wr_index_reg[1]_3 ,
    \wr_index_reg[1]_4 ,
    \wr_index_reg[1]_5 ,
    \wr_index_reg[1]_6 ,
    \wr_index_reg[1]_7 ,
    \wr_index_reg[1]_8 ,
    \wr_index_reg[1]_9 ,
    \wr_index_reg[1]_10 ,
    \wr_index_reg[1]_11 ,
    \wr_index_reg[1]_12 ,
    \wr_index_reg[1]_13 ,
    \wr_index_reg[1]_14 ,
    \wr_index_reg[1]_15 ,
    \wr_index_reg[1]_16 ,
    \wr_index_reg[1]_17 ,
    \wr_index_reg[1]_18 ,
    \wr_index_reg[1]_19 ,
    \wr_index_reg[1]_20 ,
    \wr_index_reg[1]_21 ,
    \wr_index_reg[1]_22 ,
    \wr_index_reg[1]_23 ,
    \wr_index_reg[1]_24 ,
    \wr_index_reg[1]_25 ,
    \wr_index_reg[1]_26 ,
    \wr_index_reg[3]_8 ,
    \wr_index_reg[3]_9 ,
    \wr_index_reg[3]_10 ,
    \wr_index_reg[3]_11 ,
    \wr_index_reg[3]_12 ,
    \wr_index_reg[3]_13 ,
    \wr_index_reg[3]_14 ,
    \wr_index_reg[3]_15 ,
    \wr_index_reg[3]_16 ,
    \wr_index_reg[0]_2 ,
    \wr_index_reg[0]_3 ,
    \wr_index_reg[0]_4 ,
    \wr_index_reg[0]_5 ,
    \wr_index_reg[0]_6 ,
    \wr_index_reg[0]_7 ,
    \wr_index_reg[0]_8 ,
    \wr_index_reg[0]_9 ,
    \wr_index_reg[0]_10 ,
    \wr_index_reg[3]_17 ,
    \wr_index_reg[3]_18 ,
    \wr_index_reg[3]_19 ,
    \wr_index_reg[3]_20 ,
    \wr_index_reg[3]_21 ,
    \wr_index_reg[3]_22 ,
    \wr_index_reg[3]_23 ,
    \wr_index_reg[3]_24 ,
    \wr_index_reg[3]_25 ,
    \wr_index_reg[2]_2 ,
    \wr_index_reg[2]_3 ,
    \wr_index_reg[2]_4 ,
    \wr_index_reg[2]_5 ,
    \wr_index_reg[2]_6 ,
    \wr_index_reg[2]_7 ,
    \wr_index_reg[2]_8 ,
    \wr_index_reg[2]_9 ,
    \wr_index_reg[2]_10 ,
    \wr_index_reg[3]_26 ,
    \wr_index_reg[3]_27 ,
    \wr_index_reg[3]_28 ,
    \wr_index_reg[3]_29 ,
    \wr_index_reg[3]_30 ,
    \wr_index_reg[3]_31 ,
    \wr_index_reg[3]_32 ,
    \wr_index_reg[3]_33 ,
    \wr_index_reg[3]_34 ,
    \wr_index_reg[0]_11 ,
    \wr_index_reg[0]_12 ,
    \wr_index_reg[0]_13 ,
    \wr_index_reg[0]_14 ,
    \wr_index_reg[0]_15 ,
    \wr_index_reg[0]_16 ,
    \wr_index_reg[0]_17 ,
    \wr_index_reg[0]_18 ,
    \wr_index_reg[0]_19 ,
    \wr_index_reg[2]_11 ,
    \wr_index_reg[2]_12 ,
    \wr_index_reg[2]_13 ,
    \wr_index_reg[2]_14 ,
    \wr_index_reg[2]_15 ,
    \wr_index_reg[2]_16 ,
    \wr_index_reg[2]_17 ,
    \wr_index_reg[2]_18 ,
    \wr_index_reg[2]_19 ,
    \wr_index_reg[0]_20 ,
    \wr_index_reg[0]_21 ,
    \wr_index_reg[0]_22 ,
    \wr_index_reg[0]_23 ,
    \wr_index_reg[0]_24 ,
    \wr_index_reg[0]_25 ,
    \wr_index_reg[0]_26 ,
    \wr_index_reg[0]_27 ,
    \wr_index_reg[0]_28 ,
    \wr_index_reg[1]_27 ,
    \wr_index_reg[1]_28 ,
    \wr_index_reg[1]_29 ,
    \wr_index_reg[1]_30 ,
    \wr_index_reg[1]_31 ,
    \wr_index_reg[1]_32 ,
    \wr_index_reg[1]_33 ,
    \wr_index_reg[1]_34 ,
    \wr_index_reg[1]_35 ,
    \wr_index_reg[3]_35 ,
    \wr_index_reg[3]_36 ,
    \wr_index_reg[3]_37 ,
    \wr_index_reg[3]_38 ,
    \wr_index_reg[3]_39 ,
    \wr_index_reg[3]_40 ,
    \wr_index_reg[3]_41 ,
    \wr_index_reg[3]_42 ,
    \wr_index_reg[3]_43 ,
    \wr_index_reg[2]_20 ,
    \wr_index_reg[2]_21 ,
    \wr_index_reg[2]_22 ,
    \wr_index_reg[2]_23 ,
    \wr_index_reg[2]_24 ,
    \wr_index_reg[2]_25 ,
    \wr_index_reg[2]_26 ,
    \wr_index_reg[2]_27 ,
    \wr_index_reg[2]_28 ,
    \wr_index_reg[1]_36 ,
    \wr_index_reg[1]_37 ,
    \wr_index_reg[1]_38 ,
    \wr_index_reg[1]_39 ,
    \wr_index_reg[1]_40 ,
    \wr_index_reg[1]_41 ,
    \wr_index_reg[1]_42 ,
    \wr_index_reg[1]_43 ,
    \wr_index_reg[1]_44 ,
    \wr_index_reg[0]_29 ,
    \wr_index_reg[0]_30 ,
    \wr_index_reg[0]_31 ,
    \wr_index_reg[0]_32 ,
    \wr_index_reg[0]_33 ,
    \wr_index_reg[0]_34 ,
    \wr_index_reg[0]_35 ,
    \wr_index_reg[0]_36 ,
    \wr_index_reg[0]_37 ,
    p_10_in,
    axi_aclk,
    Q,
    officialData,
    waddr,
    in_delay_reg_0,
    in_delay_reg_1,
    axi_awvalid,
    axi_wvalid);
  output write_request;
  output \wr_index_reg[3] ;
  output \wr_index_reg[2] ;
  output \wr_index_reg[2]_0 ;
  output \wr_index_reg[0] ;
  output \wr_index_reg[3]_0 ;
  output \wr_index_reg[0]_0 ;
  output \wr_index_reg[1] ;
  output \wr_index_reg[0]_1 ;
  output \wr_index_reg[2]_1 ;
  output \wr_index_reg[3]_1 ;
  output \wr_index_reg[3]_2 ;
  output \wr_index_reg[3]_3 ;
  output \wr_index_reg[3]_4 ;
  output \wr_index_reg[3]_5 ;
  output \wr_index_reg[3]_6 ;
  output \wr_index_reg[3]_7 ;
  output \wr_index_reg[1]_0 ;
  output \wr_index_reg[1]_1 ;
  output \wr_index_reg[1]_2 ;
  output \wr_index_reg[1]_3 ;
  output \wr_index_reg[1]_4 ;
  output \wr_index_reg[1]_5 ;
  output \wr_index_reg[1]_6 ;
  output \wr_index_reg[1]_7 ;
  output \wr_index_reg[1]_8 ;
  output \wr_index_reg[1]_9 ;
  output \wr_index_reg[1]_10 ;
  output \wr_index_reg[1]_11 ;
  output \wr_index_reg[1]_12 ;
  output \wr_index_reg[1]_13 ;
  output \wr_index_reg[1]_14 ;
  output \wr_index_reg[1]_15 ;
  output \wr_index_reg[1]_16 ;
  output \wr_index_reg[1]_17 ;
  output \wr_index_reg[1]_18 ;
  output \wr_index_reg[1]_19 ;
  output \wr_index_reg[1]_20 ;
  output \wr_index_reg[1]_21 ;
  output \wr_index_reg[1]_22 ;
  output \wr_index_reg[1]_23 ;
  output \wr_index_reg[1]_24 ;
  output \wr_index_reg[1]_25 ;
  output \wr_index_reg[1]_26 ;
  output \wr_index_reg[3]_8 ;
  output \wr_index_reg[3]_9 ;
  output \wr_index_reg[3]_10 ;
  output \wr_index_reg[3]_11 ;
  output \wr_index_reg[3]_12 ;
  output \wr_index_reg[3]_13 ;
  output \wr_index_reg[3]_14 ;
  output \wr_index_reg[3]_15 ;
  output \wr_index_reg[3]_16 ;
  output \wr_index_reg[0]_2 ;
  output \wr_index_reg[0]_3 ;
  output \wr_index_reg[0]_4 ;
  output \wr_index_reg[0]_5 ;
  output \wr_index_reg[0]_6 ;
  output \wr_index_reg[0]_7 ;
  output \wr_index_reg[0]_8 ;
  output \wr_index_reg[0]_9 ;
  output \wr_index_reg[0]_10 ;
  output \wr_index_reg[3]_17 ;
  output \wr_index_reg[3]_18 ;
  output \wr_index_reg[3]_19 ;
  output \wr_index_reg[3]_20 ;
  output \wr_index_reg[3]_21 ;
  output \wr_index_reg[3]_22 ;
  output \wr_index_reg[3]_23 ;
  output \wr_index_reg[3]_24 ;
  output \wr_index_reg[3]_25 ;
  output \wr_index_reg[2]_2 ;
  output \wr_index_reg[2]_3 ;
  output \wr_index_reg[2]_4 ;
  output \wr_index_reg[2]_5 ;
  output \wr_index_reg[2]_6 ;
  output \wr_index_reg[2]_7 ;
  output \wr_index_reg[2]_8 ;
  output \wr_index_reg[2]_9 ;
  output \wr_index_reg[2]_10 ;
  output \wr_index_reg[3]_26 ;
  output \wr_index_reg[3]_27 ;
  output \wr_index_reg[3]_28 ;
  output \wr_index_reg[3]_29 ;
  output \wr_index_reg[3]_30 ;
  output \wr_index_reg[3]_31 ;
  output \wr_index_reg[3]_32 ;
  output \wr_index_reg[3]_33 ;
  output \wr_index_reg[3]_34 ;
  output \wr_index_reg[0]_11 ;
  output \wr_index_reg[0]_12 ;
  output \wr_index_reg[0]_13 ;
  output \wr_index_reg[0]_14 ;
  output \wr_index_reg[0]_15 ;
  output \wr_index_reg[0]_16 ;
  output \wr_index_reg[0]_17 ;
  output \wr_index_reg[0]_18 ;
  output \wr_index_reg[0]_19 ;
  output \wr_index_reg[2]_11 ;
  output \wr_index_reg[2]_12 ;
  output \wr_index_reg[2]_13 ;
  output \wr_index_reg[2]_14 ;
  output \wr_index_reg[2]_15 ;
  output \wr_index_reg[2]_16 ;
  output \wr_index_reg[2]_17 ;
  output \wr_index_reg[2]_18 ;
  output \wr_index_reg[2]_19 ;
  output \wr_index_reg[0]_20 ;
  output \wr_index_reg[0]_21 ;
  output \wr_index_reg[0]_22 ;
  output \wr_index_reg[0]_23 ;
  output \wr_index_reg[0]_24 ;
  output \wr_index_reg[0]_25 ;
  output \wr_index_reg[0]_26 ;
  output \wr_index_reg[0]_27 ;
  output \wr_index_reg[0]_28 ;
  output \wr_index_reg[1]_27 ;
  output \wr_index_reg[1]_28 ;
  output \wr_index_reg[1]_29 ;
  output \wr_index_reg[1]_30 ;
  output \wr_index_reg[1]_31 ;
  output \wr_index_reg[1]_32 ;
  output \wr_index_reg[1]_33 ;
  output \wr_index_reg[1]_34 ;
  output \wr_index_reg[1]_35 ;
  output \wr_index_reg[3]_35 ;
  output \wr_index_reg[3]_36 ;
  output \wr_index_reg[3]_37 ;
  output \wr_index_reg[3]_38 ;
  output \wr_index_reg[3]_39 ;
  output \wr_index_reg[3]_40 ;
  output \wr_index_reg[3]_41 ;
  output \wr_index_reg[3]_42 ;
  output \wr_index_reg[3]_43 ;
  output \wr_index_reg[2]_20 ;
  output \wr_index_reg[2]_21 ;
  output \wr_index_reg[2]_22 ;
  output \wr_index_reg[2]_23 ;
  output \wr_index_reg[2]_24 ;
  output \wr_index_reg[2]_25 ;
  output \wr_index_reg[2]_26 ;
  output \wr_index_reg[2]_27 ;
  output \wr_index_reg[2]_28 ;
  output \wr_index_reg[1]_36 ;
  output \wr_index_reg[1]_37 ;
  output \wr_index_reg[1]_38 ;
  output \wr_index_reg[1]_39 ;
  output \wr_index_reg[1]_40 ;
  output \wr_index_reg[1]_41 ;
  output \wr_index_reg[1]_42 ;
  output \wr_index_reg[1]_43 ;
  output \wr_index_reg[1]_44 ;
  output \wr_index_reg[0]_29 ;
  output \wr_index_reg[0]_30 ;
  output \wr_index_reg[0]_31 ;
  output \wr_index_reg[0]_32 ;
  output \wr_index_reg[0]_33 ;
  output \wr_index_reg[0]_34 ;
  output \wr_index_reg[0]_35 ;
  output \wr_index_reg[0]_36 ;
  output \wr_index_reg[0]_37 ;
  output p_10_in;
  input axi_aclk;
  input [3:0]Q;
  input [8:0]officialData;
  input [1:0]waddr;
  input in_delay_reg_0;
  input in_delay_reg_1;
  input axi_awvalid;
  input axi_wvalid;

  wire [3:0]Q;
  wire axi_aclk;
  wire axi_awvalid;
  wire axi_wvalid;
  wire fifoWrite;
  wire in_delay;
  wire in_delay_reg_0;
  wire in_delay_reg_1;
  wire [8:0]officialData;
  wire outReg_i_1__1_n_0;
  wire p_10_in;
  wire [1:0]waddr;
  wire \wr_index_reg[0] ;
  wire \wr_index_reg[0]_0 ;
  wire \wr_index_reg[0]_1 ;
  wire \wr_index_reg[0]_10 ;
  wire \wr_index_reg[0]_11 ;
  wire \wr_index_reg[0]_12 ;
  wire \wr_index_reg[0]_13 ;
  wire \wr_index_reg[0]_14 ;
  wire \wr_index_reg[0]_15 ;
  wire \wr_index_reg[0]_16 ;
  wire \wr_index_reg[0]_17 ;
  wire \wr_index_reg[0]_18 ;
  wire \wr_index_reg[0]_19 ;
  wire \wr_index_reg[0]_2 ;
  wire \wr_index_reg[0]_20 ;
  wire \wr_index_reg[0]_21 ;
  wire \wr_index_reg[0]_22 ;
  wire \wr_index_reg[0]_23 ;
  wire \wr_index_reg[0]_24 ;
  wire \wr_index_reg[0]_25 ;
  wire \wr_index_reg[0]_26 ;
  wire \wr_index_reg[0]_27 ;
  wire \wr_index_reg[0]_28 ;
  wire \wr_index_reg[0]_29 ;
  wire \wr_index_reg[0]_3 ;
  wire \wr_index_reg[0]_30 ;
  wire \wr_index_reg[0]_31 ;
  wire \wr_index_reg[0]_32 ;
  wire \wr_index_reg[0]_33 ;
  wire \wr_index_reg[0]_34 ;
  wire \wr_index_reg[0]_35 ;
  wire \wr_index_reg[0]_36 ;
  wire \wr_index_reg[0]_37 ;
  wire \wr_index_reg[0]_4 ;
  wire \wr_index_reg[0]_5 ;
  wire \wr_index_reg[0]_6 ;
  wire \wr_index_reg[0]_7 ;
  wire \wr_index_reg[0]_8 ;
  wire \wr_index_reg[0]_9 ;
  wire \wr_index_reg[1] ;
  wire \wr_index_reg[1]_0 ;
  wire \wr_index_reg[1]_1 ;
  wire \wr_index_reg[1]_10 ;
  wire \wr_index_reg[1]_11 ;
  wire \wr_index_reg[1]_12 ;
  wire \wr_index_reg[1]_13 ;
  wire \wr_index_reg[1]_14 ;
  wire \wr_index_reg[1]_15 ;
  wire \wr_index_reg[1]_16 ;
  wire \wr_index_reg[1]_17 ;
  wire \wr_index_reg[1]_18 ;
  wire \wr_index_reg[1]_19 ;
  wire \wr_index_reg[1]_2 ;
  wire \wr_index_reg[1]_20 ;
  wire \wr_index_reg[1]_21 ;
  wire \wr_index_reg[1]_22 ;
  wire \wr_index_reg[1]_23 ;
  wire \wr_index_reg[1]_24 ;
  wire \wr_index_reg[1]_25 ;
  wire \wr_index_reg[1]_26 ;
  wire \wr_index_reg[1]_27 ;
  wire \wr_index_reg[1]_28 ;
  wire \wr_index_reg[1]_29 ;
  wire \wr_index_reg[1]_3 ;
  wire \wr_index_reg[1]_30 ;
  wire \wr_index_reg[1]_31 ;
  wire \wr_index_reg[1]_32 ;
  wire \wr_index_reg[1]_33 ;
  wire \wr_index_reg[1]_34 ;
  wire \wr_index_reg[1]_35 ;
  wire \wr_index_reg[1]_36 ;
  wire \wr_index_reg[1]_37 ;
  wire \wr_index_reg[1]_38 ;
  wire \wr_index_reg[1]_39 ;
  wire \wr_index_reg[1]_4 ;
  wire \wr_index_reg[1]_40 ;
  wire \wr_index_reg[1]_41 ;
  wire \wr_index_reg[1]_42 ;
  wire \wr_index_reg[1]_43 ;
  wire \wr_index_reg[1]_44 ;
  wire \wr_index_reg[1]_5 ;
  wire \wr_index_reg[1]_6 ;
  wire \wr_index_reg[1]_7 ;
  wire \wr_index_reg[1]_8 ;
  wire \wr_index_reg[1]_9 ;
  wire \wr_index_reg[2] ;
  wire \wr_index_reg[2]_0 ;
  wire \wr_index_reg[2]_1 ;
  wire \wr_index_reg[2]_10 ;
  wire \wr_index_reg[2]_11 ;
  wire \wr_index_reg[2]_12 ;
  wire \wr_index_reg[2]_13 ;
  wire \wr_index_reg[2]_14 ;
  wire \wr_index_reg[2]_15 ;
  wire \wr_index_reg[2]_16 ;
  wire \wr_index_reg[2]_17 ;
  wire \wr_index_reg[2]_18 ;
  wire \wr_index_reg[2]_19 ;
  wire \wr_index_reg[2]_2 ;
  wire \wr_index_reg[2]_20 ;
  wire \wr_index_reg[2]_21 ;
  wire \wr_index_reg[2]_22 ;
  wire \wr_index_reg[2]_23 ;
  wire \wr_index_reg[2]_24 ;
  wire \wr_index_reg[2]_25 ;
  wire \wr_index_reg[2]_26 ;
  wire \wr_index_reg[2]_27 ;
  wire \wr_index_reg[2]_28 ;
  wire \wr_index_reg[2]_3 ;
  wire \wr_index_reg[2]_4 ;
  wire \wr_index_reg[2]_5 ;
  wire \wr_index_reg[2]_6 ;
  wire \wr_index_reg[2]_7 ;
  wire \wr_index_reg[2]_8 ;
  wire \wr_index_reg[2]_9 ;
  wire \wr_index_reg[3] ;
  wire \wr_index_reg[3]_0 ;
  wire \wr_index_reg[3]_1 ;
  wire \wr_index_reg[3]_10 ;
  wire \wr_index_reg[3]_11 ;
  wire \wr_index_reg[3]_12 ;
  wire \wr_index_reg[3]_13 ;
  wire \wr_index_reg[3]_14 ;
  wire \wr_index_reg[3]_15 ;
  wire \wr_index_reg[3]_16 ;
  wire \wr_index_reg[3]_17 ;
  wire \wr_index_reg[3]_18 ;
  wire \wr_index_reg[3]_19 ;
  wire \wr_index_reg[3]_2 ;
  wire \wr_index_reg[3]_20 ;
  wire \wr_index_reg[3]_21 ;
  wire \wr_index_reg[3]_22 ;
  wire \wr_index_reg[3]_23 ;
  wire \wr_index_reg[3]_24 ;
  wire \wr_index_reg[3]_25 ;
  wire \wr_index_reg[3]_26 ;
  wire \wr_index_reg[3]_27 ;
  wire \wr_index_reg[3]_28 ;
  wire \wr_index_reg[3]_29 ;
  wire \wr_index_reg[3]_3 ;
  wire \wr_index_reg[3]_30 ;
  wire \wr_index_reg[3]_31 ;
  wire \wr_index_reg[3]_32 ;
  wire \wr_index_reg[3]_33 ;
  wire \wr_index_reg[3]_34 ;
  wire \wr_index_reg[3]_35 ;
  wire \wr_index_reg[3]_36 ;
  wire \wr_index_reg[3]_37 ;
  wire \wr_index_reg[3]_38 ;
  wire \wr_index_reg[3]_39 ;
  wire \wr_index_reg[3]_4 ;
  wire \wr_index_reg[3]_40 ;
  wire \wr_index_reg[3]_41 ;
  wire \wr_index_reg[3]_42 ;
  wire \wr_index_reg[3]_43 ;
  wire \wr_index_reg[3]_5 ;
  wire \wr_index_reg[3]_6 ;
  wire \wr_index_reg[3]_7 ;
  wire \wr_index_reg[3]_8 ;
  wire \wr_index_reg[3]_9 ;
  wire write_request;

  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \FIFO_DATA[0][0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[0]),
        .I5(write_request),
        .O(\wr_index_reg[1]_9 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \FIFO_DATA[0][1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[1]),
        .I5(write_request),
        .O(\wr_index_reg[1]_10 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \FIFO_DATA[0][2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[2]),
        .I5(write_request),
        .O(\wr_index_reg[1]_11 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \FIFO_DATA[0][3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[3]),
        .I5(write_request),
        .O(\wr_index_reg[1]_12 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \FIFO_DATA[0][4]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[4]),
        .I5(write_request),
        .O(\wr_index_reg[1]_13 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \FIFO_DATA[0][5]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[5]),
        .I5(write_request),
        .O(\wr_index_reg[1]_14 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \FIFO_DATA[0][6]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[6]),
        .I5(write_request),
        .O(\wr_index_reg[1]_15 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \FIFO_DATA[0][7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[7]),
        .I5(write_request),
        .O(\wr_index_reg[1]_16 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \FIFO_DATA[0][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(write_request),
        .O(\wr_index_reg[3]_7 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \FIFO_DATA[0][8]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[8]),
        .I5(write_request),
        .O(\wr_index_reg[1]_17 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[10][0]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[0]),
        .I5(write_request),
        .O(\wr_index_reg[2]_11 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[10][1]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[1]),
        .I5(write_request),
        .O(\wr_index_reg[2]_12 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[10][2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[2]),
        .I5(write_request),
        .O(\wr_index_reg[2]_13 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[10][3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[3]),
        .I5(write_request),
        .O(\wr_index_reg[2]_14 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[10][4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[4]),
        .I5(write_request),
        .O(\wr_index_reg[2]_15 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[10][5]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[5]),
        .I5(write_request),
        .O(\wr_index_reg[2]_16 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[10][6]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[6]),
        .I5(write_request),
        .O(\wr_index_reg[2]_17 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[10][7]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[7]),
        .I5(write_request),
        .O(\wr_index_reg[2]_18 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \FIFO_DATA[10][8]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(write_request),
        .O(\wr_index_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[10][8]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[8]),
        .I5(write_request),
        .O(\wr_index_reg[2]_19 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[11][0]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[0]),
        .I5(write_request),
        .O(\wr_index_reg[0]_11 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[11][1]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[1]),
        .I5(write_request),
        .O(\wr_index_reg[0]_12 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[11][2]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[2]),
        .I5(write_request),
        .O(\wr_index_reg[0]_13 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[11][3]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[3]),
        .I5(write_request),
        .O(\wr_index_reg[0]_14 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[11][4]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[4]),
        .I5(write_request),
        .O(\wr_index_reg[0]_15 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[11][5]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[5]),
        .I5(write_request),
        .O(\wr_index_reg[0]_16 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[11][6]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[6]),
        .I5(write_request),
        .O(\wr_index_reg[0]_17 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[11][7]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[7]),
        .I5(write_request),
        .O(\wr_index_reg[0]_18 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \FIFO_DATA[11][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(write_request),
        .O(\wr_index_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[11][8]_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[8]),
        .I5(write_request),
        .O(\wr_index_reg[0]_19 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[12][0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[0]),
        .I5(write_request),
        .O(\wr_index_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[12][1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[1]),
        .I5(write_request),
        .O(\wr_index_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[12][2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[2]),
        .I5(write_request),
        .O(\wr_index_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[12][3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[3]),
        .I5(write_request),
        .O(\wr_index_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[12][4]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[4]),
        .I5(write_request),
        .O(\wr_index_reg[1]_4 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[12][5]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[5]),
        .I5(write_request),
        .O(\wr_index_reg[1]_5 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[12][6]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[6]),
        .I5(write_request),
        .O(\wr_index_reg[1]_6 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[12][7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[7]),
        .I5(write_request),
        .O(\wr_index_reg[1]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \FIFO_DATA[12][8]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(write_request),
        .O(\wr_index_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[12][8]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[8]),
        .I5(write_request),
        .O(\wr_index_reg[1]_8 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[13][0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[0]),
        .I5(write_request),
        .O(\wr_index_reg[0]_20 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[13][1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[1]),
        .I5(write_request),
        .O(\wr_index_reg[0]_21 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[13][2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[2]),
        .I5(write_request),
        .O(\wr_index_reg[0]_22 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[13][3]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[3]),
        .I5(write_request),
        .O(\wr_index_reg[0]_23 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[13][4]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[4]),
        .I5(write_request),
        .O(\wr_index_reg[0]_24 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[13][5]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[5]),
        .I5(write_request),
        .O(\wr_index_reg[0]_25 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[13][6]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[6]),
        .I5(write_request),
        .O(\wr_index_reg[0]_26 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[13][7]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[7]),
        .I5(write_request),
        .O(\wr_index_reg[0]_27 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \FIFO_DATA[13][8]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(write_request),
        .O(\wr_index_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[13][8]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[8]),
        .I5(write_request),
        .O(\wr_index_reg[0]_28 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[14][0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[0]),
        .I5(write_request),
        .O(\wr_index_reg[1]_27 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[14][1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[1]),
        .I5(write_request),
        .O(\wr_index_reg[1]_28 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[14][2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[2]),
        .I5(write_request),
        .O(\wr_index_reg[1]_29 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[14][3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[3]),
        .I5(write_request),
        .O(\wr_index_reg[1]_30 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[14][4]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[4]),
        .I5(write_request),
        .O(\wr_index_reg[1]_31 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[14][5]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[5]),
        .I5(write_request),
        .O(\wr_index_reg[1]_32 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[14][6]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[6]),
        .I5(write_request),
        .O(\wr_index_reg[1]_33 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[14][7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[7]),
        .I5(write_request),
        .O(\wr_index_reg[1]_34 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \FIFO_DATA[14][8]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(write_request),
        .O(\wr_index_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[14][8]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[8]),
        .I5(write_request),
        .O(\wr_index_reg[1]_35 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \FIFO_DATA[15][0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[0]),
        .I5(write_request),
        .O(\wr_index_reg[1]_18 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \FIFO_DATA[15][1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[1]),
        .I5(write_request),
        .O(\wr_index_reg[1]_19 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \FIFO_DATA[15][2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[2]),
        .I5(write_request),
        .O(\wr_index_reg[1]_20 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \FIFO_DATA[15][3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[3]),
        .I5(write_request),
        .O(\wr_index_reg[1]_21 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \FIFO_DATA[15][4]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[4]),
        .I5(write_request),
        .O(\wr_index_reg[1]_22 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \FIFO_DATA[15][5]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[5]),
        .I5(write_request),
        .O(\wr_index_reg[1]_23 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \FIFO_DATA[15][6]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[6]),
        .I5(write_request),
        .O(\wr_index_reg[1]_24 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \FIFO_DATA[15][7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[7]),
        .I5(write_request),
        .O(\wr_index_reg[1]_25 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FIFO_DATA[15][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(write_request),
        .O(\wr_index_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \FIFO_DATA[15][8]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[8]),
        .I5(write_request),
        .O(\wr_index_reg[1]_26 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[1][0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[0]),
        .I5(write_request),
        .O(\wr_index_reg[0]_29 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[1][1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[1]),
        .I5(write_request),
        .O(\wr_index_reg[0]_30 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[1][2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[2]),
        .I5(write_request),
        .O(\wr_index_reg[0]_31 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[1][3]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[3]),
        .I5(write_request),
        .O(\wr_index_reg[0]_32 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[1][4]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[4]),
        .I5(write_request),
        .O(\wr_index_reg[0]_33 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[1][5]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[5]),
        .I5(write_request),
        .O(\wr_index_reg[0]_34 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[1][6]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[6]),
        .I5(write_request),
        .O(\wr_index_reg[0]_35 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[1][7]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[7]),
        .I5(write_request),
        .O(\wr_index_reg[0]_36 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \FIFO_DATA[1][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(write_request),
        .O(\wr_index_reg[3]_6 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[1][8]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[8]),
        .I5(write_request),
        .O(\wr_index_reg[0]_37 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[2][0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[0]),
        .I5(write_request),
        .O(\wr_index_reg[1]_36 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[2][1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[1]),
        .I5(write_request),
        .O(\wr_index_reg[1]_37 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[2][2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[2]),
        .I5(write_request),
        .O(\wr_index_reg[1]_38 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[2][3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[3]),
        .I5(write_request),
        .O(\wr_index_reg[1]_39 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[2][4]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[4]),
        .I5(write_request),
        .O(\wr_index_reg[1]_40 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[2][5]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[5]),
        .I5(write_request),
        .O(\wr_index_reg[1]_41 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[2][6]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[6]),
        .I5(write_request),
        .O(\wr_index_reg[1]_42 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[2][7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[7]),
        .I5(write_request),
        .O(\wr_index_reg[1]_43 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \FIFO_DATA[2][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(write_request),
        .O(\wr_index_reg[3]_5 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[2][8]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(officialData[8]),
        .I5(write_request),
        .O(\wr_index_reg[1]_44 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[3][0]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(officialData[0]),
        .I5(write_request),
        .O(\wr_index_reg[3]_8 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[3][1]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(officialData[1]),
        .I5(write_request),
        .O(\wr_index_reg[3]_9 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[3][2]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(officialData[2]),
        .I5(write_request),
        .O(\wr_index_reg[3]_10 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[3][3]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(officialData[3]),
        .I5(write_request),
        .O(\wr_index_reg[3]_11 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[3][4]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(officialData[4]),
        .I5(write_request),
        .O(\wr_index_reg[3]_12 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[3][5]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(officialData[5]),
        .I5(write_request),
        .O(\wr_index_reg[3]_13 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[3][6]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(officialData[6]),
        .I5(write_request),
        .O(\wr_index_reg[3]_14 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[3][7]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(officialData[7]),
        .I5(write_request),
        .O(\wr_index_reg[3]_15 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \FIFO_DATA[3][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(write_request),
        .O(\wr_index_reg[3]_4 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[3][8]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(officialData[8]),
        .I5(write_request),
        .O(\wr_index_reg[3]_16 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[4][0]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[0]),
        .I5(write_request),
        .O(\wr_index_reg[2]_20 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[4][1]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[1]),
        .I5(write_request),
        .O(\wr_index_reg[2]_21 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[4][2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[2]),
        .I5(write_request),
        .O(\wr_index_reg[2]_22 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[4][3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[3]),
        .I5(write_request),
        .O(\wr_index_reg[2]_23 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[4][4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[4]),
        .I5(write_request),
        .O(\wr_index_reg[2]_24 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[4][5]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[5]),
        .I5(write_request),
        .O(\wr_index_reg[2]_25 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[4][6]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[6]),
        .I5(write_request),
        .O(\wr_index_reg[2]_26 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[4][7]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[7]),
        .I5(write_request),
        .O(\wr_index_reg[2]_27 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \FIFO_DATA[4][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(write_request),
        .O(\wr_index_reg[3]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[4][8]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(officialData[8]),
        .I5(write_request),
        .O(\wr_index_reg[2]_28 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[5][0]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(officialData[0]),
        .I5(write_request),
        .O(\wr_index_reg[3]_35 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[5][1]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(officialData[1]),
        .I5(write_request),
        .O(\wr_index_reg[3]_36 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[5][2]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(officialData[2]),
        .I5(write_request),
        .O(\wr_index_reg[3]_37 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[5][3]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(officialData[3]),
        .I5(write_request),
        .O(\wr_index_reg[3]_38 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[5][4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(officialData[4]),
        .I5(write_request),
        .O(\wr_index_reg[3]_39 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[5][5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(officialData[5]),
        .I5(write_request),
        .O(\wr_index_reg[3]_40 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[5][6]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(officialData[6]),
        .I5(write_request),
        .O(\wr_index_reg[3]_41 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[5][7]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(officialData[7]),
        .I5(write_request),
        .O(\wr_index_reg[3]_42 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \FIFO_DATA[5][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(write_request),
        .O(\wr_index_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[5][8]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(officialData[8]),
        .I5(write_request),
        .O(\wr_index_reg[3]_43 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[6][0]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[0]),
        .I5(write_request),
        .O(\wr_index_reg[3]_17 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[6][1]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[1]),
        .I5(write_request),
        .O(\wr_index_reg[3]_18 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[6][2]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[2]),
        .I5(write_request),
        .O(\wr_index_reg[3]_19 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[6][3]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[3]),
        .I5(write_request),
        .O(\wr_index_reg[3]_20 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[6][4]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[4]),
        .I5(write_request),
        .O(\wr_index_reg[3]_21 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[6][5]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[5]),
        .I5(write_request),
        .O(\wr_index_reg[3]_22 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[6][6]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[6]),
        .I5(write_request),
        .O(\wr_index_reg[3]_23 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[6][7]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[7]),
        .I5(write_request),
        .O(\wr_index_reg[3]_24 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \FIFO_DATA[6][8]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(write_request),
        .O(\wr_index_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[6][8]_i_2 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[8]),
        .I5(write_request),
        .O(\wr_index_reg[3]_25 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[7][0]_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[0]),
        .I5(write_request),
        .O(\wr_index_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[7][1]_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[1]),
        .I5(write_request),
        .O(\wr_index_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[7][2]_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[2]),
        .I5(write_request),
        .O(\wr_index_reg[0]_4 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[7][3]_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[3]),
        .I5(write_request),
        .O(\wr_index_reg[0]_5 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[7][4]_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[4]),
        .I5(write_request),
        .O(\wr_index_reg[0]_6 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[7][5]_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[5]),
        .I5(write_request),
        .O(\wr_index_reg[0]_7 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[7][6]_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[6]),
        .I5(write_request),
        .O(\wr_index_reg[0]_8 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[7][7]_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[7]),
        .I5(write_request),
        .O(\wr_index_reg[0]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \FIFO_DATA[7][8]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(write_request),
        .O(\wr_index_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FIFO_DATA[7][8]_i_2 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[8]),
        .I5(write_request),
        .O(\wr_index_reg[0]_10 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[8][0]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[0]),
        .I5(write_request),
        .O(\wr_index_reg[3]_26 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[8][1]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[1]),
        .I5(write_request),
        .O(\wr_index_reg[3]_27 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[8][2]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[2]),
        .I5(write_request),
        .O(\wr_index_reg[3]_28 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[8][3]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[3]),
        .I5(write_request),
        .O(\wr_index_reg[3]_29 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[8][4]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[4]),
        .I5(write_request),
        .O(\wr_index_reg[3]_30 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[8][5]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[5]),
        .I5(write_request),
        .O(\wr_index_reg[3]_31 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[8][6]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[6]),
        .I5(write_request),
        .O(\wr_index_reg[3]_32 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[8][7]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[7]),
        .I5(write_request),
        .O(\wr_index_reg[3]_33 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \FIFO_DATA[8][8]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(write_request),
        .O(\wr_index_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FIFO_DATA[8][8]_i_2 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(officialData[8]),
        .I5(write_request),
        .O(\wr_index_reg[3]_34 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[9][0]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(officialData[0]),
        .I5(write_request),
        .O(\wr_index_reg[2]_2 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[9][1]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(officialData[1]),
        .I5(write_request),
        .O(\wr_index_reg[2]_3 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[9][2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(officialData[2]),
        .I5(write_request),
        .O(\wr_index_reg[2]_4 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[9][3]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(officialData[3]),
        .I5(write_request),
        .O(\wr_index_reg[2]_5 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[9][4]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(officialData[4]),
        .I5(write_request),
        .O(\wr_index_reg[2]_6 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[9][5]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(officialData[5]),
        .I5(write_request),
        .O(\wr_index_reg[2]_7 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[9][6]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(officialData[6]),
        .I5(write_request),
        .O(\wr_index_reg[2]_8 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[9][7]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(officialData[7]),
        .I5(write_request),
        .O(\wr_index_reg[2]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \FIFO_DATA[9][8]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(write_request),
        .O(\wr_index_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FIFO_DATA[9][8]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(officialData[8]),
        .I5(write_request),
        .O(\wr_index_reg[2]_10 ));
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
    .INIT(16'h0010)) 
    outReg_i_1__1
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .I2(p_10_in),
        .I3(in_delay),
        .O(outReg_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    outReg_i_2
       (.I0(axi_wvalid),
        .I1(axi_awvalid),
        .I2(in_delay_reg_1),
        .I3(in_delay_reg_0),
        .O(p_10_in));
  FDRE outReg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(outReg_i_1__1_n_0),
        .Q(write_request),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my9x16Fifo
   (fifoRead,
    full,
    Q,
    \wr_index_reg[4]_0 ,
    watermark,
    axi_aresetn_0,
    empty,
    \count_reg[3] ,
    rd_data,
    D,
    p_10_in,
    axi_aclk,
    officialData,
    p_0_in_0,
    axi_arvalid,
    in_delay_reg,
    in_delay_reg_0,
    axi_aresetn,
    count,
    state,
    \axi_rdata_reg[8] ,
    \axi_rdata_reg[8]_0 ,
    \axi_rdata_reg[8]_1 ,
    waddr,
    in_delay_reg_1,
    in_delay_reg_2,
    axi_awvalid,
    axi_wvalid);
  output fifoRead;
  output full;
  output [4:0]Q;
  output [4:0]\wr_index_reg[4]_0 ;
  output [4:0]watermark;
  output axi_aresetn_0;
  output empty;
  output \count_reg[3] ;
  output [8:0]rd_data;
  output [8:0]D;
  output p_10_in;
  input axi_aclk;
  input [8:0]officialData;
  input [1:0]p_0_in_0;
  input axi_arvalid;
  input in_delay_reg;
  input in_delay_reg_0;
  input axi_aresetn;
  input [3:0]count;
  input [2:0]state;
  input [8:0]\axi_rdata_reg[8] ;
  input [8:0]\axi_rdata_reg[8]_0 ;
  input [8:0]\axi_rdata_reg[8]_1 ;
  input [1:0]waddr;
  input in_delay_reg_1;
  input in_delay_reg_2;
  input axi_awvalid;
  input axi_wvalid;

  wire [8:0]D;
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
  wire axi_aresetn_0;
  wire axi_arvalid;
  wire axi_awvalid;
  wire [8:0]\axi_rdata_reg[8] ;
  wire [8:0]\axi_rdata_reg[8]_0 ;
  wire [8:0]\axi_rdata_reg[8]_1 ;
  wire axi_wvalid;
  wire [3:0]count;
  wire \count_reg[3] ;
  wire empty;
  wire empty_INST_0_i_1_n_0;
  wire fifoRead;
  wire full;
  wire in_delay_reg;
  wire in_delay_reg_0;
  wire in_delay_reg_1;
  wire in_delay_reg_2;
  wire [8:0]officialData;
  wire [4:1]p_0_in;
  wire [1:0]p_0_in_0;
  wire [4:1]p_0_in__0;
  wire p_10_in;
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
  wire rd_edge_n_1;
  wire \rd_index[0]_i_1_n_0 ;
  wire shiftOut_reg_i_5_n_0;
  wire shiftOut_reg_i_6_n_0;
  wire shiftOut_reg_i_7_n_0;
  wire [2:0]state;
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
  wire \wr_index[2]_i_1_n_0 ;
  wire [4:0]\wr_index_reg[4]_0 ;
  wire write_request;

  FDRE \FIFO_DATA_reg[0][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_16),
        .D(wr_edge_n_26),
        .Q(\FIFO_DATA_reg[0] [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[0][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_16),
        .D(wr_edge_n_27),
        .Q(\FIFO_DATA_reg[0] [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[0][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_16),
        .D(wr_edge_n_28),
        .Q(\FIFO_DATA_reg[0] [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[0][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_16),
        .D(wr_edge_n_29),
        .Q(\FIFO_DATA_reg[0] [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[0][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_16),
        .D(wr_edge_n_30),
        .Q(\FIFO_DATA_reg[0] [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[0][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_16),
        .D(wr_edge_n_31),
        .Q(\FIFO_DATA_reg[0] [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[0][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_16),
        .D(wr_edge_n_32),
        .Q(\FIFO_DATA_reg[0] [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[0][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_16),
        .D(wr_edge_n_33),
        .Q(\FIFO_DATA_reg[0] [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[0][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_16),
        .D(wr_edge_n_34),
        .Q(\FIFO_DATA_reg[0] [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[10][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_6),
        .D(wr_edge_n_98),
        .Q(\FIFO_DATA_reg[10] [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[10][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_6),
        .D(wr_edge_n_99),
        .Q(\FIFO_DATA_reg[10] [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[10][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_6),
        .D(wr_edge_n_100),
        .Q(\FIFO_DATA_reg[10] [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[10][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_6),
        .D(wr_edge_n_101),
        .Q(\FIFO_DATA_reg[10] [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[10][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_6),
        .D(wr_edge_n_102),
        .Q(\FIFO_DATA_reg[10] [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[10][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_6),
        .D(wr_edge_n_103),
        .Q(\FIFO_DATA_reg[10] [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[10][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_6),
        .D(wr_edge_n_104),
        .Q(\FIFO_DATA_reg[10] [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[10][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_6),
        .D(wr_edge_n_105),
        .Q(\FIFO_DATA_reg[10] [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[10][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_6),
        .D(wr_edge_n_106),
        .Q(\FIFO_DATA_reg[10] [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[11][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_5),
        .D(wr_edge_n_89),
        .Q(\FIFO_DATA_reg[11] [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[11][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_5),
        .D(wr_edge_n_90),
        .Q(\FIFO_DATA_reg[11] [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[11][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_5),
        .D(wr_edge_n_91),
        .Q(\FIFO_DATA_reg[11] [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[11][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_5),
        .D(wr_edge_n_92),
        .Q(\FIFO_DATA_reg[11] [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[11][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_5),
        .D(wr_edge_n_93),
        .Q(\FIFO_DATA_reg[11] [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[11][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_5),
        .D(wr_edge_n_94),
        .Q(\FIFO_DATA_reg[11] [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[11][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_5),
        .D(wr_edge_n_95),
        .Q(\FIFO_DATA_reg[11] [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[11][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_5),
        .D(wr_edge_n_96),
        .Q(\FIFO_DATA_reg[11] [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[11][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_5),
        .D(wr_edge_n_97),
        .Q(\FIFO_DATA_reg[11] [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[12][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_4),
        .D(wr_edge_n_17),
        .Q(\FIFO_DATA_reg[12] [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[12][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_4),
        .D(wr_edge_n_18),
        .Q(\FIFO_DATA_reg[12] [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[12][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_4),
        .D(wr_edge_n_19),
        .Q(\FIFO_DATA_reg[12] [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[12][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_4),
        .D(wr_edge_n_20),
        .Q(\FIFO_DATA_reg[12] [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[12][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_4),
        .D(wr_edge_n_21),
        .Q(\FIFO_DATA_reg[12] [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[12][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_4),
        .D(wr_edge_n_22),
        .Q(\FIFO_DATA_reg[12] [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[12][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_4),
        .D(wr_edge_n_23),
        .Q(\FIFO_DATA_reg[12] [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[12][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_4),
        .D(wr_edge_n_24),
        .Q(\FIFO_DATA_reg[12] [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[12][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_4),
        .D(wr_edge_n_25),
        .Q(\FIFO_DATA_reg[12] [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[13][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_3),
        .D(wr_edge_n_107),
        .Q(\FIFO_DATA_reg[13] [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[13][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_3),
        .D(wr_edge_n_108),
        .Q(\FIFO_DATA_reg[13] [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[13][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_3),
        .D(wr_edge_n_109),
        .Q(\FIFO_DATA_reg[13] [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[13][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_3),
        .D(wr_edge_n_110),
        .Q(\FIFO_DATA_reg[13] [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[13][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_3),
        .D(wr_edge_n_111),
        .Q(\FIFO_DATA_reg[13] [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[13][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_3),
        .D(wr_edge_n_112),
        .Q(\FIFO_DATA_reg[13] [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[13][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_3),
        .D(wr_edge_n_113),
        .Q(\FIFO_DATA_reg[13] [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[13][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_3),
        .D(wr_edge_n_114),
        .Q(\FIFO_DATA_reg[13] [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[13][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_3),
        .D(wr_edge_n_115),
        .Q(\FIFO_DATA_reg[13] [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[14][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_2),
        .D(wr_edge_n_116),
        .Q(\FIFO_DATA_reg[14] [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[14][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_2),
        .D(wr_edge_n_117),
        .Q(\FIFO_DATA_reg[14] [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[14][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_2),
        .D(wr_edge_n_118),
        .Q(\FIFO_DATA_reg[14] [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[14][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_2),
        .D(wr_edge_n_119),
        .Q(\FIFO_DATA_reg[14] [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[14][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_2),
        .D(wr_edge_n_120),
        .Q(\FIFO_DATA_reg[14] [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[14][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_2),
        .D(wr_edge_n_121),
        .Q(\FIFO_DATA_reg[14] [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[14][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_2),
        .D(wr_edge_n_122),
        .Q(\FIFO_DATA_reg[14] [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[14][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_2),
        .D(wr_edge_n_123),
        .Q(\FIFO_DATA_reg[14] [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[14][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_2),
        .D(wr_edge_n_124),
        .Q(\FIFO_DATA_reg[14] [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[15][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_1),
        .D(wr_edge_n_35),
        .Q(\FIFO_DATA_reg[15] [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[15][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_1),
        .D(wr_edge_n_36),
        .Q(\FIFO_DATA_reg[15] [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[15][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_1),
        .D(wr_edge_n_37),
        .Q(\FIFO_DATA_reg[15] [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[15][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_1),
        .D(wr_edge_n_38),
        .Q(\FIFO_DATA_reg[15] [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[15][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_1),
        .D(wr_edge_n_39),
        .Q(\FIFO_DATA_reg[15] [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[15][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_1),
        .D(wr_edge_n_40),
        .Q(\FIFO_DATA_reg[15] [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[15][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_1),
        .D(wr_edge_n_41),
        .Q(\FIFO_DATA_reg[15] [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[15][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_1),
        .D(wr_edge_n_42),
        .Q(\FIFO_DATA_reg[15] [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[15][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_1),
        .D(wr_edge_n_43),
        .Q(\FIFO_DATA_reg[15] [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[1][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_15),
        .D(wr_edge_n_152),
        .Q(\FIFO_DATA_reg[1] [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[1][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_15),
        .D(wr_edge_n_153),
        .Q(\FIFO_DATA_reg[1] [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[1][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_15),
        .D(wr_edge_n_154),
        .Q(\FIFO_DATA_reg[1] [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[1][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_15),
        .D(wr_edge_n_155),
        .Q(\FIFO_DATA_reg[1] [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[1][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_15),
        .D(wr_edge_n_156),
        .Q(\FIFO_DATA_reg[1] [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[1][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_15),
        .D(wr_edge_n_157),
        .Q(\FIFO_DATA_reg[1] [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[1][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_15),
        .D(wr_edge_n_158),
        .Q(\FIFO_DATA_reg[1] [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[1][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_15),
        .D(wr_edge_n_159),
        .Q(\FIFO_DATA_reg[1] [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[1][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_15),
        .D(wr_edge_n_160),
        .Q(\FIFO_DATA_reg[1] [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[2][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_14),
        .D(wr_edge_n_143),
        .Q(\FIFO_DATA_reg[2] [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[2][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_14),
        .D(wr_edge_n_144),
        .Q(\FIFO_DATA_reg[2] [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[2][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_14),
        .D(wr_edge_n_145),
        .Q(\FIFO_DATA_reg[2] [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[2][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_14),
        .D(wr_edge_n_146),
        .Q(\FIFO_DATA_reg[2] [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[2][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_14),
        .D(wr_edge_n_147),
        .Q(\FIFO_DATA_reg[2] [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[2][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_14),
        .D(wr_edge_n_148),
        .Q(\FIFO_DATA_reg[2] [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[2][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_14),
        .D(wr_edge_n_149),
        .Q(\FIFO_DATA_reg[2] [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[2][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_14),
        .D(wr_edge_n_150),
        .Q(\FIFO_DATA_reg[2] [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[2][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_14),
        .D(wr_edge_n_151),
        .Q(\FIFO_DATA_reg[2] [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[3][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_13),
        .D(wr_edge_n_44),
        .Q(\FIFO_DATA_reg[3] [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[3][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_13),
        .D(wr_edge_n_45),
        .Q(\FIFO_DATA_reg[3] [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[3][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_13),
        .D(wr_edge_n_46),
        .Q(\FIFO_DATA_reg[3] [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[3][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_13),
        .D(wr_edge_n_47),
        .Q(\FIFO_DATA_reg[3] [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[3][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_13),
        .D(wr_edge_n_48),
        .Q(\FIFO_DATA_reg[3] [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[3][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_13),
        .D(wr_edge_n_49),
        .Q(\FIFO_DATA_reg[3] [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[3][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_13),
        .D(wr_edge_n_50),
        .Q(\FIFO_DATA_reg[3] [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[3][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_13),
        .D(wr_edge_n_51),
        .Q(\FIFO_DATA_reg[3] [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[3][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_13),
        .D(wr_edge_n_52),
        .Q(\FIFO_DATA_reg[3] [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[4][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_134),
        .Q(\FIFO_DATA_reg[4] [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[4][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_135),
        .Q(\FIFO_DATA_reg[4] [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[4][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_136),
        .Q(\FIFO_DATA_reg[4] [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[4][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_137),
        .Q(\FIFO_DATA_reg[4] [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[4][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_138),
        .Q(\FIFO_DATA_reg[4] [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[4][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_139),
        .Q(\FIFO_DATA_reg[4] [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[4][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_140),
        .Q(\FIFO_DATA_reg[4] [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[4][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_141),
        .Q(\FIFO_DATA_reg[4] [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[4][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_12),
        .D(wr_edge_n_142),
        .Q(\FIFO_DATA_reg[4] [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[5][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_11),
        .D(wr_edge_n_125),
        .Q(\FIFO_DATA_reg[5] [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[5][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_11),
        .D(wr_edge_n_126),
        .Q(\FIFO_DATA_reg[5] [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[5][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_11),
        .D(wr_edge_n_127),
        .Q(\FIFO_DATA_reg[5] [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[5][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_11),
        .D(wr_edge_n_128),
        .Q(\FIFO_DATA_reg[5] [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[5][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_11),
        .D(wr_edge_n_129),
        .Q(\FIFO_DATA_reg[5] [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[5][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_11),
        .D(wr_edge_n_130),
        .Q(\FIFO_DATA_reg[5] [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[5][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_11),
        .D(wr_edge_n_131),
        .Q(\FIFO_DATA_reg[5] [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[5][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_11),
        .D(wr_edge_n_132),
        .Q(\FIFO_DATA_reg[5] [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[5][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_11),
        .D(wr_edge_n_133),
        .Q(\FIFO_DATA_reg[5] [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[6][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_10),
        .D(wr_edge_n_62),
        .Q(\FIFO_DATA_reg[6] [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[6][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_10),
        .D(wr_edge_n_63),
        .Q(\FIFO_DATA_reg[6] [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[6][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_10),
        .D(wr_edge_n_64),
        .Q(\FIFO_DATA_reg[6] [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[6][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_10),
        .D(wr_edge_n_65),
        .Q(\FIFO_DATA_reg[6] [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[6][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_10),
        .D(wr_edge_n_66),
        .Q(\FIFO_DATA_reg[6] [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[6][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_10),
        .D(wr_edge_n_67),
        .Q(\FIFO_DATA_reg[6] [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[6][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_10),
        .D(wr_edge_n_68),
        .Q(\FIFO_DATA_reg[6] [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[6][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_10),
        .D(wr_edge_n_69),
        .Q(\FIFO_DATA_reg[6] [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[6][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_10),
        .D(wr_edge_n_70),
        .Q(\FIFO_DATA_reg[6] [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[7][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_9),
        .D(wr_edge_n_53),
        .Q(\FIFO_DATA_reg[7] [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[7][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_9),
        .D(wr_edge_n_54),
        .Q(\FIFO_DATA_reg[7] [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[7][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_9),
        .D(wr_edge_n_55),
        .Q(\FIFO_DATA_reg[7] [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[7][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_9),
        .D(wr_edge_n_56),
        .Q(\FIFO_DATA_reg[7] [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[7][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_9),
        .D(wr_edge_n_57),
        .Q(\FIFO_DATA_reg[7] [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[7][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_9),
        .D(wr_edge_n_58),
        .Q(\FIFO_DATA_reg[7] [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[7][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_9),
        .D(wr_edge_n_59),
        .Q(\FIFO_DATA_reg[7] [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[7][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_9),
        .D(wr_edge_n_60),
        .Q(\FIFO_DATA_reg[7] [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[7][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_9),
        .D(wr_edge_n_61),
        .Q(\FIFO_DATA_reg[7] [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[8][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_8),
        .D(wr_edge_n_80),
        .Q(\FIFO_DATA_reg[8] [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[8][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_8),
        .D(wr_edge_n_81),
        .Q(\FIFO_DATA_reg[8] [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[8][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_8),
        .D(wr_edge_n_82),
        .Q(\FIFO_DATA_reg[8] [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[8][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_8),
        .D(wr_edge_n_83),
        .Q(\FIFO_DATA_reg[8] [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[8][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_8),
        .D(wr_edge_n_84),
        .Q(\FIFO_DATA_reg[8] [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[8][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_8),
        .D(wr_edge_n_85),
        .Q(\FIFO_DATA_reg[8] [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[8][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_8),
        .D(wr_edge_n_86),
        .Q(\FIFO_DATA_reg[8] [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[8][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_8),
        .D(wr_edge_n_87),
        .Q(\FIFO_DATA_reg[8] [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[8][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_8),
        .D(wr_edge_n_88),
        .Q(\FIFO_DATA_reg[8] [8]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[9][0] 
       (.C(axi_aclk),
        .CE(wr_edge_n_7),
        .D(wr_edge_n_71),
        .Q(\FIFO_DATA_reg[9] [0]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[9][1] 
       (.C(axi_aclk),
        .CE(wr_edge_n_7),
        .D(wr_edge_n_72),
        .Q(\FIFO_DATA_reg[9] [1]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[9][2] 
       (.C(axi_aclk),
        .CE(wr_edge_n_7),
        .D(wr_edge_n_73),
        .Q(\FIFO_DATA_reg[9] [2]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[9][3] 
       (.C(axi_aclk),
        .CE(wr_edge_n_7),
        .D(wr_edge_n_74),
        .Q(\FIFO_DATA_reg[9] [3]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[9][4] 
       (.C(axi_aclk),
        .CE(wr_edge_n_7),
        .D(wr_edge_n_75),
        .Q(\FIFO_DATA_reg[9] [4]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[9][5] 
       (.C(axi_aclk),
        .CE(wr_edge_n_7),
        .D(wr_edge_n_76),
        .Q(\FIFO_DATA_reg[9] [5]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[9][6] 
       (.C(axi_aclk),
        .CE(wr_edge_n_7),
        .D(wr_edge_n_77),
        .Q(\FIFO_DATA_reg[9] [6]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[9][7] 
       (.C(axi_aclk),
        .CE(wr_edge_n_7),
        .D(wr_edge_n_78),
        .Q(\FIFO_DATA_reg[9] [7]),
        .R(axi_aresetn_0));
  FDRE \FIFO_DATA_reg[9][8] 
       (.C(axi_aclk),
        .CE(wr_edge_n_7),
        .D(wr_edge_n_79),
        .Q(\FIFO_DATA_reg[9] [8]),
        .R(axi_aresetn_0));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata_reg[8] [0]),
        .I1(\axi_rdata_reg[8]_0 [0]),
        .I2(\axi_rdata_reg[8]_1 [0]),
        .I3(p_0_in_0[1]),
        .I4(rd_data[0]),
        .I5(p_0_in_0[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata_reg[8] [1]),
        .I1(\axi_rdata_reg[8]_0 [1]),
        .I2(\axi_rdata_reg[8]_1 [1]),
        .I3(p_0_in_0[1]),
        .I4(rd_data[1]),
        .I5(p_0_in_0[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata_reg[8] [2]),
        .I1(\axi_rdata_reg[8]_0 [2]),
        .I2(\axi_rdata_reg[8]_1 [2]),
        .I3(p_0_in_0[1]),
        .I4(rd_data[2]),
        .I5(p_0_in_0[0]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata_reg[8] [3]),
        .I1(\axi_rdata_reg[8]_0 [3]),
        .I2(\axi_rdata_reg[8]_1 [3]),
        .I3(p_0_in_0[1]),
        .I4(rd_data[3]),
        .I5(p_0_in_0[0]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata_reg[8] [4]),
        .I1(\axi_rdata_reg[8]_0 [4]),
        .I2(\axi_rdata_reg[8]_1 [4]),
        .I3(p_0_in_0[1]),
        .I4(rd_data[4]),
        .I5(p_0_in_0[0]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata_reg[8] [5]),
        .I1(\axi_rdata_reg[8]_0 [5]),
        .I2(\axi_rdata_reg[8]_1 [5]),
        .I3(p_0_in_0[1]),
        .I4(rd_data[5]),
        .I5(p_0_in_0[0]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata_reg[8] [6]),
        .I1(\axi_rdata_reg[8]_0 [6]),
        .I2(\axi_rdata_reg[8]_1 [6]),
        .I3(p_0_in_0[1]),
        .I4(rd_data[6]),
        .I5(p_0_in_0[0]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata_reg[8] [7]),
        .I1(\axi_rdata_reg[8]_0 [7]),
        .I2(\axi_rdata_reg[8]_1 [7]),
        .I3(p_0_in_0[1]),
        .I4(rd_data[7]),
        .I5(p_0_in_0[0]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata_reg[8] [8]),
        .I1(\axi_rdata_reg[8]_0 [8]),
        .I2(\axi_rdata_reg[8]_1 [8]),
        .I3(p_0_in_0[1]),
        .I4(rd_data[8]),
        .I5(p_0_in_0[0]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00828200)) 
    full_INST_0
       (.I0(empty_INST_0_i_1_n_0),
        .I1(Q[3]),
        .I2(\wr_index_reg[4]_0 [3]),
        .I3(\wr_index_reg[4]_0 [4]),
        .I4(Q[4]),
        .O(full));
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_0 rd_edge
       (.E(rd_edge_n_1),
        .axi_aclk(axi_aclk),
        .axi_arvalid(axi_arvalid),
        .fifoRead(fifoRead),
        .in_delay_reg_0(in_delay_reg),
        .in_delay_reg_1(in_delay_reg_0),
        .p_0_in_0(p_0_in_0),
        .write_request(write_request));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_index[0]_i_1 
       (.I0(Q[0]),
        .O(\rd_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_index[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_index[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_index[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rd_index[4]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(p_0_in__0[4]));
  FDRE \rd_index_reg[0] 
       (.C(axi_aclk),
        .CE(rd_edge_n_1),
        .D(\rd_index[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(axi_aresetn_0));
  FDRE \rd_index_reg[1] 
       (.C(axi_aclk),
        .CE(rd_edge_n_1),
        .D(p_0_in__0[1]),
        .Q(Q[1]),
        .R(axi_aresetn_0));
  FDRE \rd_index_reg[2] 
       (.C(axi_aclk),
        .CE(rd_edge_n_1),
        .D(p_0_in__0[2]),
        .Q(Q[2]),
        .R(axi_aresetn_0));
  FDRE \rd_index_reg[3] 
       (.C(axi_aclk),
        .CE(rd_edge_n_1),
        .D(p_0_in__0[3]),
        .Q(Q[3]),
        .R(axi_aresetn_0));
  FDRE \rd_index_reg[4] 
       (.C(axi_aclk),
        .CE(rd_edge_n_1),
        .D(p_0_in__0[4]),
        .Q(Q[4]),
        .R(axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFE2FFFFFFE200FF)) 
    shiftOut_reg_i_1
       (.I0(shiftOut_reg_i_5_n_0),
        .I1(count[3]),
        .I2(rd_data[8]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(state[0]),
        .O(\count_reg[3] ));
  MUXF7 shiftOut_reg_i_5
       (.I0(shiftOut_reg_i_6_n_0),
        .I1(shiftOut_reg_i_7_n_0),
        .O(shiftOut_reg_i_5_n_0),
        .S(count[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    shiftOut_reg_i_6
       (.I0(rd_data[3]),
        .I1(rd_data[2]),
        .I2(count[1]),
        .I3(rd_data[1]),
        .I4(count[0]),
        .I5(rd_data[0]),
        .O(shiftOut_reg_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    shiftOut_reg_i_7
       (.I0(rd_data[7]),
        .I1(rd_data[6]),
        .I2(count[1]),
        .I3(rd_data[5]),
        .I4(count[0]),
        .I5(rd_data[4]),
        .O(shiftOut_reg_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \watermark[0]_INST_0 
       (.I0(\wr_index_reg[4]_0 [0]),
        .I1(Q[0]),
        .O(watermark[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \watermark[3]_INST_0 
       (.I0(\watermark[4]_INST_0_i_1_n_0 ),
        .I1(Q[3]),
        .I2(\wr_index_reg[4]_0 [3]),
        .O(watermark[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect_1 wr_edge
       (.Q(\wr_index_reg[4]_0 [3:0]),
        .axi_aclk(axi_aclk),
        .axi_awvalid(axi_awvalid),
        .axi_wvalid(axi_wvalid),
        .in_delay_reg_0(in_delay_reg_1),
        .in_delay_reg_1(in_delay_reg_2),
        .officialData(officialData),
        .p_10_in(p_10_in),
        .waddr(waddr),
        .\wr_index_reg[0] (wr_edge_n_4),
        .\wr_index_reg[0]_0 (wr_edge_n_6),
        .\wr_index_reg[0]_1 (wr_edge_n_8),
        .\wr_index_reg[0]_10 (wr_edge_n_61),
        .\wr_index_reg[0]_11 (wr_edge_n_89),
        .\wr_index_reg[0]_12 (wr_edge_n_90),
        .\wr_index_reg[0]_13 (wr_edge_n_91),
        .\wr_index_reg[0]_14 (wr_edge_n_92),
        .\wr_index_reg[0]_15 (wr_edge_n_93),
        .\wr_index_reg[0]_16 (wr_edge_n_94),
        .\wr_index_reg[0]_17 (wr_edge_n_95),
        .\wr_index_reg[0]_18 (wr_edge_n_96),
        .\wr_index_reg[0]_19 (wr_edge_n_97),
        .\wr_index_reg[0]_2 (wr_edge_n_53),
        .\wr_index_reg[0]_20 (wr_edge_n_107),
        .\wr_index_reg[0]_21 (wr_edge_n_108),
        .\wr_index_reg[0]_22 (wr_edge_n_109),
        .\wr_index_reg[0]_23 (wr_edge_n_110),
        .\wr_index_reg[0]_24 (wr_edge_n_111),
        .\wr_index_reg[0]_25 (wr_edge_n_112),
        .\wr_index_reg[0]_26 (wr_edge_n_113),
        .\wr_index_reg[0]_27 (wr_edge_n_114),
        .\wr_index_reg[0]_28 (wr_edge_n_115),
        .\wr_index_reg[0]_29 (wr_edge_n_152),
        .\wr_index_reg[0]_3 (wr_edge_n_54),
        .\wr_index_reg[0]_30 (wr_edge_n_153),
        .\wr_index_reg[0]_31 (wr_edge_n_154),
        .\wr_index_reg[0]_32 (wr_edge_n_155),
        .\wr_index_reg[0]_33 (wr_edge_n_156),
        .\wr_index_reg[0]_34 (wr_edge_n_157),
        .\wr_index_reg[0]_35 (wr_edge_n_158),
        .\wr_index_reg[0]_36 (wr_edge_n_159),
        .\wr_index_reg[0]_37 (wr_edge_n_160),
        .\wr_index_reg[0]_4 (wr_edge_n_55),
        .\wr_index_reg[0]_5 (wr_edge_n_56),
        .\wr_index_reg[0]_6 (wr_edge_n_57),
        .\wr_index_reg[0]_7 (wr_edge_n_58),
        .\wr_index_reg[0]_8 (wr_edge_n_59),
        .\wr_index_reg[0]_9 (wr_edge_n_60),
        .\wr_index_reg[1] (wr_edge_n_7),
        .\wr_index_reg[1]_0 (wr_edge_n_17),
        .\wr_index_reg[1]_1 (wr_edge_n_18),
        .\wr_index_reg[1]_10 (wr_edge_n_27),
        .\wr_index_reg[1]_11 (wr_edge_n_28),
        .\wr_index_reg[1]_12 (wr_edge_n_29),
        .\wr_index_reg[1]_13 (wr_edge_n_30),
        .\wr_index_reg[1]_14 (wr_edge_n_31),
        .\wr_index_reg[1]_15 (wr_edge_n_32),
        .\wr_index_reg[1]_16 (wr_edge_n_33),
        .\wr_index_reg[1]_17 (wr_edge_n_34),
        .\wr_index_reg[1]_18 (wr_edge_n_35),
        .\wr_index_reg[1]_19 (wr_edge_n_36),
        .\wr_index_reg[1]_2 (wr_edge_n_19),
        .\wr_index_reg[1]_20 (wr_edge_n_37),
        .\wr_index_reg[1]_21 (wr_edge_n_38),
        .\wr_index_reg[1]_22 (wr_edge_n_39),
        .\wr_index_reg[1]_23 (wr_edge_n_40),
        .\wr_index_reg[1]_24 (wr_edge_n_41),
        .\wr_index_reg[1]_25 (wr_edge_n_42),
        .\wr_index_reg[1]_26 (wr_edge_n_43),
        .\wr_index_reg[1]_27 (wr_edge_n_116),
        .\wr_index_reg[1]_28 (wr_edge_n_117),
        .\wr_index_reg[1]_29 (wr_edge_n_118),
        .\wr_index_reg[1]_3 (wr_edge_n_20),
        .\wr_index_reg[1]_30 (wr_edge_n_119),
        .\wr_index_reg[1]_31 (wr_edge_n_120),
        .\wr_index_reg[1]_32 (wr_edge_n_121),
        .\wr_index_reg[1]_33 (wr_edge_n_122),
        .\wr_index_reg[1]_34 (wr_edge_n_123),
        .\wr_index_reg[1]_35 (wr_edge_n_124),
        .\wr_index_reg[1]_36 (wr_edge_n_143),
        .\wr_index_reg[1]_37 (wr_edge_n_144),
        .\wr_index_reg[1]_38 (wr_edge_n_145),
        .\wr_index_reg[1]_39 (wr_edge_n_146),
        .\wr_index_reg[1]_4 (wr_edge_n_21),
        .\wr_index_reg[1]_40 (wr_edge_n_147),
        .\wr_index_reg[1]_41 (wr_edge_n_148),
        .\wr_index_reg[1]_42 (wr_edge_n_149),
        .\wr_index_reg[1]_43 (wr_edge_n_150),
        .\wr_index_reg[1]_44 (wr_edge_n_151),
        .\wr_index_reg[1]_5 (wr_edge_n_22),
        .\wr_index_reg[1]_6 (wr_edge_n_23),
        .\wr_index_reg[1]_7 (wr_edge_n_24),
        .\wr_index_reg[1]_8 (wr_edge_n_25),
        .\wr_index_reg[1]_9 (wr_edge_n_26),
        .\wr_index_reg[2] (wr_edge_n_2),
        .\wr_index_reg[2]_0 (wr_edge_n_3),
        .\wr_index_reg[2]_1 (wr_edge_n_9),
        .\wr_index_reg[2]_10 (wr_edge_n_79),
        .\wr_index_reg[2]_11 (wr_edge_n_98),
        .\wr_index_reg[2]_12 (wr_edge_n_99),
        .\wr_index_reg[2]_13 (wr_edge_n_100),
        .\wr_index_reg[2]_14 (wr_edge_n_101),
        .\wr_index_reg[2]_15 (wr_edge_n_102),
        .\wr_index_reg[2]_16 (wr_edge_n_103),
        .\wr_index_reg[2]_17 (wr_edge_n_104),
        .\wr_index_reg[2]_18 (wr_edge_n_105),
        .\wr_index_reg[2]_19 (wr_edge_n_106),
        .\wr_index_reg[2]_2 (wr_edge_n_71),
        .\wr_index_reg[2]_20 (wr_edge_n_134),
        .\wr_index_reg[2]_21 (wr_edge_n_135),
        .\wr_index_reg[2]_22 (wr_edge_n_136),
        .\wr_index_reg[2]_23 (wr_edge_n_137),
        .\wr_index_reg[2]_24 (wr_edge_n_138),
        .\wr_index_reg[2]_25 (wr_edge_n_139),
        .\wr_index_reg[2]_26 (wr_edge_n_140),
        .\wr_index_reg[2]_27 (wr_edge_n_141),
        .\wr_index_reg[2]_28 (wr_edge_n_142),
        .\wr_index_reg[2]_3 (wr_edge_n_72),
        .\wr_index_reg[2]_4 (wr_edge_n_73),
        .\wr_index_reg[2]_5 (wr_edge_n_74),
        .\wr_index_reg[2]_6 (wr_edge_n_75),
        .\wr_index_reg[2]_7 (wr_edge_n_76),
        .\wr_index_reg[2]_8 (wr_edge_n_77),
        .\wr_index_reg[2]_9 (wr_edge_n_78),
        .\wr_index_reg[3] (wr_edge_n_1),
        .\wr_index_reg[3]_0 (wr_edge_n_5),
        .\wr_index_reg[3]_1 (wr_edge_n_10),
        .\wr_index_reg[3]_10 (wr_edge_n_46),
        .\wr_index_reg[3]_11 (wr_edge_n_47),
        .\wr_index_reg[3]_12 (wr_edge_n_48),
        .\wr_index_reg[3]_13 (wr_edge_n_49),
        .\wr_index_reg[3]_14 (wr_edge_n_50),
        .\wr_index_reg[3]_15 (wr_edge_n_51),
        .\wr_index_reg[3]_16 (wr_edge_n_52),
        .\wr_index_reg[3]_17 (wr_edge_n_62),
        .\wr_index_reg[3]_18 (wr_edge_n_63),
        .\wr_index_reg[3]_19 (wr_edge_n_64),
        .\wr_index_reg[3]_2 (wr_edge_n_11),
        .\wr_index_reg[3]_20 (wr_edge_n_65),
        .\wr_index_reg[3]_21 (wr_edge_n_66),
        .\wr_index_reg[3]_22 (wr_edge_n_67),
        .\wr_index_reg[3]_23 (wr_edge_n_68),
        .\wr_index_reg[3]_24 (wr_edge_n_69),
        .\wr_index_reg[3]_25 (wr_edge_n_70),
        .\wr_index_reg[3]_26 (wr_edge_n_80),
        .\wr_index_reg[3]_27 (wr_edge_n_81),
        .\wr_index_reg[3]_28 (wr_edge_n_82),
        .\wr_index_reg[3]_29 (wr_edge_n_83),
        .\wr_index_reg[3]_3 (wr_edge_n_12),
        .\wr_index_reg[3]_30 (wr_edge_n_84),
        .\wr_index_reg[3]_31 (wr_edge_n_85),
        .\wr_index_reg[3]_32 (wr_edge_n_86),
        .\wr_index_reg[3]_33 (wr_edge_n_87),
        .\wr_index_reg[3]_34 (wr_edge_n_88),
        .\wr_index_reg[3]_35 (wr_edge_n_125),
        .\wr_index_reg[3]_36 (wr_edge_n_126),
        .\wr_index_reg[3]_37 (wr_edge_n_127),
        .\wr_index_reg[3]_38 (wr_edge_n_128),
        .\wr_index_reg[3]_39 (wr_edge_n_129),
        .\wr_index_reg[3]_4 (wr_edge_n_13),
        .\wr_index_reg[3]_40 (wr_edge_n_130),
        .\wr_index_reg[3]_41 (wr_edge_n_131),
        .\wr_index_reg[3]_42 (wr_edge_n_132),
        .\wr_index_reg[3]_43 (wr_edge_n_133),
        .\wr_index_reg[3]_5 (wr_edge_n_14),
        .\wr_index_reg[3]_6 (wr_edge_n_15),
        .\wr_index_reg[3]_7 (wr_edge_n_16),
        .\wr_index_reg[3]_8 (wr_edge_n_44),
        .\wr_index_reg[3]_9 (wr_edge_n_45),
        .write_request(write_request));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_index[0]_i_1 
       (.I0(\wr_index_reg[4]_0 [0]),
        .O(\wr_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_index[1]_i_1 
       (.I0(\wr_index_reg[4]_0 [0]),
        .I1(\wr_index_reg[4]_0 [1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_index[2]_i_1 
       (.I0(\wr_index_reg[4]_0 [0]),
        .I1(\wr_index_reg[4]_0 [1]),
        .I2(\wr_index_reg[4]_0 [2]),
        .O(\wr_index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_index[3]_i_1 
       (.I0(\wr_index_reg[4]_0 [1]),
        .I1(\wr_index_reg[4]_0 [0]),
        .I2(\wr_index_reg[4]_0 [2]),
        .I3(\wr_index_reg[4]_0 [3]),
        .O(p_0_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_index[4]_i_1 
       (.I0(axi_aresetn),
        .O(axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wr_index[4]_i_2 
       (.I0(\wr_index_reg[4]_0 [2]),
        .I1(\wr_index_reg[4]_0 [0]),
        .I2(\wr_index_reg[4]_0 [1]),
        .I3(\wr_index_reg[4]_0 [3]),
        .I4(\wr_index_reg[4]_0 [4]),
        .O(p_0_in[4]));
  FDRE \wr_index_reg[0] 
       (.C(axi_aclk),
        .CE(write_request),
        .D(\wr_index[0]_i_1_n_0 ),
        .Q(\wr_index_reg[4]_0 [0]),
        .R(axi_aresetn_0));
  FDRE \wr_index_reg[1] 
       (.C(axi_aclk),
        .CE(write_request),
        .D(p_0_in[1]),
        .Q(\wr_index_reg[4]_0 [1]),
        .R(axi_aresetn_0));
  FDRE \wr_index_reg[2] 
       (.C(axi_aclk),
        .CE(write_request),
        .D(\wr_index[2]_i_1_n_0 ),
        .Q(\wr_index_reg[4]_0 [2]),
        .R(axi_aresetn_0));
  FDRE \wr_index_reg[3] 
       (.C(axi_aclk),
        .CE(write_request),
        .D(p_0_in[3]),
        .Q(\wr_index_reg[4]_0 [3]),
        .R(axi_aresetn_0));
  FDRE \wr_index_reg[4] 
       (.C(axi_aclk),
        .CE(write_request),
        .D(p_0_in[4]),
        .Q(\wr_index_reg[4]_0 [4]),
        .R(axi_aresetn_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial
   (full,
    rd_index,
    wr_index,
    watermark,
    tx_out,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    axi_rdata,
    axi_rvalid_reg,
    baudClockOut,
    empty,
    rd_data,
    axi_bvalid,
    axi_aresetn,
    axi_aclk,
    axi_wdata,
    axi_awaddr,
    axi_wstrb,
    axi_araddr,
    axi_arvalid,
    axi_wvalid,
    axi_awvalid,
    axi_bready,
    axi_rready);
  output full;
  output [4:0]rd_index;
  output [4:0]wr_index;
  output [4:0]watermark;
  output tx_out;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]axi_rdata;
  output axi_rvalid_reg;
  output baudClockOut;
  output empty;
  output [8:0]rd_data;
  output axi_bvalid;
  input axi_aresetn;
  input axi_aclk;
  input [31:0]axi_wdata;
  input [1:0]axi_awaddr;
  input [3:0]axi_wstrb;
  input [1:0]axi_araddr;
  input axi_arvalid;
  input axi_wvalid;
  input axi_awvalid;
  input axi_bready;
  input axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire axi_aclk;
  wire [1:0]axi_araddr;
  wire axi_aresetn;
  wire axi_arvalid;
  wire [1:0]axi_awaddr;
  wire axi_awvalid;
  wire axi_bready;
  wire axi_bvalid;
  wire [31:0]axi_rdata;
  wire axi_rready;
  wire axi_rvalid_reg;
  wire [31:0]axi_wdata;
  wire [3:0]axi_wstrb;
  wire axi_wvalid;
  wire baudClockOut;
  wire empty;
  wire full;
  wire [8:0]rd_data;
  wire [4:0]rd_index;
  wire tx_out;
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
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_wdata(axi_wdata),
        .axi_wstrb(axi_wstrb),
        .axi_wvalid(axi_wvalid),
        .baudClockOut(baudClockOut),
        .empty(empty),
        .full(full),
        .rd_data(rd_data),
        .rd_index(rd_index),
        .tx_out(tx_out),
        .watermark(watermark),
        .wr_index(wr_index));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI
   (full,
    rd_index,
    wr_index,
    watermark,
    tx_out,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    axi_rdata,
    axi_rvalid_reg_0,
    baudClockOut,
    empty,
    rd_data,
    axi_bvalid,
    axi_aresetn,
    axi_aclk,
    axi_wdata,
    axi_awaddr,
    axi_wstrb,
    axi_araddr,
    axi_arvalid,
    axi_wvalid,
    axi_awvalid,
    axi_bready,
    axi_rready);
  output full;
  output [4:0]rd_index;
  output [4:0]wr_index;
  output [4:0]watermark;
  output tx_out;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]axi_rdata;
  output axi_rvalid_reg_0;
  output baudClockOut;
  output empty;
  output [8:0]rd_data;
  output axi_bvalid;
  input axi_aresetn;
  input axi_aclk;
  input [31:0]axi_wdata;
  input [1:0]axi_awaddr;
  input [3:0]axi_wstrb;
  input [1:0]axi_araddr;
  input axi_arvalid;
  input axi_wvalid;
  input axi_awvalid;
  input axi_bready;
  input axi_rready;

  wire ENABLE;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire [3:2]PARITY_CONTROL;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire TEST;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_aclk;
  wire [1:0]axi_araddr;
  wire axi_aresetn;
  wire axi_arready0;
  wire axi_arvalid;
  wire [1:0]axi_awaddr;
  wire axi_awready0;
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
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire [31:0]axi_wdata;
  wire axi_wready0;
  wire [3:0]axi_wstrb;
  wire axi_wvalid;
  wire baudClockOut;
  wire [3:0]count;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[3]_i_3_n_0 ;
  wire edge_detect_inst_n_0;
  wire edge_detect_inst_n_1;
  wire empty;
  wire fifoRead;
  wire full;
  wire keepCount0;
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
  wire my9x16Fifo_inst_n_17;
  wire my9x16Fifo_inst_n_19;
  wire my9x16Fifo_inst_n_29;
  wire my9x16Fifo_inst_n_30;
  wire my9x16Fifo_inst_n_31;
  wire my9x16Fifo_inst_n_32;
  wire my9x16Fifo_inst_n_33;
  wire my9x16Fifo_inst_n_34;
  wire my9x16Fifo_inst_n_35;
  wire my9x16Fifo_inst_n_36;
  wire my9x16Fifo_inst_n_37;
  wire [31:0]officialBaudRate;
  wire \officialBaudRate[15]_i_1_n_0 ;
  wire \officialBaudRate[23]_i_1_n_0 ;
  wire \officialBaudRate[31]_i_1_n_0 ;
  wire \officialBaudRate[7]_i_1_n_0 ;
  wire \officialControl[15]_i_1_n_0 ;
  wire \officialControl[23]_i_1_n_0 ;
  wire \officialControl[31]_i_1_n_0 ;
  wire \officialControl[7]_i_1_n_0 ;
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
  wire \officialStatus_reg_n_0_[0] ;
  wire \officialStatus_reg_n_0_[10] ;
  wire \officialStatus_reg_n_0_[11] ;
  wire \officialStatus_reg_n_0_[12] ;
  wire \officialStatus_reg_n_0_[13] ;
  wire \officialStatus_reg_n_0_[14] ;
  wire \officialStatus_reg_n_0_[15] ;
  wire \officialStatus_reg_n_0_[16] ;
  wire \officialStatus_reg_n_0_[17] ;
  wire \officialStatus_reg_n_0_[18] ;
  wire \officialStatus_reg_n_0_[19] ;
  wire \officialStatus_reg_n_0_[1] ;
  wire \officialStatus_reg_n_0_[20] ;
  wire \officialStatus_reg_n_0_[21] ;
  wire \officialStatus_reg_n_0_[22] ;
  wire \officialStatus_reg_n_0_[23] ;
  wire \officialStatus_reg_n_0_[24] ;
  wire \officialStatus_reg_n_0_[25] ;
  wire \officialStatus_reg_n_0_[26] ;
  wire \officialStatus_reg_n_0_[27] ;
  wire \officialStatus_reg_n_0_[28] ;
  wire \officialStatus_reg_n_0_[2] ;
  wire \officialStatus_reg_n_0_[30] ;
  wire \officialStatus_reg_n_0_[31] ;
  wire \officialStatus_reg_n_0_[3] ;
  wire \officialStatus_reg_n_0_[4] ;
  wire \officialStatus_reg_n_0_[5] ;
  wire \officialStatus_reg_n_0_[6] ;
  wire \officialStatus_reg_n_0_[7] ;
  wire \officialStatus_reg_n_0_[8] ;
  wire \officialStatus_reg_n_0_[9] ;
  wire outSignal;
  wire outSignal_i_1_n_0;
  wire outSignal_reg_n_0;
  wire [1:0]p_0_in_0;
  wire [42:0]p_0_in__1;
  wire p_10_in;
  wire p_8_in;
  wire \raddr[2]_i_1_n_0 ;
  wire \raddr[3]_i_1_n_0 ;
  wire [8:0]rd_data;
  wire [4:0]rd_index;
  wire shiftOut_reg_i_2_n_0;
  wire shiftOut_reg_i_3_n_0;
  wire shiftOut_reg_i_4_n_0;
  wire [2:0]state;
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
  wire [4:0]wr_index;
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

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hB400)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(axi_aresetn),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(axi_aresetn),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:000,START:001,STOP:101,LAST_BIT:011,DATA:010,PARITY:100" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(outSignal_reg_n_0),
        .CE(1'b1),
        .D(edge_detect_inst_n_0),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:000,START:001,STOP:101,LAST_BIT:011,DATA:010,PARITY:100" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(outSignal_reg_n_0),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:000,START:001,STOP:101,LAST_BIT:011,DATA:010,PARITY:100" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(outSignal_reg_n_0),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
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
        .S(my9x16Fifo_inst_n_17));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
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
        .R(my9x16Fifo_inst_n_17));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_awready_i_1
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
        .R(my9x16Fifo_inst_n_17));
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
        .R(my9x16Fifo_inst_n_17));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[10]_i_1 
       (.I0(officialBaudRate[10]),
        .I1(\officialStatus_reg_n_0_[10] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[10] ),
        .O(\axi_rdata[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[11]_i_1 
       (.I0(officialBaudRate[11]),
        .I1(\officialStatus_reg_n_0_[11] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[11] ),
        .O(\axi_rdata[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[12]_i_1 
       (.I0(officialBaudRate[12]),
        .I1(\officialStatus_reg_n_0_[12] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[12] ),
        .O(\axi_rdata[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[13]_i_1 
       (.I0(officialBaudRate[13]),
        .I1(\officialStatus_reg_n_0_[13] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[13] ),
        .O(\axi_rdata[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[14]_i_1 
       (.I0(officialBaudRate[14]),
        .I1(\officialStatus_reg_n_0_[14] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[14] ),
        .O(\axi_rdata[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[15]_i_1 
       (.I0(officialBaudRate[15]),
        .I1(\officialStatus_reg_n_0_[15] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[15] ),
        .O(\axi_rdata[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[16]_i_1 
       (.I0(officialBaudRate[16]),
        .I1(\officialStatus_reg_n_0_[16] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[16] ),
        .O(\axi_rdata[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[17]_i_1 
       (.I0(officialBaudRate[17]),
        .I1(\officialStatus_reg_n_0_[17] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[18]_i_1 
       (.I0(officialBaudRate[18]),
        .I1(\officialStatus_reg_n_0_[18] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[18] ),
        .O(\axi_rdata[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[19]_i_1 
       (.I0(officialBaudRate[19]),
        .I1(\officialStatus_reg_n_0_[19] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[19] ),
        .O(\axi_rdata[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[20]_i_1 
       (.I0(officialBaudRate[20]),
        .I1(\officialStatus_reg_n_0_[20] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[20] ),
        .O(\axi_rdata[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[21]_i_1 
       (.I0(officialBaudRate[21]),
        .I1(\officialStatus_reg_n_0_[21] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[21] ),
        .O(\axi_rdata[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[22]_i_1 
       (.I0(officialBaudRate[22]),
        .I1(\officialStatus_reg_n_0_[22] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[22] ),
        .O(\axi_rdata[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[23]_i_1 
       (.I0(officialBaudRate[23]),
        .I1(\officialStatus_reg_n_0_[23] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[23] ),
        .O(\axi_rdata[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[24]_i_1 
       (.I0(officialBaudRate[24]),
        .I1(\officialStatus_reg_n_0_[24] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[25]_i_1 
       (.I0(officialBaudRate[25]),
        .I1(\officialStatus_reg_n_0_[25] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[25] ),
        .O(\axi_rdata[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[26]_i_1 
       (.I0(officialBaudRate[26]),
        .I1(\officialStatus_reg_n_0_[26] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[26] ),
        .O(\axi_rdata[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[27]_i_1 
       (.I0(officialBaudRate[27]),
        .I1(\officialStatus_reg_n_0_[27] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[27] ),
        .O(\axi_rdata[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[28]_i_1 
       (.I0(officialBaudRate[28]),
        .I1(\officialStatus_reg_n_0_[28] ),
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
        .I1(\officialStatus_reg_n_0_[30] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[30] ),
        .O(\axi_rdata[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_arvalid),
        .I1(axi_rvalid_reg_0),
        .I2(S_AXI_ARREADY),
        .O(p_8_in));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[31]_i_2 
       (.I0(officialBaudRate[31]),
        .I1(\officialStatus_reg_n_0_[31] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[31] ),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[9]_i_1 
       (.I0(officialBaudRate[9]),
        .I1(\officialStatus_reg_n_0_[9] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\officialControl_reg_n_0_[9] ),
        .O(\axi_rdata[9]_i_1_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(my9x16Fifo_inst_n_37),
        .Q(axi_rdata[0]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[10] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[10]_i_1_n_0 ),
        .Q(axi_rdata[10]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[11] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[11]_i_1_n_0 ),
        .Q(axi_rdata[11]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[12] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[12]_i_1_n_0 ),
        .Q(axi_rdata[12]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[13] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[13]_i_1_n_0 ),
        .Q(axi_rdata[13]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[14] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[14]_i_1_n_0 ),
        .Q(axi_rdata[14]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[15] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[15]_i_1_n_0 ),
        .Q(axi_rdata[15]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[16] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[16]_i_1_n_0 ),
        .Q(axi_rdata[16]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[17] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[17]_i_1_n_0 ),
        .Q(axi_rdata[17]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[18] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[18]_i_1_n_0 ),
        .Q(axi_rdata[18]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[19] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[19]_i_1_n_0 ),
        .Q(axi_rdata[19]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[1] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(my9x16Fifo_inst_n_36),
        .Q(axi_rdata[1]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[20] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[20]_i_1_n_0 ),
        .Q(axi_rdata[20]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[21] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[21]_i_1_n_0 ),
        .Q(axi_rdata[21]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[22] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[22]_i_1_n_0 ),
        .Q(axi_rdata[22]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[23] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[23]_i_1_n_0 ),
        .Q(axi_rdata[23]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[24] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[24]_i_1_n_0 ),
        .Q(axi_rdata[24]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[25] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[25]_i_1_n_0 ),
        .Q(axi_rdata[25]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[26] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[26]_i_1_n_0 ),
        .Q(axi_rdata[26]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[27] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[27]_i_1_n_0 ),
        .Q(axi_rdata[27]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[28] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[28]_i_1_n_0 ),
        .Q(axi_rdata[28]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[29] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[29]_i_1_n_0 ),
        .Q(axi_rdata[29]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[2] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(my9x16Fifo_inst_n_35),
        .Q(axi_rdata[2]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[30] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[30]_i_1_n_0 ),
        .Q(axi_rdata[30]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[31] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[31]_i_2_n_0 ),
        .Q(axi_rdata[31]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[3] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(my9x16Fifo_inst_n_34),
        .Q(axi_rdata[3]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[4] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(my9x16Fifo_inst_n_33),
        .Q(axi_rdata[4]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[5] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(my9x16Fifo_inst_n_32),
        .Q(axi_rdata[5]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[6] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(my9x16Fifo_inst_n_31),
        .Q(axi_rdata[6]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[7] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(my9x16Fifo_inst_n_30),
        .Q(axi_rdata[7]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[8] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(my9x16Fifo_inst_n_29),
        .Q(axi_rdata[8]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \axi_rdata_reg[9] 
       (.C(axi_aclk),
        .CE(p_8_in),
        .D(\axi_rdata[9]_i_1_n_0 ),
        .Q(axi_rdata[9]),
        .R(my9x16Fifo_inst_n_17));
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(axi_arvalid),
        .I2(axi_rready),
        .I3(axi_rvalid_reg_0),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(my9x16Fifo_inst_n_17));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
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
        .R(my9x16Fifo_inst_n_17));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    baudClockOut_INST_0
       (.I0(outSignal_reg_n_0),
        .I1(TEST),
        .O(baudClockOut));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_1 
       (.I0(state[1]),
        .I1(count[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count[1]_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(state[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \count[2]_i_1 
       (.I0(count[2]),
        .I1(count[1]),
        .I2(count[0]),
        .I3(state[1]),
        .O(\count[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \count[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(axi_aresetn),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \count[3]_i_3 
       (.I0(count[3]),
        .I1(count[2]),
        .I2(count[0]),
        .I3(count[1]),
        .I4(state[1]),
        .O(\count[3]_i_3_n_0 ));
  FDRE \count_reg[0] 
       (.C(outSignal_reg_n_0),
        .CE(edge_detect_inst_n_1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]),
        .R(\count[3]_i_1_n_0 ));
  FDRE \count_reg[1] 
       (.C(outSignal_reg_n_0),
        .CE(edge_detect_inst_n_1),
        .D(\count[1]_i_1_n_0 ),
        .Q(count[1]),
        .R(\count[3]_i_1_n_0 ));
  FDRE \count_reg[2] 
       (.C(outSignal_reg_n_0),
        .CE(edge_detect_inst_n_1),
        .D(\count[2]_i_1_n_0 ),
        .Q(count[2]),
        .R(\count[3]_i_1_n_0 ));
  FDRE \count_reg[3] 
       (.C(outSignal_reg_n_0),
        .CE(edge_detect_inst_n_1),
        .D(\count[3]_i_3_n_0 ),
        .Q(count[3]),
        .R(\count[3]_i_1_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detect edge_detect_inst
       (.\FSM_sequential_state_reg[1] (edge_detect_inst_n_0),
        .axi_aresetn(axi_aresetn),
        .axi_aresetn_0(edge_detect_inst_n_1),
        .axi_arvalid(axi_arvalid),
        .fifoRead(fifoRead),
        .outReg_reg_0(outSignal_reg_n_0),
        .outReg_reg_1(axi_rvalid_reg_0),
        .outReg_reg_2(S_AXI_ARREADY),
        .p_0_in_0(p_0_in_0),
        .state(state));
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
       (.I0(p_0_in__1[21]),
        .I1(ticks_reg[21]),
        .I2(ticks_reg[23]),
        .I3(p_0_in__1[23]),
        .I4(ticks_reg[22]),
        .I5(p_0_in__1[22]),
        .O(keepCount0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__0_i_2
       (.I0(p_0_in__1[18]),
        .I1(ticks_reg[18]),
        .I2(ticks_reg[20]),
        .I3(p_0_in__1[20]),
        .I4(ticks_reg[19]),
        .I5(p_0_in__1[19]),
        .O(keepCount0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__0_i_3
       (.I0(p_0_in__1[15]),
        .I1(ticks_reg[15]),
        .I2(ticks_reg[17]),
        .I3(p_0_in__1[17]),
        .I4(ticks_reg[16]),
        .I5(p_0_in__1[16]),
        .O(keepCount0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__0_i_4
       (.I0(p_0_in__1[12]),
        .I1(ticks_reg[12]),
        .I2(ticks_reg[14]),
        .I3(p_0_in__1[14]),
        .I4(ticks_reg[13]),
        .I5(p_0_in__1[13]),
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
       (.I0(p_0_in__1[33]),
        .I1(ticks_reg[33]),
        .I2(ticks_reg[35]),
        .I3(p_0_in__1[35]),
        .I4(ticks_reg[34]),
        .I5(p_0_in__1[34]),
        .O(keepCount0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__1_i_2
       (.I0(p_0_in__1[30]),
        .I1(ticks_reg[30]),
        .I2(ticks_reg[32]),
        .I3(p_0_in__1[32]),
        .I4(ticks_reg[31]),
        .I5(p_0_in__1[31]),
        .O(keepCount0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__1_i_3
       (.I0(p_0_in__1[27]),
        .I1(ticks_reg[27]),
        .I2(ticks_reg[29]),
        .I3(p_0_in__1[29]),
        .I4(ticks_reg[28]),
        .I5(p_0_in__1[28]),
        .O(keepCount0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__1_i_4
       (.I0(p_0_in__1[24]),
        .I1(ticks_reg[24]),
        .I2(ticks_reg[26]),
        .I3(p_0_in__1[26]),
        .I4(ticks_reg[25]),
        .I5(p_0_in__1[25]),
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
    .INIT(16'h0009)) 
    keepCount0_carry__2_i_2
       (.I0(p_0_in__1[42]),
        .I1(ticks_reg[42]),
        .I2(ticks_reg[44]),
        .I3(ticks_reg[43]),
        .O(keepCount0_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__2_i_3
       (.I0(p_0_in__1[39]),
        .I1(ticks_reg[39]),
        .I2(ticks_reg[41]),
        .I3(p_0_in__1[41]),
        .I4(ticks_reg[40]),
        .I5(p_0_in__1[40]),
        .O(keepCount0_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry__2_i_4
       (.I0(p_0_in__1[36]),
        .I1(ticks_reg[36]),
        .I2(ticks_reg[38]),
        .I3(p_0_in__1[38]),
        .I4(ticks_reg[37]),
        .I5(p_0_in__1[37]),
        .O(keepCount0_carry__2_i_4_n_0));
  CARRY4 keepCount0_carry__3
       (.CI(keepCount0_carry__2_n_0),
        .CO({NLW_keepCount0_carry__3_CO_UNCONNECTED[3:1],keepCount0}),
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
       (.I0(p_0_in__1[9]),
        .I1(ticks_reg[9]),
        .I2(ticks_reg[11]),
        .I3(p_0_in__1[11]),
        .I4(ticks_reg[10]),
        .I5(p_0_in__1[10]),
        .O(keepCount0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry_i_2
       (.I0(p_0_in__1[6]),
        .I1(ticks_reg[6]),
        .I2(ticks_reg[8]),
        .I3(p_0_in__1[8]),
        .I4(ticks_reg[7]),
        .I5(p_0_in__1[7]),
        .O(keepCount0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry_i_3
       (.I0(p_0_in__1[3]),
        .I1(ticks_reg[3]),
        .I2(ticks_reg[5]),
        .I3(p_0_in__1[5]),
        .I4(ticks_reg[4]),
        .I5(p_0_in__1[4]),
        .O(keepCount0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    keepCount0_carry_i_4
       (.I0(p_0_in__1[0]),
        .I1(ticks_reg[0]),
        .I2(ticks_reg[2]),
        .I3(p_0_in__1[2]),
        .I4(ticks_reg[1]),
        .I5(p_0_in__1[1]),
        .O(keepCount0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \keepCount[0]_i_1 
       (.I0(ENABLE),
        .I1(keepCount0),
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
        .I1(p_0_in__1[7]),
        .O(\keepCount[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[12]_i_3 
       (.I0(officialBaudRate[15]),
        .I1(p_0_in__1[6]),
        .O(\keepCount[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[12]_i_4 
       (.I0(officialBaudRate[14]),
        .I1(p_0_in__1[5]),
        .O(\keepCount[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[12]_i_5 
       (.I0(officialBaudRate[13]),
        .I1(p_0_in__1[4]),
        .O(\keepCount[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[16]_i_2 
       (.I0(officialBaudRate[20]),
        .I1(p_0_in__1[11]),
        .O(\keepCount[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[16]_i_3 
       (.I0(officialBaudRate[19]),
        .I1(p_0_in__1[10]),
        .O(\keepCount[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[16]_i_4 
       (.I0(officialBaudRate[18]),
        .I1(p_0_in__1[9]),
        .O(\keepCount[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[16]_i_5 
       (.I0(officialBaudRate[17]),
        .I1(p_0_in__1[8]),
        .O(\keepCount[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[20]_i_2 
       (.I0(officialBaudRate[24]),
        .I1(p_0_in__1[15]),
        .O(\keepCount[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[20]_i_3 
       (.I0(officialBaudRate[23]),
        .I1(p_0_in__1[14]),
        .O(\keepCount[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[20]_i_4 
       (.I0(officialBaudRate[22]),
        .I1(p_0_in__1[13]),
        .O(\keepCount[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[20]_i_5 
       (.I0(officialBaudRate[21]),
        .I1(p_0_in__1[12]),
        .O(\keepCount[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[24]_i_2 
       (.I0(officialBaudRate[28]),
        .I1(p_0_in__1[19]),
        .O(\keepCount[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[24]_i_3 
       (.I0(officialBaudRate[27]),
        .I1(p_0_in__1[18]),
        .O(\keepCount[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[24]_i_4 
       (.I0(officialBaudRate[26]),
        .I1(p_0_in__1[17]),
        .O(\keepCount[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[24]_i_5 
       (.I0(officialBaudRate[25]),
        .I1(p_0_in__1[16]),
        .O(\keepCount[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[28]_i_2 
       (.I0(officialBaudRate[31]),
        .I1(p_0_in__1[22]),
        .O(\keepCount[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[28]_i_3 
       (.I0(officialBaudRate[30]),
        .I1(p_0_in__1[21]),
        .O(\keepCount[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[28]_i_4 
       (.I0(officialBaudRate[29]),
        .I1(p_0_in__1[20]),
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
        .I1(p_0_in__1[3]),
        .O(\keepCount[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[8]_i_3 
       (.I0(officialBaudRate[11]),
        .I1(p_0_in__1[2]),
        .O(\keepCount[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[8]_i_4 
       (.I0(officialBaudRate[10]),
        .I1(p_0_in__1[1]),
        .O(\keepCount[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \keepCount[8]_i_5 
       (.I0(officialBaudRate[9]),
        .I1(p_0_in__1[0]),
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
        .Q(p_0_in__1[2]),
        .R(1'b0));
  FDRE \keepCount_reg[11] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[8]_i_1_n_4 ),
        .Q(p_0_in__1[3]),
        .R(1'b0));
  FDRE \keepCount_reg[12] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[12]_i_1_n_7 ),
        .Q(p_0_in__1[4]),
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
        .Q(p_0_in__1[5]),
        .R(1'b0));
  FDRE \keepCount_reg[14] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[12]_i_1_n_5 ),
        .Q(p_0_in__1[6]),
        .R(1'b0));
  FDRE \keepCount_reg[15] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[12]_i_1_n_4 ),
        .Q(p_0_in__1[7]),
        .R(1'b0));
  FDRE \keepCount_reg[16] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[16]_i_1_n_7 ),
        .Q(p_0_in__1[8]),
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
        .Q(p_0_in__1[9]),
        .R(1'b0));
  FDRE \keepCount_reg[18] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[16]_i_1_n_5 ),
        .Q(p_0_in__1[10]),
        .R(1'b0));
  FDRE \keepCount_reg[19] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[16]_i_1_n_4 ),
        .Q(p_0_in__1[11]),
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
        .Q(p_0_in__1[12]),
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
        .Q(p_0_in__1[13]),
        .R(1'b0));
  FDRE \keepCount_reg[22] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[20]_i_1_n_5 ),
        .Q(p_0_in__1[14]),
        .R(1'b0));
  FDRE \keepCount_reg[23] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[20]_i_1_n_4 ),
        .Q(p_0_in__1[15]),
        .R(1'b0));
  FDRE \keepCount_reg[24] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[24]_i_1_n_7 ),
        .Q(p_0_in__1[16]),
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
        .Q(p_0_in__1[17]),
        .R(1'b0));
  FDRE \keepCount_reg[26] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[24]_i_1_n_5 ),
        .Q(p_0_in__1[18]),
        .R(1'b0));
  FDRE \keepCount_reg[27] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[24]_i_1_n_4 ),
        .Q(p_0_in__1[19]),
        .R(1'b0));
  FDRE \keepCount_reg[28] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[28]_i_1_n_7 ),
        .Q(p_0_in__1[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[28]_i_1 
       (.CI(\keepCount_reg[24]_i_1_n_0 ),
        .CO({\keepCount_reg[28]_i_1_n_0 ,\keepCount_reg[28]_i_1_n_1 ,\keepCount_reg[28]_i_1_n_2 ,\keepCount_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,officialBaudRate[31:29]}),
        .O({\keepCount_reg[28]_i_1_n_4 ,\keepCount_reg[28]_i_1_n_5 ,\keepCount_reg[28]_i_1_n_6 ,\keepCount_reg[28]_i_1_n_7 }),
        .S({p_0_in__1[23],\keepCount[28]_i_2_n_0 ,\keepCount[28]_i_3_n_0 ,\keepCount[28]_i_4_n_0 }));
  FDRE \keepCount_reg[29] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[28]_i_1_n_6 ),
        .Q(p_0_in__1[21]),
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
        .Q(p_0_in__1[22]),
        .R(1'b0));
  FDRE \keepCount_reg[31] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[28]_i_1_n_4 ),
        .Q(p_0_in__1[23]),
        .R(1'b0));
  FDRE \keepCount_reg[32] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[32]_i_1_n_7 ),
        .Q(p_0_in__1[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[32]_i_1 
       (.CI(\keepCount_reg[28]_i_1_n_0 ),
        .CO({\keepCount_reg[32]_i_1_n_0 ,\keepCount_reg[32]_i_1_n_1 ,\keepCount_reg[32]_i_1_n_2 ,\keepCount_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\keepCount_reg[32]_i_1_n_4 ,\keepCount_reg[32]_i_1_n_5 ,\keepCount_reg[32]_i_1_n_6 ,\keepCount_reg[32]_i_1_n_7 }),
        .S(p_0_in__1[27:24]));
  FDRE \keepCount_reg[33] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[32]_i_1_n_6 ),
        .Q(p_0_in__1[25]),
        .R(1'b0));
  FDRE \keepCount_reg[34] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[32]_i_1_n_5 ),
        .Q(p_0_in__1[26]),
        .R(1'b0));
  FDRE \keepCount_reg[35] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[32]_i_1_n_4 ),
        .Q(p_0_in__1[27]),
        .R(1'b0));
  FDRE \keepCount_reg[36] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[36]_i_1_n_7 ),
        .Q(p_0_in__1[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[36]_i_1 
       (.CI(\keepCount_reg[32]_i_1_n_0 ),
        .CO({\keepCount_reg[36]_i_1_n_0 ,\keepCount_reg[36]_i_1_n_1 ,\keepCount_reg[36]_i_1_n_2 ,\keepCount_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\keepCount_reg[36]_i_1_n_4 ,\keepCount_reg[36]_i_1_n_5 ,\keepCount_reg[36]_i_1_n_6 ,\keepCount_reg[36]_i_1_n_7 }),
        .S(p_0_in__1[31:28]));
  FDRE \keepCount_reg[37] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[36]_i_1_n_6 ),
        .Q(p_0_in__1[29]),
        .R(1'b0));
  FDRE \keepCount_reg[38] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[36]_i_1_n_5 ),
        .Q(p_0_in__1[30]),
        .R(1'b0));
  FDRE \keepCount_reg[39] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[36]_i_1_n_4 ),
        .Q(p_0_in__1[31]),
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
        .Q(p_0_in__1[32]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[40]_i_1 
       (.CI(\keepCount_reg[36]_i_1_n_0 ),
        .CO({\keepCount_reg[40]_i_1_n_0 ,\keepCount_reg[40]_i_1_n_1 ,\keepCount_reg[40]_i_1_n_2 ,\keepCount_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\keepCount_reg[40]_i_1_n_4 ,\keepCount_reg[40]_i_1_n_5 ,\keepCount_reg[40]_i_1_n_6 ,\keepCount_reg[40]_i_1_n_7 }),
        .S(p_0_in__1[35:32]));
  FDRE \keepCount_reg[41] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[40]_i_1_n_6 ),
        .Q(p_0_in__1[33]),
        .R(1'b0));
  FDRE \keepCount_reg[42] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[40]_i_1_n_5 ),
        .Q(p_0_in__1[34]),
        .R(1'b0));
  FDRE \keepCount_reg[43] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[40]_i_1_n_4 ),
        .Q(p_0_in__1[35]),
        .R(1'b0));
  FDRE \keepCount_reg[44] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[44]_i_1_n_7 ),
        .Q(p_0_in__1[36]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[44]_i_1 
       (.CI(\keepCount_reg[40]_i_1_n_0 ),
        .CO({\keepCount_reg[44]_i_1_n_0 ,\keepCount_reg[44]_i_1_n_1 ,\keepCount_reg[44]_i_1_n_2 ,\keepCount_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\keepCount_reg[44]_i_1_n_4 ,\keepCount_reg[44]_i_1_n_5 ,\keepCount_reg[44]_i_1_n_6 ,\keepCount_reg[44]_i_1_n_7 }),
        .S(p_0_in__1[39:36]));
  FDRE \keepCount_reg[45] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[44]_i_1_n_6 ),
        .Q(p_0_in__1[37]),
        .R(1'b0));
  FDRE \keepCount_reg[46] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[44]_i_1_n_5 ),
        .Q(p_0_in__1[38]),
        .R(1'b0));
  FDRE \keepCount_reg[47] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[44]_i_1_n_4 ),
        .Q(p_0_in__1[39]),
        .R(1'b0));
  FDRE \keepCount_reg[48] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[48]_i_1_n_7 ),
        .Q(p_0_in__1[40]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \keepCount_reg[48]_i_1 
       (.CI(\keepCount_reg[44]_i_1_n_0 ),
        .CO({\NLW_keepCount_reg[48]_i_1_CO_UNCONNECTED [3:2],\keepCount_reg[48]_i_1_n_2 ,\keepCount_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_keepCount_reg[48]_i_1_O_UNCONNECTED [3],\keepCount_reg[48]_i_1_n_5 ,\keepCount_reg[48]_i_1_n_6 ,\keepCount_reg[48]_i_1_n_7 }),
        .S({1'b0,p_0_in__1[42:40]}));
  FDRE \keepCount_reg[49] 
       (.C(axi_aclk),
        .CE(outSignal),
        .D(\keepCount_reg[48]_i_1_n_6 ),
        .Q(p_0_in__1[41]),
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
        .Q(p_0_in__1[42]),
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
        .Q(p_0_in__1[0]),
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
        .Q(p_0_in__1[1]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my9x16Fifo my9x16Fifo_inst
       (.D({my9x16Fifo_inst_n_29,my9x16Fifo_inst_n_30,my9x16Fifo_inst_n_31,my9x16Fifo_inst_n_32,my9x16Fifo_inst_n_33,my9x16Fifo_inst_n_34,my9x16Fifo_inst_n_35,my9x16Fifo_inst_n_36,my9x16Fifo_inst_n_37}),
        .Q(rd_index),
        .axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .axi_aresetn_0(my9x16Fifo_inst_n_17),
        .axi_arvalid(axi_arvalid),
        .axi_awvalid(axi_awvalid),
        .\axi_rdata_reg[8] (officialBaudRate[8:0]),
        .\axi_rdata_reg[8]_0 ({\officialStatus_reg_n_0_[8] ,\officialStatus_reg_n_0_[7] ,\officialStatus_reg_n_0_[6] ,\officialStatus_reg_n_0_[5] ,\officialStatus_reg_n_0_[4] ,\officialStatus_reg_n_0_[3] ,\officialStatus_reg_n_0_[2] ,\officialStatus_reg_n_0_[1] ,\officialStatus_reg_n_0_[0] }),
        .\axi_rdata_reg[8]_1 ({\officialControl_reg_n_0_[8] ,\officialControl_reg_n_0_[7] ,\officialControl_reg_n_0_[6] ,TEST,ENABLE,PARITY_CONTROL,\officialControl_reg_n_0_[1] ,\officialControl_reg_n_0_[0] }),
        .axi_wvalid(axi_wvalid),
        .count(count),
        .\count_reg[3] (my9x16Fifo_inst_n_19),
        .empty(empty),
        .fifoRead(fifoRead),
        .full(full),
        .in_delay_reg(axi_rvalid_reg_0),
        .in_delay_reg_0(S_AXI_ARREADY),
        .in_delay_reg_1(S_AXI_WREADY),
        .in_delay_reg_2(S_AXI_AWREADY),
        .officialData(officialData),
        .p_0_in_0(p_0_in_0),
        .p_10_in(p_10_in),
        .rd_data(rd_data),
        .state(state),
        .waddr(waddr),
        .watermark(watermark),
        .\wr_index_reg[4]_0 (wr_index));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[15]_i_1 
       (.I0(p_10_in),
        .I1(axi_wstrb[1]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialBaudRate[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[23]_i_1 
       (.I0(p_10_in),
        .I1(axi_wstrb[2]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialBaudRate[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[31]_i_1 
       (.I0(p_10_in),
        .I1(axi_wstrb[3]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialBaudRate[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[7]_i_1 
       (.I0(p_10_in),
        .I1(axi_wstrb[0]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialBaudRate[7]_i_1_n_0 ));
  FDRE \officialBaudRate_reg[0] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(officialBaudRate[0]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[10] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[10]),
        .Q(officialBaudRate[10]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[11] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[11]),
        .Q(officialBaudRate[11]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[12] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[12]),
        .Q(officialBaudRate[12]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[13] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[13]),
        .Q(officialBaudRate[13]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[14] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[14]),
        .Q(officialBaudRate[14]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[15] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[15]),
        .Q(officialBaudRate[15]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[16] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[16]),
        .Q(officialBaudRate[16]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[17] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[17]),
        .Q(officialBaudRate[17]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[18] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[18]),
        .Q(officialBaudRate[18]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[19] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[19]),
        .Q(officialBaudRate[19]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[1] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(officialBaudRate[1]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[20] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[20]),
        .Q(officialBaudRate[20]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[21] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[21]),
        .Q(officialBaudRate[21]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[22] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[22]),
        .Q(officialBaudRate[22]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[23] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[23]),
        .Q(officialBaudRate[23]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[24] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[24]),
        .Q(officialBaudRate[24]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[25] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[25]),
        .Q(officialBaudRate[25]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[26] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[26]),
        .Q(officialBaudRate[26]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[27] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[27]),
        .Q(officialBaudRate[27]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[28] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[28]),
        .Q(officialBaudRate[28]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[29] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[29]),
        .Q(officialBaudRate[29]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[2] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(officialBaudRate[2]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[30] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[30]),
        .Q(officialBaudRate[30]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[31] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[31]),
        .Q(officialBaudRate[31]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[3] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(officialBaudRate[3]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[4] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(officialBaudRate[4]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[5] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(officialBaudRate[5]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[6] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(officialBaudRate[6]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[7] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(officialBaudRate[7]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[8] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[8]),
        .Q(officialBaudRate[8]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialBaudRate_reg[9] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[9]),
        .Q(officialBaudRate[9]),
        .R(my9x16Fifo_inst_n_17));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialControl[15]_i_1 
       (.I0(p_10_in),
        .I1(axi_awaddr[1]),
        .I2(axi_wstrb[1]),
        .I3(axi_awaddr[0]),
        .O(\officialControl[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialControl[23]_i_1 
       (.I0(p_10_in),
        .I1(axi_awaddr[1]),
        .I2(axi_wstrb[2]),
        .I3(axi_awaddr[0]),
        .O(\officialControl[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialControl[31]_i_1 
       (.I0(p_10_in),
        .I1(axi_awaddr[1]),
        .I2(axi_wstrb[3]),
        .I3(axi_awaddr[0]),
        .O(\officialControl[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialControl[7]_i_1 
       (.I0(p_10_in),
        .I1(axi_awaddr[1]),
        .I2(axi_wstrb[0]),
        .I3(axi_awaddr[0]),
        .O(\officialControl[7]_i_1_n_0 ));
  FDRE \officialControl_reg[0] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(\officialControl_reg_n_0_[0] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[10] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[10]),
        .Q(\officialControl_reg_n_0_[10] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[11] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[11]),
        .Q(\officialControl_reg_n_0_[11] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[12] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[12]),
        .Q(\officialControl_reg_n_0_[12] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[13] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[13]),
        .Q(\officialControl_reg_n_0_[13] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[14] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[14]),
        .Q(\officialControl_reg_n_0_[14] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[15] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[15]),
        .Q(\officialControl_reg_n_0_[15] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[16] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[16]),
        .Q(\officialControl_reg_n_0_[16] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[17] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[17]),
        .Q(\officialControl_reg_n_0_[17] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[18] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[18]),
        .Q(\officialControl_reg_n_0_[18] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[19] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[19]),
        .Q(\officialControl_reg_n_0_[19] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[1] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(\officialControl_reg_n_0_[1] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[20] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[20]),
        .Q(\officialControl_reg_n_0_[20] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[21] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[21]),
        .Q(\officialControl_reg_n_0_[21] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[22] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[22]),
        .Q(\officialControl_reg_n_0_[22] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[23] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[23]),
        .Q(\officialControl_reg_n_0_[23] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[24] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[24]),
        .Q(\officialControl_reg_n_0_[24] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[25] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[25]),
        .Q(\officialControl_reg_n_0_[25] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[26] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[26]),
        .Q(\officialControl_reg_n_0_[26] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[27] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[27]),
        .Q(\officialControl_reg_n_0_[27] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[28] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[28]),
        .Q(\officialControl_reg_n_0_[28] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[29] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[29]),
        .Q(\officialControl_reg_n_0_[29] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[2] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(PARITY_CONTROL[2]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[30] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[30]),
        .Q(\officialControl_reg_n_0_[30] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[31] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[31]),
        .Q(\officialControl_reg_n_0_[31] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[3] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(PARITY_CONTROL[3]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[4] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(ENABLE),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[5] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(TEST),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[6] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(\officialControl_reg_n_0_[6] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[7] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(\officialControl_reg_n_0_[7] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[8] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[8]),
        .Q(\officialControl_reg_n_0_[8] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialControl_reg[9] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[9]),
        .Q(\officialControl_reg_n_0_[9] ),
        .R(my9x16Fifo_inst_n_17));
  LUT4 #(
    .INIT(16'h0200)) 
    \officialData[7]_i_1 
       (.I0(p_10_in),
        .I1(axi_awaddr[1]),
        .I2(axi_awaddr[0]),
        .I3(axi_wstrb[0]),
        .O(\officialData[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \officialData[8]_i_1 
       (.I0(axi_wdata[8]),
        .I1(p_10_in),
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
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialData_reg[1] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(officialData[1]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialData_reg[2] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(officialData[2]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialData_reg[3] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(officialData[3]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialData_reg[4] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(officialData[4]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialData_reg[5] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(officialData[5]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialData_reg[6] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(officialData[6]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialData_reg[7] 
       (.C(axi_aclk),
        .CE(\officialData[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(officialData[7]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialData_reg[8] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\officialData[8]_i_1_n_0 ),
        .Q(officialData[8]),
        .R(my9x16Fifo_inst_n_17));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialStatus[15]_i_1 
       (.I0(p_10_in),
        .I1(axi_wstrb[1]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialStatus[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialStatus[23]_i_1 
       (.I0(p_10_in),
        .I1(axi_wstrb[2]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialStatus[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialStatus[31]_i_1 
       (.I0(p_10_in),
        .I1(axi_wstrb[3]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialStatus[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialStatus[7]_i_1 
       (.I0(p_10_in),
        .I1(axi_wstrb[0]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialStatus[7]_i_1_n_0 ));
  FDRE \officialStatus_reg[0] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(\officialStatus_reg_n_0_[0] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[10] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[10]),
        .Q(\officialStatus_reg_n_0_[10] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[11] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[11]),
        .Q(\officialStatus_reg_n_0_[11] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[12] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[12]),
        .Q(\officialStatus_reg_n_0_[12] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[13] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[13]),
        .Q(\officialStatus_reg_n_0_[13] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[14] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[14]),
        .Q(\officialStatus_reg_n_0_[14] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[15] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[15]),
        .Q(\officialStatus_reg_n_0_[15] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[16] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[16]),
        .Q(\officialStatus_reg_n_0_[16] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[17] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[17]),
        .Q(\officialStatus_reg_n_0_[17] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[18] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[18]),
        .Q(\officialStatus_reg_n_0_[18] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[19] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[19]),
        .Q(\officialStatus_reg_n_0_[19] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[1] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(\officialStatus_reg_n_0_[1] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[20] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[20]),
        .Q(\officialStatus_reg_n_0_[20] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[21] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[21]),
        .Q(\officialStatus_reg_n_0_[21] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[22] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[22]),
        .Q(\officialStatus_reg_n_0_[22] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[23] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[23]),
        .Q(\officialStatus_reg_n_0_[23] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[24] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[24]),
        .Q(\officialStatus_reg_n_0_[24] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[25] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[25]),
        .Q(\officialStatus_reg_n_0_[25] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[26] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[26]),
        .Q(\officialStatus_reg_n_0_[26] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[27] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[27]),
        .Q(\officialStatus_reg_n_0_[27] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[28] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[28]),
        .Q(\officialStatus_reg_n_0_[28] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[29] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[29]),
        .Q(officialStatus),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[2] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(\officialStatus_reg_n_0_[2] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[30] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[30]),
        .Q(\officialStatus_reg_n_0_[30] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[31] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[31]),
        .Q(\officialStatus_reg_n_0_[31] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[3] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(\officialStatus_reg_n_0_[3] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[4] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(\officialStatus_reg_n_0_[4] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[5] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(\officialStatus_reg_n_0_[5] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[6] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(\officialStatus_reg_n_0_[6] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[7] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(\officialStatus_reg_n_0_[7] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[8] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[8]),
        .Q(\officialStatus_reg_n_0_[8] ),
        .R(my9x16Fifo_inst_n_17));
  FDRE \officialStatus_reg[9] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[9]),
        .Q(\officialStatus_reg_n_0_[9] ),
        .R(my9x16Fifo_inst_n_17));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outSignal_i_1
       (.I0(keepCount0),
        .I1(ENABLE),
        .I2(outSignal_reg_n_0),
        .O(outSignal_i_1_n_0));
  FDRE outSignal_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(outSignal_i_1_n_0),
        .Q(outSignal_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \raddr[2]_i_1 
       (.I0(axi_araddr[0]),
        .I1(axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(p_0_in_0[0]),
        .O(\raddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \raddr[3]_i_1 
       (.I0(axi_araddr[1]),
        .I1(axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(p_0_in_0[1]),
        .O(\raddr[3]_i_1_n_0 ));
  FDRE \raddr_reg[2] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\raddr[2]_i_1_n_0 ),
        .Q(p_0_in_0[0]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \raddr_reg[3] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\raddr[3]_i_1_n_0 ),
        .Q(p_0_in_0[1]),
        .R(my9x16Fifo_inst_n_17));
  LDCP shiftOut_reg
       (.CLR(shiftOut_reg_i_3_n_0),
        .D(my9x16Fifo_inst_n_19),
        .G(shiftOut_reg_i_2_n_0),
        .PRE(shiftOut_reg_i_4_n_0),
        .Q(tx_out));
  LUT2 #(
    .INIT(4'h6)) 
    shiftOut_reg_i_2
       (.I0(state[1]),
        .I1(state[2]),
        .O(shiftOut_reg_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    shiftOut_reg_i_3
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(shiftOut_reg_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    shiftOut_reg_i_4
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(shiftOut_reg_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \ticks[0]_i_2 
       (.I0(ticks_reg[0]),
        .O(\ticks[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[0] 
       (.C(axi_aclk),
        .CE(ENABLE),
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
        .CE(ENABLE),
        .D(\ticks_reg[8]_i_1_n_5 ),
        .Q(ticks_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[11] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[8]_i_1_n_4 ),
        .Q(ticks_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[12] 
       (.C(axi_aclk),
        .CE(ENABLE),
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
        .CE(ENABLE),
        .D(\ticks_reg[12]_i_1_n_6 ),
        .Q(ticks_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[14] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[12]_i_1_n_5 ),
        .Q(ticks_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[15] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[12]_i_1_n_4 ),
        .Q(ticks_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[16] 
       (.C(axi_aclk),
        .CE(ENABLE),
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
        .CE(ENABLE),
        .D(\ticks_reg[16]_i_1_n_6 ),
        .Q(ticks_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[18] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[16]_i_1_n_5 ),
        .Q(ticks_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[19] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[16]_i_1_n_4 ),
        .Q(ticks_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[1] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[0]_i_1_n_6 ),
        .Q(ticks_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[20] 
       (.C(axi_aclk),
        .CE(ENABLE),
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
        .CE(ENABLE),
        .D(\ticks_reg[20]_i_1_n_6 ),
        .Q(ticks_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[22] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[20]_i_1_n_5 ),
        .Q(ticks_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[23] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[20]_i_1_n_4 ),
        .Q(ticks_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[24] 
       (.C(axi_aclk),
        .CE(ENABLE),
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
        .CE(ENABLE),
        .D(\ticks_reg[24]_i_1_n_6 ),
        .Q(ticks_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[26] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[24]_i_1_n_5 ),
        .Q(ticks_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[27] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[24]_i_1_n_4 ),
        .Q(ticks_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[28] 
       (.C(axi_aclk),
        .CE(ENABLE),
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
        .CE(ENABLE),
        .D(\ticks_reg[28]_i_1_n_6 ),
        .Q(ticks_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[2] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[0]_i_1_n_5 ),
        .Q(ticks_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[30] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[28]_i_1_n_5 ),
        .Q(ticks_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[31] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[28]_i_1_n_4 ),
        .Q(ticks_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[32] 
       (.C(axi_aclk),
        .CE(ENABLE),
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
        .CE(ENABLE),
        .D(\ticks_reg[32]_i_1_n_6 ),
        .Q(ticks_reg[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[34] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[32]_i_1_n_5 ),
        .Q(ticks_reg[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[35] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[32]_i_1_n_4 ),
        .Q(ticks_reg[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[36] 
       (.C(axi_aclk),
        .CE(ENABLE),
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
        .CE(ENABLE),
        .D(\ticks_reg[36]_i_1_n_6 ),
        .Q(ticks_reg[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[38] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[36]_i_1_n_5 ),
        .Q(ticks_reg[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[39] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[36]_i_1_n_4 ),
        .Q(ticks_reg[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[3] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[0]_i_1_n_4 ),
        .Q(ticks_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[40] 
       (.C(axi_aclk),
        .CE(ENABLE),
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
        .CE(ENABLE),
        .D(\ticks_reg[40]_i_1_n_6 ),
        .Q(ticks_reg[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[42] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[40]_i_1_n_5 ),
        .Q(ticks_reg[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[43] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[40]_i_1_n_4 ),
        .Q(ticks_reg[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[44] 
       (.C(axi_aclk),
        .CE(ENABLE),
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
        .CE(ENABLE),
        .D(\ticks_reg[44]_i_1_n_6 ),
        .Q(ticks_reg[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[46] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[44]_i_1_n_5 ),
        .Q(ticks_reg[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[47] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[44]_i_1_n_4 ),
        .Q(ticks_reg[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[48] 
       (.C(axi_aclk),
        .CE(ENABLE),
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
        .CE(ENABLE),
        .D(\ticks_reg[48]_i_1_n_6 ),
        .Q(ticks_reg[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[4] 
       (.C(axi_aclk),
        .CE(ENABLE),
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
        .CE(ENABLE),
        .D(\ticks_reg[48]_i_1_n_5 ),
        .Q(ticks_reg[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[5] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[4]_i_1_n_6 ),
        .Q(ticks_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[6] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[4]_i_1_n_5 ),
        .Q(ticks_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[7] 
       (.C(axi_aclk),
        .CE(ENABLE),
        .D(\ticks_reg[4]_i_1_n_4 ),
        .Q(ticks_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[8] 
       (.C(axi_aclk),
        .CE(ENABLE),
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
        .CE(ENABLE),
        .D(\ticks_reg[8]_i_1_n_6 ),
        .Q(ticks_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \waddr[2]_i_1 
       (.I0(axi_awaddr[0]),
        .I1(axi_wvalid),
        .I2(axi_awvalid),
        .I3(S_AXI_AWREADY),
        .I4(aw_en_reg_n_0),
        .I5(waddr[2]),
        .O(\waddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \waddr[3]_i_1 
       (.I0(axi_awaddr[1]),
        .I1(axi_wvalid),
        .I2(axi_awvalid),
        .I3(S_AXI_AWREADY),
        .I4(aw_en_reg_n_0),
        .I5(waddr[3]),
        .O(\waddr[3]_i_1_n_0 ));
  FDRE \waddr_reg[2] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\waddr[2]_i_1_n_0 ),
        .Q(waddr[2]),
        .R(my9x16Fifo_inst_n_17));
  FDRE \waddr_reg[3] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\waddr[3]_i_1_n_0 ),
        .Q(waddr[3]),
        .R(my9x16Fifo_inst_n_17));
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
  wire full;
  wire n_0_256;
  wire n_0_257;
  wire n_0_258;
  wire n_0_259;
  wire n_0_260;
  wire n_0_261;
  wire n_0_262;
  wire n_0_263;
  wire n_0_264;
  wire n_0_265;
  wire n_0_266;
  wire n_0_267;
  wire n_0_268;
  wire n_0_269;
  wire n_0_270;
  wire n_0_271;
  wire [8:0]rd_data;
  wire [4:0]rd_index;
  wire tx_out;
  wire [4:0]watermark;
  wire [4:0]wr_index;

  assign axi_bresp[1] = \<const0> ;
  assign axi_bresp[0] = \<const0> ;
  assign axi_rresp[1] = \<const0> ;
  assign axi_rresp[0] = \<const0> ;
  assign overflow = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_256
       (.I0(axi_aresetn),
        .O(n_0_256));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_257
       (.I0(axi_aresetn),
        .O(n_0_257));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_258
       (.I0(axi_aresetn),
        .O(n_0_258));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_259
       (.I0(axi_aresetn),
        .O(n_0_259));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_260
       (.I0(axi_aresetn),
        .O(n_0_260));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_261
       (.I0(axi_aresetn),
        .O(n_0_261));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_262
       (.I0(axi_aresetn),
        .O(n_0_262));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_263
       (.I0(axi_aresetn),
        .O(n_0_263));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_264
       (.I0(axi_aresetn),
        .O(n_0_264));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_265
       (.I0(axi_aresetn),
        .O(n_0_265));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_266
       (.I0(axi_aresetn),
        .O(n_0_266));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_267
       (.I0(axi_aresetn),
        .O(n_0_267));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_268
       (.I0(axi_aresetn),
        .O(n_0_268));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_269
       (.I0(axi_aresetn),
        .O(n_0_269));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_270
       (.I0(axi_aresetn),
        .O(n_0_270));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_271
       (.I0(axi_aresetn),
        .O(n_0_271));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial inst
       (.S_AXI_ARREADY(axi_arready),
        .S_AXI_AWREADY(axi_awready),
        .S_AXI_WREADY(axi_wready),
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
        .empty(empty),
        .full(full),
        .rd_data(rd_data),
        .rd_index(rd_index),
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
