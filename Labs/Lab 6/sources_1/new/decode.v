`timescale 1ns / 1ps

module decode(DATA_IN, SEG_OUT1, SEG_OUT2);
    input [3:0] DATA_IN;                // used to show which digit to display
    output [7:0] SEG_OUT1, SEG_OUT2;    // store the pattern of the digit to be displayed

    wire [7:0] number [15:0];           // number[i] = byte that displays i

    assign number[0] = 8'b10111111;
    assign number[1] = 8'b10000110;
    assign number[2] = 8'b11011011;
    assign number[3] = 8'b11001111;
    assign number[4] = 8'b11100110;
    assign number[5] = 8'b11101101;
    assign number[6] = 8'b11111101;
    assign number[7] = 8'b10100111;
    assign number[8] = 8'b11111111;
    assign number[9] = 8'b11101111;
    assign number[10] = 8'b11110111;
    assign number[11] = 8'b11111100;
    assign number[12] = 8'b11011000;
    assign number[13] = 8'b11011110;
    assign number[14] = 8'b11111001;
    assign number[15] = 8'b11110001;
    
    assign SEG_OUT1 = number[DATA_IN];
    assign SEG_OUT2 = number[DATA_IN];
endmodule