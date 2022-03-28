`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 14:53:08
// Design Name: 
// Module Name: divider
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



module divider(reset, clock, DIV22, DIV15);
    input reset, clock;
    output reg DIV22, DIV15;
    wire [22:0]DIV;
    
    // The frequency of clock is divided by 2, 22 times
    frequency_divider_by_2 FDb2_0(reset, clock, DIV[0]);
    frequency_divider_by_2 FDb2_1(reset, DIV[0], DIV[1]);
    frequency_divider_by_2 FDb2_2(reset, DIV[1], DIV[2]);
    frequency_divider_by_2 FDb2_3(reset, DIV[2], DIV[3]);
    frequency_divider_by_2 FDb2_4(reset, DIV[3], DIV[4]);
    frequency_divider_by_2 FDb2_5(reset, DIV[4], DIV[5]);
    frequency_divider_by_2 FDb2_6(reset, DIV[5], DIV[6]);
    frequency_divider_by_2 FDb2_7(reset, DIV[6], DIV[7]);
    frequency_divider_by_2 FDb2_8(reset, DIV[7], DIV[8]);
    frequency_divider_by_2 FDb2_9(reset, DIV[8], DIV[9]);
    frequency_divider_by_2 FDb2_10(reset, DIV[9], DIV[10]);
    frequency_divider_by_2 FDb2_11(reset, DIV[10], DIV[11]);
    frequency_divider_by_2 FDb2_12(reset, DIV[11], DIV[12]);
    frequency_divider_by_2 FDb2_13(reset, DIV[12], DIV[13]);
    frequency_divider_by_2 FDb2_14(reset, DIV[13], DIV[14]);
    frequency_divider_by_2 FDb2_15(reset, DIV[14], DIV[15]);
    frequency_divider_by_2 FDb2_16(reset, DIV[15], DIV[16]);
    frequency_divider_by_2 FDb2_17(reset, DIV[16], DIV[17]);
    frequency_divider_by_2 FDb2_18(reset, DIV[17], DIV[18]);
    frequency_divider_by_2 FDb2_19(reset, DIV[18], DIV[19]);
    frequency_divider_by_2 FDb2_20(reset, DIV[19], DIV[20]);
    frequency_divider_by_2 FDb2_21(reset, DIV[20], DIV[21]);
    frequency_divider_by_2 FDb2_22(reset, DIV[21], DIV[22]);
    
    always @(posedge clock) begin
        DIV15 <= DIV[15];
        DIV22 <= DIV[22];
    end
    
endmodule

