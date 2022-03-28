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


module top(reset, clock, SCAN_OUT, SEG_OUT);
    input reset, clock;
    output [1:0] SCAN_OUT;      // used to determine which position to display
    output [7:0] SEG_OUT;       // used to determine which digit to display
    wire [7:0] temp_data;
    wire DIV22, DIV15;
    
    divider div(reset, clock, DIV22, DIV15);
    counter count(reset, DIV22, temp_data);
    display disp(DIV15, temp_data, SCAN_OUT, SEG_OUT);
endmodule
