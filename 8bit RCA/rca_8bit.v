`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2017 12:04:21 PM
// Design Name: 
// Module Name: rca_8bit
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


module rca_8bit(
input [7:0]A, 
input [7:0]B, 
input cin, 
output [7:0]S,
output c_out);

wire C1;


rca_4bit rca1(A[0], A[1], A[2], A[3], B[0], B[1], B[2], B[3], cin, S[0], S[1], S[2], S[3], C1);
rca_4bit rca2(A[4], A[5], A[6], A[7], B[4], B[5], B[6], B[7], C1, S[4], S[5], S[6], S[7], c_out);

endmodule

module rca_4bit(A0, A1, A2, A3, B0, B1, B2, B3, carryIn, S0, S1, S2, S3, carryOut);

input A0, A1, A2, A3, B0, B1, B2, B3;
input carryIn;
output S0, S1, S2, S3;
output carryOut;

wire C0, C1, C2, C3;

full_adder fa0(carryIn, A0, B0, C0, S0);
full_adder fa1(C0, A1, B1, C1, S1);
full_adder fa2(C1, A2, B2, C2, S2);
full_adder fa3(C2, A3, B3, C3, S3);

assign carryOut = C3;

endmodule

module full_adder(input carry_in, input a, input b, output carry_out, output sum);
wire s1;
wire s2;

wire c1;
wire c2;

add_half ha1(s1, c1, a, b);
add_half ha2(s2, c2, carry_in, s1);
assign carry_out = c1|c2;
assign sum = s2;
endmodule

module add_half(output sum, output carry, input a, input b);
assign sum=a^b;
assign carry=a&b;
endmodule
