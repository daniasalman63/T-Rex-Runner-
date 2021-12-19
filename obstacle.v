`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2021 03:26:21 AM
// Design Name: 
// Module Name: obstacle
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


module obstacle(
    input clk,
    input jump,
    input reset,
    input [2:0] gameState,
    input [15:0] Hcount,
    input [15:0] Vcount,
    output reg collision,
    output reg [3:0] r_red,
    output reg [3:0] r_blue,
    output reg [3:0] r_green
    );
//    1562499
    wire clk_obstacle;
    integer ox=0;
    clock_divider #(.div_val(199999)) obs(clk, clk_obstacle); //moves the cactus by subtracting 10 pixels at a frequency of 498 hz to move it left
    always @(posedge clk_obstacle) begin
    if(reset==1'b1) begin  //if reset button is pressed, the game resets to initial stage where the dino is not collided
        collision<=1'b0; //collided led is turned of, dino is back to running state
        ox=0;  //cactus is back to its original coordinates
    end
    else begin
    if(gameState == 3'b001) begin //if games is running, only then the cactus moves
        if(ox<470) begin
            ox=ox+10;
            collision<=1'b0;
        end
        else if(ox>=470 && ox<473) begin
            ox=ox+3;
            collision<=1'b0;
        end
        else if(jump==1'b0 && ox>=473 && ox<670) begin
            ox=ox+10;
            collision<=1'b0; //if the dino jumps, the cactus keeps moving hence no collision
        end
        else if(jump==1'b1 && ox>=473 && ox<660) begin
            collision<=1'b1;    //if the dino doesnt jump, cactus stops moving there and games stops
        end
        else begin
            ox=0;   // if the cactus moves out of screen, the cactus is put back to its original location
        end
    end
    end
    end
    always @(posedge clk) begin
    if(gameState==3'b001) begin  //displays the cactus only when the game is running
        if(Hcount>=783-ox && Hcount<788-ox && Vcount>=300 && Vcount<350) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
        else if (Hcount>=788-ox && Hcount<798-ox && Vcount>=295 && Vcount<350) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
         else if (Hcount>=798-ox && Hcount<803-ox && Vcount>=300 && Vcount<350) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
          else if (Hcount>=803-ox && Hcount<813-ox && Vcount>=335 && Vcount<350) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
        else if (Hcount>=813-ox && Hcount<818-ox && Vcount>=285 && Vcount<385) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
        else if (Hcount>=818-ox && Hcount<823-ox && Vcount>=280 && Vcount<385) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
        else if (Hcount>=823-ox && Hcount<838-ox && Vcount>=280 && Vcount<385) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
        else if (Hcount>=823-ox && Hcount<833-ox && Vcount>=275 && Vcount<385) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
        else if (Hcount>=838-ox && Hcount<858-ox && Vcount>=335 && Vcount<350) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
         else if (Hcount>=858-ox && Hcount<863-ox && Vcount>=300 && Vcount<350) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
         else if (Hcount>=863-ox && Hcount<873-ox && Vcount>=295 && Vcount<350) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
         else if (Hcount>=873-ox && Hcount<878-ox && Vcount>=300 && Vcount<350) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
        ////ground coords
         else if (Hcount>=145 && Hcount<783 && Vcount>=385 && Vcount<390) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
//         else if (Hcount>=350-ox && Hcount<365-ox && Vcount>=390 && Vcount<395) begin
//            r_red <= 4'h0;
//            r_green <= 4'h0;
//            r_blue <=4'h0;
//        end
//         else if (Hcount>=400-ox && Hcount<415-ox && Vcount>=425 && Vcount<430) begin
//            r_red <= 4'h0;
//            r_green <= 4'h0;
//            r_blue <=4'h0;
//        end
        else begin
            r_red <= 4'hF;
            r_green <= 4'hF;
            r_blue <=4'hF;
        end
    end
    end
endmodule
