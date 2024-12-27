`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
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
    input clock,
    input enable,
    input [31:8] IBRD,      // integer baud rate divider
    input [7:0] FBRD,       // fractional baud rate divider
    output baudSignalOut
);
    
    reg [31:0] myBaudRate =  {IBRD,FBRD};
    reg [500:0] keepCount;
    reg [500:0] ticks = 0;
    reg baudSignal;
    
    reg [31:0] baud2xFaster = myBaudRate/2;
    
    assign baudSignalOut = baudSignal;
    
    always_ff @(posedge clock)
    begin
    if(enable)
        begin
            ticks <= ticks+1;
           
            if(keepCount[500:8] == ticks)
            begin 
                keepCount <= keepCount + baud2xFaster;
                baudSignal <= 1^baudSignal;
            end  
        end
    end
   

endmodule
