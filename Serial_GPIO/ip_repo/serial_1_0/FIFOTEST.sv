
module FIFOTEST
(
    input clock,
    input reset,
    input wr_request,
    input rd_request,
    input clear_overflow_request,
    
    input  [8:0] wr_data,
    output [8:0] rd_data,
    
    output empty,
    output full, 
    output reg overflow,
    output reg [4:0] wr_index,
    output reg [4:0] rd_index,
    output reg [4:0] watermark,
    output reg [8:0]myFIFO_DATA[15:0]
        
);
     
  ////////////////////////////////////////////////////FIFO/////////////////////////////////////////////////////////////          
    edge_detect wr_edge (clock,wr_request, write_request);    
    edge_detect rd_edge (clock, rd_request, read_request);
    
    wire write_request;
    wire read_request;
   
    
    reg [8:0]myWriteData = wr_data[8:0];
    reg [8:0]myReadData;
    assign rd_data[8:0] = myReadData[8:0];
    reg [8:0]FIFO_DATA[15:0];  
    reg fifo_is_full;
    reg fifo_is_empty;
    assign full = fifo_is_full;
    assign empty = fifo_is_empty;
    
 
int i; 
 
always_ff @(posedge clock) 
begin
        if (reset == 1'b0)
            begin
                        for(i=0; i<16; i = i+1) 
                        begin
                            FIFO_DATA[i] = 0;
                        end
                        overflow <= 1'd0;
                        wr_index[4:0] <= 5'd0;
                        rd_index[4:0] <= 5'd0;

                        
            end
        if(write_request && !full)       
                                begin 
                                       FIFO_DATA[wr_index[3:0]] <= myWriteData[8:0];
                                       wr_index <= (wr_index + 1)%32 ;

                                end
                                
        else if(write_request && full)       
                                begin 
                                       overflow  <= 1'd1;
                                end                                 
        if(read_request && !empty ) 
                                begin
                                        rd_index <= (rd_index + 1) % 32;
                                end
                                 
        if (clear_overflow_request)    overflow <= 1'b0;                           
end


wire [3:0]rdIndex = rd_index[3:0];

always_ff @(posedge clock)
begin
        if((wr_index[4] ^ rd_index[4]) && (wr_index[3:0] == rd_index[3:0])) fifo_is_full <= 1'b1; 
        else fifo_is_full <= 1'b0; 
        
        if(wr_index == rd_index) fifo_is_empty <= 1'b1; 
        else fifo_is_empty <= 1'b0; 
        
        myReadData  <= FIFO_DATA[rd_index[3:0]];               // there is some type of delay on the bus where it is reading later... therfore add 1
        watermark   <= wr_index - rd_index;

end

//always_comb
//begin
//        myReadData  = FIFO_DATA[rd_index[3:0]];               // there is some type of delay on the bus where it is reading later... therfore add 1
//        watermark = wr_index - rd_index;
//end

//always_comb begin

//                        if((wr_index[4] ^ rd_index[4]) && (wr_index[3:0] == rd_index[3:0])) fifo_is_full <= 1'b1;                          
//                        else  fifo_is_full <= 1'b0;      
                                                                       
//                        if(wr_index == rd_index) fifo_is_empty <= 1'b1; 
//                        else fifo_is_empty <= 1'b0;                                           
                                  
//      end           

endmodule


module edge_detect
( input clock, 
  input in,
  output out
);
reg in_delay;
always @ (posedge clock)

        in_delay <= in;
        assign out = in & ~in_delay;

endmodule