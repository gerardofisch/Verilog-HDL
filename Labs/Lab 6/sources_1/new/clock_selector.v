`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2021 09:13:48
// Design Name: 
// Module Name: clock_selector
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


module clock_selector(switch, choosen_divisor);
    input switch;
    output reg [26:0]choosen_divisor;
    
    always @(switch) begin
        // If switch = 1, then 0,1 seconds clock
        // else 1 second clock
        choosen_divisor <= (switch) ? 10000000 : 100000000;
        //choosen_divisor <= (switch) ? 12 : 12;            // used for the test bench
    end
endmodule
