`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2021 00:11:07
// Design Name: 
// Module Name: tb_hour_counter
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


module tb_hour_counter;
    // Inputs
    reg reset, clock, btn1, btn2, btn3;
    reg [7:0] new_value;
    // Output
    wire [23:0] DATA;
    
    integer i;
    // Initial the Unit Under Test
    hour_counter uut(reset, clock, btn1, btn2, btn3, new_value, DATA);
    
    initial begin 
        clock = 0;
        reset = 0;
        btn1 = 0;
        btn2 = 0;
        btn3 = 0;
        new_value = 0;
        for (i=0; i<6; i=i+1) begin
            #1 clock = ~clock;
        end
        new_value[7:4] = 1;
        new_value[3:0] = 2;
        #1 btn1 = 1;
        #1 btn1 = 0;
        for (i=0; i<6; i=i+1) begin
            #1 clock = ~clock;
        end
        #1 btn2 = 1;
        #1 btn2 = 0;
        for (i=0; i<6; i=i+1) begin
            #1 clock = ~clock;
        end
        #1 btn3 = 1;
        #1 btn3 = 0;
        for (i=0; i<6; i=i+1) begin
            #1 clock = ~clock;
        end
        $finish;
    end
endmodule
