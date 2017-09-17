`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2017 12:35:27 PM
// Design Name: 
// Module Name: mux
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


module mux(w, s16, f);
    
    input [0:15]w;
    input [3:0]s16;
    output f;
    reg f;
    
    always@ (w or s16)
    case(s16[3:2])
    0:mux4(w[0:3], s16[1:0], f);
    1:mux4(w[4:7], s16[1:0], f);
    2:mux4(w[8:11], s16[1:0], f);
    3:mux4(w[12:15], s16[1:0], f);
    endcase
    
    task mux4;
    input [0:3]x;
    input [1:0]s4;
    output g;
    reg g;
    
    case(s4)
    0:g=x[0];
    1:g=x[1];
    2:g=x[2];
    3:g=x[3];
    endcase
    endtask
endmodule

