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


module display(clock, DATA, SCAN_OUT, SEG_OUT);
    input clock;
    input [7:0] DATA;           // number that will be displayed
    output [1:0] SCAN_OUT;      // used to determine which position to display
    output [7:0] SEG_OUT;       // used to determine which digit to display
    wire[7:0] temp;
    
    seg_scan SS(clock, DATA, SCAN_OUT, temp);
    decode DEC(temp, SEG_OUT);
endmodule
