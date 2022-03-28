`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2021 21:33:08
// Design Name: 
// Module Name: divider_4bit
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


module divider_4bit(btn, dividend, divisor, quotient, remainder, error_LED);
    input btn;
    input [3:0] dividend, divisor;
    output reg [3:0] quotient, remainder;
    output reg error_LED;
    integer idx;

    always@(posedge btn) begin
        if (divisor == 0) begin
            quotient <= 4'b0;
            remainder <= 4'b0;
            error_LED <= 1;
        end else begin
            error_LED <= 0;
            for (idx=0; idx<16; idx=idx+1) begin
                if (dividend >= idx * divisor) begin
                    quotient <= idx;
                    remainder <= dividend - idx * divisor;
                end
            end
        end        
    end
endmodule
