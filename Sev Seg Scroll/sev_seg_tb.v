`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2017 10:52:56 PM
// Design Name: 
// Module Name: sev_seg_tb
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


module sev_seg_tb();
    
    //Inputs
    reg [3:0]SW;
    reg CLK;
    
    //Outputs
    wire [7:0]SSEG_CA;
    wire [7:0]SSEG_AN;
    wire [3:0]LED;
    
    sev_seg dut(SW, CLK, SSEG_CA, SSEG_AN, LED);
    
    initial begin
    SW = 4'b0001; CLK = 1'b1;
    #250;
    SW = 4'b0001; CLK = 1'b0;
    #250;
    SW = 4'b0101; CLK = 1'b1;
    #250;
    SW = 4'b1010; CLK = 1'b0;
    #250;
    SW = 4'b1111; CLK = 1'b1;
    #250;  
    SW = 4'b1111; CLK = 1'b0;
    #250;      
    end
    
endmodule
