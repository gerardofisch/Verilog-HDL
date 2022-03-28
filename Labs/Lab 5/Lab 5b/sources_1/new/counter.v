`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 14:15:01
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


module counter(reset, button, DATA);
    input button, reset;
    output reg [3:0] DATA;
    initial DATA = 0;
    
    always @(posedge button or posedge  reset) begin
        if (reset) begin        // if the reset button is pressed, DATA = 0
            DATA <= 0;
        end
        else begin
            DATA <= DATA + 1;
            if (DATA >= 9) begin
                DATA <= 0;
            end                    
        end
    end

endmodule
