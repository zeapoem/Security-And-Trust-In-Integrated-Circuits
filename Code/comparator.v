`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:51:00 11/16/2017 
// Design Name: 
// Module Name:    comparator 
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

module comparator (
    input wire [127:0] a,
    output reg equal
    );
	 


    always @* begin
    if (a==128'd8) begin
        equal = 1;
      //  lower = 0;
     //   greater = 0;
      end
      else begin
        equal = 0;
       // lower = 0;
       // greater = 1;
      end
    end
endmodule

