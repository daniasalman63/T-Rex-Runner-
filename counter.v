`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2021 06:59:39 AM
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


module counter(input clk, reset, output reg [3:0] counter
    );

// up counter
always @(posedge clk or posedge reset)
begin
if(reset)
 counter <= 4'd0;
else
 counter <= counter + 4'd1;
end 

endmodule
