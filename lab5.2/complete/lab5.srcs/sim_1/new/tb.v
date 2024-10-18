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
     reg [15:0] in = 16'b0000000000000000;
    
    wire [3:0] an;
    
    wire [6:0] bcd;
       top uut(in, clk, an, bcd);

   always 
    begin
        #5 clk = ~clk;  // Toggle clock every 5 time units (10-time unit clock period)
    end
    
 
    
    initial begin
    #1280 in = 16'b0000000000000000;
    #1280 in = 16'b0000000000000001;
    #1280 in = 16'b0000000000000010;
    #1280 in = 16'b0000000000000100;
    #1280 in = 16'b0000000000001000;
    #1280 in = 16'b0000000000000000;
    #1280 in = 16'b0000000000010001;
    #1280 in = 16'b0000000000100010;
    #1280 in = 16'b0000000001000100;
    #1280 in = 16'b0000000010001000;
    #1280 in = 16'b0000000100010001;
    #1280 in = 16'b0000001000100010;
    #1280 in = 16'b0000010001000100;
    #1280 in = 16'b0000100010001000;
    #1280 in = 16'b0001000100010001;
    #1280 in = 16'b0010001000100010;
    #1280 in = 16'b0100010001000100;
    #1280 in = 16'b1000100010001000;
   
    
    end
                          
endmodule
