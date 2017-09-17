`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2017 06:31:24 PM
// Design Name: 
// Module Name: cla_8bit_tb
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


module cla_8bit_tb();
    // Inputs
    reg [7:0]A; 
    reg [7:0]B;
    reg Cin;
    
    // Outputs
    wire [7:0]S; 
    wire Cout;
    
    cla_8bit dut(S, Cout, A, B, Cin);
    
    initial begin
    // Initialize Inputs
    A[7:0]=8'b00000000;B[7:0]=8'b00000000;Cin=1'b0;
    #100;
    A[7:0]=8'b00010001;B[7:0]=8'b00000000;Cin=1'b0;
    #10; 
    A[7:0]=8'b0110100;B[7:0]=8'b01100011;Cin=1'b0;
    #10; 
    A[7:0]=8'b11011001;B[7:0]=8'b10100110;Cin=1'b1;
    #10; 
    A[7:0]=8'b00011110;B[7:0]=8'b01101001;Cin=1'b0;
    #10; 
    A[7:0]=8'b11111111;B[7:0]=8'b10101010;Cin=1'b0;
    #10;
    end
    
endmodule
