`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2017 12:36:16 PM
// Design Name: 
// Module Name: mux_tb
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


module mux_tb();
    reg [0:15]w;
    reg [3:0]s16;
    wire f;
    
    mux dut(w, s16, f);
    
    initial begin
    w=16'b1011111110110001;		// case 1
    s16=4'b1100;
    #10;
    w=16'b1010110110110001;		// case 2
    s16=4'b1101;
    #10;
    w=16'b1111110110110001;		// case 3
    s16=4'b0011;
    #10;
    w=16'b1010101101100111;		// case 4
    s16=4'b1111;
    end
endmodule

