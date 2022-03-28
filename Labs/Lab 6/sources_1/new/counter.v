`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2021 22:10:11
// Design Name: 
// Module Name: counter
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


module counter(reset, clock, btn, new_value, max_value, reset_value, count, clock_out);
    input reset, clock, btn;
    input [7:0] new_value, max_value, reset_value;
    output reg [7:0] count;
    output reg clock_out;           // used as clock signal for the next count (Ex.: clock_out (of sec) -> clock (of min))
    reg [7:0] max_value_minus_one;
    
    initial count = reset_value;
    
    always @(posedge clock or posedge reset or posedge btn) begin
        if (reset) begin                    // if the reset button is pressed, count = reset_value
            count[7:4] <= reset_value[7:4];
            count[3:0] <= reset_value[3:0];
            clock_out <= 0;
        end
        else if (btn) begin                 // if the btn is pressed, count = new_value
            count[7:4] <= new_value[7:4];
            count[3:0] <= new_value[3:0];
        end
        else if (clock) begin               // if clock is 1, then count as usual 
            if (max_value[3:0] == 0) begin
                max_value_minus_one[7:4] = max_value[7:4] - 4'b0001;
                max_value_minus_one[3:0] = 4'b1001;
            end 
            else begin
                max_value_minus_one = max_value - 8'b00000001;
            end
            if (count[7:4] >= max_value_minus_one[7:4]) begin
                if (count[3:0] >= max_value_minus_one[3:0]) begin
                    count <= 0;
                    clock_out <= 1;
                end
                else begin
                    count <= count + 1;
                    clock_out <= 0;
                end                    
            end
            else begin
                if (count[3:0] >= 9) begin
                    count[7:4] <= count[7:4] + 1;
                    count[3:0] <= 0;
                    clock_out <= 0;
                end
                else begin 
                    count <= count + 1;
                    clock_out <= 0;
                end
            end
        end  
    end
endmodule
