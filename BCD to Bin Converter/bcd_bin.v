`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2017 12:00:57 PM
// Design Name: 
// Module Name: bcd_bin
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


module bcd_bin(input St, input [11:0]A, output reg [9:0]B);
// St = start bit, A = 3 digit BCD, B = 10 bit binary conversion
    reg [11:0]copy;
    
    always @(St, A) begin
    copy[11:0] = A[11:0];
    B[0] = copy[0];
    copy = copy >> 1;
        if (copy[3:0] >= 4'b1000) 
        begin      // checks if last nibble is 1000 or more
        copy[3:0] = copy[3:0] - 4'b0011;
        end
        if (copy[7:4] >= 4'b1000) 
        begin      // checks if mid nibble is 1000 or more
        copy[7:4] = copy[7:4] - 4'b0011;
        end
        if (copy[11:7] >= 4'b1000) 
        begin      // checks if first nibble is 1000 or more
        copy[11:7] = copy[11:7] - 4'b0011;
        end
    B[1] = copy[0];
    copy = copy >> 1;            // shifts BCD into binary
    
    if (copy[3:0] >= 4'b1000) 
    begin      // checks if last nibble is 1000 or more
    copy[3:0] = copy[3:0] - 4'b0011;
    end
    if (copy[7:4] >= 4'b1000) 
    begin      // checks if mid nibble is 1000 or more
    copy[7:4] = copy[7:4] - 4'b0011;
    end
    if (copy[11:7] >= 4'b1000) 
    begin      // checks if first nibble is 1000 or more
    copy[11:7] = copy[11:7] - 4'b0011;
    end
    B[2] = copy[0];
    copy = copy >> 1;            // shifts BCD into binary
    
    if (copy[3:0] >= 4'b1000) 
    begin      // checks if last nibble is 1000 or more
    copy[3:0] = copy[3:0] - 4'b0011;
    end
    if (copy[7:4] >= 4'b1000) 
    begin      // checks if mid nibble is 1000 or more
    copy[7:4] = copy[7:4] - 4'b0011;
    end
    if (copy[11:7] >= 4'b1000) 
    begin      // checks if first nibble is 1000 or more
    copy[11:7] = copy[11:7] - 4'b0011;
    end
    B[3] = copy[0];
    copy = copy >> 1;            // shifts BCD into binary
    
    if (copy[3:0] >= 4'b1000) 
    begin      // checks if last nibble is 1000 or more
    copy[3:0] = copy[3:0] - 4'b0011;
    end
    if (copy[7:4] >= 4'b1000) 
    begin      // checks if mid nibble is 1000 or more
    copy[7:4] = copy[7:4] - 4'b0011;
    end
    if (copy[11:7] >= 4'b1000) 
    begin      // checks if first nibble is 1000 or more
    copy[11:7] = copy[11:7] - 4'b0011;
    end
    B[4] = copy[0];
    copy = copy >> 1;            // shifts BCD into binary
    
    if (copy[3:0] >= 4'b1000) 
    begin      // checks if last nibble is 1000 or more
    copy[3:0] = copy[3:0] - 4'b0011;
    end
    if (copy[7:4] >= 4'b1000) 
    begin      // checks if mid nibble is 1000 or more
    copy[7:4] = copy[7:4] - 4'b0011;
    end
    if (copy[11:7] >= 4'b1000) 
    begin      // checks if first nibble is 1000 or more
    copy[11:7] = copy[11:7] - 4'b0011;
    end
    B[5] = copy[0];
    copy = copy >> 1;            // shifts BCD into binary
    
    if (copy[3:0] >= 4'b1000) 
    begin      // checks if last nibble is 1000 or more
    copy[3:0] = copy[3:0] - 4'b0011;
    end
    if (copy[7:4] >= 4'b1000) 
    begin      // checks if mid nibble is 1000 or more
    copy[7:4] = copy[7:4] - 4'b0011;
    end
    if (copy[11:7] >= 4'b1000) 
    begin      // checks if first nibble is 1000 or more
    copy[11:7] = copy[11:7] - 4'b0011;
    end
    B[6] = copy[0];
    copy = copy >> 1;            // shifts BCD into binary
    
    if (copy[3:0] >= 4'b1000) 
    begin      // checks if last nibble is 1000 or more
    copy[3:0] = copy[3:0] - 4'b0011;
    end
    if (copy[7:4] >= 4'b1000) 
    begin      // checks if mid nibble is 1000 or more
    copy[7:4] = copy[7:4] - 4'b0011;
    end
    if (copy[11:7] >= 4'b1000) 
    begin      // checks if first nibble is 1000 or more
    copy[11:7] = copy[11:7] - 4'b0011;
    end
    B[7] = copy[0];
    copy = copy >> 1;            // shifts BCD into binary
    
    if (copy[3:0] >= 4'b1000) 
    begin      // checks if last nibble is 1000 or more
    copy[3:0] = copy[3:0] - 4'b0011;
    end
    if (copy[7:4] >= 4'b1000) 
    begin      // checks if mid nibble is 1000 or more
    copy[7:4] = copy[7:4] - 4'b0011;
    end
    if (copy[11:7] >= 4'b1000) 
    begin      // checks if first nibble is 1000 or more
    copy[11:7] = copy[11:7] - 4'b0011;
    end
    B[8] = copy[0];
    copy = copy >> 1;            // shifts BCD into binary
    
    if (copy[3:0] >= 4'b1000) 
    begin      // checks if last nibble is 1000 or more
    copy[3:0] = copy[3:0] - 4'b0011;
    end
    if (copy[7:4] >= 4'b1000) 
    begin      // checks if mid nibble is 1000 or more
    copy[7:4] = copy[7:4] - 4'b0011;
    end
    if (copy[11:7] >= 4'b1000) 
    begin      // checks if first nibble is 1000 or more
    copy[11:7] = copy[11:7] - 4'b0011;
    end
    B[9] = copy[0];
    copy = copy >> 1;            // shifts BCD into binary
    
    end
    
endmodule

