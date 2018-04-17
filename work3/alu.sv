 module alu(
      input        [7:0] in_a     ,  //input a
      input        [7:0] in_b     ,  //input b
      input        [3:0] opcode   ,  //opcode input
	  input clk,
      output  reg  [7:0] alu_out  ,  //alu output
      output  reg        alu_zero ,  //logic '1' when alu_output [7:0] is all zeros
      output  reg        alu_carry   //indicates a carry out from ALU 
      );

  wire [7:0] alu_out_int;
  wire [7:0]in_a_int;
  wire [7:0] in_b_int;
 
  
parameter c_add         =   4'b0001; 
parameter c_sub         =   4'b0010; 
parameter c_inc         =   4'b0011; 
parameter c_dec         =   4'b0100;  
parameter c_or          =   4'b0101;  
parameter c_and         =   4'b0110;  
parameter c_xor         =   4'b0111;  
parameter c_shr         =   4'b1000; 
parameter c_shl         =   4'b1001;  
parameter c_onescomp    =   4'b1010;
 parameter c_twoscomp   =   4'b1011;
 
 
   
 always_comb
begin 
   alu_carry = 0;
    
  
   case (opcode)
  
				   c_add :begin 
						  {alu_carry, alu_out} = in_a + in_b;
						end
				   c_sub:begin  
						 {alu_carry, alu_out} = in_a ^(in_b)+ '1; 
					   end
				   
				   c_inc :begin 
						  {alu_carry, alu_out} = in_a + 8'h01; 
						end
				   c_dec:begin 
							 {alu_carry, alu_out} = in_a - 8'h01;
					   end
				   c_or:begin 
						alu_out  = in_a | in_b;
					  end
				   c_and: begin
				   alu_out  = in_a & in_b;
				   end
				   c_xor:begin
				   alu_out  = in_a ^ in_b;
				   end
				   c_shr:begin
				   alu_out = in_a >> 1;
				   end
				   c_shl:begin
				   alu_out = in_a << 1;
				   end
				   c_onescomp:begin 
				   {alu_carry, alu_out} = ~in_a;
				   end
				   c_twoscomp:begin
				   {alu_carry, alu_out} = ~in_a + 8'h01;    
				   end
				   
				   default: begin
				   {alu_carry, alu_out} = 9'b000000000;
				end
   
 
    endcase
	
	
	alu_zero = ~|alu_out;
	
	
	end
endmodule




   