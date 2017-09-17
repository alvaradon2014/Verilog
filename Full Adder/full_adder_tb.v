`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2017 04:36:41 PM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();

reg a, b, cin;			// inputs as reg
wire sum, cout;			// outputs as wire

full_adder dut(cin, a, b, cout, sum);

initial begin
a=1'b0; b=1'b0; cin=1'b0;	// case 1
#10;
a=1'b0; b=1'b1; cin=1'b0;	// case 2
#10;
a=1'b1; b=1'b0; cin=1'b0;	// case 3
#10;
a=1'b1; b=1'b1; cin=1'b0;	// case 4
#10;
a=1'b0; b=1'b0; cin=1'b1;	// case 5
#10;
a=1'b0; b=1'b1; cin=1'b1;	// case 6
#10;
a=1'b1; b=1'b0; cin=1'b1;	// case 7
#10;
a=1'b1; b=1'b1; cin=1'b1;	// case 8
#10;
end
endmodule

