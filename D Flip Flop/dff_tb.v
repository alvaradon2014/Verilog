`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2017 12:24:56 PM
// Design Name: 
// Module Name: dff_tb
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


module dff_tb();

reg d;
reg clk;
wire q;

dff dut(q, d, clk);

initial begin
d = 0;
clk = 0;
end

always #3 clk=~clk;

always #5 d=~d;

initial       #100 $stop;
endmodule

