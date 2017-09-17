`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2017 12:01:15 PM
// Design Name: 
// Module Name: bcd_bin_tb
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


module bcd_bin_tb();
    
    //inputs
    reg St;
    reg [11:0]bcd;
    
    //outputs
    wire [9:0]bin;
    
    bcd_bin dut(St, bcd, bin);
    
    initial begin
    bcd = 12'b001000100111;
    St = 1'b1;
    #20;
    bcd = 12'b011000101001;
    St = 1'b1;
    #20;
    bcd = 12'b100110000010;
    St = 1'b1;
    #20;
    bcd = 12'b001100110001;
    St = 1'b0;
    #20;
    end
    
endmodule


