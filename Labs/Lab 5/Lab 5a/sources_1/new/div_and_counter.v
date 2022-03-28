`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2021 06:12:38
// Design Name: 
// Module Name: div_and_counter
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


module div_and_counter(reset, clock, DATA, DIV22, DIV15);
    input reset, clock;
    output [7:0] DATA;
    output DIV22, DIV15;
    
    divider div(reset, clock, DIV22, DIV15);
    counter count(reset, DIV22, DATA);
endmodule