`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 01:39:17 PM
// Design Name: 
// Module Name: top
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


module top( in, clk, an, seg );

input [15:0] in;

input clk;

output [3:0] an;

output [6:0] seg;

wire en;

wire [1:0] an2;

wire [1:0] anToMux, anToInv;

wire [3:0] muxToBcdConv;

mux dut0 (in, muxToBcdConv, an2, en ); 

anGen dut1( clk, an2, en );

bcd7 dut2( clk,muxToBcdConv, seg );

inv dut3( an2, an );


endmodule
