`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 02:30:15 PM
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

   always 
    begin
        #5 clk = ~clk;  // Toggle clock every 5 time units (10-time unit clock period)
    end
    
    reg [15:0] in = 16'b0000000000000000;
    
    wire [3:0] an;
    
    wire [6:0] bcd;
    
   
    top uut(in, clk, an, bcd);
    
    
    initial begin
    
    #640 in = 16'b0100001100100001;
    #640 in = 16'b0100001100100001;
    #640 in = 16'b0100001100100001;
    #640 in = 16'b0100001100100001;
    #640 in = 16'b0100001100100001;
    #640 in = 16'b0100001100100001;
    

    end

   
endmodule
