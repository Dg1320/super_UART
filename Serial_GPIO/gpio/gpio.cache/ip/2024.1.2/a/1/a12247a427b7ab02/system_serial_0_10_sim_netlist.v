// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (lin64) Build 5164865 Thu Sep  5 14:36:28 MDT 2024
// Date        : Fri Oct 25 17:58:10 2024
// Host        : clutch13 running 64-bit Ubuntu 24.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_serial_0_10_sim_netlist.v
// Design      : system_serial_0_10
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    axi_rdata,
    axi_rvalid,
    axi_bvalid,
    axi_wvalid,
    axi_awvalid,
    axi_aclk,
    axi_araddr,
    axi_arvalid,
    axi_wdata,
    wr_data,
    axi_wstrb,
    axi_awaddr,
    axi_bready,
    axi_rready,
    axi_aresetn);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]axi_rdata;
  output axi_rvalid;
  output axi_bvalid;
  input axi_wvalid;
  input axi_awvalid;
  input axi_aclk;
  input [1:0]axi_araddr;
  input axi_arvalid;
  input [31:0]axi_wdata;
  input [8:0]wr_data;
  input [3:0]axi_wstrb;
  input [1:0]axi_awaddr;
  input axi_bready;
  input axi_rready;
  input axi_aresetn;

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
  wire axi_rvalid;
  wire [31:0]axi_wdata;
  wire [3:0]axi_wstrb;
  wire axi_wvalid;
  wire [8:0]wr_data;

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
        .wr_data(wr_data));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_v1_0_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    axi_rdata,
    axi_rvalid,
    axi_bvalid,
    axi_wvalid,
    axi_awvalid,
    axi_aclk,
    axi_araddr,
    axi_arvalid,
    axi_wdata,
    wr_data,
    axi_wstrb,
    axi_awaddr,
    axi_bready,
    axi_rready,
    axi_aresetn);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]axi_rdata;
  output axi_rvalid;
  output axi_bvalid;
  input axi_wvalid;
  input axi_awvalid;
  input axi_aclk;
  input [1:0]axi_araddr;
  input axi_arvalid;
  input [31:0]axi_wdata;
  input [8:0]wr_data;
  input [3:0]axi_wstrb;
  input [1:0]axi_awaddr;
  input axi_bready;
  input axi_rready;
  input axi_aresetn;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
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
  wire \axi_rdata[0]_i_1_n_0 ;
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
  wire \axi_rdata[1]_i_1_n_0 ;
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
  wire \axi_rdata[2]_i_1_n_0 ;
  wire \axi_rdata[30]_i_1_n_0 ;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire \axi_rdata[3]_i_1_n_0 ;
  wire \axi_rdata[4]_i_1_n_0 ;
  wire \axi_rdata[5]_i_1_n_0 ;
  wire \axi_rdata[6]_i_1_n_0 ;
  wire \axi_rdata[7]_i_1_n_0 ;
  wire \axi_rdata[8]_i_1_n_0 ;
  wire \axi_rdata[9]_i_1_n_0 ;
  wire axi_rready;
  wire axi_rvalid;
  wire axi_rvalid_i_1_n_0;
  wire [31:0]axi_wdata;
  wire axi_wready0;
  wire [3:0]axi_wstrb;
  wire axi_wvalid;
  wire [31:0]officialBaudRate;
  wire \officialBaudRate[15]_i_1_n_0 ;
  wire \officialBaudRate[23]_i_1_n_0 ;
  wire \officialBaudRate[31]_i_1_n_0 ;
  wire \officialBaudRate[31]_i_2_n_0 ;
  wire \officialBaudRate[7]_i_1_n_0 ;
  wire [31:0]officialControl;
  wire \officialControl[15]_i_1_n_0 ;
  wire \officialControl[23]_i_1_n_0 ;
  wire \officialControl[31]_i_1_n_0 ;
  wire \officialControl[7]_i_1_n_0 ;
  wire [31:0]officialStatus;
  wire \officialStatus[15]_i_1_n_0 ;
  wire \officialStatus[23]_i_1_n_0 ;
  wire \officialStatus[31]_i_1_n_0 ;
  wire \officialStatus[7]_i_1_n_0 ;
  wire p_0_in;
  wire [8:0]pre_read_port_data;
  wire [3:2]raddr;
  wire \raddr[2]_i_1_n_0 ;
  wire \raddr[3]_i_1_n_0 ;
  wire rd__0;
  wire [8:0]read_port_data;
  wire [8:0]wr_data;

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
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(axi_aresetn),
        .O(p_0_in));
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
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h00008000FFFF8000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_WREADY),
        .I2(axi_wvalid),
        .I3(axi_awvalid),
        .I4(axi_bvalid),
        .I5(axi_bready),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axi_bvalid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(officialBaudRate[0]),
        .I1(officialStatus[0]),
        .I2(raddr[2]),
        .I3(officialControl[0]),
        .I4(raddr[3]),
        .I5(read_port_data[0]),
        .O(\axi_rdata[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[10]_i_1 
       (.I0(officialBaudRate[10]),
        .I1(officialStatus[10]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[10]),
        .O(\axi_rdata[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[11]_i_1 
       (.I0(officialBaudRate[11]),
        .I1(officialStatus[11]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[11]),
        .O(\axi_rdata[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[12]_i_1 
       (.I0(officialBaudRate[12]),
        .I1(officialStatus[12]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[12]),
        .O(\axi_rdata[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[13]_i_1 
       (.I0(officialBaudRate[13]),
        .I1(officialStatus[13]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[13]),
        .O(\axi_rdata[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[14]_i_1 
       (.I0(officialBaudRate[14]),
        .I1(officialStatus[14]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[14]),
        .O(\axi_rdata[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[15]_i_1 
       (.I0(officialBaudRate[15]),
        .I1(officialStatus[15]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[15]),
        .O(\axi_rdata[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[16]_i_1 
       (.I0(officialBaudRate[16]),
        .I1(officialStatus[16]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[16]),
        .O(\axi_rdata[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[17]_i_1 
       (.I0(officialBaudRate[17]),
        .I1(officialStatus[17]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[17]),
        .O(\axi_rdata[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[18]_i_1 
       (.I0(officialBaudRate[18]),
        .I1(officialStatus[18]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[18]),
        .O(\axi_rdata[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[19]_i_1 
       (.I0(officialBaudRate[19]),
        .I1(officialStatus[19]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[19]),
        .O(\axi_rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_1 
       (.I0(officialBaudRate[1]),
        .I1(officialStatus[1]),
        .I2(raddr[2]),
        .I3(officialControl[1]),
        .I4(raddr[3]),
        .I5(read_port_data[1]),
        .O(\axi_rdata[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[20]_i_1 
       (.I0(officialBaudRate[20]),
        .I1(officialStatus[20]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[20]),
        .O(\axi_rdata[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[21]_i_1 
       (.I0(officialBaudRate[21]),
        .I1(officialStatus[21]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[21]),
        .O(\axi_rdata[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[22]_i_1 
       (.I0(officialBaudRate[22]),
        .I1(officialStatus[22]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[22]),
        .O(\axi_rdata[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[23]_i_1 
       (.I0(officialBaudRate[23]),
        .I1(officialStatus[23]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[23]),
        .O(\axi_rdata[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[24]_i_1 
       (.I0(officialBaudRate[24]),
        .I1(officialStatus[24]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[24]),
        .O(\axi_rdata[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[25]_i_1 
       (.I0(officialBaudRate[25]),
        .I1(officialStatus[25]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[25]),
        .O(\axi_rdata[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[26]_i_1 
       (.I0(officialBaudRate[26]),
        .I1(officialStatus[26]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[26]),
        .O(\axi_rdata[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[27]_i_1 
       (.I0(officialBaudRate[27]),
        .I1(officialStatus[27]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[27]),
        .O(\axi_rdata[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[28]_i_1 
       (.I0(officialBaudRate[28]),
        .I1(officialStatus[28]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[28]),
        .O(\axi_rdata[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[29]_i_1 
       (.I0(officialBaudRate[29]),
        .I1(officialStatus[29]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[29]),
        .O(\axi_rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_1 
       (.I0(officialBaudRate[2]),
        .I1(officialStatus[2]),
        .I2(raddr[2]),
        .I3(officialControl[2]),
        .I4(raddr[3]),
        .I5(read_port_data[2]),
        .O(\axi_rdata[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[30]_i_1 
       (.I0(officialBaudRate[30]),
        .I1(officialStatus[30]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[30]),
        .O(\axi_rdata[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[31]_i_1 
       (.I0(officialBaudRate[31]),
        .I1(officialStatus[31]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[31]),
        .O(\axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_1 
       (.I0(officialBaudRate[3]),
        .I1(officialStatus[3]),
        .I2(raddr[2]),
        .I3(officialControl[3]),
        .I4(raddr[3]),
        .I5(read_port_data[3]),
        .O(\axi_rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_1 
       (.I0(officialBaudRate[4]),
        .I1(officialStatus[4]),
        .I2(raddr[2]),
        .I3(officialControl[4]),
        .I4(raddr[3]),
        .I5(read_port_data[4]),
        .O(\axi_rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_1 
       (.I0(officialBaudRate[5]),
        .I1(officialStatus[5]),
        .I2(raddr[2]),
        .I3(officialControl[5]),
        .I4(raddr[3]),
        .I5(read_port_data[5]),
        .O(\axi_rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_1 
       (.I0(officialBaudRate[6]),
        .I1(officialStatus[6]),
        .I2(raddr[2]),
        .I3(officialControl[6]),
        .I4(raddr[3]),
        .I5(read_port_data[6]),
        .O(\axi_rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_1 
       (.I0(officialBaudRate[7]),
        .I1(officialStatus[7]),
        .I2(raddr[2]),
        .I3(officialControl[7]),
        .I4(raddr[3]),
        .I5(read_port_data[7]),
        .O(\axi_rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_1 
       (.I0(officialBaudRate[8]),
        .I1(officialStatus[8]),
        .I2(raddr[2]),
        .I3(officialControl[8]),
        .I4(raddr[3]),
        .I5(read_port_data[8]),
        .O(\axi_rdata[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[9]_i_1 
       (.I0(officialBaudRate[9]),
        .I1(officialStatus[9]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(officialControl[9]),
        .O(\axi_rdata[9]_i_1_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[0]_i_1_n_0 ),
        .Q(axi_rdata[0]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[10] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[10]_i_1_n_0 ),
        .Q(axi_rdata[10]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[11] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[11]_i_1_n_0 ),
        .Q(axi_rdata[11]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[12] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[12]_i_1_n_0 ),
        .Q(axi_rdata[12]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[13] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[13]_i_1_n_0 ),
        .Q(axi_rdata[13]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[14] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[14]_i_1_n_0 ),
        .Q(axi_rdata[14]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[15] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[15]_i_1_n_0 ),
        .Q(axi_rdata[15]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[16] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[16]_i_1_n_0 ),
        .Q(axi_rdata[16]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[17] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[17]_i_1_n_0 ),
        .Q(axi_rdata[17]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[18] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[18]_i_1_n_0 ),
        .Q(axi_rdata[18]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[19] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[19]_i_1_n_0 ),
        .Q(axi_rdata[19]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[1] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[1]_i_1_n_0 ),
        .Q(axi_rdata[1]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[20] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[20]_i_1_n_0 ),
        .Q(axi_rdata[20]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[21] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[21]_i_1_n_0 ),
        .Q(axi_rdata[21]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[22] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[22]_i_1_n_0 ),
        .Q(axi_rdata[22]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[23] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[23]_i_1_n_0 ),
        .Q(axi_rdata[23]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[24] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[24]_i_1_n_0 ),
        .Q(axi_rdata[24]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[25] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[25]_i_1_n_0 ),
        .Q(axi_rdata[25]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[26] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[26]_i_1_n_0 ),
        .Q(axi_rdata[26]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[27] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[27]_i_1_n_0 ),
        .Q(axi_rdata[27]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[28] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[28]_i_1_n_0 ),
        .Q(axi_rdata[28]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[29] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[29]_i_1_n_0 ),
        .Q(axi_rdata[29]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[2] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[2]_i_1_n_0 ),
        .Q(axi_rdata[2]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[30] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[30]_i_1_n_0 ),
        .Q(axi_rdata[30]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[31] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[31]_i_1_n_0 ),
        .Q(axi_rdata[31]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[3] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[3]_i_1_n_0 ),
        .Q(axi_rdata[3]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[4] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[4]_i_1_n_0 ),
        .Q(axi_rdata[4]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[5] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[5]_i_1_n_0 ),
        .Q(axi_rdata[5]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[6] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[6]_i_1_n_0 ),
        .Q(axi_rdata[6]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[7] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[7]_i_1_n_0 ),
        .Q(axi_rdata[7]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[8] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[8]_i_1_n_0 ),
        .Q(axi_rdata[8]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[9] 
       (.C(axi_aclk),
        .CE(rd__0),
        .D(\axi_rdata[9]_i_1_n_0 ),
        .Q(axi_rdata[9]),
        .R(p_0_in));
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
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[15]_i_1 
       (.I0(\officialBaudRate[31]_i_2_n_0 ),
        .I1(axi_wstrb[1]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialBaudRate[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[23]_i_1 
       (.I0(\officialBaudRate[31]_i_2_n_0 ),
        .I1(axi_wstrb[2]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialBaudRate[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[31]_i_1 
       (.I0(\officialBaudRate[31]_i_2_n_0 ),
        .I1(axi_wstrb[3]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialBaudRate[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[31]_i_2 
       (.I0(axi_wvalid),
        .I1(axi_awvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .O(\officialBaudRate[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \officialBaudRate[7]_i_1 
       (.I0(\officialBaudRate[31]_i_2_n_0 ),
        .I1(axi_wstrb[0]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialBaudRate[7]_i_1_n_0 ));
  FDRE \officialBaudRate_reg[0] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(officialBaudRate[0]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[10] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[10]),
        .Q(officialBaudRate[10]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[11] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[11]),
        .Q(officialBaudRate[11]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[12] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[12]),
        .Q(officialBaudRate[12]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[13] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[13]),
        .Q(officialBaudRate[13]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[14] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[14]),
        .Q(officialBaudRate[14]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[15] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[15]),
        .Q(officialBaudRate[15]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[16] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[16]),
        .Q(officialBaudRate[16]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[17] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[17]),
        .Q(officialBaudRate[17]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[18] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[18]),
        .Q(officialBaudRate[18]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[19] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[19]),
        .Q(officialBaudRate[19]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[1] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(officialBaudRate[1]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[20] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[20]),
        .Q(officialBaudRate[20]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[21] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[21]),
        .Q(officialBaudRate[21]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[22] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[22]),
        .Q(officialBaudRate[22]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[23] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[23]_i_1_n_0 ),
        .D(axi_wdata[23]),
        .Q(officialBaudRate[23]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[24] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[24]),
        .Q(officialBaudRate[24]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[25] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[25]),
        .Q(officialBaudRate[25]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[26] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[26]),
        .Q(officialBaudRate[26]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[27] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[27]),
        .Q(officialBaudRate[27]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[28] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[28]),
        .Q(officialBaudRate[28]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[29] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[29]),
        .Q(officialBaudRate[29]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[2] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(officialBaudRate[2]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[30] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[30]),
        .Q(officialBaudRate[30]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[31] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[31]_i_1_n_0 ),
        .D(axi_wdata[31]),
        .Q(officialBaudRate[31]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[3] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(officialBaudRate[3]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[4] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(officialBaudRate[4]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[5] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(officialBaudRate[5]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[6] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(officialBaudRate[6]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[7] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(officialBaudRate[7]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[8] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[8]),
        .Q(officialBaudRate[8]),
        .R(p_0_in));
  FDRE \officialBaudRate_reg[9] 
       (.C(axi_aclk),
        .CE(\officialBaudRate[15]_i_1_n_0 ),
        .D(axi_wdata[9]),
        .Q(officialBaudRate[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialControl[15]_i_1 
       (.I0(\officialBaudRate[31]_i_2_n_0 ),
        .I1(axi_awaddr[1]),
        .I2(axi_wstrb[1]),
        .I3(axi_awaddr[0]),
        .O(\officialControl[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialControl[23]_i_1 
       (.I0(\officialBaudRate[31]_i_2_n_0 ),
        .I1(axi_awaddr[1]),
        .I2(axi_wstrb[2]),
        .I3(axi_awaddr[0]),
        .O(\officialControl[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialControl[31]_i_1 
       (.I0(\officialBaudRate[31]_i_2_n_0 ),
        .I1(axi_awaddr[1]),
        .I2(axi_wstrb[3]),
        .I3(axi_awaddr[0]),
        .O(\officialControl[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialControl[7]_i_1 
       (.I0(\officialBaudRate[31]_i_2_n_0 ),
        .I1(axi_awaddr[1]),
        .I2(axi_wstrb[0]),
        .I3(axi_awaddr[0]),
        .O(\officialControl[7]_i_1_n_0 ));
  FDRE \officialControl_reg[0] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(officialControl[0]),
        .R(p_0_in));
  FDRE \officialControl_reg[10] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[10]),
        .Q(officialControl[10]),
        .R(p_0_in));
  FDRE \officialControl_reg[11] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[11]),
        .Q(officialControl[11]),
        .R(p_0_in));
  FDRE \officialControl_reg[12] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[12]),
        .Q(officialControl[12]),
        .R(p_0_in));
  FDRE \officialControl_reg[13] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[13]),
        .Q(officialControl[13]),
        .R(p_0_in));
  FDRE \officialControl_reg[14] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[14]),
        .Q(officialControl[14]),
        .R(p_0_in));
  FDRE \officialControl_reg[15] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[15]),
        .Q(officialControl[15]),
        .R(p_0_in));
  FDRE \officialControl_reg[16] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[16]),
        .Q(officialControl[16]),
        .R(p_0_in));
  FDRE \officialControl_reg[17] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[17]),
        .Q(officialControl[17]),
        .R(p_0_in));
  FDRE \officialControl_reg[18] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[18]),
        .Q(officialControl[18]),
        .R(p_0_in));
  FDRE \officialControl_reg[19] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[19]),
        .Q(officialControl[19]),
        .R(p_0_in));
  FDRE \officialControl_reg[1] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(officialControl[1]),
        .R(p_0_in));
  FDRE \officialControl_reg[20] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[20]),
        .Q(officialControl[20]),
        .R(p_0_in));
  FDRE \officialControl_reg[21] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[21]),
        .Q(officialControl[21]),
        .R(p_0_in));
  FDRE \officialControl_reg[22] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[22]),
        .Q(officialControl[22]),
        .R(p_0_in));
  FDRE \officialControl_reg[23] 
       (.C(axi_aclk),
        .CE(\officialControl[23]_i_1_n_0 ),
        .D(axi_wdata[23]),
        .Q(officialControl[23]),
        .R(p_0_in));
  FDRE \officialControl_reg[24] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[24]),
        .Q(officialControl[24]),
        .R(p_0_in));
  FDRE \officialControl_reg[25] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[25]),
        .Q(officialControl[25]),
        .R(p_0_in));
  FDRE \officialControl_reg[26] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[26]),
        .Q(officialControl[26]),
        .R(p_0_in));
  FDRE \officialControl_reg[27] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[27]),
        .Q(officialControl[27]),
        .R(p_0_in));
  FDRE \officialControl_reg[28] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[28]),
        .Q(officialControl[28]),
        .R(p_0_in));
  FDRE \officialControl_reg[29] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[29]),
        .Q(officialControl[29]),
        .R(p_0_in));
  FDRE \officialControl_reg[2] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(officialControl[2]),
        .R(p_0_in));
  FDRE \officialControl_reg[30] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[30]),
        .Q(officialControl[30]),
        .R(p_0_in));
  FDRE \officialControl_reg[31] 
       (.C(axi_aclk),
        .CE(\officialControl[31]_i_1_n_0 ),
        .D(axi_wdata[31]),
        .Q(officialControl[31]),
        .R(p_0_in));
  FDRE \officialControl_reg[3] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(officialControl[3]),
        .R(p_0_in));
  FDRE \officialControl_reg[4] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(officialControl[4]),
        .R(p_0_in));
  FDRE \officialControl_reg[5] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(officialControl[5]),
        .R(p_0_in));
  FDRE \officialControl_reg[6] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(officialControl[6]),
        .R(p_0_in));
  FDRE \officialControl_reg[7] 
       (.C(axi_aclk),
        .CE(\officialControl[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(officialControl[7]),
        .R(p_0_in));
  FDRE \officialControl_reg[8] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[8]),
        .Q(officialControl[8]),
        .R(p_0_in));
  FDRE \officialControl_reg[9] 
       (.C(axi_aclk),
        .CE(\officialControl[15]_i_1_n_0 ),
        .D(axi_wdata[9]),
        .Q(officialControl[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialStatus[15]_i_1 
       (.I0(\officialBaudRate[31]_i_2_n_0 ),
        .I1(axi_wstrb[1]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialStatus[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialStatus[23]_i_1 
       (.I0(\officialBaudRate[31]_i_2_n_0 ),
        .I1(axi_wstrb[2]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialStatus[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialStatus[31]_i_1 
       (.I0(\officialBaudRate[31]_i_2_n_0 ),
        .I1(axi_wstrb[3]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialStatus[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \officialStatus[7]_i_1 
       (.I0(\officialBaudRate[31]_i_2_n_0 ),
        .I1(axi_wstrb[0]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[1]),
        .O(\officialStatus[7]_i_1_n_0 ));
  FDRE \officialStatus_reg[0] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(officialStatus[0]),
        .R(p_0_in));
  FDRE \officialStatus_reg[10] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[10]),
        .Q(officialStatus[10]),
        .R(p_0_in));
  FDRE \officialStatus_reg[11] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[11]),
        .Q(officialStatus[11]),
        .R(p_0_in));
  FDRE \officialStatus_reg[12] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[12]),
        .Q(officialStatus[12]),
        .R(p_0_in));
  FDRE \officialStatus_reg[13] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[13]),
        .Q(officialStatus[13]),
        .R(p_0_in));
  FDRE \officialStatus_reg[14] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[14]),
        .Q(officialStatus[14]),
        .R(p_0_in));
  FDRE \officialStatus_reg[15] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[15]),
        .Q(officialStatus[15]),
        .R(p_0_in));
  FDRE \officialStatus_reg[16] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[16]),
        .Q(officialStatus[16]),
        .R(p_0_in));
  FDRE \officialStatus_reg[17] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[17]),
        .Q(officialStatus[17]),
        .R(p_0_in));
  FDRE \officialStatus_reg[18] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[18]),
        .Q(officialStatus[18]),
        .R(p_0_in));
  FDRE \officialStatus_reg[19] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[19]),
        .Q(officialStatus[19]),
        .R(p_0_in));
  FDRE \officialStatus_reg[1] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(officialStatus[1]),
        .R(p_0_in));
  FDRE \officialStatus_reg[20] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[20]),
        .Q(officialStatus[20]),
        .R(p_0_in));
  FDRE \officialStatus_reg[21] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[21]),
        .Q(officialStatus[21]),
        .R(p_0_in));
  FDRE \officialStatus_reg[22] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[22]),
        .Q(officialStatus[22]),
        .R(p_0_in));
  FDRE \officialStatus_reg[23] 
       (.C(axi_aclk),
        .CE(\officialStatus[23]_i_1_n_0 ),
        .D(axi_wdata[23]),
        .Q(officialStatus[23]),
        .R(p_0_in));
  FDRE \officialStatus_reg[24] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[24]),
        .Q(officialStatus[24]),
        .R(p_0_in));
  FDRE \officialStatus_reg[25] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[25]),
        .Q(officialStatus[25]),
        .R(p_0_in));
  FDRE \officialStatus_reg[26] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[26]),
        .Q(officialStatus[26]),
        .R(p_0_in));
  FDRE \officialStatus_reg[27] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[27]),
        .Q(officialStatus[27]),
        .R(p_0_in));
  FDRE \officialStatus_reg[28] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[28]),
        .Q(officialStatus[28]),
        .R(p_0_in));
  FDRE \officialStatus_reg[29] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[29]),
        .Q(officialStatus[29]),
        .R(p_0_in));
  FDRE \officialStatus_reg[2] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(officialStatus[2]),
        .R(p_0_in));
  FDRE \officialStatus_reg[30] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[30]),
        .Q(officialStatus[30]),
        .R(p_0_in));
  FDRE \officialStatus_reg[31] 
       (.C(axi_aclk),
        .CE(\officialStatus[31]_i_1_n_0 ),
        .D(axi_wdata[31]),
        .Q(officialStatus[31]),
        .R(p_0_in));
  FDRE \officialStatus_reg[3] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(officialStatus[3]),
        .R(p_0_in));
  FDRE \officialStatus_reg[4] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(officialStatus[4]),
        .R(p_0_in));
  FDRE \officialStatus_reg[5] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(officialStatus[5]),
        .R(p_0_in));
  FDRE \officialStatus_reg[6] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(officialStatus[6]),
        .R(p_0_in));
  FDRE \officialStatus_reg[7] 
       (.C(axi_aclk),
        .CE(\officialStatus[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(officialStatus[7]),
        .R(p_0_in));
  FDRE \officialStatus_reg[8] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[8]),
        .Q(officialStatus[8]),
        .R(p_0_in));
  FDRE \officialStatus_reg[9] 
       (.C(axi_aclk),
        .CE(\officialStatus[15]_i_1_n_0 ),
        .D(axi_wdata[9]),
        .Q(officialStatus[9]),
        .R(p_0_in));
  FDRE \pre_read_port_data_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(wr_data[0]),
        .Q(pre_read_port_data[0]),
        .R(1'b0));
  FDRE \pre_read_port_data_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(wr_data[1]),
        .Q(pre_read_port_data[1]),
        .R(1'b0));
  FDRE \pre_read_port_data_reg[2] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(wr_data[2]),
        .Q(pre_read_port_data[2]),
        .R(1'b0));
  FDRE \pre_read_port_data_reg[3] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(wr_data[3]),
        .Q(pre_read_port_data[3]),
        .R(1'b0));
  FDRE \pre_read_port_data_reg[4] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(wr_data[4]),
        .Q(pre_read_port_data[4]),
        .R(1'b0));
  FDRE \pre_read_port_data_reg[5] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(wr_data[5]),
        .Q(pre_read_port_data[5]),
        .R(1'b0));
  FDRE \pre_read_port_data_reg[6] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(wr_data[6]),
        .Q(pre_read_port_data[6]),
        .R(1'b0));
  FDRE \pre_read_port_data_reg[7] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(wr_data[7]),
        .Q(pre_read_port_data[7]),
        .R(1'b0));
  FDRE \pre_read_port_data_reg[8] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(wr_data[8]),
        .Q(pre_read_port_data[8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \raddr[2]_i_1 
       (.I0(axi_araddr[0]),
        .I1(axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(raddr[2]),
        .O(\raddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \raddr[3]_i_1 
       (.I0(axi_araddr[1]),
        .I1(axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(raddr[3]),
        .O(\raddr[3]_i_1_n_0 ));
  FDRE \raddr_reg[2] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\raddr[2]_i_1_n_0 ),
        .Q(raddr[2]),
        .R(p_0_in));
  FDRE \raddr_reg[3] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\raddr[3]_i_1_n_0 ),
        .Q(raddr[3]),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h20)) 
    rd
       (.I0(axi_arvalid),
        .I1(axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(rd__0));
  FDRE \read_port_data_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(pre_read_port_data[0]),
        .Q(read_port_data[0]),
        .R(1'b0));
  FDRE \read_port_data_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(pre_read_port_data[1]),
        .Q(read_port_data[1]),
        .R(1'b0));
  FDRE \read_port_data_reg[2] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(pre_read_port_data[2]),
        .Q(read_port_data[2]),
        .R(1'b0));
  FDRE \read_port_data_reg[3] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(pre_read_port_data[3]),
        .Q(read_port_data[3]),
        .R(1'b0));
  FDRE \read_port_data_reg[4] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(pre_read_port_data[4]),
        .Q(read_port_data[4]),
        .R(1'b0));
  FDRE \read_port_data_reg[5] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(pre_read_port_data[5]),
        .Q(read_port_data[5]),
        .R(1'b0));
  FDRE \read_port_data_reg[6] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(pre_read_port_data[6]),
        .Q(read_port_data[6]),
        .R(1'b0));
  FDRE \read_port_data_reg[7] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(pre_read_port_data[7]),
        .Q(read_port_data[7]),
        .R(1'b0));
  FDRE \read_port_data_reg[8] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(pre_read_port_data[8]),
        .Q(read_port_data[8]),
        .R(1'b0));
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
  wire \<const1> ;
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
  wire [8:0]wr_data;

  assign axi_bresp[1] = \<const0> ;
  assign axi_bresp[0] = \<const0> ;
  assign axi_rresp[1] = \<const0> ;
  assign axi_rresp[0] = \<const0> ;
  assign empty = \<const1> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign rd_data[8] = \<const0> ;
  assign rd_data[7] = \<const0> ;
  assign rd_data[6] = \<const0> ;
  assign rd_data[5] = \<const0> ;
  assign rd_data[4] = \<const0> ;
  assign rd_data[3] = \<const0> ;
  assign rd_data[2] = \<const0> ;
  assign rd_data[1] = \<const0> ;
  assign rd_data[0] = \<const0> ;
  assign rd_index[4] = \<const0> ;
  assign rd_index[3] = \<const0> ;
  assign rd_index[2] = \<const0> ;
  assign rd_index[1] = \<const0> ;
  assign rd_index[0] = \<const0> ;
  assign watermark[4] = \<const0> ;
  assign watermark[3] = \<const0> ;
  assign watermark[2] = \<const0> ;
  assign watermark[1] = \<const0> ;
  assign watermark[0] = \<const0> ;
  assign wr_index[4] = \<const0> ;
  assign wr_index[3] = \<const0> ;
  assign wr_index[2] = \<const0> ;
  assign wr_index[1] = \<const0> ;
  assign wr_index[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
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
        .axi_rvalid(axi_rvalid),
        .axi_wdata(axi_wdata),
        .axi_wstrb(axi_wstrb),
        .axi_wvalid(axi_wvalid),
        .wr_data(wr_data));
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