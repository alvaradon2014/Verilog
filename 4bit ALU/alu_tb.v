`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2017 07:54:48 PM
// Design Name: 
// Module Name: alu_tb
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


module alu_tb();

reg [3:0]A;
reg [3:0]B;
reg Cin;
reg [2:0]Ctrl;

wire [3:0]Output;
wire Cout;

alu dut(A, B, Cin, Ctrl, Output, Cout);

initial begin
    A = 4'b1010; B = 4'b0100; Cin = 0; Ctrl = 000;
    #10;
    A = 4'b1010; B = 4'b0100; Cin = 0; Ctrl = 001;
    #10;
    A = 4'b1010; B = 4'b0100; Cin = 0; Ctrl = 010;
    #10;
    A = 4'b1010; B = 4'b0100; Cin = 0; Ctrl = 011;
    #10;
    A = 4'b1010; B = 4'b0100; Cin = 0; Ctrl = 100;
    #10;
    A = 4'b1010; B = 4'b0100; Cin = 0; Ctrl = 101;
    #10;
    A = 4'b1010; B = 4'b0100; Cin = 0; Ctrl = 110;
    #10;            
    A = 4'b1010; B = 4'b0100; Cin = 0; Ctrl = 111;
    #10;            
end

endmodule
