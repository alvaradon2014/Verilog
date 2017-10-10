`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2017 10:15:34 AM
// Design Name: 
// Module Name: subtractor
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


module subtractor(input [3:0]A, input [3:0]B, input Bin, output Bout, output [3:0]Diff);
    
    wire B1, B2, B3;
    
    sub_1bit SUB0(A[0], B[0], Bin, B1, Diff[0]);
    sub_1bit SUB1(A[1], B[1], B1, B2, Diff[1]);
    sub_1bit SUB2(A[2], B[2], B2, B3, Diff[2]);
    sub_1bit SUB3(A[3], B[3], B3, Bout, Diff[3]);
    
endmodule

module sub_1bit(input A, input B, input Bin, output Bout, output Diff);
    
    assign Diff = (A ^ B) ^ Bin ;                   // Difference bit
    
    assign Bout = ((~A)& B) | ((~(A ^ B)) & Bin);   // Borrow bit
    
endmodule
