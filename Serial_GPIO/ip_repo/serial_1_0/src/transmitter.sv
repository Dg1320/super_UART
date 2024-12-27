`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: DeZean Gardner
// 
// Create Date: 11/09/2024 10:58:13 PM
// Design Name: 
// Module Name: transmitter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module transmitter
(
    input clock,
    input reset,
    input enable,
    input baudRateGenerated,
    input empty,
    input [1:0]parity,
    input second_stop,
    input [1:0]size,
    input [8:0]data,
    
    output data_request,
    output tx_out
    
);
 //////////////////////////////////slowed down baud Rate /////////////////////////////////

wire sixteenXfasterTick;
reg [3:0] ticks = 0;
reg sixteenXslower;
wire baud_tick;


edge_detect edge_detect_inst 
(
    .clock(clock),
    .in(baudRateGenerated),
    .out(sixteenXfasterTick)
    
);
   always_ff @(posedge clock)
begin  
        if(sixteenXfasterTick)
        begin
        
            ticks <= ticks + 1'b1;
            
            if(ticks == 4'd15) 
            begin
                sixteenXslower <= 1'b1;
                ticks<=1'b0;
            end
            else sixteenXslower <= 1'b0;
        
        end      
                    
end 

   edge_detect regularBaudRate (
    .clock(clock),
    .in(sixteenXslower),
    .out(baud_tick)
); 


////////////////////////TX//////////////////////////////
localparam integer PARITY_OFF  = 2'd0;
localparam integer PARITY_ODD  = 2'd1;
localparam integer PARITY_EVEN = 2'd2;
localparam integer RS485       = 2'd3;
///////////////////////////////////////////
reg [3:0] txState;
localparam integer TX_IDLE     = 4'd0;
localparam integer TX_START    = 4'd1;
localparam integer TX_DATA     = 4'd2;
localparam integer TX_PARITY   = 4'd3;
localparam integer TX_STOP1    = 4'd4;
localparam integer TX_STOP2    = 4'd5;

////////////////////////////////////////////
wire myParityBit;
reg shiftOut;
reg [3:0] count;
reg [3:0] mySize; 
reg readFifoRequest;
wire readingFromFifo;

assign data_request = readFifoRequest;

edge_detect readTxFifo 
(
    .clock(clock),
    .in(readFifoRequest),
    .out(readingFromFifo)
);   


reg[8:0] latchData;
reg  testIdle; 
always_comb
begin
    if(readingFromFifo == 1'b1) 
    begin 
        latchData = data;
    end 
end 
     
always_comb
begin
         if(size == 2'b00) mySize = 4'd5;
    else if(size == 2'b01) mySize = 4'd6;
    else if(size == 2'b10) mySize = 4'd7;
    else if(size == 2'b11) mySize = 4'd8;
end

assign tx_out = shiftOut; 

always_ff @ (posedge clock)
begin
if(reset == 1'b0) txState <= TX_IDLE;
else begin
                case (txState)
                TX_IDLE:begin  
                            if(baud_tick)
                            begin    
                                if(!empty && enable)
                                begin
                                  txState <= TX_START;                   // start the logic
                                  testIdle <= 1;
                                  count <= 4'd0;                 // reset count for next time
                                  shiftOut <= 1'b1;                 // stay high for idle
                                  readFifoRequest <= 1'b1;
                                  
                                end
                                  count <= 4'd0;                 // reset count for next time
                                  shiftOut <= 1'b1;                 // stay high for idle
                            end
                     end
                TX_START:if(baud_tick)
                      begin
                            txState <= TX_DATA;                                      // after start bit is sent, start sending the data over transmit line
                            shiftOut <= 1'b0;                                   // send start bit
                            readFifoRequest <= 1'b0;

                      end   
                                                                       
                         
                TX_DATA:if(baud_tick)
                     begin
                            if(count == mySize-1) 
                            begin
                                    if(parity == PARITY_OFF) 
                                    begin
                                             txState <= TX_STOP1;
                                             shiftOut <= latchData[count];     // send data
                                    end   
                                    else if(parity == PARITY_ODD || parity == PARITY_EVEN) txState = TX_PARITY;
                                    else if(parity == RS485) 
                                    begin
                                             txState <= TX_STOP1;
                                             count <= count +1;       // reset count for next time
                                             shiftOut <= latchData[count];     // send data

                                    end
                            end
                            else begin 
                                    count <= count +1;  
                                    shiftOut <= latchData[count];    // send data
                            end     
                      end                                
                TX_PARITY:if(baud_tick)
                     begin
                            txState <= TX_STOP1;                     // stop state. 
                            shiftOut <= myParityBit;                 // send parity bit
                     end                                                            
                TX_STOP1:if(baud_tick)
                     begin
                            if(second_stop) txState<=TX_STOP2;                               
                            else begin
                            if(!empty && enable)
                            begin
                                 count <= 4'd0;                 // reset count for next time
                                 shiftOut <= 1'b1;              // send stop bit
                                 txState <= TX_START;                // go back to get the rest of the data.
                            end
                            else
                            begin
                                 count <= 4'd0;                 // reset count for next time
                                 shiftOut <= 1'b1;              // send stop bit
                                 txState <= TX_IDLE;                 // go back to idle after stop.
                            end
                                  
                            end
                     end
                TX_STOP2:if(baud_tick)
                     begin
                            if(!empty && enable)
                            begin
                                 count <= 4'd0;                 // reset count for next time
                                 shiftOut <= 1'b1;              // send stop bit
                                 txState <= TX_START;                // go back to get the rest of the data.
                            end
                            else
                            begin
                                 count <= 4'd0;                 // reset count for next time
                                count <= 4'd0;                 // reset count for next time
                                txState <= TX_IDLE;                 // go back to idle after stop.   
                            end                                                                      
                                                              
                     end                             
                endcase
                
      end
end 
 
 
endmodule
