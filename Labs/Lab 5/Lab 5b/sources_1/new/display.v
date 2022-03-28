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


module display(DATA, SCAN_OUT, SEG_OUT);
    input [3:0] DATA;           // number that will be displayed       
    output SCAN_OUT;            // used to setup the position to display
    output [7:0] SEG_OUT;       // used to determine which digit to display
    
    decode DEC(DATA, SEG_OUT);
    assign SCAN_OUT = 1;
endmodule
