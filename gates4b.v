`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2020 11:07:59 AM
// Design Name: 
// Module Name: gates4b
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


module gates4b(
    input [3:0] a,
    output [5:0] y
    );
    and(y[0],a[1],a[2],a[3]);
    or(y[1],a[1],a[2],a[3]);
    nand(y[2],a[1],a[2],a[3]);
    nor(y[3],a[1],a[2],a[3]);
    xor(y[4],a[1],a[2],a[3]);
    xnor(y[5],a[1],a[2],a[3]);
endmodule
