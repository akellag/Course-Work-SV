
//-------------------------------------------------------------------
//This module creates a 8 x 8 byte fifo in Verilog
//-------------------------------------------------------------------
module fifo ( 
       input            wr_clk,   //write clock
       input            rd_clk, //read clock
	   input            rd_sync_cntrl,
	   input			wr_sync_cntrl,
       input            reset_n,  //reset async active low
       input            wr,       //write enable 
       input            rd,       //read enable    
       input      [7:0] data_in,  //data in
       output reg [7:0] data_out, //data out
       output           empty,    //empty flag
       output           full,	   //full flag
	   output logic [63:0] fifo_counter //define counter 
       );

	   
	   reg [63:0] rd_ptr, wr_ptr;
	   reg [7:0] fifo_memo[63:0];

assign empty = (fifo_counter == 0); 
assign full = (fifo_counter == 64) ;	   

//counter operation 

always_ff@(posedge rd_clk, negedge reset_n)

if(~reset_n)
begin 
fifo_counter <= 0;
data_out <= 0;
end
else if((!full && wr) && (!empty && rd))
fifo_counter <= fifo_counter;
else if (!empty && rd)
begin 
data_out <= fifo_memo[rd_ptr];
fifo_counter <= fifo_counter - 1;
end

always_ff@(posedge wr_clk, negedge reset_n)

if(~reset_n)
begin
fifo_counter <= 0;
data_out <= 0;
end 

else if((!full && wr) && (!empty && rd))
fifo_counter <= fifo_counter;
else if (!full && wr)
begin
 data_out <= fifo_memo[wr_ptr];
 fifo_counter <= fifo_counter + 1;
 end

 
always_ff@(posedge wr_clk, negedge reset_n)

if(~reset_n)
	wr_ptr <= 0;
		


else if(!full && wr)
	
		wr_ptr = wr_ptr + 1;

always_ff@(posedge rd_clk, negedge reset_n)	
if(~reset_n)
			rd_ptr <= 0;	
else if (!empty && rd)
	
		rd_ptr = rd_ptr +1;
		
		
endmodule