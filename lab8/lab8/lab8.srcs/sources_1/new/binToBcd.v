`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 02:32:44 PM
// Design Name: 
// Module Name: binToBcd
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


module binToBcd( bcd_d_out, bin_d_in );

input [11:0] bin_d_in;

reg [27:0]  bcd_data  = 0;

bcd_data <= {16'b0, bin_d_in};

output [15:0] bcd_d_out = bcd_data[27:12];

If (bcd_data(15:12)>4 && c=0)
If (bcd_data(19:16)>4 && c=1)
If (bcd_data(23:20)>4 && c=2)
If (bcd_data(27:24)>4 && c=3)


    case(add_counter)
    
    0:
        if(bcd_data[15:12] > 4
                bcd_data[27:12] <= bcd_data[27:12] + 3;
                add_counter <= add_counter + 1;
    1:
        if(bcd_data[19:16] > 4)
                bcd_data[27:16] <= bcd_data[27:16] + 3;
                add_counter <= add_counter + 1;
    2:
        if((add_counter == 2) && (bcd_data[23:20] > 4))
                bcd_data[27:20] <= bcd_data[27:20] + 3;
                add_counter <= add_counter + 1;
    3:
        if((add_counter == 3) && (bcd_data[27:24] > 4))
                bcd_data[27:24] <= bcd_data[27:24] + 3;
                add_counter <= 0;
                state   <= SHIFT;
                
    endcase




endmodule
