`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2017 04:36:19 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(input C_in, input A, input B, output C_out, output Sum);
    wire S1;
    
    wire C1;
    wire C2;
    
    add_half HA1(A, B, S1, C1);
    add_half HA2(C_in, S1, Sum, C2);
    
    assign C_out = C1 | C2;
    
endmodule

// Half Adder Module
module add_half(input a, input b, output sum, output carry);
    
    assign sum = a^b;
    assign carry = a&b;
    
endmodule

