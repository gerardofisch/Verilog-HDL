`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2021 05:54:21
// Design Name: 
// Module Name: frequency_converter
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


module frequency_converter(reset, clock, divisor, out_clock);
    input reset, clock;
    input [26:0] divisor;
    output reg out_clock;
    reg [26:0] counter = 0;
    
    initial out_clock = 0;    
    always @(posedge clock or posedge reset) 
    begin
        counter <= counter + 1;
        if (reset) begin
            out_clock <= 26'b0;
            counter <= 0;
        end
        else begin
            if (counter >= divisor - 1) begin
                counter <= 0;
                out_clock <= ~out_clock;
            end
        end
    end
endmodule


