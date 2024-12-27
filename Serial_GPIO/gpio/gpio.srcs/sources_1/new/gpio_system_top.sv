// Top level file for GPIO example for Xilinx XUP Blackboard rev D 
// (gpio_system_top.sv)
// Jason Losh
//
// 32-bit GPIO port:
//   GPIO port for IP module tied to GPIO [23:0]
//   INTR debug output for IP module tied to RGB0[1]
//   AXI4-lite aperature memory offset is 0x00000000

module gpio_system_top (
    input CLK100,
    output [9:0] LED,       // RGB1, RGB0, LED 9..0 placed from left to right
    output [2:0] RGB0,      
    output [2:0] RGB1,
    output [3:0] SS_ANODE,   // Anodes 3..0 placed from left to right
    output [7:0] SS_CATHODE, // Bit order: DP, G, F, E, D, C, B, A
    input [11:0] SW,         // SWs 11..0 placed from left to right
    input [3:0] PB,          // PBs 3..0 placed from left to right
    inout [23:0] GPIO,       // PMODA-C 1P, 1N, ... 3P, 3N order
    output [3:0] SERVO,      // Servo outputs
    output PDM_SPEAKER,      // PDM signals for mic and speaker
    input PDM_MIC_DATA,      
    output PDM_MIC_CLK,
    output ESP32_UART1_TXD,  // WiFi/Bluetooth serial interface 1
    input ESP32_UART1_RXD,
    output IMU_SCLK,         // IMU spi clk
    output IMU_SDI,          // IMU spi data input
    input IMU_SDO_AG,        // IMU spi data output (accel/gyro)
    input IMU_SDO_M,         // IMU spi data output (mag)
    output IMU_CS_AG,        // IMU cs (accel/gyro) 
    output IMU_CS_M,         // IMU cs (mag)
    input IMU_DRDY_M,        // IMU data ready (mag)
    input IMU_INT1_AG,       // IMU interrupt (accel/gyro)
    input IMU_INT_M,         // IMU interrupt (mag)
    output IMU_DEN_AG,       // IMU data enable (accel/gyro)
    inout [14:0]DDR_addr,
    inout [2:0]DDR_ba,
    inout DDR_cas_n,
    inout DDR_ck_n,
    inout DDR_ck_p,
    inout DDR_cke,
    inout DDR_cs_n,
    inout [3:0]DDR_dm,
    inout [31:0]DDR_dq,
    inout [3:0]DDR_dqs_n,
    inout [3:0]DDR_dqs_p,
    inout DDR_odt,
    inout DDR_ras_n,
    inout DDR_reset_n,
    inout DDR_we_n,
    inout FIXED_IO_ddr_vrn,
    inout FIXED_IO_ddr_vrp,
    inout [53:0]FIXED_IO_mio,
    inout FIXED_IO_ps_clk,
    inout FIXED_IO_ps_porb,
    inout FIXED_IO_ps_srstb
    );
     
    // Terminate all of the unused outputs or i/o's
    // assign LED = 10'b0000000000;
    //assign RGB0 = 3'b000;
    //assign RGB1 = 3'b000;
    // assign SS_ANODE = 4'b0000;
    // assign SS_CATHODE = 8'b11111111;
    // assign GPIO = 24'bzzzzzzzzzzzzzzzzzzzzzzzz;
    assign SERVO = 4'b0000;
    assign PDM_SPEAKER = 1'b0;
    assign PDM_MIC_CLK = 1'b0;
    assign ESP32_UART1_TXD = 1'b0;
    assign IMU_SCLK = 1'b0;
    assign IMU_SDI = 1'b0;
    assign IMU_CS_AG = 1'b1;
    assign IMU_CS_M = 1'b1;
    assign IMU_DEN_AG = 1'b0;

    // display g (gpio) on left seven segment display
   // assign SS_ANODE = 4'b0111;
   // assign SS_CATHODE = 8'b10010000;

    // Tie gpio to PMOD connectors
    wire [31:0] gpio_data_in;
    wire [31:0] gpio_data_out;
    wire [31:0] gpio_data_oe;
    // pin control 
//    genvar j;
//    for (j = 0; j < 22; j = j + 1)
//        assign GPIO[j] = gpio_data_oe[j] ? gpio_data_out[j] : 1'bz;
//    assign gpio_data_in = {8'b0, GPIO[21:0]};
         
    // Tie intr output t RGB0 green LED
    wire intr;
    assign RGB0 = {1'b0, intr, 1'b0};
    assign RGB1 = {1'b0, rx_intr, 1'b0};

    wire [4:0] txWatermark; 
    wire [4:0] rxWatermark;     
    wire txFull, txEmpty, txOvf;
    wire rxFull, rxEmpty, rxOvf;
    wire frameError, parityError;
    
    wire [8:0] rd_data;
    wire [29:0]debugSignals;
    wire baudClockOut;
    wire tx_out;
    wire rx_in;
    wire enableing;
    wire testing;
    wire txBaud;
    wire baudTick;     
    wire tx_intr;
    wire rx_intr; 
     
    wire rxInterruptStatus;  
    wire txInterruptStatus;  
    assign frameError = debugSignals[20];
    assign parityError = debugSignals[21];
    assign rxInterruptStatus = debugSignals[22];
    assign txInterruptStatus = debugSignals[23];
    
    assign  txEmpty = debugSignals[19];
    assign  txFull = debugSignals[18];
    assign  txOvf = debugSignals[17];
    assign  txWatermark = debugSignals[14:0];
    
    assign  rxEmpty = debugSignals[9];
    assign  rxFull = debugSignals[8];
    assign  rxOvf = debugSignals[7];
    assign  rxWatermark = debugSignals[4:0];   
    
    
    assign GPIO[0] = tx_out;
    assign GPIO[1] = rx_in;
    assign GPIO[2] = baudClockOut;
    assign GPIO[3] = baudTick;
    
    wire wr_request = SW[9];
    wire rd_request = SW[11];
    
    assign SS_ANODE = 4'b0111;
        
    wire [1:0] mode = SW[1:0]; 
    reg [7:0] mode_led;
    
    assign SS_CATHODE = mode_led; 
       
    always @ (mode)
    begin
         case (mode)
              2'b00: mode_led = 8'b11000000;
              2'b01: mode_led = 8'b11111001;
              2'b10: mode_led = 8'b10100100;
              2'b11: mode_led = 8'b10110000;
         endcase
    end 
        
    wire [9:0] out[3:0];
    assign out[0] = { rxOvf , rxFull, rxEmpty, 2'b0 , rxWatermark} ;               // recieve status
    assign out[1] = { txOvf , txFull, txEmpty, 2'b0 , txWatermark} ;               // transmit status
    assign out[2] = {5'b0,rxInterruptStatus,txInterruptStatus,1'b0,parityError,frameError};                                // fram and parity error
    assign out[3] = {8'b0,testing,enableing};                                     // debug for turning on baud
    assign LED = out[mode]; 
    
    
    // Instantiate system wrapper
    system_wrapper system (
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .gpio_data_in(gpio_data_in),
        .gpio_data_out(gpio_data_out),
        .gpio_data_oe(gpio_data_oe),
        .intr(intr),
        .rd_data(rd_data),
        .debugSignals(debugSignals),
        .baudClockOut(baudClockOut),
        .tx_out(tx_out),
        .rx_in(rx_in),
        .enableing(enableing),
        .testing(testing),
        .txBaud(txBaud),
        .baudTick(baudTick),
        .tx_intr(tx_intr),
        .rx_intr(rx_intr)   
        );
                


endmodule

