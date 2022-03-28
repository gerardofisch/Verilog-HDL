`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 15:44:24
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


module top(reset, button, SCAN_OUT, SEG_OUT);
    input reset, button;
    output SCAN_OUT;
    output [7:0] SEG_OUT;
    wire [3:0] temp_data;

    counter count(reset, button, temp_data);
    display disp(temp_data, SCAN_OUT, SEG_OUT);
endmodule
