`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2021 21:34:08
// Design Name: 
// Module Name: tb_divider_4bit
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


module tb_divider_4bit;
// Inputs
    reg btn;
    reg [3:0] dividend, divisor;
    wire [3:0] quotient, remainder;
    wire error_LED;
    
    integer i, j;

    // Initial the Unit Under Test
    divider_4bit uut(btn, dividend, divisor, quotient, remainder, error_LED);
    initial begin 
        for (i=0; i<16; i=i+1) begin
            for (j=0; j<16; j=j+1) begin
                dividend = i;
                divisor = j;
                #1 btn = 1;
                #1 btn = 0;
            end
        end
        $finish;
    end
endmodule


