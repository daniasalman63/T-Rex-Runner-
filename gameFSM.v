`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 05:41:51 AM
// Design Name: 
// Module Name: gameFSM
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


module gameFSM(
    input clk, //25 mhz clock
    input start,  // from start button
    input collided,
    input reset,
    output reg [2:0]state, //game state
    output reg run,
    output reg dead
    );
    
    always @(posedge clk) begin
        if(start==1'b0) begin
            state<=000;
        end
        else if(collided) begin
            state <= 3'b100; //dead state, this section lights up the collided and dead led and shuts of the run led
            run<=1'b0;
            dead<=1'b1;
        end
        else begin 
            state<= 3'b001;
            run<= 1'b1;
            dead<=1'b0;
        end
//        else begin
//            state <= 3'b000; //running state, the run led is lit up until running, dead and collided leds are off
//            run <=1'b0;
//            dead <=1'b0;
//        end
    end
    
endmodule
