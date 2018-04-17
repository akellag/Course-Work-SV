module fifo ( 
       input            wr_clk,   //write clock
       input            rd_clk, //read clock
       input            reset_n,  //reset async active low
       input            wr,       //write enable 
       input            rd,       //read enable    
       input      [7:0] data_in,  //data in
       output reg [7:0] data_out, //data out
       output reg       empty,    //empty flag
       output reg       full	   //full flag
	     
       );

	   //reg [7:0] fifo_counter;
	   reg [3:0] rd_ptr, wr_ptr;
	   reg [7:0] fifo_m0,fifo_m1,fifo_m2,fifo_m3,fifo_m4,fifo_m5,fifo_m6,fifo_m7;
	   reg syn_empty;
       reg syn_full; 
	   reg raw_empty;
	   reg raw_full;

   

//counter operation 

always_ff @(posedge rd_clk, negedge reset_n)	
begin
	if(!reset_n)
		rd_ptr <= 0;	
	else if (!syn_empty && rd)
		rd_ptr <= rd_ptr +1;
end	

always_ff @(posedge rd_clk, negedge reset_n)
begin 
	if(!reset_n)
		data_out <= 0;
	
	begin
		unique case (rd_ptr[2:0])
			3'b000: data_out <= fifo_m0;
			3'b001: data_out <= fifo_m1;
			3'b010: data_out <= fifo_m2;
			3'b011: data_out <= fifo_m3;
			3'b100: data_out <= fifo_m4;
			3'b101: data_out <= fifo_m5;
			3'b110: data_out <= fifo_m6;
			3'b111: data_out <= fifo_m7;
		endcase
		end
end

always_ff @(posedge wr_clk, negedge reset_n)
begin
	if(!reset_n)

		begin
		//fifo_counter <= 0;
		fifo_m0 <= 0;
		fifo_m1 <= 0 ;
		fifo_m2 <= 0 ;
		fifo_m3 <= 0 ;
		fifo_m4 <= 0 ;
		fifo_m5 <= 0 ;
		fifo_m6 <= 0 ;
		fifo_m7 <= 0 ;
		
		end 
	else if(!syn_full && wr)
		begin
		unique case (wr_ptr[2:0])
			3'b000: fifo_m0 <=data_in;
			3'b001: fifo_m1 <=data_in;
			3'b010: fifo_m2 <=data_in;
			3'b011: fifo_m3 <=data_in;
			3'b100: fifo_m4 <=data_in;
			3'b101: fifo_m5 <=data_in;
			3'b110: fifo_m6 <=data_in;
			3'b111: fifo_m7 <=data_in;
		endcase
		end
 end

always_ff@(posedge wr_clk, negedge reset_n)
begin
	if(!reset_n)
		wr_ptr <= 0;
	else if(!syn_full && wr)
		wr_ptr <= wr_ptr + 1;
end



always_comb
begin
	if(!reset_n)
		begin
		raw_empty = 1;
		raw_full = 0;
		end
		
	else if(rd_ptr[2:0] == wr_ptr[2:0])
		begin
		if(rd_ptr[3] == wr_ptr[3])
			begin
			raw_empty = 1;
			raw_full = 0;
			end
		else 
			begin
			raw_empty = 0;
			raw_full = 1;
			end
		end
	else
		begin
		raw_empty = 0;
		raw_full = 0;
		end
end		

 

always_ff @(posedge rd_clk, negedge reset_n)
if(!reset_n)
syn_empty <= 0;
else 
syn_empty <= raw_empty;

always_comb 
begin 
empty = syn_empty || raw_empty; 
end

always_ff @(posedge wr_clk, negedge reset_n)
if(!reset_n)
syn_full <= 0;
else
syn_full <= raw_full; 

always_comb 
begin 
full = syn_full || raw_full; 
end


endmodule


















