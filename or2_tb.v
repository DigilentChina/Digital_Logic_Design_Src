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


module or2_tb;
  reg a,b;
  wire y;
  design_1_wrapper uut(a,b,y);
  initial
    begin
      a = 0; b = 0;
      #100; a = 0; b = 1;
      #100; a = 1; b = 0;
      #100; a = 1; b = 1;
    end
endmodule
