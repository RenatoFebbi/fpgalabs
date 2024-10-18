`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 01:40:55 PM
// Design Name: 
// Module Name: mux
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


module mux( in, out, s, en );

input [15:0] in;
input en;
input [1:0] s;

output reg [3:0] out;


always @( * )
begin 
  if(en)
  begin
    case(s)
    2'b00: out = in[3:0];
    2'b01: out = in[7:4]; 
    2'b10: out = in[11:8];
    2'b11: out = in[15:12];
    default: out = 4'b0000;
     
endcase
end
end 
endmodule