`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 14:59:37
// Design Name: 
// Module Name: frequency_divider_by_2
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

module frequency_divider_by_2 (reset, clock, out_clock);
    output reg out_clock;
    input clock;
    input reset;
    initial out_clock = 0;
    
    always @(posedge clock)
    begin
    if (reset)                  // if the reset button is pressed
        out_clock <= 1'b0;
    else
        // the value of out_clock changes every time that clock goes from 0 to 1
        // Therefore, its freq is half of clock
        out_clock <= ~ out_clock;
    end
endmodule