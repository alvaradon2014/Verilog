`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2017 09:24:06 PM
// Design Name: 
// Module Name: cla_8bit
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


module cla_8bit(
    output [7:0]S,
    output Cout,
    input [7:0]A,
    input [7:0]B,
    input Cin);
    
    wire G1, G2, Cm, P1, P2;
    cla_4bit CLA0(S[3:0], Cm, P1, G1, A[3:0], B[3:0], Cin);
    cla_4bit CLA1(S[7:4], Cout, P2, G2, A[7:4], B[7:4], Cm);
endmodule


module cla_4bit(
    output [3:0]S,
    output Cout,PG,GG,
    input [3:0]A,
    input [3:0]B,
    input Cin
    );
    wire [3:0] G,P,C;

    assign C[0] = Cin;
    pfa PFA0(A[0], B[0], P[0], G[0]);

    pfa PFA1(A[1], B[1], P[1], G[1]);
    
    pfa PFA2(A[2], B[2], P[2], G[2]);
     
    pfa PFA3(A[3], B[3], P[3], G[3]);
    
    cla_logic MINI(Cin, P[3:0], G[3:0], C[3:0]);
    assign Cout = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) |(P[3] & P[2] & P[1] & P[0] & C[0]);
    assign S[3:0] = P[3:0]^C[3:0];
    
    assign PG = P[3] & P[2] & P[1] & P[0];
    assign GG = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]);    
endmodule


module cla_logic(input Cin, input [3:0]P, input [3:0]G, output [3:0]C);    
    assign C[0] = Cin;
    assign C[1] = G[0] | (P[0] & C[0]);
    assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & C[0]);
    assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & C[0]);
endmodule


module pfa(input A, input B, output P, output G);
    assign P = A^B;
    assign G = A&B;
endmodule
