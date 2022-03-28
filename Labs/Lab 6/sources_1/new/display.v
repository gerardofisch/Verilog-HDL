`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 15:29:11
// Design Name: 
// Module Name: display
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

module display(clock, DATA, SCAN_OUT, SEG_OUT1, SEG_OUT2);
    input clock;
    input [23:0] DATA;                  // number that will be displayed
    output [5:0] SCAN_OUT;              // used to determine which position to display
    output [7:0] SEG_OUT1, SEG_OUT2;    // used to determine which digit to display
    wire [3:0] temp;
    
    seg_scan SS(clock, DATA, SCAN_OUT, temp);
    decode DEC(temp, SEG_OUT1, SEG_OUT2);
endmodule
