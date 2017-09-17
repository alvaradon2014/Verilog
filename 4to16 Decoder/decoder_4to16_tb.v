`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2017 12:32:33 PM
// Design Name: 
// Module Name: decoder_4to16_tb
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


module decoder_4to16_tb();
    wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9, Y10, Y11, Y12, Y13, Y14, Y15;
    reg A, B, C, D;
    reg en;
    
    decoder_4to16 dut(A, B, C, D, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9, Y10, Y11, Y12, Y13, Y14, Y15, en);
    
    initial begin
    A = 1'b0;			// case 1
    B = 1'b0;
    C = 1'b0;
    D = 1'b0;
    en = 1'b0;
    #10;
    A = 1'b1;			// case 2
    B = 1'b0;
    C = 1'b0;
    D = 1'b0;
    en = 1'b1;
    #10;   
    A = 1'b1;			// case 3
    B = 1'b0;
    C = 1'b0;
    D = 1'b1;
    en = 1'b1;
    #10;   
    A = 1'b1;			// case 4
    B = 1'b0;
    C = 1'b1;
    D = 1'b0;
    en = 1'b1;
    #10;   
    A = 1'b1;			// case 5
    B = 1'b0;
    C = 1'b1;
    D = 1'b1;
    en = 1'b1;
    #10;  
    A = 1'b1;			// case 6
    B = 1'b1;
    C = 1'b1;
    D = 1'b1;
    en = 1'b1;
    #10;                
    end
endmodule

