`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2020 04:45:49 PM
// Design Name: 
// Module Name: gates4a
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


module gates4a(
    input [3:0] a,
    output [5:0] y
    );
    assign y[0] = &a;
    assign y[1] = ~&a;
    assign y[2] = |a;
    assign y[3] = ~|a;
    assign y[4] = ^a;
    assign y[5] = ~^a;
endmodule
