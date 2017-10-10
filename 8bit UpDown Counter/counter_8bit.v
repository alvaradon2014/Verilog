`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2017 02:10:43 PM
// Design Name: 
// Module Name: counter_8bit
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


module counter_8bit( LED,  load, clk, rstN, up, down,  plN);

  output [15:0] LED;
  input [7:0] load;
  input clk;		//falling edge clock
  input rstN;		//reset or clear active low
  input up;		//  use active hi and then it will count when button is pushed
  input down;
  input plN;         		 //parallel load active low
reg [7:0] count;		 //This is an internal register to hold the count value
wire clk_slow;
slow_clock SC(clk, clk_slow);
  // Increment count on clock and note rstN is asynchrous since it is in the sensitivity list
  always @(posedge clk_slow or negedge rstN)  //Note up, down, plN are synchrous with slow clock
  begin   
if ( rstN ) begin
            count = 0;
  	end
        	else if ( plN  ) begin
           	count = load;
          	end
	else if (   up   ) begin
	count = count +1;
	end
	else if (   down   ) begin
	count = count -1;
	end
  end    

  assign LED[15:8] = load;
  assign LED [7:0] = count;
  endmodule
  
  
// This module slows down the 100 Mhz clock to a 2 second period.
  module slow_clock(Clk, Clk_Slow);
  input Clk;
  output Clk_Slow;
  reg [31:0] counter_out;
  reg Clk_Slow;
      initial begin    //Note this won't synthesize but is needed for the simulation
      counter_out<= 32'h00000000;
      Clk_Slow <=0;
      end
      
  //this always block runs on the fast 100MHz clock
  always @(posedge Clk) begin
      counter_out<=    counter_out + 32'h00000001;
          
      if (counter_out  > 32'h05F5E100) begin
          counter_out<= 32'h00000000;
          Clk_Slow <= !Clk_Slow;
          end
      end
  
  endmodule
  

