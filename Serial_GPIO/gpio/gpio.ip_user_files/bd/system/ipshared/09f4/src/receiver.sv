`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: DeZean Gardner 
// 
// Create Date: 11/22/2024 10:53:51 PM
// Design Name: 
// Module Name: receiver
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
module receiver
(    

    input clock,
    input reset,
    input rx_in,
    input baudRateGenerated,
    input clearParityError,
    input clearFrameError,
    input secondStop,
    input [1:0] size,
    input [1:0] parity,
    output reg writeFifoRequest,
    output reg parityError,
    output reg frameError,
    output reg [8:0] myRxData   
    
);

wire baud16xFasterTick;
edge_detect edge_detect_inst 
(
    .clock(clock),
    .in(baudRateGenerated),
    .out(baud16xFasterTick)
    
);

reg [3:0] mySize;
always_comb
begin
         if(size == 2'b00) mySize = 4'd5;
    else if(size == 2'b01) mySize = 4'd6;
    else if(size == 2'b10) mySize = 4'd7;
    else if(size == 2'b11) mySize = 4'd8;
end

    
//////////////////////////////////RX/////////////////////////////////////// 
reg [2:0] rxState;
reg [3:0] rxCount;

reg [3:0] countToMySize;
reg rxParity;

localparam integer RX_IDLE   = 4'd0;
localparam integer RX_START  = 4'd1;
localparam integer RX_DATA   = 4'd2;
localparam integer RX_PARITY = 4'd3;
localparam integer RX_STOP1  = 4'd4;
localparam integer RX_STOP2  = 4'd5;

localparam integer PARITY_OFF  = 2'd0;
localparam integer PARITY_ODD  = 2'd1;
localparam integer PARITY_EVEN = 2'd2;
localparam integer RS485       = 2'd3;




reg [1:0] latchAndDetermine;
reg determinedBit ;                              // determine the bit based on probability

wire trueStop = determinedBit;

always_comb 
begin
            if ((latchAndDetermine[0] + latchAndDetermine[1] + latchAndDetermine[2]) == 0) determinedBit = 1'b0;
       else if ((latchAndDetermine[0] + latchAndDetermine[1] + latchAndDetermine[2]) == 1) determinedBit = 1'b0;
       else if ((latchAndDetermine[0] + latchAndDetermine[1] + latchAndDetermine[2]) == 2) determinedBit = 1'b1;
       else if ((latchAndDetermine[0] + latchAndDetermine[1] + latchAndDetermine[2]) == 3) determinedBit = 1'b1;
end 


reg rxParityCheck;
wire startStateMachine;
 
always_ff @ (posedge clock)
begin
if(reset == 1'b0) rxState <= RX_IDLE;
else begin
                                                     
                case (rxState)
                RX_IDLE:
                     begin  
                                rxCount <= 4'd0;                            // reset count for next time   
                                writeFifoRequest <= 1'b0;                              
                                if(rx_in == 1'b0) rxState <= RX_START;      // start the logic 
                                if(clearParityError)  parityError <= 1'b0;
                                if(clearFrameError)  frameError <= 1'b0;
                     end
                RX_START:if(baud16xFasterTick)
                      begin
                            if(rx_in == 1'b0)                                        
                            begin
                                  if(baud16xFasterTick)
                                  begin
                                      rxCount <= rxCount + 1'b1; 
                                      if(rxCount == 4'd15)     
                                      begin 
                                            rxState <= RX_DATA;             // start the logic  
                                            rxCount <= 1'b0;
                                            countToMySize <= 1'b0; 
                                      end                        
                                  end              
                            end
                            else rxState = RX_IDLE;
                        end                                                                                                                             
                RX_DATA:if(baud16xFasterTick)
                      begin
                            rxCount <= rxCount + 1'b1;
                            if(rxCount == 4'd7) latchAndDetermine[0] <= rx_in;
                            if(rxCount == 4'd8) latchAndDetermine[1] <= rx_in;
                            if(rxCount == 4'd9) latchAndDetermine[2] <= rx_in;
                            
                            if(rxCount == 4'd15)
                            begin 
                                    myRxData[countToMySize] <= determinedBit;
                                    rxCount <= 1'b0;
                                    countToMySize <= countToMySize + 1'b1;
                                    
                                    if(countToMySize == mySize -1)
                                    begin
                                         rxCount <= 1'b0;
                                             if(parity == PARITY_OFF) rxState <= RX_STOP1;                      // recieved all my bits now just go wait for next falling edge
                                        else if(parity == PARITY_ODD || parity == PARITY_EVEN) rxState = RX_PARITY;
                                        else if(parity == RS485) 
                                        begin
                                                rxCount <= rxCount + 1'b1;
                                                if(rxCount == 4'd7) latchAndDetermine[0] <= rx_in;
                                                if(rxCount == 4'd8) latchAndDetermine[1] <= rx_in;
                                                if(rxCount == 4'd9) latchAndDetermine[2] <= rx_in;
                                                if(rxCount == 4'd15)
                                                begin
                                                        myRxData[countToMySize] <= determinedBit;
                                                        rxState <= RX_STOP1;                            // go and wait for next dataset
                                                        rxCount <= 1'b0;
                                                end
                                                                                        
                                        end
                                        
                                    end    
                            end
                                             
                       end                                
                RX_PARITY:if(baud16xFasterTick)                                 // check parity bit
                     begin
                                rxCount <= rxCount + 1'b1;
                                if(rxCount == 4'd7) latchAndDetermine[0] <= rx_in;
                                if(rxCount == 4'd8) latchAndDetermine[1] <= rx_in;
                                if(rxCount == 4'd9) latchAndDetermine[2] <= rx_in;
                                if(rxCount == 4'd15)
                                begin
                                        rxState <= RX_STOP1;           // after checking the parity go back to idle and wait for the next falling edge
                                        rxCount <= 1'b0;
                                        rxParity <= determinedBit;
                                        
                                             if(parity == PARITY_ODD && (rxParityCheck != rxParity)) parityError <= 1'b1; 
                                        else if(parity == PARITY_EVEN && (rxParityCheck != rxParity)) parityError <= 1'b1;
                                end   
                                                                    
                     end                                                            
                RX_STOP1:if(baud16xFasterTick)                                  // this will update the status register... implemented later
                     begin
                                rxCount <= rxCount + 1'b1;
                                if(rxCount == 4'd7) latchAndDetermine[0] <= rx_in;
                                if(rxCount == 4'd8) latchAndDetermine[1] <= rx_in;
                                if(rxCount == 4'd9) latchAndDetermine[2] <= rx_in;
                                if(rxCount == 4'd15)                             // just go until we determine the error status
                                begin
                                        if(trueStop && secondStop )
                                        begin
                                                rxState <= RX_IDLE;              // after checking the parity go back to idle and wait for the next falling edge
                                                rxCount <= 1'b0; 
                                                writeFifoRequest <= 1'b1;                                                  
                                        end
                                        
                                   else if(!trueStop && secondStop )
                                        begin
                                                rxState <= RX_STOP2;              // after checking the parity go back to idle and wait for the next falling edge
                                                rxCount <= 1'b0;
                                                frameError <= 1'b1; 
                                                writeFifoRequest <= 1'b1;                                                  
                                        end
                                   else if(trueStop && !secondStop )
                                        begin
                                                rxState <= RX_IDLE;              // after checking the parity go back to idle and wait for the next falling edge
                                                rxCount <= 1'b0; 
                                                writeFifoRequest <= 1'b1;                                                  
                                        end                  
                                   else if(!trueStop && !secondStop )
                                        begin
                                                rxState <= RX_STOP2;              // after checking the parity go back to idle and wait for the next falling edge
                                                rxCount <= 1'b0;
                                                frameError <= 1'b1; 
                                                writeFifoRequest <= 1'b1;                                                  
                                        end                                           
                                end   
                                                                    
                     end
                RX_STOP2:if(baud16xFasterTick)                        // this will update the status register... implemented later
                     begin
                                rxCount <= rxCount + 1'b1;
                                if(rxCount == 4'd7) latchAndDetermine[0] <= rx_in;
                                if(rxCount == 4'd8) latchAndDetermine[1] <= rx_in;
                                if(rxCount == 4'd9) latchAndDetermine[2] <= rx_in;    
                                if(rxCount == 4'd15)                             // just go until we determine the error status
                                begin
                                        if(trueStop)
                                        begin
                                                rxState <= RX_IDLE;              // after checking the parity go back to idle and wait for the next falling edge
                                                rxCount <= 1'b0; 
                                        end  
                                   else if(!trueStop )
                                        begin
                                                rxState <= RX_IDLE;              // after checking the parity go back to idle and wait for the next falling edge
                                                frameError <= 1'b1; 
                                                rxCount <= 1'b0; 
                                        end                              
                                end 
                      end  
                                          
               endcase
     
      end
      
end
 
 
 ////////////////////////////// RX parity logic /////////////////////////////////////////    
 
 
wire [8:0] in = myRxData[8:0];
wire[3:0] fiveBitOnesCount  =  in[0] + in[1] + in[2] + in[3] + in[4]; 
wire[3:0] sixBitOnesCount   =  in[0] + in[1] + in[2] + in[3] + in[4] + in[5]; 
wire[3:0] sevenBitOnesCount =  in[0] + in[1] + in[2] + in[3] + in[4] + in[5] + in[6]; 
wire[3:0] eightBitOnesCount =  in[0] + in[1] + in[2] + in[3] +  in[4] + in[5] + in[6] + in[7] ; 
    
                    
always_comb 
begin
    if(parity == PARITY_ODD)                     //odd parity
    begin
         
             if(mySize == 4'd5) rxParityCheck = ~(fiveBitOnesCount%2);             
        else if(mySize == 4'd6) rxParityCheck = ~(sixBitOnesCount%2);              
        else if(mySize == 4'd7) rxParityCheck = ~(sevenBitOnesCount%2);               
        else if(mySize == 4'd8) rxParityCheck = ~(eightBitOnesCount%2);              
    end      
    else if(parity == PARITY_EVEN)               //even parity
    begin
             if(mySize == 4'd5) rxParityCheck = (fiveBitOnesCount%2);             
        else if(mySize == 4'd6) rxParityCheck = (sixBitOnesCount%2);              
        else if(mySize == 4'd7) rxParityCheck = (sevenBitOnesCount%2);               
        else if(mySize == 4'd8) rxParityCheck = (eightBitOnesCount%2);       
    
    end                          
end
 

    
endmodule
