//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 11:55:36 AM
// Design Name: 
// Module Name: parityLogic
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


module parityLogic
(
    input wire clock,
    input wire [8:0]dataIn,
    input wire [3:0] size,
    input wire [1:0] parity,
    output wire parityOut
 );

    parameter PARITY_ODD = 2'd1;
    parameter PARITY_EVEN = 2'd2;
////////////////////////////// parity logic /////////////////////////////////////////    
    wire [8:0]in = dataIn[8:0];
    reg[3:0] fiveBitOnesCount  =  in[0] + in[1] + in[2] + in[3] + in[4]; 
    reg[3:0] sixBitOnesCount   =  in[0] + in[1] + in[2] + in[3] + in[4] + in[5]; 
    reg[3:0] sevenBitOnesCount =  in[0] + in[1] + in[2] + in[3] + in[4] + in[5] + in[6]; 
    reg[3:0] eightBitOnesCount =  in[0] + in[1] + in[2] + in[3] + in[4] + in[5] + in[6] + in[7] ; 
    
    reg myParityBit;
    assign parityOut = myParityBit;                 
always_ff @(posedge clock)
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
    
endmodule