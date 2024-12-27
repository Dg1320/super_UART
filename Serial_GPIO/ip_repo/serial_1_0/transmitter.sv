`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
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
    input brgen,
    input [1:0]parity,
    input stop2,
    input [3:0]size,
    input [8:0] data,
    input data_request,
    output tx_out
    
);
 
    wire reset;
    reg [4:0] state;
//////////////////////////////////////////   
    parameter PARITY_OFF = 2'd0;
    parameter PARITY_ODD = 2'd1;
    parameter PARITY_EVEN = 2'd2;
    parameter RS485 = 2'd3;
///////////////////////////////////////////
    reg [3:0] state;
    parameter IDLE   = 4'd0;
    parameter START  = 4'd1;
    parameter PARITY = 4'd2;
    parameter STOP   = 4'd3;
    parameter STOP2  = 4'd4;
    parameter DATA0  = 4'd5;
    parameter DATA1  = 4'd6;
    parameter DATA2  = 4'd7;
    parameter DATA3  = 4'd8;
    parameter DATA4  = 4'd9;
    parameter DATA5  = 4'd10;
    parameter DATA6  = 4'd11;
    parameter DATA7  = 4'd12;
    parameter DATA8  = 4'd13;
////////////////////////////////////////////
  
    reg myParityBit;
    reg shiftOut;
    reg [3:0] count;
    reg [3:0] size; 
    reg [8:0] myInputData = data[8:0];         // input
            
    wire tx_out = shiftOut;
    
     
    always_ff @ (posedge brgen)
    begin
        if(reset == 1'b0) state <= IDLE;
        else begin
                    
                        case (state)
                        IDLE:begin
                                   shiftOut <= 1'b1;                                   // stay high for idle
                                   if (data_request & enable) state <= START;                   // start the logic
                             end
                        START:begin
                                    shiftOut <= 1'b0;                                   // signal low signifying start
                                    state <= DATA0;                                      // after start bit is sent, start sending the data over transmit line
                              end   
                              
                        DATA0:begin 
                                    shiftOut <= myInputData[0];
                                    state <= DATA1;                                
                               end                             
  
                        DATA1:begin 
                                    shiftOut <= myInputData[1];
                                    state <= DATA2;
                                    
                              end
                                                            
                        DATA2:begin 
                                    shiftOut <= myInputData[2];
                                    state <= DATA3;
                                    
                              end
                                                            
                        DATA3:begin 
                                    shiftOut <= myInputData[3];
                                    state <= DATA4;
                                    
                              end 
                        DATA4:begin 
                                    if((parity == PARITY_ODD || parity == PARITY_EVEN) && size == 4'd5)
                                    begin
                                            shiftOut <= myInputData[4];
                                            state <= PARITY;
                                    end
                                    else begin
                                            if(size == 4'd5)  state <= STOP; 
                                            else begin
                                                        shiftOut <= myInputData[4];
                                                        state <= DATA5;
                                                 end 
                                         end                                                  
                               end  
                        DATA5:begin 
                                    if((parity == PARITY_ODD || parity == PARITY_EVEN) && size == 4'd6)
                                    begin
                                            shiftOut <= myInputData[5];
                                            state <= PARITY;
                                    end
                                    else begin
                                            if(size == 4'd6)  state <= STOP; 
                                            else begin
                                                        shiftOut <= myInputData[5];
                                                        state <= DATA6;
                                                 end 
                                         end                                                  
                               end     
                                                                                       
                         DATA6:begin 
                                    if((parity == PARITY_ODD || parity == PARITY_EVEN) && size == 4'd7)
                                    begin
                                            shiftOut <= myInputData[6];
                                            state <= PARITY;
                                    end
                                    else begin
                                            if(size == 4'd7 )  state <= STOP; 
                                            else begin
                                                        shiftOut <= myInputData[6];
                                                        state <= DATA7;
                                                 end 
                                         end                                                  
                               end  
                         DATA7:begin 
                                    if((parity == PARITY_ODD || parity == PARITY_EVEN) && size == 4'd8)
                                    begin
                                            shiftOut <= myInputData[7];
                                            state <= PARITY;
                                    end
                                    else begin
                                            if(size == 4'd8 && parity == PARITY_OFF)  state <= STOP; 
                                            else if(parity == RS485)
                                            begin
                                                        shiftOut <= myInputData[7];
                                                        state <= DATA8;
                                            end 
                                            
                                         end                                                  
                               end 
                                 
                        DATA8:begin 
                                    shiftOut <= myInputData[8];
                                    state <= STOP;               
                              end
                                
                        PARITY:
                             begin
                                    shiftOut <= myParityBit;            // send out the parity bit
                                    state <= STOP;                     // stop state. 
                             end                            
                             
                        STOP:begin
                                    if(stop2  == 1'b0)
                                    begin
                                            shiftOut <= 1'b1;              // set the stop bit
                                            state <= IDLE;
                                    end
                                    
                                    else if (stop2 == 1'b1)
                                    begin
                                            shiftOut <= 1'b1;              // set the stop bit
                                            state <= STOP2;                                    
                                    end
                                                     
                             end                                            
                         STOP2:begin                
                                            count <= 4'd0;                 // reset count for next time
                                            shiftOut <= 1'b1;              // set the stop bit
                                            state <= IDLE;                         
                                                     
                             end                                                                                                                      
                        endcase
              end
     end
////////////////////////////// parity logic /////////////////////////////////////////    
    wire [8:0] in = myInputData[8:0];
    wire[3:0] fiveBitOnesCount  =  in[0] + in[1] + in[2] + in[3] + in[4]; 
    wire[3:0] sixBitOnesCount   =  in[0] + in[1] + in[2] + in[3] + in[4] + in[5]; 
    wire[3:0] sevenBitOnesCount =  in[0] + in[1] + in[2] + in[3] + in[4] + in[5] + in[6]; 
    wire[3:0] eightBitOnesCount =  in[0] + in[1] + in[2] + in[3] +  in[4] + in[5] + in[6] + in[6] ; 
    
                         
always_comb 
    begin
        if(parity == PARITY_ODD)                //odd parity
        begin
            
                 if(size == 4'd5) myParityBit = ~(fiveBitOnesCount%2);             
            else if(size == 4'd6) myParityBit = ~(sixBitOnesCount%2);              
            else if(size == 4'd7) myParityBit = ~(sevenBitOnesCount%2);               
            else if(size == 4'd8) myParityBit = ~(eightBitOnesCount%2);              
        end      
        else if(parity == PARITY_EVEN)               //even parity
        begin
                 if(size == 4'd5) myParityBit = (fiveBitOnesCount%2);             
            else if(size == 4'd6) myParityBit = (sixBitOnesCount%2);              
            else if(size == 4'd7) myParityBit = (sevenBitOnesCount%2);               
            else if(size == 4'd8) myParityBit = (eightBitOnesCount%2);       
        
        end                          
    end
    
////////////////////////////////////////////////////////////////////////////////
   
//    wire baudClockOut = outSignal;
 
//    reg [31:0] myBaudRate = 32'd13888;
//    reg [500:0] keepCount;
//    reg [500:0] ticks = 0;
//    reg outSignal;
    
//    reg [31:0] baud2xFaster = myBaudRate/2;
    
    
//    always_ff @(posedge clock)
//    begin
//        if(1)
//        begin
//            ticks <= ticks+1;
           
//            if(keepCount[500:8] == ticks)
//            begin 
//                keepCount <= keepCount + baud2xFaster;
//                outSignal <= 1^outSignal;
//            end  
//        end
//    end
    
endmodule
