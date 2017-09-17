`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2017 12:04:59 PM
// Design Name: 
// Module Name: rca_8bit_tb
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


module rca_8bit_tb();

reg [7:0]A;
reg [7:0]B;
reg c_in;
wire [7:0]S;
wire c_out;

rca_8bit dut(A, B, c_in, S, c_out);

initial begin
A = 8'b00000000;      //case 1
B = 8'b00000001;
c_in = 1'b0;
#10;

A = 8'b01110000;      //case 2
B = 8'b10001001;
c_in = 1'b0;
#10;

A = 8'b11111110;      //case 2
B = 8'b10001111;
c_in = 1'b0;
#10;

A = 8'b01000100;      //case 2
B = 8'b10010101;
c_in = 1'b1;
#10;

A = 8'b01000110;      //case 2
B = 8'b10111011;
c_in = 1'b1;
#10;

end
endmodule
