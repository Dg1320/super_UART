`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dezean Gardner
// 
// Create Date: 11/03/2024 05:48:43 PM
// Design Name: 
// Module Name: baudRateDivider
// Project Name: serial 
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
module baudRateDivider
(
    input wire clock,
    input wire enable,
    input wire reset,
    input wire [31:8] IBRD,      // integer baud rate divider
    input wire [7:0] FBRD,       // fractional baud rate divider
    output wire baudSignalOut
);
    
    wire [31:0] myBaudRate =  {IBRD,FBRD};
    reg [50:0] keepCount;
    reg [50:0] ticks = 0;
    reg baudSignal;
    
    wire [31:0] baud2xFaster = myBaudRate/2;
    
    assign baudSignalOut = baudSignal;
    
    always_ff @(posedge clock)
    begin
        if (reset == 1'b0)
            begin
                ticks <= 0;
                keepCount <=0;
                baudSignal<=0;
            end
        else begin
                    if(enable == 1'b1)
                    begin
                        ticks <= ticks+1;
                       
                        if(keepCount[50:8] == ticks)
                        begin 
                            keepCount <= keepCount + baud2xFaster;
                            baudSignal <= 1^baudSignal;
                        end  
                    end 
             end 
    end
   

endmodule
