
module my9x16_FIFO
(
    input wire clock,
    input wire reset,
    input wire wr_request,
    input wire rd_request,
    input wire clear_overflow_request,
    
    input  [8:0] wr_data,
    output [8:0] rd_data,
    
    output wire empty,
    output wire full, 
    output reg overflow,
    output reg [4:0] wr_index,
    output reg [4:0] rd_index,
    output reg [4:0] watermark    
        
);
     
    edge_detect wr_edge (clock,wr_request, write_request);    
    edge_detect rd_edge (clock,rd_request, read_request);    

    reg [8:0] read_data;                 
    assign rd_data = read_data;
    
    wire write_request ;
    wire read_request ;
    
    reg fifo_is_full;
    reg fifo_is_empty;
    assign full = fifo_is_full;    
    assign empty = fifo_is_empty;
   
    reg [8:0]FIFO_DATA[15:0];
    reg [4:0] myWatermark;
    
    assign watermark = myWatermark;
always_ff @(posedge clock) 
begin
        if(write_request)       begin          
                                       wr_index <= (wr_index + 1) % 32;
                                       myWatermark <= wr_index - rd_index;
                                end
        else if(read_request)   begin          
                                       rd_index <= (rd_index + 1) % 32;
                                       myWatermark <= wr_index - rd_index;
                                end
end
//int i;

//    always_ff @(posedge clock ) 
//    begin
        
//            if (reset == 0)
//                begin
//                        for(i=0; i<16; i = i+1) 
//                        begin
//                            FIFO_DATA[i] = 0;
//                        end
//                        fifo_is_full <= 1'b0;
//                        fifo_is_empty <= 1'b1;                      
//                        wr_index  <= 5'd0;
//                        rd_index  <= 5'd0;
//                        watermark <= 5'd0;
//                        overflow  <= 1'd0;
//                        read_data <= 1'b0;
//                end
//           else  begin  
                 
//                       if (write_request && !fifo_is_full)                    // space available in the fifo
//                                begin
//                                        FIFO_DATA[wr_index[3:0]] <= wr_data;        // write data to the fifo register and increment index
//                                        wr_index <= (wr_index + 1) % 32;
//                                        fifo_is_empty <= 1'b0;
//                                        watermark <= wr_index - rd_index;
                                        
//                                end
//                      else if (write_request && fifo_is_full)                     // no more space in the fifo
//                                begin
//                                        overflow  <= 1'd1;                           // overflow is now full
//                                        FIFO_DATA[wr_index[3:0]] <= wr_data;        // write data to the fifo register and increment index
//                                        wr_index <= (wr_index + 1) % 32;
//                                        fifo_is_empty <= 1'b0;
//                                        watermark <= wr_index - rd_index;

                
//                                end        
////////////////////////////////////////////////// READ  LOGIC  ////////////////////////////////////////////////////////////////////   
//                        if (read_request && !fifo_is_empty)                     // there is some data in the fifo
//                                begin        
//                                        read_data  <= FIFO_DATA[rd_index[3:0]];       // write that data out and decrement the amount in the fifo after
//                                        rd_index <= (rd_index + 1) % 32;
//                                        watermark <= wr_index - rd_index;
                
//                                end
                                
//                        if (clear_overflow_request)          overflow <= 1'b0;       
                
//                        if((wr_index[4] ^ rd_index[4]) && (wr_index[3:0] == rd_index[3:0]))
//                        begin
//                            fifo_is_full <= 1'b1;
//                        end      
//                        else if((wr_index[4] ^ rd_index[4]) && (wr_index[3:0] > rd_index[3:0]))       
//                        begin
//                            fifo_is_full <= 1'b1;
//                        end
//                        else if((wr_index[4] ^ rd_index[4]) && (wr_index[3:0] < rd_index[3:0]))       
//                        begin
//                            fifo_is_full <= 1'b0;
//                        end
//                        if(( wr_index[4] & rd_index[4]) && (wr_index[3:0] == rd_index[3:0])) fifo_is_empty <= 1'b1; 
//                        else if (( wr_index[4] & rd_index[4]) && (wr_index[3:0] != rd_index[3:0])) fifo_is_empty <= 1'b0; 
                        
//            end 
//      end           
// ////////////////////////////////////////////////////////////////////////////////////////  
             
endmodule


//module edge_detect
//( input clock, 
//  input in,
//  output out
//);
//reg in_delay;
//always @ (posedge clock)

//        in_delay <= in;
//        assign out = in & ~in_delay;

//endmodule