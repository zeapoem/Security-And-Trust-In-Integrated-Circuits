`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:39:17 11/16/2017 
// Design Name: 
// Module Name:    up_down_counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
 module up_down_counter    (
  out      ,  // Output of the counter
  up_down  ,  // up_down control for counter
  clk      ,  // clock input
 // data     ,  // Data to load
  reset       // reset input
  );
  //----------Output Ports--------------
  output [127:0] out;
  //------------Input Ports-------------- 
  //input [127:0] data;
  input up_down, clk, reset;
  //------------Internal Variables--------
  reg [127:0] out;
  //-------------Code Starts Here-------
  always @(posedge clk)
  if (reset) begin // active high reset
    out <= 128'b0 ;
  end else if (up_down) begin
    out <= out + 1;
  end else begin
    out <= out - 1;
 end
  
 endmodule 
