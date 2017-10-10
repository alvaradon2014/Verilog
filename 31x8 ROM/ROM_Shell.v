`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Company:
 
// Engineer:

//
 
// 
//Create Date: 10/12/2014 10:50:11 PM

// Design Name: 

// Module Name: ROM

// Project Name:
 
// Target Devices: NEXYS-4 Board

// Tool Versions:

// Description: 

//
 
// Dependencies:
 
//
 
// Revision:

// Revision 0.01 - File Created
// Additional Comments:  A is slide switch 15,14,13,12,11,  LED 7:0 are the outputs

// Outputs are always displayed for the current address in A using LED's 7:0  D is slide switch 7:0
//////////////////////////////////////////////////////////////////////////////////



module ROM(

    output [7:0] LED,

    output [4:0] Ao,

    input [7:0] D,

    input [4:0] A,

    input Clear,

    input Load

    );
    
    reg [7:0] Store [0:31];
    
    initial
    begin                        //Can make simpler with a for loop bwe sure to 

    Store[0]<=8'b00000000;

    Store[1]<=8'b00000000;

    Store[2]<=8'b00000000;

    Store[3]<=8'b00000000;

    Store[4]<=8'b00000000;

    Store[5]<=8'b00000000;

    Store[6]<=8'b00000000;

    Store[7]<=8'b00000000;

    Store[8]<=8'b00000000;

    Store[9]<=8'b00000000;

    Store[10]<=8'b00000000;

    Store[11]<=8'b00000000;

    Store[12]<=8'b00000000;

    Store[13]<=8'b00000000;

    Store[14]<=8'b00000000;

    Store[15]<=8'b00000000;

    Store[16]<=8'b00000000;

    Store[17]<=8'b00000000;

    Store[18]<=8'b00000000;

    Store[19]<=8'b00000000;

    Store[20]<=8'b00000000;

    Store[21]<=8'b00000000;

    Store[22]<=8'b00000000;

    Store[23]<=8'b00000000;

    Store[24]<=8'b00000000;

    Store[25]<=8'b00000000;

    Store[26]<=8'b00000000;

     Store[27]<=8'b00000000;

    Store[28]<=8'b00000000;

    Store[29]<=8'b00000000;

    Store[30]<=8'b00000000;

    Store[31]<=8'b00000000;
    
    end
 
    assign A = Ao;
    assign LED = Store[A];

//put your code here
    always @ (*) begin
   
    if (Clear)
    Store[A] <= 8'b00000000;     // Clear contents at A
    
   
    else if (Load)           // Parallel Load D to contents at A
    Store[A] = D;               // given address, show contents
   
    end
    
endmodule
