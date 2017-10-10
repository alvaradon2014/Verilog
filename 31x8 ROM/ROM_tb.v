`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2017 07:00:17 PM
// Design Name: 
// Module Name: ROM_tb
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


module ROM_tb();
    
    reg [7:0]D;
    reg [4:0]A;
    reg Clear, Load;
    
    wire [7:0]LED;
    wire [4:0]Ao;
    
    ROM dut(LED, Ao, D, A, Clear, Load);
    
    initial begin
    Load = 1;
    Clear = 0;
    A = 5'b00001;   // load contents in address 1
    D = 8'b01100110;
    #25;
    Load = 1;
    Clear = 0;
    A = 5'b00010;   // load contents in address 2
    D = 8'b11000011;
    #25;
    Load = 0;
    Clear = 1;
    A = 5'b00001;   // clear contents in 1
    D = 8'b01100000;
    #25;
    Load = 0;
    Clear = 0;
    A = 5'b00010;   // display contents in 2
    //D = 8'b01100110;
    #25;
    Load = 1;
    Clear = 0;
    A = 5'b00001;   // load contents in address 1
    D = 8'b01111110;
    #25;    
    end
    
endmodule
