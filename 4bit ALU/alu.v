`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2017 07:54:14 PM
// Design Name: 
// Module Name: alu
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


module alu(input [3:0]A, input [3:0]B, input Cin, input [2:0]Ctrl, output reg [3:0]Output, output reg Cout);
    
    always @(Ctrl, A, B) begin
    case(Ctrl)
    3'b000: begin               // add
        Output <= A + B + Cin;
        Cout <= (A & Cin) | (B & Cin) | (A & B);
    end
    3'b001: begin               // subtract
        Output <= A - B - Cin;
        Cout <= (~A & Cin) | (B & Cin) | (~A & B);
    end
    3'b010: Output <= A | B;         // or
    3'b011: Output <= A & B;        // and
    3'b100: Output <= A << 1;       // shift left
    3'b101: Output <= A >> 1;       // shift right
    3'b110: Output <= {A[2], A[1], A[0], A[3]};     // rotate left
    3'b111: Output <= {A[0], A[3], A[2], A[1]};     // rotate right
    endcase
    end
    
endmodule



