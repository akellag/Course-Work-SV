
module mult(
	input reset,
	input clk,
	input [31:0] a_in,
	input [31:0] b_in,
	input start,
	output logic [63:0] product,
	output logic done);

logic [31:0] reg_a; 		//output of mutiplicand register
logic [31:0] prod_reg_high; //upper half of product register
logic [31:0] prod_reg_low; 	//lower half of product register
logic prod_reg_ld_high;		//load for upper half of product register
logic prod_reg_shift_rt;	//shift product register right
logic [4:0] cycle_cnt;		//number of bits of multiplier processed

//concatenate high and low halfs of product register
assign product = {prod_reg_high, prod_reg_low};

//create reg_a register
always_ff @(posedge clk, posedge reset) begin
	if (reset)		reg_a <= '0;
	else if(start)	reg_a <= a_in;
end

//create product register high and the adder 
always_ff @(posedge clk, posedge reset) begin
	unique if (reset)			prod_reg_high <= '0; //async reset
	else if (start)				prod_reg_high <= '0; //sync reset
	else if (prod_reg_ld_high)	prod_reg_high <= reg_a + prod_reg_high; //add
	else if (prod_reg_shift_rt)	prod_reg_high <= {1'b0, prod_reg_high[31:1]}; //shift
	else						prod_reg_high <= prod_reg_high; //unique match
end

//create product register low
always_ff @(posedge clk, posedge reset) begin
	unique if (reset)			prod_reg_low <= '0;		//async reset
	else if (start)				prod_reg_low <= b_in;	//load multiplier
	else if (prod_reg_shift_rt) prod_reg_low <= {prod_reg_high[0], prod_reg_low[31:1]}; //shift
	else						prod_reg_low <= prod_reg_low;  //unique match
end

//instantiate the control module
mult3_ctl mult3_ctl_0(
	. reset 			( reset ) ,
	. clk 				( clk ),
	. start 			( start ) ,
	. multiplier_bit0 	( prod_reg_low [0] ) ,
	. prod_reg_ld_high 	( prod_reg_ld_high ),
	. prod_reg_shift_rt ( prod_reg_shift_rt ),
	. done 				( done ));

endmodule




