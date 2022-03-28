`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 15:21:13
// Design Name: 
// Module Name: seg_scan
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


module seg_scan(clock, DATA, SCAN_OUT, SEG_DATA);
    input clock;
    input [7:0] DATA;           // number that will be displayed
    output [1:0] SCAN_OUT;      // used to determine which position to display
    output [3:0] SEG_DATA;      // used to determine which digit to display
    
    assign SEG_DATA = (clock) ? DATA[3:0] : DATA[7:4];
    assign SCAN_OUT = (clock) ? 2'b01 : 2'b10;
endmodule
