// AXI4-lite Serial IP implementation
//
// Contains:
// AXI4-lite interface
// Serial memory-mapped interface
// Serial port interface and implemention
// Serial interrupt generation

`timescale 1 ns / 1 ps

    module serial_v1_0_AXI #
    (
        // Bit width of S_AXI address bus
        parameter integer C_S_AXI_ADDR_WIDTH = 4
    )
    (

        // Ports to top level module
        
        output wire [8:0] rd_data,
        output wire [29:0]debugSignals,
        output wire baudClockOut,
        output wire tx_out,
        input  wire rx_in,

        output wire enableing,
        output wire testing,
        output wire txBaud,
        output wire baudTick,
        
        output wire tx_intr,
        output wire rx_intr,


        // AXI clock and reset        
        input wire S_AXI_ACLK,
        input wire S_AXI_ARESETN,

        // AXI write channel
        // address:  add, protection, valid, ready
        // data:     data, byte enable strobes, valid, ready
        // response: response, valid, ready 
        input wire [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_AWADDR,
        input wire [2:0] S_AXI_AWPROT,
        input wire S_AXI_AWVALID,
        output wire S_AXI_AWREADY,
        
        input wire [31:0] S_AXI_WDATA,
        input wire [3:0] S_AXI_WSTRB,
        input wire S_AXI_WVALID,
        output wire  S_AXI_WREADY,
        
        output wire [1:0] S_AXI_BRESP,
        output wire S_AXI_BVALID,
        input wire S_AXI_BREADY, 
        
        // AXI read channel
        // address: add, protection, valid, ready
        // data:    data, resp, valid, ready
        input wire [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_ARADDR,
        input wire [2:0] S_AXI_ARPROT,
        input wire S_AXI_ARVALID,
        output wire S_AXI_ARREADY,
        
        output wire [31:0] S_AXI_RDATA,
        output wire [1:0] S_AXI_RRESP,
        output wire S_AXI_RVALID,
        input wire S_AXI_RREADY
    );

    // Internal registers
    reg [31:0] officialData;
    reg [31:0] officialStatus;
    reg [31:0] officialControl;
    reg [31:0] officialBaudRate;
    
    // Register map
    // ofs  fn
    //   0  data (r/w)
    //   4  status (r/w)
    //   8  control(r/w)
    //  12  baud_rate (r/w)  
          
    // Register numbers
    localparam integer DATA_REG             = 2'b00;
    localparam integer STATUS_REG           = 2'b01;
    localparam integer CONTROL_REG          = 2'b10;
    localparam integer BAUD_RATE_REG        = 2'b11;
    
    // AXI4-lite signals
    reg axi_awready;
    reg axi_wready;
    reg [1:0] axi_bresp;
    reg axi_bvalid;
    reg axi_arready;
    reg [31:0] axi_rdata;
    reg [1:0] axi_rresp;
    reg axi_rvalid;
    
    // friendly clock, reset, and bus signals from master
    wire axi_clk           = S_AXI_ACLK;
    wire axi_resetn        = S_AXI_ARESETN;
    wire [31:0] axi_awaddr = S_AXI_AWADDR;
    wire axi_awvalid       = S_AXI_AWVALID;
    wire axi_wvalid        = S_AXI_WVALID;
    wire [3:0] axi_wstrb   = S_AXI_WSTRB;
    wire axi_bready        = S_AXI_BREADY;
    wire [31:0] axi_araddr = S_AXI_ARADDR;
    wire axi_arvalid       = S_AXI_ARVALID;
    wire axi_rready        = S_AXI_RREADY;    
    
    // assign bus signals to master to internal reg names
    assign S_AXI_AWREADY = axi_awready;
    assign S_AXI_WREADY  = axi_wready;
    assign S_AXI_BRESP   = axi_bresp;
    assign S_AXI_BVALID  = axi_bvalid;
    assign S_AXI_ARREADY = axi_arready;
    assign S_AXI_RDATA   = axi_rdata;
    assign S_AXI_RRESP   = axi_rresp;
    assign S_AXI_RVALID  = axi_rvalid;
    
        ///////////////////STATUS//////////////////////
    wire RX_FULL;                           // Recieve Fifo is Full , Clears upon data Being Read
    wire RX_EMPTY;                          // Recieve Fifo is Empty , Clears upon data arrival
    wire RX_OVF;                             // Recieve Fifo Overflow  ( Write a 1 to clear )
       
    wire TX_FULL;                           // Transfmit Fifo is Full , Clears upon data Being Sent
    wire TX_EMPTY;                          // Transfmit Fifo is Empty , Clears upon data being written
    wire TX_OVF;                             // Transfmit Fifo Overflow ( Write a 1 to clear )
    
    wire FE;                                 // Frame Error ( Write a 1 to clear )   
    wire PE;                                 // Parity Error ( Write a 1 to clear )   
    
    wire [12:8] RX_Watermark;               // # of FIFO Entries waiting to be read         
    wire [15:13] statusReservedBits;        // Reserved bits
    wire [20:16] TX_Watermark;              // # of FIFO Entries waiting to be transmitted     
    wire CLEAR_TX_OVF;                      // signal to clear TX OVF 
    wire CLEAR_RX_OVF;                      // signal to clear RX OVF
    wire CLEAR_FE;                          // signal to clear Frame Error
    wire CLEAR_PE;                          // signal to clear Parity Error
    wire RX_INTERRUPT_STATUS;
    wire TX_INTERRUPT_STATUS;
    wire [31:27] status_DEBUG_OUT;          // Debug Interface  
    
    assign officialStatus[0] = RX_FULL;
    assign officialStatus[1] = RX_EMPTY;
    assign officialStatus[2] = RX_OVF;
    assign officialStatus[3] = TX_FULL;
    assign officialStatus[4] = TX_EMPTY;
    assign officialStatus[5] = TX_OVF;
    assign officialStatus[6] = FE;
    assign officialStatus[7] = PE;
    assign officialStatus[12:8] = RX_Watermark[12:8];
    assign officialStatus[20:16] = TX_Watermark [20:16];
    assign officialStatus[25] = RX_INTERRUPT_STATUS;
    assign officialStatus[26] = TX_INTERRUPT_STATUS;

    assign CLEAR_TX_OVF = officialStatus[21];
    assign CLEAR_RX_OVF = officialStatus[22];
    assign CLEAR_FE     = officialStatus[23];
    assign CLEAR_PE     = officialStatus[24];
    assign officialStatus[31:27] = status_DEBUG_OUT [31:27];
    
    
       ///////////////////CONTROL//////////////////////
       
    wire [1:0] SIZE = officialControl[1:0];            // 00 = 5 BIT WORDS
                                                       // 01 = 6 BIT WORDS 
                                                       // 10 = 7 BIT WORDS       
                                                       // 11 = 8 BIT WORDS       
                                         
    wire [3:2] PARITY_CONTROL = officialControl[3:2];  // 00 = OFF
                                                       // 01 = EVEN 
                                                       // 10 = ODD       
                                                       // 11 = USE DATA 
    assign enableing = officialControl[4];                                      
    wire ENABLE = officialControl[4];                  // 1 = enable transmitter/reciever/baud rate divider
                                                       // 0 = disable transmitter/reciever/baud rate divider
    assign testing = officialControl[5];  
    wire TEST = officialControl[5];                    // 1 = enable recovery clock output
                                                       // 0 = disable recovery clock output
                                  
    wire INT_ON_RX = officialControl[6];               // 1 = enable interrupt on RX not empty
                                                       // 0 = disable interrupt on RX not empty 
                                  
    wire INT_ON_TX = officialControl[7];               // 1 = enable interrupt on TX  empty
                                                       // 0 = disable interrupt on TX  empty  
    wire SECOND_STOP = officialControl[8];  
              
    wire RX_INTERRUPT_CLEAR_REQUEST = officialControl[9];  
              
    wire TX_INTERRUPT_CLEAR_REQUEST = officialControl[10]; 
               
    wire [15:11] controlReservedBits = 6'd0;            // Reserved bits 
                
    wire [31:16] controlDEBUG_OUT  = officialControl[31:16];   // Debug Interface
           

    // Assert address ready handshake (axi_awready) 
    // - after address is valid (axi_awvalid)
    // - after data is valid (axi_wvalid)
    // - while configured to receive a write (aw_en)
    // De-assert ready (axi_awready)
    // - after write response channel ready handshake received (axi_bready)
    // - after this module sends write response channel valid (axi_bvalid) 
    wire wr_add_data_valid = axi_awvalid && axi_wvalid;
    reg aw_en;
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
        begin
            axi_awready <= 1'b0;
            aw_en <= 1'b1;
        end
        else
        begin
            if (wr_add_data_valid && ~axi_awready && aw_en)
            begin
                axi_awready <= 1'b1;
                aw_en <= 1'b0;
            end
            else if (axi_bready && axi_bvalid)
                begin
                    aw_en <= 1'b1;
                    axi_awready <= 1'b0;
                end
            else           
                axi_awready <= 1'b0;
        end 
    end

    // Capture the write address (axi_awaddr) in the first clock (~axi_awready)
    // - after write address is valid (axi_awvalid)
    // - after write data is valid (axi_wvalid)
    // - while configured to receive a write (aw_en)
    reg [C_S_AXI_ADDR_WIDTH-1:0] waddr;
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
            waddr <= 0;
        else if (wr_add_data_valid && ~axi_awready && aw_en)
            waddr <= axi_awaddr;
    end

    // Output write data ready handshake (axi_wready) generation for one clock
    // - after address is valid (axi_awvalid)
    // - after data is valid (axi_wvalid)
    // - while configured to receive a write (aw_en)
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
            axi_wready <= 1'b0;
        else
            axi_wready <= (wr_add_data_valid && ~axi_wready && aw_en);
    end       

    // Write data to internal registers
    // - after address is valid (axi_awvalid)
    // - after write data is valid (axi_wvalid)
    // - after this module asserts ready for address handshake (axi_awready)
    // - after this module asserts ready for data handshake (axi_wready)
    // write correct bytes in 32-bit word based on byte enables (axi_wstrb)
    // int_clear_request write is only active for one clock
    wire wr = wr_add_data_valid && axi_awready && axi_wready;
    integer byte_index;
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
        begin
            officialData[31:0] <= 32'b0;
            officialStatus [24:21] <= 4'b0;
            officialControl <= 32'b0;
            officialBaudRate <= 32'b0;
            
        end 
        else 
        begin
            if (wr)
            begin
                case (axi_awaddr[3:2])
                    DATA_REG:
                        for (byte_index = 0; byte_index <= 3; byte_index = byte_index+1)
                            if ( axi_wstrb[byte_index] == 1) 
                                officialData[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    STATUS_REG:
//                        for (byte_index = 0; byte_index <= 3; byte_index = byte_index+1)
//                            if (axi_wstrb[byte_index] == 1)
//                                officialStatus[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                                officialStatus[24:21] <= S_AXI_WDATA [24:21];
                                
                    CONTROL_REG: 
                        for (byte_index = 0; byte_index <= 3; byte_index = byte_index+1)
                            if (axi_wstrb[byte_index] == 1)
                                officialControl[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    BAUD_RATE_REG:                                 
                        for (byte_index = 0; byte_index <= 3; byte_index = byte_index+1)
                            if (axi_wstrb[byte_index] == 1)
                                officialBaudRate[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];                    
                endcase
            end
            else
                officialStatus[24:21] <= 4'b0;                      // clear TX OVF, RX OVF, Frame Error, and Parity Error Bits
                officialControl[10:9] <= 2'b0;                      // Signals controlling interrupt clear request

        end
    end    


    // Send write response (axi_bvalid, axi_bresp)
    // - after address is valid (axi_awvalid)
    // - after write data is valid (axi_wvalid)
    // - after this module asserts ready for address handshake (axi_awready)
    // - after this module asserts ready for data handshake (axi_wready)
    // Clear write response valid (axi_bvalid) after one clock
    wire wr_add_data_ready = axi_awready && axi_wready;
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
        begin
            axi_bvalid  <= 0;
            axi_bresp   <= 2'b0;
        end 
        else
        begin    
            if (wr_add_data_valid && wr_add_data_ready && ~axi_bvalid)
            begin
                axi_bvalid <= 1'b1;
                axi_bresp  <= 2'b0;
            end
            else if (S_AXI_BREADY && axi_bvalid) 
                axi_bvalid <= 1'b0; 
        end
    end   

    // In the first clock (~axi_arready) that the read address is valid
    // - capture the address (axi_araddr)
    // - output ready (axi_arready) for one clock
    reg [C_S_AXI_ADDR_WIDTH-1:0] raddr;
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
        begin
            axi_arready <= 1'b0;
            raddr <= 32'b0;
        end 
        else
        begin    
            // if valid, pulse ready (axi_rready) for one clock and save address
            if (axi_arvalid && ~axi_arready)
            begin
                axi_arready <= 1'b1;
                raddr  <= axi_araddr;
            end
            else
                axi_arready <= 1'b0;
        end 
    end       
        
    // Update register read data
    // - after this module receives a valid address (axi_arvalid)
    // - after this module asserts ready for address handshake (axi_arready)
    // - before the module asserts the data is valid (~axi_rvalid)
    //   (don't change the data while asserting read data is valid)
    wire rd = axi_arvalid && axi_arready && ~axi_rvalid;
    wire [8:0] rxDataFromFifo;

    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
        begin
            axi_rdata <= 32'b0;
        end 
        else
        begin    
            if (rd)
            begin
		// Address decoding for reading registers
		case (raddr[3:2])
		    DATA_REG:  axi_rdata <= {23'd0, rxDataFromFifo[8:0]};
   
		    STATUS_REG:
		        axi_rdata <= officialStatus;
		    CONTROL_REG: 
		        axi_rdata <= officialControl;
		    BAUD_RATE_REG: 
			axi_rdata <= officialBaudRate;
		endcase
            end   
        end
    end   
    
    // Assert data is valid for reading (axi_rvalid)
    // - after address is valid (axi_arvalid)
    // - after this module asserts ready for address handshake (axi_arready)
    // De-assert data valid (axi_rvalid) 
    // - after master ready handshake is received (axi_rready)
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
            axi_rvalid <= 1'b0;
        else
        begin
            if (axi_arvalid && axi_arready && ~axi_rvalid)
            begin
                axi_rvalid <= 1'b1;
                axi_rresp <= 2'b0;
            end   
            else if (axi_rvalid && axi_rready)
                axi_rvalid <= 1'b0;
        end
    end
/////////////////////////Set Baud Rate Divider//////////////////

reg [31:8] IBRD; 
reg [7:0] FBRD;

always_comb 
begin         
        IBRD = 100000000 / (16 * officialBaudRate);  
        FBRD = (100000000 % (16 * officialBaudRate)) * 256;  
end
       
///////////////////////Baud Rate Generator///////////////////////    
    
   wire baudSignalOut;
   assign baudClockOut = baudSignalOut && TEST;
   
   baudRateDivider myBRD (
        .clock(axi_clk),
        .enable(ENABLE),
        .reset(axi_resetn),
        .IBRD(IBRD),
        .FBRD(FBRD),
        .baudSignalOut(baudSignalOut)
    );
   
///////////////////////////Transmitter//////////////////////////////  
    wire readFifoRequest;

    transmitter myTransmitter 
    (
        .clock(axi_clk),
        .reset(axi_resetn),
        .enable(ENABLE),
        .baudRateGenerated(baudSignalOut),
        .empty(TX_EMPTY),
        .parity(PARITY_CONTROL),
        .second_stop(SECOND_STOP),
        .size(SIZE),    
        .data(rd_data[8:0]), 
        .data_request(readFifoRequest), 
        .tx_out(tx_out)    
    );  
    
///////////////////////////TX FIFO/////////////////////////////////////////////
    assign debugSignals[19:10] = {TX_EMPTY, TX_FULL, TX_OVF , 2'b0 , TX_Watermark};
   
    wire fifoWrite = wr && waddr[3:2]== DATA_REG;
    wire [4:0] temp0,temp1; 

    my9x16Fifo txFIFO
    (
        .clock(axi_clk),
        .reset(axi_resetn),
        .wr_request(fifoWrite),
        .rd_request(readFifoRequest),
        .clear_overflow_request(CLEAR_TX_OVF),
        .wr_data(officialData),
        .rd_data(rd_data),
        .empty(TX_EMPTY),
        .full(TX_FULL),
        .overflow(TX_OVF),        
        .wr_index(temp0),
        .rd_index(temp1), 
        .watermark(TX_Watermark)
    ); 
        
////////////////////////////Receiver/////////////////////////////////
    
    assign debugSignals[29:20] = {6'b0,RX_INTERRUPT_STATUS,TX_INTERRUPT_STATUS,PE,FE};
    // Handle rx input metastability safely
    reg  official_rx_in;
    reg  pre_rx_in;
    
    always_ff @ (posedge(axi_clk))
    begin
        pre_rx_in <= rx_in;
        official_rx_in <= pre_rx_in;
    end
    
    
    wire writeFifoRequest;
    wire [8:0] myRxData;
    
    receiver myReceiver 
    (
        .clock(axi_clk),
        .reset(axi_resetn),
        .rx_in(official_rx_in),
        .baudRateGenerated(baudSignalOut),
        .clearParityError(CLEAR_PE),
        .clearFrameError(CLEAR_FE),
        .size(SIZE),
        .parity(PARITY_CONTROL),    
        .writeFifoRequest(writeFifoRequest), 
        .parityError(PE), 
        .frameError(FE),    
        .myRxData(myRxData)
    );  
         

    
///////////////////////////RX FIFO/////////////////////////////////////////////
    assign debugSignals[9:0] = {RX_EMPTY, RX_FULL, RX_OVF , 2'b0 , RX_Watermark};
    
    wire fifoRead = rd && raddr[3:2]== DATA_REG;
    wire [4:0] temp2,temp3; 
    
    my9x16Fifo  rxFIFO 
    (
        .clock(axi_clk),
        .reset(axi_resetn),
        .wr_request(writeFifoRequest),
        .rd_request(fifoRead),
        .clear_overflow_request(CLEAR_RX_OVF),
        .wr_data(myRxData),
        .rd_data(rxDataFromFifo),
        .empty(RX_EMPTY),
        .full(RX_FULL),
        .overflow(RX_OVF),        
        .wr_index(temp2),
        .rd_index(temp3), 
        .watermark(RX_Watermark)
    ); 
    

  ////////////////////////////////////////////////    
             
     reg sendTxInterrupt;
     reg sendRxInterrupt;  
     
//     assign rx_intr = sendRxInterrupt;
//     assign tx_intr = sendTxInterrupt;
     
//     assign TX_INTERRUPT_STATUS = sendTxInterrupt;          
//     assign RX_INTERRUPT_STATUS = sendRxInterrupt;
     
    // Interrupt generation
//always_ff @ (posedge axi_clk)
//begin
//        if(INT_ON_RX)  sendRxInterrupt <= !RX_EMPTY;
//        else   sendTxInterrupt <= 1'b0; 
//        if(INT_ON_TX)  sendTxInterrupt <= TX_EMPTY;  
//        else   sendRxInterrupt <= 1'b0;
              
//end
    // Interrupt generation
//    always_ff @ (posedge axi_clk)
//    begin
//        if (axi_resetn == 1'b0)
//        begin
//            sendRxInterrupt <= 1'b0;
//        end
//        else 
//        begin 
//                if (RX_INTERRUPT_CLEAR_REQUEST)   sendRxInterrupt <= sendRxInterrupt & ~RX_INTERRUPT_CLEAR_REQUEST;
//                else  if (INT_ON_RX && ) sendRxInterrupt <= 1'b1;
//             end
//    end
     assign rx_intr = !RX_EMPTY;
     assign RX_INTERRUPT_STATUS = sendRxInterrupt;

//    // Interrupt generation
//    always_ff @ (posedge axi_clk)
//    begin
//        if (axi_resetn == 1'b0)
//        begin
//            sendRxInterrupt <= 1'b0;
//            sendTxInterrupt <= 1'b0;
//        end
//        else 
////        begin 
////                if (RX_INTERRUPT_CLEAR_REQUEST)   sendRxInterrupt <= sendRxInterrupt & ~RX_INTERRUPT_CLEAR_REQUEST;
////                if (TX_INTERRUPT_CLEAR_REQUEST)   sendTxInterrupt <= sendTxInterrupt & ~TX_INTERRUPT_CLEAR_REQUEST;
////                else
//                begin
//                         if (INT_ON_RX) sendRxInterrupt <= !RX_EMPTY;
//                    else if (INT_ON_TX) sendTxInterrupt <= TX_EMPTY;         
// //               end 
//             end
//    end
//     assign rx_intr = sendRxInterrupt;
//     assign tx_intr = sendTxInterrupt;
//     assign TX_INTERRUPT_STATUS = sendTxInterrupt;          
//     assign RX_INTERRUPT_STATUS = sendRxInterrupt;
   
endmodule
    
    
    
    
    
 module edge_detect
( input clock, 
  input in,
  output out
);
reg in_delay;
reg inReg = in;
reg outReg;
assign out = outReg;

always @ (posedge clock)
    begin
            in_delay <= inReg;
            outReg <= inReg & ~in_delay;
    end

endmodule
               
   