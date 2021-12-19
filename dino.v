`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2021 03:00:14 AM
// Design Name: 
// Module Name: dino
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


module dino(
    input clk,
    input clk_animate, //animates the clock at a frequency of 4hz
    input jump,
    input duck,
    input [2:0] gameState,
    input [15:0] Hcount,
    input [15:0] Vcount,
    output reg [3:0] r_red,
    output reg [3:0] r_blue,
    output reg [3:0] r_green
    );
    
    wire clk_jump;
    
    integer ox;
   
    always @(posedge clk) begin
        // this case is required to make the dino jump
        if(gameState==3'b001) begin
        case (jump)
        1'b0: ox=120;
        1'b1: ox=0;
        endcase
        // this section generates and animates the dino
               //generating the tail
        case(duck)
        1'b1: 
        if(Hcount>=195 && Hcount<200 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<300-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=300-ox && Vcount<350-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=350-ox && Vcount <385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        else if(Hcount>=200 && Hcount<205 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<315-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=315-ox && Vcount<350-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=350-ox && Vcount <385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        else if(Hcount>=205 && Hcount<215 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<315-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=315-ox && Vcount<360-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=360-ox && Vcount <385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        else if(Hcount>=215 && Hcount<225 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<325-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=325-ox && Vcount<360-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=360-ox && Vcount <385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        // generating the left leg
        else if(Hcount>=225 && Hcount<235 && Vcount>=275-ox && Vcount<365-ox) begin
            if(Vcount>=275-ox && Vcount<330-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=330-ox && Vcount<365-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
        end
        else if(Hcount>=235 && Hcount<240 && Vcount>=275-ox && Vcount<365-ox) begin
            if(Vcount>=275-ox && Vcount<325-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=325-ox && Vcount<365-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
        end
        else if (Hcount>=225 && Hcount<235 && Vcount>=365-ox && Vcount<385-ox) begin
            if(clk_animate) begin
                if(Vcount>=365-ox && Vcount <375-ox) begin
                    r_red <= 4'h0;
                    r_green <= 4'h0;
                    r_blue <=4'h0;
                end 
                else if(Vcount >=376-ox && Vcount < 385-ox) begin
                    r_red <= 4'hF;
                    r_green <= 4'hF;
                    r_blue <=4'hF;
                end
            end
            else begin
                if(Vcount>=365-ox && Vcount <375-ox) begin
                    r_red <= 4'h0;
                    r_green <= 4'h0;
                    r_blue <=4'h0;
                end 
                else if(Vcount >=375-ox && Vcount < 385-ox) begin
                    r_red <= 4'h0;
                    r_green <= 4'h0;
                    r_blue <=4'h0;
                end
            end
        end
        // mid body
        else if (Hcount>=235 && Hcount<240 && Vcount>=365-ox && Vcount<385-ox) begin
            if(clk_animate) begin
                if(Vcount >=365-ox && Vcount <375-ox) begin
                    r_red <= 4'h0;
                    r_green <= 4'h0;
                    r_blue <=4'h0;
                end
                else if (Vcount >=375-ox && Vcount<385-ox) begin
                    r_red <= 4'hF;
                    r_green <= 4'hF;
                    r_blue <=4'hF;
                end
            end
            else begin
                if(Vcount >=365-ox && Vcount <375-ox) begin
                    r_red <= 4'hF;
                    r_green <= 4'hF;
                    r_blue <=4'hF;
                end
                else if (Vcount >=375-ox && Vcount<385-ox) begin
                    r_red <= 4'h0;
                    r_green <= 4'h0;
                    r_blue <=4'h0;
                end
            end
        end
        else if(Hcount>=240 && Hcount<250 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<325-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=325-ox && Vcount<365-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=365-ox && Vcount <385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        //right leg
        else if(Hcount>=250 && Hcount<255 && Vcount>=275-ox && Vcount<365-ox) begin
            if(Vcount>=275-ox && Vcount<305-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=305-ox && Vcount<365-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
        end
        else if(Hcount>=255 && Hcount<265 && Vcount>=275-ox && Vcount<365-ox) begin
            if(Vcount>=275-ox && Vcount<305-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=305-ox && Vcount<360-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
        end
        else if (Hcount>=250 && Hcount<255 && Vcount>=365-ox && Vcount<385-ox) begin
            if (clk_animate) begin
                if(Vcount>=365-ox && Vcount<375-ox) begin
                    r_red <= 4'h0;
                    r_green <= 4'h0;
                    r_blue <=4'h0;
                end
                else if (Vcount>= 375-ox && Vcount<385-ox) begin
                    r_red <= 4'h0;
                    r_green <= 4'h0;
                    r_blue <=4'h0;
                end  
            end
            else begin
                if(Vcount>=365-ox && Vcount<375-ox) begin
                    r_red <= 4'h0;
                    r_green <= 4'h0;
                    r_blue <=4'h0;
                end
                else if (Vcount>= 375-ox && Vcount<385-ox) begin
                    r_red <= 4'hF;
                    r_green <= 4'hF;
                    r_blue <=4'hF;
                end  
            end
        end
        else if(Hcount>=255 && Hcount<265 && Vcount>=365-ox && Vcount<385-ox) begin
            if(clk_animate) begin
                if(Vcount>=365-ox && Vcount<=375-ox) begin
                    r_red <= 4'hF;
                    r_green <= 4'hF;
                    r_blue <=4'hF;
                end
                else if(Vcount>=375-ox && Vcount<385-ox) begin
                    r_red <= 4'h0;
                    r_green <= 4'h0;
                    r_blue <=4'h0;
                end
            end
            else begin
                if(Vcount>=365-ox && Vcount<=375-ox) begin
                    r_red <= 4'h0;
                    r_green <= 4'h0;
                    r_blue <=4'h0;
                end
                else if(Vcount>=375-ox && Vcount<385-ox) begin
                    r_red <= 4'hF;
                    r_green <= 4'hF;
                    r_blue <=4'hF;
                end
            end
        end
        //neck
        else if(Hcount>=265 && Hcount<270 && Vcount>=270-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<360-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=360-ox && Vcount<385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        else if(Hcount>=270 && Hcount<275 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<285-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=285-ox && Vcount<290-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=290-ox && Vcount <360-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
             else if(Vcount>=360-ox && Vcount<385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        //face and hand
        else if(Hcount>=275 && Hcount<285 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<335-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=335-ox && Vcount <385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        else if(Hcount>=285 && Hcount<290 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<300-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=300-ox && Vcount<305-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=305-ox && Vcount <310-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=310-ox && Vcount<320-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=320-ox && Vcount <325-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=325-ox && Vcount<385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        else if(Hcount>=290 && Hcount<300 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<300-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=300-ox && Vcount<305-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=305-ox && Vcount <310-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=310-ox && Vcount<320-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=320-ox && Vcount <335-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=335-ox && Vcount<385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        else if(Hcount>=300 && Hcount<305 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<300-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=300-ox && Vcount<385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        else begin
            r_red <= 4'hF;
            r_green <= 4'hF;
            r_blue <=4'hF;
        end
        1'b0:
        if (Hcount>=285 && Hcount<305 && Vcount>=330 && Vcount<340) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
        else if(Hcount>=285 && Hcount<330 && Vcount>=310 && Vcount<330) begin
            if(Hcount>=290 && Hcount<295 && Vcount >= 315 && Vcount<320) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
        end
        else if (Hcount>=305 && Hcount<325 && Vcount>=335 && Vcount<340) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
        else if (Hcount>=280 && Hcount<285 && Vcount>=320 && Vcount<340) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
        else if (Hcount>=270 && Hcount<280 && Vcount>=325 && Vcount<335) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
        else if (Hcount>=260 && Hcount<270 && Vcount>=325 && Vcount<350) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
         else if (Hcount>=245 && Hcount<260 && Vcount>=320 && Vcount<350) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
         else if (Hcount>=220 && Hcount<245 && Vcount>=320 && Vcount<360) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
          else if (Hcount>=265 && Hcount<270 && Vcount>=355 && Vcount<360) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
         else if (Hcount>=255 && Hcount<265 && Vcount>=350 && Vcount<360) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
        else if (Hcount>=210 && Hcount<225 && Vcount>=325 && Vcount<360) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
        else if (Hcount>=200 && Hcount<210 && Vcount>=315 && Vcount<360) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
         else if (Hcount>=200 && Hcount<235 && Vcount>=360 && Vcount<365) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
         else if (Hcount>=200 && Hcount<205 && Vcount>=365 && Vcount<370) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
         else if (Hcount>=200 && Hcount<210 && Vcount>=370 && Vcount<375) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
         else if (Hcount>=220 && Hcount<235 && Vcount>=365 && Vcount<370) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
         else if (Hcount>=220 && Hcount<225 && Vcount>=370 && Vcount<385) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
         else if (Hcount>=225 && Hcount<235 && Vcount>=380 && Vcount<385) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end
         else if (Hcount>=195 && Hcount<200 && Vcount>=310 && Vcount<360) begin
            r_red <= 4'h0;
            r_green <= 4'h0;
            r_blue <=4'h0;
        end

        else begin
            r_red <= 4'hF;
            r_green <= 4'hF;
            r_blue <=4'hF;
        end
    endcase
    end
    else if(gameState==3'b100) begin
            if(Hcount>=195 && Hcount<200 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<300-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=300-ox && Vcount<350-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=350-ox && Vcount <385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        else if(Hcount>=200 && Hcount<205 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<315-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=315-ox && Vcount<350-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=350-ox && Vcount <385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        else if(Hcount>=205 && Hcount<215 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<315-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=315-ox && Vcount<360-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=360-ox && Vcount <385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        else if(Hcount>=215 && Hcount<225 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<325-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=325-ox && Vcount<360-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=360-ox && Vcount <385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        else if(Hcount>=225 && Hcount<235 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<330-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=330-ox && Vcount<385-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
        end
        else if(Hcount>=235 && Hcount<240 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<325-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=325-ox && Vcount<365-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=365-ox && Vcount <375-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
             else if(Vcount>=375-ox && Vcount<385-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
        end
        else if(Hcount>=240 && Hcount<250 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<325-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=325-ox && Vcount<365-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=365-ox && Vcount <385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        else if(Hcount>=250 && Hcount<255 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<305-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=305-ox && Vcount<385-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
        end
        else if(Hcount>=255 && Hcount<265 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<305-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=305-ox && Vcount<360-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=360-ox && Vcount <375-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
             else if(Vcount>=375-ox && Vcount<385-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
        end
        else if(Hcount>=265 && Hcount<270 && Vcount>=270-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<360-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=360-ox && Vcount<385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        else if(Hcount>=270 && Hcount<275 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<285-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=285-ox && Vcount<290-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=290-ox && Vcount <360-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
             else if(Vcount>=360-ox && Vcount<385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        else if(Hcount>=275 && Hcount<285 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<335-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=335-ox && Vcount <385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        else if(Hcount>=285 && Hcount<290 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<300-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=300-ox && Vcount<305-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=305-ox && Vcount <310-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=310-ox && Vcount<320-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=320-ox && Vcount <325-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=325-ox && Vcount<385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        else if(Hcount>=290 && Hcount<300 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<300-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=300-ox && Vcount<305-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=305-ox && Vcount <310-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=310-ox && Vcount<320-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
            else if(Vcount>=320-ox && Vcount <335-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=335-ox && Vcount<385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        else if(Hcount>=300 && Hcount<305 && Vcount>=275-ox && Vcount<385-ox) begin
            if(Vcount>=275-ox && Vcount<300-ox) begin
                r_red <= 4'h0;
                r_green <= 4'h0;
                r_blue <=4'h0;
            end
            else if(Vcount>=300-ox && Vcount<385-ox) begin
                r_red <= 4'hF;
                r_green <= 4'hF;
                r_blue <=4'hF;
            end
        end
        else begin
            r_red <= 4'hF;
            r_green <= 4'hF;
            r_blue <=4'hF;
        end
    end
    else begin
        r_red <= 4'hF;
        r_green <= 4'hF;
        r_blue <=4'hF;
    end
    end
    
    
endmodule
