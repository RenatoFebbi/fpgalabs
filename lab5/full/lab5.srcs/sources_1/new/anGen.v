`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 01:45:07 PM
// Design Name: 
// Module Name: anGen
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


module anGen( clk, an2 );

input clk;

output reg [1:0] an2 = 0;

reg [7:0] cnt_d = 0;


always @(posedge clk)

begin 

    if(cnt_d == 7'b0000000)
        
    an2 <= an2+1;
       
    cnt_d <= cnt_d + 1;
end

endmodule
