`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2021 04:03:54 AM
// Design Name: 
// Module Name: Horizontal_counter
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


module Horizontal_counter(
    input clk_25MHz,
    output reg enable_V_Counter,
    output reg [15:0] H_count_value=0
);

    always @(posedge clk_25MHz) begin
        if(H_count_value<799) begin
            H_count_value<=H_count_value+1;
            enable_V_Counter<=0;
        end
        else begin
            H_count_value<=0;
            enable_V_Counter<=1;
        end
       end
endmodule

