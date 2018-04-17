/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP2
// Date      : Mon May 15 11:34:37 2017
/////////////////////////////////////////////////////////////


module alu_DW01_addsub_0 ( A, B, CI, ADD_SUB, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI, ADD_SUB;
  output CO;

  wire   [9:0] carry;
  wire   [8:0] B_AS;
  assign carry[0] = ADD_SUB;

  XOR3X1 U1_8 ( .IN1(A[8]), .IN2(carry[0]), .IN3(carry[8]), .Q(SUM[8]) );
  FADDX1 U1_0 ( .A(A[0]), .B(B_AS[0]), .CI(carry[0]), .CO(carry[1]), .S(SUM[0]) );
  FADDX1 U1_6 ( .A(A[6]), .B(B_AS[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FADDX1 U1_5 ( .A(A[5]), .B(B_AS[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FADDX1 U1_4 ( .A(A[4]), .B(B_AS[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FADDX1 U1_3 ( .A(A[3]), .B(B_AS[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FADDX1 U1_2 ( .A(A[2]), .B(B_AS[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FADDX1 U1_1 ( .A(A[1]), .B(B_AS[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
  FADDX1 U1_7 ( .A(A[7]), .B(B_AS[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  XOR2X1 U1 ( .IN1(B[7]), .IN2(carry[0]), .Q(B_AS[7]) );
  XOR2X1 U2 ( .IN1(B[6]), .IN2(carry[0]), .Q(B_AS[6]) );
  XOR2X1 U3 ( .IN1(B[5]), .IN2(carry[0]), .Q(B_AS[5]) );
  XOR2X1 U4 ( .IN1(B[4]), .IN2(carry[0]), .Q(B_AS[4]) );
  XOR2X1 U5 ( .IN1(B[3]), .IN2(carry[0]), .Q(B_AS[3]) );
  XOR2X1 U6 ( .IN1(B[2]), .IN2(carry[0]), .Q(B_AS[2]) );
  XOR2X1 U7 ( .IN1(B[1]), .IN2(carry[0]), .Q(B_AS[1]) );
  XOR2X1 U8 ( .IN1(B[0]), .IN2(carry[0]), .Q(B_AS[0]) );
endmodule


module alu ( in_a, in_b, opcode, clk, alu_out, alu_zero, alu_carry );
  input [7:0] in_a;
  input [7:0] in_b;
  input [3:0] opcode;
  output [7:0] alu_out;
  input clk;
  output alu_zero, alu_carry;
  wire   N58, N59, N60, N61, N62, N63, N64, N65, N66, N76, N77, N78, N79, N80,
         N81, N82, N83, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121,
         N122, N123, N124, N125, \U3/U1/Z_0 , \U3/U1/Z_1 , \U3/U1/Z_2 ,
         \U3/U1/Z_3 , \U3/U1/Z_4 , \U3/U1/Z_5 , \U3/U1/Z_6 , \U3/U1/Z_7 ,
         \U3/U1/Z_8 , \U3/U2/Z_0 , \U3/U2/Z_1 , \U3/U2/Z_2 , \U3/U2/Z_3 ,
         \U3/U2/Z_4 , \U3/U2/Z_5 , \U3/U2/Z_6 , \U3/U2/Z_7 , \U3/U3/Z_0 , n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190;

  alu_DW01_addsub_0 r21 ( .A({\U3/U1/Z_8 , \U3/U1/Z_7 , \U3/U1/Z_6 , 
        \U3/U1/Z_5 , \U3/U1/Z_4 , \U3/U1/Z_3 , \U3/U1/Z_2 , \U3/U1/Z_1 , 
        \U3/U1/Z_0 }), .B({1'b0, \U3/U2/Z_7 , \U3/U2/Z_6 , \U3/U2/Z_5 , 
        \U3/U2/Z_4 , \U3/U2/Z_3 , \U3/U2/Z_2 , \U3/U2/Z_1 , \U3/U2/Z_0 }), 
        .CI(1'b0), .ADD_SUB(\U3/U3/Z_0 ), .SUM({N66, N65, N64, N63, N62, N61, 
        N60, N59, N58}) );
  INVX0 U123 ( .IN(n127), .QN(n149) );
  INVX0 U124 ( .IN(n134), .QN(n148) );
  INVX0 U125 ( .IN(opcode[1]), .QN(n147) );
  INVX0 U126 ( .IN(opcode[0]), .QN(n146) );
  NOR3X0 U127 ( .IN1(opcode[2]), .IN2(opcode[0]), .IN3(n147), .QN(n94) );
  AND2X1 U128 ( .IN1(opcode[3]), .IN2(n94), .Q(n139) );
  AND3X1 U129 ( .IN1(opcode[2]), .IN2(n181), .IN3(opcode[0]), .Q(n96) );
  AND2X1 U130 ( .IN1(n96), .IN2(n147), .Q(n142) );
  AND2X1 U131 ( .IN1(n94), .IN2(n181), .Q(n140) );
  NOR3X0 U132 ( .IN1(opcode[2]), .IN2(opcode[1]), .IN3(n181), .QN(n101) );
  NAND2X0 U133 ( .IN1(n101), .IN2(n146), .QN(n127) );
  AO22X1 U134 ( .IN1(N83), .IN2(n140), .IN3(n149), .IN4(in_a[1]), .Q(n95) );
  AO221X1 U135 ( .IN1(n139), .IN2(n190), .IN3(N109), .IN4(n142), .IN5(n95), 
        .Q(n100) );
  AND3X1 U136 ( .IN1(n181), .IN2(n146), .IN3(opcode[2]), .Q(n98) );
  AND2X1 U137 ( .IN1(opcode[1]), .IN2(n98), .Q(n141) );
  AND2X1 U138 ( .IN1(n96), .IN2(opcode[1]), .Q(n143) );
  NOR2X0 U139 ( .IN1(opcode[2]), .IN2(opcode[3]), .QN(n97) );
  AOI22X1 U140 ( .IN1(n98), .IN2(n147), .IN3(n97), .IN4(opcode[0]), .QN(n135)
         );
  OR3X1 U141 ( .IN1(n147), .IN2(opcode[2]), .IN3(n146), .Q(n136) );
  NAND2X0 U142 ( .IN1(n135), .IN2(n136), .QN(n129) );
  AO222X1 U143 ( .IN1(N117), .IN2(n141), .IN3(N125), .IN4(n143), .IN5(N58), 
        .IN6(n129), .Q(n99) );
  OR2X1 U144 ( .IN1(n100), .IN2(n99), .Q(alu_out[0]) );
  NAND2X0 U145 ( .IN1(n189), .IN2(n139), .QN(n106) );
  NAND2X0 U146 ( .IN1(N82), .IN2(n140), .QN(n105) );
  NAND2X0 U147 ( .IN1(n101), .IN2(opcode[0]), .QN(n134) );
  OA22X1 U148 ( .IN1(n188), .IN2(n127), .IN3(n134), .IN4(n190), .Q(n104) );
  AO22X1 U149 ( .IN1(N124), .IN2(n143), .IN3(N108), .IN4(n142), .Q(n102) );
  AOI221X1 U150 ( .IN1(N116), .IN2(n141), .IN3(N59), .IN4(n129), .IN5(n102), 
        .QN(n103) );
  NAND4X0 U151 ( .IN1(n106), .IN2(n105), .IN3(n104), .IN4(n103), .QN(
        alu_out[1]) );
  NAND2X0 U152 ( .IN1(n188), .IN2(n139), .QN(n111) );
  NAND2X0 U153 ( .IN1(N81), .IN2(n140), .QN(n110) );
  OA22X1 U154 ( .IN1(n187), .IN2(n127), .IN3(n189), .IN4(n134), .Q(n109) );
  AO22X1 U155 ( .IN1(N123), .IN2(n143), .IN3(N107), .IN4(n142), .Q(n107) );
  AOI221X1 U156 ( .IN1(N115), .IN2(n141), .IN3(N60), .IN4(n129), .IN5(n107), 
        .QN(n108) );
  NAND4X0 U157 ( .IN1(n111), .IN2(n110), .IN3(n109), .IN4(n108), .QN(
        alu_out[2]) );
  NAND2X0 U158 ( .IN1(n187), .IN2(n139), .QN(n116) );
  NAND2X0 U159 ( .IN1(N80), .IN2(n140), .QN(n115) );
  OA22X1 U160 ( .IN1(n186), .IN2(n127), .IN3(n188), .IN4(n134), .Q(n114) );
  AO22X1 U161 ( .IN1(N122), .IN2(n143), .IN3(N106), .IN4(n142), .Q(n112) );
  AOI221X1 U162 ( .IN1(N114), .IN2(n141), .IN3(N61), .IN4(n129), .IN5(n112), 
        .QN(n113) );
  NAND4X0 U163 ( .IN1(n116), .IN2(n115), .IN3(n114), .IN4(n113), .QN(
        alu_out[3]) );
  NAND2X0 U164 ( .IN1(n186), .IN2(n139), .QN(n121) );
  NAND2X0 U165 ( .IN1(N79), .IN2(n140), .QN(n120) );
  OA22X1 U166 ( .IN1(n185), .IN2(n127), .IN3(n187), .IN4(n134), .Q(n119) );
  AO22X1 U167 ( .IN1(N121), .IN2(n143), .IN3(N105), .IN4(n142), .Q(n117) );
  AOI221X1 U168 ( .IN1(N113), .IN2(n141), .IN3(N62), .IN4(n129), .IN5(n117), 
        .QN(n118) );
  NAND4X0 U169 ( .IN1(n121), .IN2(n120), .IN3(n119), .IN4(n118), .QN(
        alu_out[4]) );
  NAND2X0 U170 ( .IN1(n185), .IN2(n139), .QN(n126) );
  NAND2X0 U171 ( .IN1(N78), .IN2(n140), .QN(n125) );
  OA22X1 U172 ( .IN1(n184), .IN2(n127), .IN3(n186), .IN4(n134), .Q(n124) );
  AO22X1 U173 ( .IN1(N120), .IN2(n143), .IN3(N104), .IN4(n142), .Q(n122) );
  AOI221X1 U174 ( .IN1(N112), .IN2(n141), .IN3(N63), .IN4(n129), .IN5(n122), 
        .QN(n123) );
  NAND4X0 U175 ( .IN1(n126), .IN2(n125), .IN3(n124), .IN4(n123), .QN(
        alu_out[5]) );
  NAND2X0 U176 ( .IN1(n184), .IN2(n139), .QN(n133) );
  NAND2X0 U177 ( .IN1(N77), .IN2(n140), .QN(n132) );
  OA22X1 U178 ( .IN1(n183), .IN2(n127), .IN3(n185), .IN4(n134), .Q(n131) );
  AO22X1 U179 ( .IN1(N119), .IN2(n143), .IN3(N103), .IN4(n142), .Q(n128) );
  AOI221X1 U180 ( .IN1(N111), .IN2(n141), .IN3(N64), .IN4(n129), .IN5(n128), 
        .QN(n130) );
  NAND4X0 U181 ( .IN1(n133), .IN2(n132), .IN3(n131), .IN4(n130), .QN(
        alu_out[6]) );
  OAI21X1 U182 ( .IN1(n136), .IN2(n181), .IN3(n135), .QN(n137) );
  AO22X1 U183 ( .IN1(n148), .IN2(in_a[6]), .IN3(N65), .IN4(n137), .Q(n138) );
  AO221X1 U184 ( .IN1(N76), .IN2(n140), .IN3(n183), .IN4(n139), .IN5(n138), 
        .Q(n145) );
  AO222X1 U185 ( .IN1(N118), .IN2(n143), .IN3(N102), .IN4(n142), .IN5(N110), 
        .IN6(n141), .Q(n144) );
  OR2X1 U186 ( .IN1(n145), .IN2(n144), .Q(alu_out[7]) );
  NOR2X0 U187 ( .IN1(n150), .IN2(n151), .QN(alu_zero) );
  OR4X1 U188 ( .IN1(alu_out[1]), .IN2(alu_out[0]), .IN3(alu_out[3]), .IN4(
        alu_out[2]), .Q(n151) );
  OR4X1 U189 ( .IN1(alu_out[5]), .IN2(alu_out[4]), .IN3(alu_out[7]), .IN4(
        alu_out[6]), .Q(n150) );
  NAND2X0 U190 ( .IN1(n152), .IN2(n153), .QN(alu_carry) );
  NAND4X0 U191 ( .IN1(opcode[3]), .IN2(opcode[1]), .IN3(n146), .IN4(n154), 
        .QN(n153) );
  NAND2X0 U192 ( .IN1(N66), .IN2(n155), .QN(n152) );
  NAND2X0 U193 ( .IN1(n156), .IN2(n157), .QN(n155) );
  INVX0 U194 ( .IN(\U3/U1/Z_8 ), .QN(n157) );
  NOR2X0 U195 ( .IN1(n158), .IN2(n159), .QN(\U3/U2/Z_7 ) );
  NOR2X0 U196 ( .IN1(n158), .IN2(n160), .QN(\U3/U2/Z_6 ) );
  NOR2X0 U197 ( .IN1(n158), .IN2(n161), .QN(\U3/U2/Z_5 ) );
  NOR2X0 U198 ( .IN1(n158), .IN2(n162), .QN(\U3/U2/Z_4 ) );
  NOR2X0 U199 ( .IN1(n158), .IN2(n163), .QN(\U3/U2/Z_3 ) );
  NOR2X0 U200 ( .IN1(n158), .IN2(n164), .QN(\U3/U2/Z_2 ) );
  NOR2X0 U201 ( .IN1(n158), .IN2(n165), .QN(\U3/U2/Z_1 ) );
  AO221X1 U202 ( .IN1(n166), .IN2(opcode[1]), .IN3(in_b[0]), .IN4(n167), .IN5(
        n168), .Q(\U3/U2/Z_0 ) );
  NAND2X0 U203 ( .IN1(n169), .IN2(n170), .QN(n168) );
  INVX0 U204 ( .IN(\U3/U3/Z_0 ), .QN(n170) );
  INVX0 U205 ( .IN(n158), .QN(n167) );
  OA21X1 U206 ( .IN1(n171), .IN2(opcode[1]), .IN3(n172), .Q(n158) );
  NAND2X0 U207 ( .IN1(n169), .IN2(n172), .QN(\U3/U1/Z_8 ) );
  NAND2X0 U208 ( .IN1(n173), .IN2(n172), .QN(\U3/U1/Z_7 ) );
  MUX21X1 U209 ( .IN1(n169), .IN2(n156), .S(in_a[7]), .Q(n173) );
  NAND2X0 U210 ( .IN1(n174), .IN2(n172), .QN(\U3/U1/Z_6 ) );
  MUX21X1 U211 ( .IN1(n169), .IN2(n156), .S(in_a[6]), .Q(n174) );
  NAND2X0 U212 ( .IN1(n175), .IN2(n172), .QN(\U3/U1/Z_5 ) );
  MUX21X1 U213 ( .IN1(n169), .IN2(n156), .S(in_a[5]), .Q(n175) );
  NAND2X0 U214 ( .IN1(n176), .IN2(n172), .QN(\U3/U1/Z_4 ) );
  MUX21X1 U215 ( .IN1(n169), .IN2(n156), .S(in_a[4]), .Q(n176) );
  NAND2X0 U216 ( .IN1(n177), .IN2(n172), .QN(\U3/U1/Z_3 ) );
  MUX21X1 U217 ( .IN1(n169), .IN2(n156), .S(in_a[3]), .Q(n177) );
  NAND2X0 U218 ( .IN1(n178), .IN2(n172), .QN(\U3/U1/Z_2 ) );
  MUX21X1 U219 ( .IN1(n169), .IN2(n156), .S(in_a[2]), .Q(n178) );
  NAND2X0 U220 ( .IN1(n179), .IN2(n172), .QN(\U3/U1/Z_1 ) );
  MUX21X1 U221 ( .IN1(n169), .IN2(n156), .S(in_a[1]), .Q(n179) );
  NAND2X0 U222 ( .IN1(n180), .IN2(n172), .QN(\U3/U1/Z_0 ) );
  NAND4X0 U223 ( .IN1(opcode[1]), .IN2(n146), .IN3(n154), .IN4(n181), .QN(n172) );
  MUX21X1 U224 ( .IN1(n169), .IN2(n156), .S(in_a[0]), .Q(n180) );
  NOR2X0 U225 ( .IN1(\U3/U3/Z_0 ), .IN2(n166), .QN(n156) );
  INVX0 U226 ( .IN(n171), .QN(n166) );
  NAND3X0 U227 ( .IN1(n154), .IN2(n181), .IN3(opcode[0]), .QN(n171) );
  INVX0 U228 ( .IN(opcode[3]), .QN(n181) );
  NOR4X0 U229 ( .IN1(n154), .IN2(opcode[0]), .IN3(opcode[1]), .IN4(opcode[3]), 
        .QN(\U3/U3/Z_0 ) );
  NAND4X0 U230 ( .IN1(opcode[0]), .IN2(opcode[3]), .IN3(opcode[1]), .IN4(n154), 
        .QN(n169) );
  INVX0 U231 ( .IN(opcode[2]), .QN(n154) );
  XOR2X1 U232 ( .IN1(in_a[0]), .IN2(N58), .Q(N83) );
  XOR2X1 U233 ( .IN1(in_a[1]), .IN2(N59), .Q(N82) );
  XOR2X1 U234 ( .IN1(in_a[2]), .IN2(N60), .Q(N81) );
  XOR2X1 U235 ( .IN1(in_a[3]), .IN2(N61), .Q(N80) );
  XOR2X1 U236 ( .IN1(in_a[4]), .IN2(N62), .Q(N79) );
  XOR2X1 U237 ( .IN1(in_a[5]), .IN2(N63), .Q(N78) );
  XOR2X1 U238 ( .IN1(in_a[6]), .IN2(N64), .Q(N77) );
  XOR2X1 U239 ( .IN1(in_a[7]), .IN2(N65), .Q(N76) );
  XOR2X1 U240 ( .IN1(in_b[0]), .IN2(in_a[0]), .Q(N125) );
  XOR2X1 U241 ( .IN1(in_b[1]), .IN2(in_a[1]), .Q(N124) );
  XOR2X1 U242 ( .IN1(in_b[2]), .IN2(in_a[2]), .Q(N123) );
  XOR2X1 U243 ( .IN1(in_b[3]), .IN2(in_a[3]), .Q(N122) );
  XOR2X1 U244 ( .IN1(in_b[4]), .IN2(in_a[4]), .Q(N121) );
  XOR2X1 U245 ( .IN1(in_b[5]), .IN2(in_a[5]), .Q(N120) );
  XOR2X1 U246 ( .IN1(in_b[6]), .IN2(in_a[6]), .Q(N119) );
  XOR2X1 U247 ( .IN1(in_b[7]), .IN2(in_a[7]), .Q(N118) );
  NOR2X0 U248 ( .IN1(n190), .IN2(n182), .QN(N117) );
  NOR2X0 U249 ( .IN1(n189), .IN2(n165), .QN(N116) );
  NOR2X0 U250 ( .IN1(n188), .IN2(n164), .QN(N115) );
  NOR2X0 U251 ( .IN1(n187), .IN2(n163), .QN(N114) );
  NOR2X0 U252 ( .IN1(n186), .IN2(n162), .QN(N113) );
  NOR2X0 U253 ( .IN1(n185), .IN2(n161), .QN(N112) );
  NOR2X0 U254 ( .IN1(n184), .IN2(n160), .QN(N111) );
  NOR2X0 U255 ( .IN1(n183), .IN2(n159), .QN(N110) );
  NAND2X0 U256 ( .IN1(n182), .IN2(n190), .QN(N109) );
  INVX0 U257 ( .IN(in_a[0]), .QN(n190) );
  INVX0 U258 ( .IN(in_b[0]), .QN(n182) );
  NAND2X0 U259 ( .IN1(n165), .IN2(n189), .QN(N108) );
  INVX0 U260 ( .IN(in_a[1]), .QN(n189) );
  INVX0 U261 ( .IN(in_b[1]), .QN(n165) );
  NAND2X0 U262 ( .IN1(n164), .IN2(n188), .QN(N107) );
  INVX0 U263 ( .IN(in_a[2]), .QN(n188) );
  INVX0 U264 ( .IN(in_b[2]), .QN(n164) );
  NAND2X0 U265 ( .IN1(n163), .IN2(n187), .QN(N106) );
  INVX0 U266 ( .IN(in_a[3]), .QN(n187) );
  INVX0 U267 ( .IN(in_b[3]), .QN(n163) );
  NAND2X0 U268 ( .IN1(n162), .IN2(n186), .QN(N105) );
  INVX0 U269 ( .IN(in_a[4]), .QN(n186) );
  INVX0 U270 ( .IN(in_b[4]), .QN(n162) );
  NAND2X0 U271 ( .IN1(n161), .IN2(n185), .QN(N104) );
  INVX0 U272 ( .IN(in_a[5]), .QN(n185) );
  INVX0 U273 ( .IN(in_b[5]), .QN(n161) );
  NAND2X0 U274 ( .IN1(n160), .IN2(n184), .QN(N103) );
  INVX0 U275 ( .IN(in_a[6]), .QN(n184) );
  INVX0 U276 ( .IN(in_b[6]), .QN(n160) );
  NAND2X0 U277 ( .IN1(n159), .IN2(n183), .QN(N102) );
  INVX0 U278 ( .IN(in_a[7]), .QN(n183) );
  INVX0 U279 ( .IN(in_b[7]), .QN(n159) );
endmodule

