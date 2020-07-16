`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2020 03:06:12 PM
// Design Name: 
// Module Name: gates2
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


module gates2(
    input a,
    input b,
    output [5:0] y
    );
    assign y[0] = a&b;
    assign y[1] = ~(a&b);
    assign y[2] = a|b;
    assign y[3] = ~(a|b);
    assign y[4] = a^b;
    assign y[5] = a~^b;
endmodule
