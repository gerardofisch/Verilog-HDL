`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2021 01:56:40
// Design Name: 
// Module Name: tb_divider
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


module tb_divider;
    // Inputs
    reg reset, clock;
    // Output
    wire DIV22, DIV15; 
    
    // Initial the Unit Under Test
    divider uut(reset, clock, DIV22, DIV15);
    
    initial begin 
        reset = 0;
        clock = 0;
        forever begin
            #1;                // wait 1ns;
            clock = ~clock;
         end 
    end    
endmodule
