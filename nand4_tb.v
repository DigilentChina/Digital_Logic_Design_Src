`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2020 01:58:50 PM
// Design Name: 
// Module Name: or2_tb
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


module nand4_tb;
  reg a,b,c,d;
  wire y;
  nand4 uut(a,b,c,d,y);
  initial
    begin
      a = 0; b = 0; c = 0; d = 0;
      #100; a = 0; b = 0; c = 0; d = 1;
      #100; a = 0; b = 0; c = 1; d = 0;
      #100; a = 0; b = 0; c = 1; d = 1;
      #100; a = 0; b = 1; c = 0; d = 0;
      #100; a = 0; b = 1; c = 0; d = 1;
      #100; a = 0; b = 1; c = 1; d = 0;
      #100; a = 0; b = 1; c = 1; d = 1;
      #100; a = 1; b = 0; c = 0; d = 0;
      #100; a = 1; b = 0; c = 0; d = 1;
      #100; a = 1; b = 0; c = 1; d = 0;
      #100; a = 1; b = 0; c = 1; d = 1;
      #100; a = 1; b = 1; c = 0; d = 0;
      #100; a = 1; b = 1; c = 0; d = 1;
      #100; a = 1; b = 1; c = 1; d = 0;
      #100; a = 1; b = 1; c = 1; d = 1;
    end
endmodule