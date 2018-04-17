/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP2
// Date      : Fri May  5 21:56:37 2017
/////////////////////////////////////////////////////////////


module mult_DW01_add_0 ( A, B, CI, SUM, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [31:1] carry;

  FADDX1 U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  FADDX1 U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  FADDX1 U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  FADDX1 U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  FADDX1 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  FADDX1 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FADDX1 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FADDX1 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FADDX1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FADDX1 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FADDX1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FADDX1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FADDX1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FADDX1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FADDX1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FADDX1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FADDX1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FADDX1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FADDX1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FADDX1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FADDX1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FADDX1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FADDX1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  FADDX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  FADDX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  FADDX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  FADDX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  FADDX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  FADDX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_31 ( .IN1(A[31]), .IN2(B[31]), .IN3(carry[31]), .Q(SUM[31]) );
  FADDX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .IN1(B[0]), .IN2(A[0]), .Q(SUM[0]) );
  AND2X1 U2 ( .IN1(B[0]), .IN2(A[0]), .Q(n1) );
endmodule


module mult ( reset, clk, a_in, b_in, start, product, done );
  input [31:0] a_in;
  input [31:0] b_in;
  output [63:0] product;
  input reset, clk, start;
  output done;
  wire   N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24,
         N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52,
         N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66,
         N67, N68, N69, N70, N71, N72, N73, N74, N78, N79, N80, N81, N82, N83,
         N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97,
         N98, N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42;
  wire   [31:0] reg_a;
  tri   reset;
  tri   clk;
  tri   [63:0] product;
  tri   done;
  tri   N4;
  tri   prod_reg_ld_high;
  tri   prod_reg_shift_rt;
  assign N4 = start;

  mult3_ctl mult3_ctl_0 ( .reset(reset), .clk(clk), .start(N4), 
        .multiplier_bit0(product[0]), .prod_reg_ld_high(prod_reg_ld_high), 
        .prod_reg_shift_rt(prod_reg_shift_rt), .done(done) );
  mult_DW01_add_0 add_31_S2 ( .A(reg_a), .B(product[63:32]), .CI(1'b0), .SUM({
        N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, 
        N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11}) );
  DFFARX1 \prod_reg_low_reg[0]  ( .D(N78), .CLK(clk), .RSTB(n39), .Q(
        product[0]) );
  DFFARX1 \prod_reg_low_reg[21]  ( .D(N99), .CLK(clk), .RSTB(n39), .Q(
        product[21]) );
  DFFARX1 \prod_reg_low_reg[31]  ( .D(N109), .CLK(clk), .RSTB(n39), .Q(
        product[31]) );
  DFFARX1 \prod_reg_low_reg[30]  ( .D(N108), .CLK(clk), .RSTB(n39), .Q(
        product[30]) );
  DFFARX1 \prod_reg_low_reg[29]  ( .D(N107), .CLK(clk), .RSTB(n39), .Q(
        product[29]) );
  DFFARX1 \prod_reg_low_reg[28]  ( .D(N106), .CLK(clk), .RSTB(n39), .Q(
        product[28]) );
  DFFARX1 \prod_reg_low_reg[27]  ( .D(N105), .CLK(clk), .RSTB(n39), .Q(
        product[27]) );
  DFFARX1 \prod_reg_low_reg[26]  ( .D(N104), .CLK(clk), .RSTB(n39), .Q(
        product[26]) );
  DFFARX1 \prod_reg_low_reg[25]  ( .D(N103), .CLK(clk), .RSTB(n39), .Q(
        product[25]) );
  DFFARX1 \prod_reg_low_reg[24]  ( .D(N102), .CLK(clk), .RSTB(n39), .Q(
        product[24]) );
  DFFARX1 \prod_reg_low_reg[23]  ( .D(N101), .CLK(clk), .RSTB(n39), .Q(
        product[23]) );
  DFFARX1 \prod_reg_low_reg[22]  ( .D(N100), .CLK(clk), .RSTB(n39), .Q(
        product[22]) );
  DFFARX1 \prod_reg_low_reg[20]  ( .D(N98), .CLK(clk), .RSTB(n39), .Q(
        product[20]) );
  DFFARX1 \prod_reg_low_reg[19]  ( .D(N97), .CLK(clk), .RSTB(n39), .Q(
        product[19]) );
  DFFARX1 \prod_reg_low_reg[18]  ( .D(N96), .CLK(clk), .RSTB(n39), .Q(
        product[18]) );
  DFFARX1 \prod_reg_low_reg[17]  ( .D(N95), .CLK(clk), .RSTB(n39), .Q(
        product[17]) );
  DFFARX1 \prod_reg_low_reg[16]  ( .D(N94), .CLK(clk), .RSTB(n39), .Q(
        product[16]) );
  DFFARX1 \prod_reg_low_reg[15]  ( .D(N93), .CLK(clk), .RSTB(n39), .Q(
        product[15]) );
  DFFARX1 \prod_reg_low_reg[14]  ( .D(N92), .CLK(clk), .RSTB(n39), .Q(
        product[14]) );
  DFFARX1 \prod_reg_low_reg[13]  ( .D(N91), .CLK(clk), .RSTB(n39), .Q(
        product[13]) );
  DFFARX1 \prod_reg_low_reg[12]  ( .D(N90), .CLK(clk), .RSTB(n39), .Q(
        product[12]) );
  DFFARX1 \prod_reg_low_reg[11]  ( .D(N89), .CLK(clk), .RSTB(n39), .Q(
        product[11]) );
  DFFARX1 \prod_reg_low_reg[10]  ( .D(N88), .CLK(clk), .RSTB(n39), .Q(
        product[10]) );
  DFFARX1 \prod_reg_low_reg[9]  ( .D(N87), .CLK(clk), .RSTB(n39), .Q(
        product[9]) );
  DFFARX1 \prod_reg_low_reg[8]  ( .D(N86), .CLK(clk), .RSTB(n39), .Q(
        product[8]) );
  DFFARX1 \prod_reg_low_reg[7]  ( .D(N85), .CLK(clk), .RSTB(n39), .Q(
        product[7]) );
  DFFARX1 \prod_reg_low_reg[6]  ( .D(N84), .CLK(clk), .RSTB(n39), .Q(
        product[6]) );
  DFFARX1 \prod_reg_low_reg[5]  ( .D(N83), .CLK(clk), .RSTB(n39), .Q(
        product[5]) );
  DFFARX1 \prod_reg_low_reg[4]  ( .D(N82), .CLK(clk), .RSTB(n39), .Q(
        product[4]) );
  DFFARX1 \prod_reg_low_reg[3]  ( .D(N81), .CLK(clk), .RSTB(n39), .Q(
        product[3]) );
  DFFARX1 \prod_reg_low_reg[2]  ( .D(N80), .CLK(clk), .RSTB(n39), .Q(
        product[2]) );
  DFFARX1 \prod_reg_low_reg[1]  ( .D(N79), .CLK(clk), .RSTB(n39), .Q(
        product[1]) );
  DFFARX1 \reg_a_reg[31]  ( .D(n38), .CLK(clk), .RSTB(n39), .Q(reg_a[31]) );
  DFFARX1 \reg_a_reg[1]  ( .D(n36), .CLK(clk), .RSTB(n39), .Q(reg_a[1]) );
  DFFARX1 \reg_a_reg[2]  ( .D(n35), .CLK(clk), .RSTB(n39), .Q(reg_a[2]) );
  DFFARX1 \reg_a_reg[3]  ( .D(n34), .CLK(clk), .RSTB(n39), .Q(reg_a[3]) );
  DFFARX1 \reg_a_reg[4]  ( .D(n33), .CLK(clk), .RSTB(n39), .Q(reg_a[4]) );
  DFFARX1 \reg_a_reg[5]  ( .D(n32), .CLK(clk), .RSTB(n39), .Q(reg_a[5]) );
  DFFARX1 \reg_a_reg[6]  ( .D(n31), .CLK(clk), .RSTB(n39), .Q(reg_a[6]) );
  DFFARX1 \reg_a_reg[7]  ( .D(n30), .CLK(clk), .RSTB(n39), .Q(reg_a[7]) );
  DFFARX1 \reg_a_reg[8]  ( .D(n29), .CLK(clk), .RSTB(n39), .Q(reg_a[8]) );
  DFFARX1 \reg_a_reg[9]  ( .D(n28), .CLK(clk), .RSTB(n39), .Q(reg_a[9]) );
  DFFARX1 \reg_a_reg[10]  ( .D(n27), .CLK(clk), .RSTB(n39), .Q(reg_a[10]) );
  DFFARX1 \reg_a_reg[11]  ( .D(n26), .CLK(clk), .RSTB(n39), .Q(reg_a[11]) );
  DFFARX1 \reg_a_reg[12]  ( .D(n25), .CLK(clk), .RSTB(n39), .Q(reg_a[12]) );
  DFFARX1 \reg_a_reg[13]  ( .D(n24), .CLK(clk), .RSTB(n39), .Q(reg_a[13]) );
  DFFARX1 \reg_a_reg[14]  ( .D(n23), .CLK(clk), .RSTB(n39), .Q(reg_a[14]) );
  DFFARX1 \reg_a_reg[15]  ( .D(n22), .CLK(clk), .RSTB(n39), .Q(reg_a[15]) );
  DFFARX1 \reg_a_reg[16]  ( .D(n21), .CLK(clk), .RSTB(n39), .Q(reg_a[16]) );
  DFFARX1 \reg_a_reg[17]  ( .D(n20), .CLK(clk), .RSTB(n39), .Q(reg_a[17]) );
  DFFARX1 \reg_a_reg[18]  ( .D(n19), .CLK(clk), .RSTB(n39), .Q(reg_a[18]) );
  DFFARX1 \reg_a_reg[19]  ( .D(n18), .CLK(clk), .RSTB(n39), .Q(reg_a[19]) );
  DFFARX1 \reg_a_reg[20]  ( .D(n17), .CLK(clk), .RSTB(n39), .Q(reg_a[20]) );
  DFFARX1 \reg_a_reg[21]  ( .D(n16), .CLK(clk), .RSTB(n39), .Q(reg_a[21]) );
  DFFARX1 \reg_a_reg[22]  ( .D(n15), .CLK(clk), .RSTB(n39), .Q(reg_a[22]) );
  DFFARX1 \reg_a_reg[23]  ( .D(n14), .CLK(clk), .RSTB(n39), .Q(reg_a[23]) );
  DFFARX1 \reg_a_reg[24]  ( .D(n13), .CLK(clk), .RSTB(n39), .Q(reg_a[24]) );
  DFFARX1 \reg_a_reg[25]  ( .D(n12), .CLK(clk), .RSTB(n39), .Q(reg_a[25]) );
  DFFARX1 \reg_a_reg[26]  ( .D(n11), .CLK(clk), .RSTB(n39), .Q(reg_a[26]) );
  DFFARX1 \reg_a_reg[27]  ( .D(n10), .CLK(clk), .RSTB(n39), .Q(reg_a[27]) );
  DFFARX1 \reg_a_reg[28]  ( .D(n9), .CLK(clk), .RSTB(n39), .Q(reg_a[28]) );
  DFFARX1 \reg_a_reg[29]  ( .D(n8), .CLK(clk), .RSTB(n39), .Q(reg_a[29]) );
  DFFARX1 \reg_a_reg[30]  ( .D(n7), .CLK(clk), .RSTB(n39), .Q(reg_a[30]) );
  DFFARX1 \reg_a_reg[0]  ( .D(n37), .CLK(clk), .RSTB(n39), .Q(reg_a[0]) );
  DFFARX1 \prod_reg_high_reg[31]  ( .D(N74), .CLK(clk), .RSTB(n39), .Q(
        product[63]) );
  DFFARX1 \prod_reg_high_reg[30]  ( .D(N73), .CLK(clk), .RSTB(n39), .Q(
        product[62]) );
  DFFARX1 \prod_reg_high_reg[29]  ( .D(N72), .CLK(clk), .RSTB(n39), .Q(
        product[61]) );
  DFFARX1 \prod_reg_high_reg[28]  ( .D(N71), .CLK(clk), .RSTB(n39), .Q(
        product[60]) );
  DFFARX1 \prod_reg_high_reg[27]  ( .D(N70), .CLK(clk), .RSTB(n39), .Q(
        product[59]) );
  DFFARX1 \prod_reg_high_reg[26]  ( .D(N69), .CLK(clk), .RSTB(n39), .Q(
        product[58]) );
  DFFARX1 \prod_reg_high_reg[25]  ( .D(N68), .CLK(clk), .RSTB(n39), .Q(
        product[57]) );
  DFFARX1 \prod_reg_high_reg[24]  ( .D(N67), .CLK(clk), .RSTB(n39), .Q(
        product[56]) );
  DFFARX1 \prod_reg_high_reg[23]  ( .D(N66), .CLK(clk), .RSTB(n39), .Q(
        product[55]) );
  DFFARX1 \prod_reg_high_reg[22]  ( .D(N65), .CLK(clk), .RSTB(n39), .Q(
        product[54]) );
  DFFARX1 \prod_reg_high_reg[21]  ( .D(N64), .CLK(clk), .RSTB(n39), .Q(
        product[53]) );
  DFFARX1 \prod_reg_high_reg[20]  ( .D(N63), .CLK(clk), .RSTB(n39), .Q(
        product[52]) );
  DFFARX1 \prod_reg_high_reg[19]  ( .D(N62), .CLK(clk), .RSTB(n39), .Q(
        product[51]) );
  DFFARX1 \prod_reg_high_reg[18]  ( .D(N61), .CLK(clk), .RSTB(n39), .Q(
        product[50]) );
  DFFARX1 \prod_reg_high_reg[17]  ( .D(N60), .CLK(clk), .RSTB(n39), .Q(
        product[49]) );
  DFFARX1 \prod_reg_high_reg[16]  ( .D(N59), .CLK(clk), .RSTB(n39), .Q(
        product[48]) );
  DFFARX1 \prod_reg_high_reg[15]  ( .D(N58), .CLK(clk), .RSTB(n39), .Q(
        product[47]) );
  DFFARX1 \prod_reg_high_reg[14]  ( .D(N57), .CLK(clk), .RSTB(n39), .Q(
        product[46]) );
  DFFARX1 \prod_reg_high_reg[13]  ( .D(N56), .CLK(clk), .RSTB(n39), .Q(
        product[45]) );
  DFFARX1 \prod_reg_high_reg[12]  ( .D(N55), .CLK(clk), .RSTB(n39), .Q(
        product[44]) );
  DFFARX1 \prod_reg_high_reg[11]  ( .D(N54), .CLK(clk), .RSTB(n39), .Q(
        product[43]) );
  DFFARX1 \prod_reg_high_reg[10]  ( .D(N53), .CLK(clk), .RSTB(n39), .Q(
        product[42]) );
  DFFARX1 \prod_reg_high_reg[9]  ( .D(N52), .CLK(clk), .RSTB(n39), .Q(
        product[41]) );
  DFFARX1 \prod_reg_high_reg[8]  ( .D(N51), .CLK(clk), .RSTB(n39), .Q(
        product[40]) );
  DFFARX1 \prod_reg_high_reg[7]  ( .D(N50), .CLK(clk), .RSTB(n39), .Q(
        product[39]) );
  DFFARX1 \prod_reg_high_reg[6]  ( .D(N49), .CLK(clk), .RSTB(n39), .Q(
        product[38]) );
  DFFARX1 \prod_reg_high_reg[5]  ( .D(N48), .CLK(clk), .RSTB(n39), .Q(
        product[37]) );
  DFFARX1 \prod_reg_high_reg[4]  ( .D(N47), .CLK(clk), .RSTB(n39), .Q(
        product[36]) );
  DFFARX1 \prod_reg_high_reg[3]  ( .D(N46), .CLK(clk), .RSTB(n39), .Q(
        product[35]) );
  DFFARX1 \prod_reg_high_reg[2]  ( .D(N45), .CLK(clk), .RSTB(n39), .Q(
        product[34]) );
  DFFARX1 \prod_reg_high_reg[1]  ( .D(N44), .CLK(clk), .RSTB(n39), .Q(
        product[33]) );
  DFFARX1 \prod_reg_high_reg[0]  ( .D(N43), .CLK(clk), .RSTB(n39), .Q(
        product[32]) );
  MUX21X1 U105 ( .IN1(reg_a[28]), .IN2(a_in[28]), .S(N4), .Q(n9) );
  MUX21X1 U106 ( .IN1(reg_a[29]), .IN2(a_in[29]), .S(N4), .Q(n8) );
  MUX21X1 U107 ( .IN1(reg_a[30]), .IN2(a_in[30]), .S(N4), .Q(n7) );
  INVX0 U108 ( .IN(reset), .QN(n39) );
  MUX21X1 U109 ( .IN1(reg_a[31]), .IN2(a_in[31]), .S(N4), .Q(n38) );
  MUX21X1 U110 ( .IN1(reg_a[0]), .IN2(a_in[0]), .S(N4), .Q(n37) );
  MUX21X1 U111 ( .IN1(reg_a[1]), .IN2(a_in[1]), .S(N4), .Q(n36) );
  MUX21X1 U112 ( .IN1(reg_a[2]), .IN2(a_in[2]), .S(N4), .Q(n35) );
  MUX21X1 U113 ( .IN1(reg_a[3]), .IN2(a_in[3]), .S(N4), .Q(n34) );
  MUX21X1 U114 ( .IN1(reg_a[4]), .IN2(a_in[4]), .S(N4), .Q(n33) );
  MUX21X1 U115 ( .IN1(reg_a[5]), .IN2(a_in[5]), .S(N4), .Q(n32) );
  MUX21X1 U116 ( .IN1(reg_a[6]), .IN2(a_in[6]), .S(N4), .Q(n31) );
  MUX21X1 U117 ( .IN1(reg_a[7]), .IN2(a_in[7]), .S(N4), .Q(n30) );
  MUX21X1 U118 ( .IN1(reg_a[8]), .IN2(a_in[8]), .S(N4), .Q(n29) );
  MUX21X1 U119 ( .IN1(reg_a[9]), .IN2(a_in[9]), .S(N4), .Q(n28) );
  MUX21X1 U120 ( .IN1(reg_a[10]), .IN2(a_in[10]), .S(N4), .Q(n27) );
  MUX21X1 U121 ( .IN1(reg_a[11]), .IN2(a_in[11]), .S(N4), .Q(n26) );
  MUX21X1 U122 ( .IN1(reg_a[12]), .IN2(a_in[12]), .S(N4), .Q(n25) );
  MUX21X1 U123 ( .IN1(reg_a[13]), .IN2(a_in[13]), .S(N4), .Q(n24) );
  MUX21X1 U124 ( .IN1(reg_a[14]), .IN2(a_in[14]), .S(N4), .Q(n23) );
  MUX21X1 U125 ( .IN1(reg_a[15]), .IN2(a_in[15]), .S(N4), .Q(n22) );
  MUX21X1 U126 ( .IN1(reg_a[16]), .IN2(a_in[16]), .S(N4), .Q(n21) );
  MUX21X1 U127 ( .IN1(reg_a[17]), .IN2(a_in[17]), .S(N4), .Q(n20) );
  MUX21X1 U128 ( .IN1(reg_a[18]), .IN2(a_in[18]), .S(N4), .Q(n19) );
  MUX21X1 U129 ( .IN1(reg_a[19]), .IN2(a_in[19]), .S(N4), .Q(n18) );
  MUX21X1 U130 ( .IN1(reg_a[20]), .IN2(a_in[20]), .S(N4), .Q(n17) );
  MUX21X1 U131 ( .IN1(reg_a[21]), .IN2(a_in[21]), .S(N4), .Q(n16) );
  MUX21X1 U132 ( .IN1(reg_a[22]), .IN2(a_in[22]), .S(N4), .Q(n15) );
  MUX21X1 U133 ( .IN1(reg_a[23]), .IN2(a_in[23]), .S(N4), .Q(n14) );
  MUX21X1 U134 ( .IN1(reg_a[24]), .IN2(a_in[24]), .S(N4), .Q(n13) );
  MUX21X1 U135 ( .IN1(reg_a[25]), .IN2(a_in[25]), .S(N4), .Q(n12) );
  MUX21X1 U136 ( .IN1(reg_a[26]), .IN2(a_in[26]), .S(N4), .Q(n11) );
  MUX21X1 U137 ( .IN1(reg_a[27]), .IN2(a_in[27]), .S(N4), .Q(n10) );
  AO222X1 U138 ( .IN1(b_in[21]), .IN2(N4), .IN3(product[21]), .IN4(n40), .IN5(
        product[22]), .IN6(prod_reg_shift_rt), .Q(N99) );
  AO222X1 U139 ( .IN1(b_in[20]), .IN2(N4), .IN3(product[20]), .IN4(n40), .IN5(
        prod_reg_shift_rt), .IN6(product[21]), .Q(N98) );
  AO222X1 U140 ( .IN1(b_in[19]), .IN2(N4), .IN3(product[19]), .IN4(n40), .IN5(
        product[20]), .IN6(prod_reg_shift_rt), .Q(N97) );
  AO222X1 U141 ( .IN1(b_in[18]), .IN2(N4), .IN3(product[18]), .IN4(n40), .IN5(
        product[19]), .IN6(prod_reg_shift_rt), .Q(N96) );
  AO222X1 U142 ( .IN1(b_in[17]), .IN2(N4), .IN3(product[17]), .IN4(n40), .IN5(
        product[18]), .IN6(prod_reg_shift_rt), .Q(N95) );
  AO222X1 U143 ( .IN1(b_in[16]), .IN2(N4), .IN3(product[16]), .IN4(n40), .IN5(
        product[17]), .IN6(prod_reg_shift_rt), .Q(N94) );
  AO222X1 U144 ( .IN1(b_in[15]), .IN2(N4), .IN3(product[15]), .IN4(n40), .IN5(
        product[16]), .IN6(prod_reg_shift_rt), .Q(N93) );
  AO222X1 U145 ( .IN1(b_in[14]), .IN2(N4), .IN3(product[14]), .IN4(n40), .IN5(
        product[15]), .IN6(prod_reg_shift_rt), .Q(N92) );
  AO222X1 U146 ( .IN1(b_in[13]), .IN2(N4), .IN3(product[13]), .IN4(n40), .IN5(
        product[14]), .IN6(prod_reg_shift_rt), .Q(N91) );
  AO222X1 U147 ( .IN1(b_in[12]), .IN2(N4), .IN3(product[12]), .IN4(n40), .IN5(
        product[13]), .IN6(prod_reg_shift_rt), .Q(N90) );
  AO222X1 U148 ( .IN1(b_in[11]), .IN2(N4), .IN3(product[11]), .IN4(n40), .IN5(
        product[12]), .IN6(prod_reg_shift_rt), .Q(N89) );
  AO222X1 U149 ( .IN1(b_in[10]), .IN2(N4), .IN3(product[10]), .IN4(n40), .IN5(
        product[11]), .IN6(prod_reg_shift_rt), .Q(N88) );
  AO222X1 U150 ( .IN1(b_in[9]), .IN2(N4), .IN3(product[9]), .IN4(n40), .IN5(
        product[10]), .IN6(prod_reg_shift_rt), .Q(N87) );
  AO222X1 U151 ( .IN1(b_in[8]), .IN2(N4), .IN3(product[8]), .IN4(n40), .IN5(
        product[9]), .IN6(prod_reg_shift_rt), .Q(N86) );
  AO222X1 U152 ( .IN1(b_in[7]), .IN2(N4), .IN3(product[7]), .IN4(n40), .IN5(
        product[8]), .IN6(prod_reg_shift_rt), .Q(N85) );
  AO222X1 U153 ( .IN1(b_in[6]), .IN2(N4), .IN3(product[6]), .IN4(n40), .IN5(
        product[7]), .IN6(prod_reg_shift_rt), .Q(N84) );
  AO222X1 U154 ( .IN1(b_in[5]), .IN2(N4), .IN3(product[5]), .IN4(n40), .IN5(
        product[6]), .IN6(prod_reg_shift_rt), .Q(N83) );
  AO222X1 U155 ( .IN1(b_in[4]), .IN2(N4), .IN3(product[4]), .IN4(n40), .IN5(
        product[5]), .IN6(prod_reg_shift_rt), .Q(N82) );
  AO222X1 U156 ( .IN1(b_in[3]), .IN2(N4), .IN3(product[3]), .IN4(n40), .IN5(
        product[4]), .IN6(prod_reg_shift_rt), .Q(N81) );
  AO222X1 U157 ( .IN1(b_in[2]), .IN2(N4), .IN3(product[2]), .IN4(n40), .IN5(
        product[3]), .IN6(prod_reg_shift_rt), .Q(N80) );
  AO222X1 U158 ( .IN1(b_in[1]), .IN2(N4), .IN3(product[1]), .IN4(n40), .IN5(
        product[2]), .IN6(prod_reg_shift_rt), .Q(N79) );
  AO222X1 U159 ( .IN1(b_in[0]), .IN2(N4), .IN3(product[0]), .IN4(n40), .IN5(
        product[1]), .IN6(prod_reg_shift_rt), .Q(N78) );
  AO22X1 U160 ( .IN1(prod_reg_ld_high), .IN2(N42), .IN3(product[63]), .IN4(n41), .Q(N74) );
  AO222X1 U161 ( .IN1(N41), .IN2(prod_reg_ld_high), .IN3(product[62]), .IN4(
        n41), .IN5(product[63]), .IN6(prod_reg_shift_rt), .Q(N73) );
  AO222X1 U162 ( .IN1(N40), .IN2(prod_reg_ld_high), .IN3(product[61]), .IN4(
        n41), .IN5(product[62]), .IN6(prod_reg_shift_rt), .Q(N72) );
  AO222X1 U163 ( .IN1(N39), .IN2(prod_reg_ld_high), .IN3(product[60]), .IN4(
        n41), .IN5(product[61]), .IN6(prod_reg_shift_rt), .Q(N71) );
  AO222X1 U164 ( .IN1(N38), .IN2(prod_reg_ld_high), .IN3(product[59]), .IN4(
        n41), .IN5(product[60]), .IN6(prod_reg_shift_rt), .Q(N70) );
  AO222X1 U165 ( .IN1(N37), .IN2(prod_reg_ld_high), .IN3(product[58]), .IN4(
        n41), .IN5(product[59]), .IN6(prod_reg_shift_rt), .Q(N69) );
  AO222X1 U166 ( .IN1(N36), .IN2(prod_reg_ld_high), .IN3(product[57]), .IN4(
        n41), .IN5(product[58]), .IN6(prod_reg_shift_rt), .Q(N68) );
  AO222X1 U167 ( .IN1(N35), .IN2(prod_reg_ld_high), .IN3(product[56]), .IN4(
        n41), .IN5(product[57]), .IN6(prod_reg_shift_rt), .Q(N67) );
  AO222X1 U168 ( .IN1(N34), .IN2(prod_reg_ld_high), .IN3(product[55]), .IN4(
        n41), .IN5(product[56]), .IN6(prod_reg_shift_rt), .Q(N66) );
  AO222X1 U169 ( .IN1(N33), .IN2(prod_reg_ld_high), .IN3(product[54]), .IN4(
        n41), .IN5(product[55]), .IN6(prod_reg_shift_rt), .Q(N65) );
  AO222X1 U170 ( .IN1(N32), .IN2(prod_reg_ld_high), .IN3(product[53]), .IN4(
        n41), .IN5(product[54]), .IN6(prod_reg_shift_rt), .Q(N64) );
  AO222X1 U171 ( .IN1(N31), .IN2(prod_reg_ld_high), .IN3(product[52]), .IN4(
        n41), .IN5(product[53]), .IN6(prod_reg_shift_rt), .Q(N63) );
  AO222X1 U172 ( .IN1(N30), .IN2(prod_reg_ld_high), .IN3(product[51]), .IN4(
        n41), .IN5(product[52]), .IN6(prod_reg_shift_rt), .Q(N62) );
  AO222X1 U173 ( .IN1(N29), .IN2(prod_reg_ld_high), .IN3(product[50]), .IN4(
        n41), .IN5(product[51]), .IN6(prod_reg_shift_rt), .Q(N61) );
  AO222X1 U174 ( .IN1(N28), .IN2(prod_reg_ld_high), .IN3(product[49]), .IN4(
        n41), .IN5(product[50]), .IN6(prod_reg_shift_rt), .Q(N60) );
  AO222X1 U175 ( .IN1(N27), .IN2(prod_reg_ld_high), .IN3(product[48]), .IN4(
        n41), .IN5(product[49]), .IN6(prod_reg_shift_rt), .Q(N59) );
  AO222X1 U176 ( .IN1(N26), .IN2(prod_reg_ld_high), .IN3(product[47]), .IN4(
        n41), .IN5(product[48]), .IN6(prod_reg_shift_rt), .Q(N58) );
  AO222X1 U177 ( .IN1(N25), .IN2(prod_reg_ld_high), .IN3(product[46]), .IN4(
        n41), .IN5(product[47]), .IN6(prod_reg_shift_rt), .Q(N57) );
  AO222X1 U178 ( .IN1(N24), .IN2(prod_reg_ld_high), .IN3(product[45]), .IN4(
        n41), .IN5(product[46]), .IN6(prod_reg_shift_rt), .Q(N56) );
  AO222X1 U179 ( .IN1(N23), .IN2(prod_reg_ld_high), .IN3(product[44]), .IN4(
        n41), .IN5(product[45]), .IN6(prod_reg_shift_rt), .Q(N55) );
  AO222X1 U180 ( .IN1(N22), .IN2(prod_reg_ld_high), .IN3(product[43]), .IN4(
        n41), .IN5(product[44]), .IN6(prod_reg_shift_rt), .Q(N54) );
  AO222X1 U181 ( .IN1(N21), .IN2(prod_reg_ld_high), .IN3(product[42]), .IN4(
        n41), .IN5(product[43]), .IN6(prod_reg_shift_rt), .Q(N53) );
  AO222X1 U182 ( .IN1(N20), .IN2(prod_reg_ld_high), .IN3(product[41]), .IN4(
        n41), .IN5(product[42]), .IN6(prod_reg_shift_rt), .Q(N52) );
  AO222X1 U183 ( .IN1(N19), .IN2(prod_reg_ld_high), .IN3(product[40]), .IN4(
        n41), .IN5(product[41]), .IN6(prod_reg_shift_rt), .Q(N51) );
  AO222X1 U184 ( .IN1(N18), .IN2(prod_reg_ld_high), .IN3(product[39]), .IN4(
        n41), .IN5(product[40]), .IN6(prod_reg_shift_rt), .Q(N50) );
  AO222X1 U185 ( .IN1(N17), .IN2(prod_reg_ld_high), .IN3(product[38]), .IN4(
        n41), .IN5(product[39]), .IN6(prod_reg_shift_rt), .Q(N49) );
  AO222X1 U186 ( .IN1(N16), .IN2(prod_reg_ld_high), .IN3(product[37]), .IN4(
        n41), .IN5(product[38]), .IN6(prod_reg_shift_rt), .Q(N48) );
  AO222X1 U187 ( .IN1(N15), .IN2(prod_reg_ld_high), .IN3(product[36]), .IN4(
        n41), .IN5(product[37]), .IN6(prod_reg_shift_rt), .Q(N47) );
  AO222X1 U188 ( .IN1(N14), .IN2(prod_reg_ld_high), .IN3(product[35]), .IN4(
        n41), .IN5(product[36]), .IN6(prod_reg_shift_rt), .Q(N46) );
  AO222X1 U189 ( .IN1(N13), .IN2(prod_reg_ld_high), .IN3(product[34]), .IN4(
        n41), .IN5(product[35]), .IN6(prod_reg_shift_rt), .Q(N45) );
  AO222X1 U190 ( .IN1(N12), .IN2(prod_reg_ld_high), .IN3(product[33]), .IN4(
        n41), .IN5(product[34]), .IN6(prod_reg_shift_rt), .Q(N44) );
  AO222X1 U191 ( .IN1(N11), .IN2(prod_reg_ld_high), .IN3(product[32]), .IN4(
        n41), .IN5(product[33]), .IN6(prod_reg_shift_rt), .Q(N43) );
  NOR2X0 U192 ( .IN1(n42), .IN2(prod_reg_ld_high), .QN(n41) );
  INVX0 U193 ( .IN(n40), .QN(n42) );
  AO222X1 U194 ( .IN1(b_in[31]), .IN2(N4), .IN3(product[31]), .IN4(n40), .IN5(
        product[32]), .IN6(prod_reg_shift_rt), .Q(N109) );
  AO222X1 U195 ( .IN1(b_in[30]), .IN2(N4), .IN3(product[30]), .IN4(n40), .IN5(
        product[31]), .IN6(prod_reg_shift_rt), .Q(N108) );
  AO222X1 U196 ( .IN1(b_in[29]), .IN2(N4), .IN3(product[29]), .IN4(n40), .IN5(
        product[30]), .IN6(prod_reg_shift_rt), .Q(N107) );
  AO222X1 U197 ( .IN1(b_in[28]), .IN2(N4), .IN3(product[28]), .IN4(n40), .IN5(
        product[29]), .IN6(prod_reg_shift_rt), .Q(N106) );
  AO222X1 U198 ( .IN1(b_in[27]), .IN2(N4), .IN3(product[27]), .IN4(n40), .IN5(
        product[28]), .IN6(prod_reg_shift_rt), .Q(N105) );
  AO222X1 U199 ( .IN1(b_in[26]), .IN2(N4), .IN3(product[26]), .IN4(n40), .IN5(
        product[27]), .IN6(prod_reg_shift_rt), .Q(N104) );
  AO222X1 U200 ( .IN1(b_in[25]), .IN2(N4), .IN3(product[25]), .IN4(n40), .IN5(
        product[26]), .IN6(prod_reg_shift_rt), .Q(N103) );
  AO222X1 U201 ( .IN1(b_in[24]), .IN2(N4), .IN3(product[24]), .IN4(n40), .IN5(
        product[25]), .IN6(prod_reg_shift_rt), .Q(N102) );
  AO222X1 U202 ( .IN1(b_in[23]), .IN2(N4), .IN3(product[23]), .IN4(n40), .IN5(
        product[24]), .IN6(prod_reg_shift_rt), .Q(N101) );
  AO222X1 U203 ( .IN1(b_in[22]), .IN2(N4), .IN3(product[22]), .IN4(n40), .IN5(
        product[23]), .IN6(prod_reg_shift_rt), .Q(N100) );
  NOR2X0 U204 ( .IN1(N4), .IN2(prod_reg_shift_rt), .QN(n40) );
endmodule

