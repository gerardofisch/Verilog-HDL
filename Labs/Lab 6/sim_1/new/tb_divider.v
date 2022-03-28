`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2021 09:28:45
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
    reg reset, clock, switch;
    // Output
    wire choosen_clock;
    wire [3:0]clk_of_six; 
    
    // Initial the Unit Under Test
    divider uut(reset, clock, switch, choosen_clock, clk_of_six);
    
    initial begin
        switch = 0; 
        reset = 0;
        clock = 0;
        forever begin
            #1;                // wait 1ns;
            clock = ~clock;
         end 
    end    
endmodule

