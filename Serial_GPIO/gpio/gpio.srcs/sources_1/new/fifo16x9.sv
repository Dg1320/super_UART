`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: DeZean Gardner
// 
// Create Date: 10/13/2024 07:32:08 PM
// Design Name: 
// Module Name: fifo16x9
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


module fifo16x9
(
    input clock,
    input reset,
    input wr_request,
    input rd_request,
    input clear_overflow_request,  
        
    input [8:0] wr_data,
    output [8:0] rd_data,
    output empty, 
    output full,
    
    output reg overflow,
    output reg [4:0] wr_index,
    output reg [4:0] rd_index,
    output reg [4:0] watermark
);
    reg [8:0] read_data;
    assign rd_data = read_data;
    
    reg write_request = wr_request;
    reg read_request = rd_request;
    
    reg fifo_is_full;
    reg fifo_is_empty;
    assign full = fifo_is_full;
    
    reg [8:0]FIFO_DATA[15:0];
    
    reg[4:0] write_2s_comp;
   
    // use twos compliment to find out how many much space is in the buffer
    always_comb 
    begin
        if(wr_index[4] == 1)    write_2s_comp = -wr_index;
        else write_2s_comp = wr_index;            
    end
   //////////////////////////// EMPTY_FULL LOGIC  ////////////////////////////     
    always_comb 
    begin
             if((write_2s_comp + rd_index) == 5'd16)  fifo_is_full = 1;              // fifo is now full 
             
             if( wr_index == rd_index) fifo_is_empty = 1;                            // fifo is now empty
             else fifo_is_empty = 0;   
             
             watermark = write_2s_comp + rd_index;                                   // how much is in the buffer gives watermark           
             
    end      
    
    always_ff @(posedge clock)
    
        if (reset == 1)
            begin
                    wr_index  <= 5'd0;
                    rd_index  <= 5'd0;
                    watermark <= 5'd0;
                    overflow  <= 1'd0;
            end       
        else if (clear_overflow_request)   
                begin
                        overflow  <= 1'd0;       
                end
  //////////////////////////// WRITE LOGIC  ////////////////////////////                 
        else if (write_request && !fifo_is_full)                    // space available in the fifo
                begin
                        FIFO_DATA[wr_index[3:0]] <= wr_data;        // write data to the fifo register and increment index
                        wr_index <= (wr_index + 1) % 32;
                        write_request <= 0;
                        
                end
        else if (write_request && fifo_is_full)                     // no more space in the fifo
                begin
                        overflow  <= 1'd1;                           // overflow is now full
                        write_request <= 0;
                end        
  //////////////////////////// READ  LOGIC  ////////////////////////////   
        else if (write_request && !fifo_is_empty)                     // there is some data in the fifo
                begin        
                        read_data  <= FIFO_DATA[rd_index[3:0]];       // write that data out and decrement the amount in the fifo after
                        rd_index <= (rd_index + 1) % 32;
                        read_request <= 0;
                end        
              
        
        
  //////////////////////////// EDGE DETECTOR MODULE  //////////////////////////// 

  always_ff @( posedge wr_request, posedge rd_request)
  begin
             if(rd_request == 1)  read_request <= 1;
             else if(wr_request == 1)  write_request = 1;
             else 
             begin
                    read_request <= 0;
                    write_request <= 0;
             end
  end  
       
endmodule
