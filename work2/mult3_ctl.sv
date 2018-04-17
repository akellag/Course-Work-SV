



module mult3_ctl(
	input reset,
	input clk,
	input start,
	input  multiplier_bit0,
	output logic prod_reg_ld_high,
	output logic prod_reg_shift_rt,
	output logic done);
	
enum reg [1:0]{
	IDLE = 2'b00,
	TEST = 2'b01,
	SHIFT = 2'b10,
	ADD = 2'b11
} mult_ps,mult_ns;

logic [4:0] cycle_cnt;

always_ff @(posedge clk, negedge reset)
	if (reset) mult_ps <= IDLE;
	else mult_ps <= mult_ns;


//always_ff @(posedge clk,negedge reset)

always_comb begin
	unique if(reset)
		cycle_cnt = 5'b31;
	else
		begin
		prod_reg_ld_high = 1'b0;
		prod_reg_shift_rt = 1'b0;
		done = 1'b0;
		end
	unique case (mult_ps)
	//case (ps)
	 
	IDLE :
		if (start) 
		begin
			prod_reg_ld_high = 1'b1;
			mult_ns = TEST;
		end
		else
			mult_ns = IDLE;
        
    TEST:	begin
		prod_reg_ld_high = 1'b0;
		if(multiplier_bit0) 
		mult_ns = ADD;
		else
		mult_ns = SHIFT;
		end

		
    SHIFT: 	begin
		prod_reg_ld_high = 1'b0;
		prod_reg_shift_rt = 1'b1;
		if(cycle_cnt == 0)begin
		done = 1'b1;
		mult_ns = IDLE;
		end 
		else if(cycle_cnt!=0) begin
		cycle_cnt = cycle_cnt-1'b1;
		mult_ns = TEST;
	end
	end
	
	ADD:	begin
			prod_reg_ld_high = 1'b1;
			prod_reg_shift_rt = 1'b0;
			mult_ns = SHIFT;
		end
    
endcase
end
endmodule

