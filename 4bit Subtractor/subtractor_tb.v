`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2017 10:41:34 AM
// Design Name: 
// Module Name: subtractor_tb
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


module subtractor_tb();
    
    reg [3:0]A; 
    reg [3:0]B;
    reg Bin;
    wire [3:0]Diff;
    wire Bout;
    
    subtractor dut(A, B, Bin, Bout, Diff);
    
    initial begin
    A = 4'b0001; B = 4'b0001; Bin = 1'b0;
    #100;
    A = 4'b0111; B = 4'b0001; Bin = 1'b0;
    #100;
    A = 4'b1110; B = 4'b0101; Bin = 1'b1;
    #100;
    A = 4'b1001; B = 4'b0101; Bin = 1'b1;
    #100;
    A = 4'b0011; B = 4'b0100; Bin = 1'b0;
    #100;
    A = 4'b0011; B = 4'b0100; Bin = 1'b1;
    #100;
    end
    
endmodule
