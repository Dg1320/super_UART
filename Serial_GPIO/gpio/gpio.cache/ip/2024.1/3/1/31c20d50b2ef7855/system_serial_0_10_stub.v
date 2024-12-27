// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Tue Dec  3 16:30:34 2024
// Host        : clutch13 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_serial_0_10_stub.v
// Design      : system_serial_0_10
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "serial,Vivado 2024.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(rd_data, debugSignals, baudClockOut, tx_out, 
  rx_in, enableing, testing, txBaud, baudTick, tx_intr, rx_intr, axi_aclk, axi_aresetn, axi_awaddr, 
  axi_awprot, axi_awvalid, axi_awready, axi_wdata, axi_wstrb, axi_wvalid, axi_wready, axi_bresp, 
  axi_bvalid, axi_bready, axi_araddr, axi_arprot, axi_arvalid, axi_arready, axi_rdata, axi_rresp, 
  axi_rvalid, axi_rready)
/* synthesis syn_black_box black_box_pad_pin="rd_data[8:0],debugSignals[29:0],baudClockOut,tx_out,rx_in,enableing,testing,txBaud,baudTick,tx_intr,rx_intr,axi_aresetn,axi_awaddr[3:0],axi_awprot[2:0],axi_awvalid,axi_awready,axi_wdata[31:0],axi_wstrb[3:0],axi_wvalid,axi_wready,axi_bresp[1:0],axi_bvalid,axi_bready,axi_araddr[3:0],axi_arprot[2:0],axi_arvalid,axi_arready,axi_rdata[31:0],axi_rresp[1:0],axi_rvalid,axi_rready" */
/* synthesis syn_force_seq_prim="axi_aclk" */;
  output [8:0]rd_data;
  output [29:0]debugSignals;
  output baudClockOut;
  output tx_out;
  input rx_in;
  output enableing;
  output testing;
  output txBaud;
  output baudTick;
  output tx_intr;
  output rx_intr;
  input axi_aclk /* synthesis syn_isclock = 1 */;
  input axi_aresetn;
  input [3:0]axi_awaddr;
  input [2:0]axi_awprot;
  input axi_awvalid;
  output axi_awready;
  input [31:0]axi_wdata;
  input [3:0]axi_wstrb;
  input axi_wvalid;
  output axi_wready;
  output [1:0]axi_bresp;
  output axi_bvalid;
  input axi_bready;
  input [3:0]axi_araddr;
  input [2:0]axi_arprot;
  input axi_arvalid;
  output axi_arready;
  output [31:0]axi_rdata;
  output [1:0]axi_rresp;
  output axi_rvalid;
  input axi_rready;
endmodule
