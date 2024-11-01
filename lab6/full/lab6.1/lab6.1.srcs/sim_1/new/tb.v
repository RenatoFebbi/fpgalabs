`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2024 05:28:28 PM
// Design Name: 
// Module Name: tb
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


module tb();

reg clk = 0;

reg s, r;

wire latchQ, latchQn, flipQ, flipQn;

FF flip(s, r, clk, flipQ, flipQn);
 
SrLatch latch(s, r, latchQ, latchQn);

always begin

# 1 clk = ~clk;

end

initial begin

#3 s = 1'b0; r = 1'b0;
#3 s = 1'b0; r = 1'b1;
#3 s = 1'b1; r = 1'b0;
#3 s = 1'b1; r = 1'b1;
#3 s = 1'b0; r = 1'b1;
#3 s = 1'b1; r = 1'b0;
#3 s = 1'b0; r = 1'b0;

end


endmodule
