`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:44:10 11/16/2017 
// Design Name: 
// Module Name:    mux2_1 
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

module mux2_1(q,d1,d2,select); //Declared parameter list

  //-----------Input Ports---------------
  input d1, d2, select ;
  //-----------Output Ports---------------
  output q;
  //------------Internal Variables--------
  wire  q;
  //-------------Code Start-----------------
  assign q = (select) ? d2 : d1;
  
endmodule //End Of Module mux

