`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2021 12:15:52 PM
// Design Name: 
// Module Name: gameoverscreen
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


module gameoverscreen(
    input clk,
    input [15:0] Hcount,
    input [15:0] Vcount,
    output reg [3:0] r_red,
    output reg [3:0] r_blue,
    output reg [3:0] r_green
    );
    
    always @(posedge clk) begin
        if(Hcount>=220 && Hcount<320 && Vcount>=110 && Vcount<135) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=220 && Hcount<245 && Vcount>=135 && Vcount<235) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=245 && Hcount<320 && Vcount>=210 && Vcount<235) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=295 && Hcount<320 && Vcount>=160 && Vcount<210) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=270 && Hcount<295 && Vcount>=160 && Vcount<185) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        //A
        else if(Hcount>=345 && Hcount<370 && Vcount>=110 && Vcount<235) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=370 && Hcount<420 && Vcount>=110 && Vcount<135) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=370 && Hcount<420 && Vcount>=160 && Vcount<185) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=420 && Hcount<445 && Vcount>=110 && Vcount<235) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        //M
        else if(Hcount>=470 && Hcount<495 && Vcount>=110 && Vcount<235) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=495 && Hcount<570 && Vcount>=110 && Vcount<135) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=520 && Hcount<545 && Vcount>=135 && Vcount<185) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=570 && Hcount<595 && Vcount>=110 && Vcount<235) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        //E
        else if(Hcount>=620 && Hcount<645 && Vcount>=110 && Vcount<235) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=645 && Hcount<720 && Vcount>=110 && Vcount<135) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=645 && Hcount<720 && Vcount>=160 && Vcount<185) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=645 && Hcount<720 && Vcount>=210 && Vcount<235) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        //O
        else if(Hcount>=245 && Hcount<270 && Vcount>=260 && Vcount<385) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=270 && Hcount<320 && Vcount>=260 && Vcount<285) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=270 && Hcount<320 && Vcount>=360 && Vcount<385) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=320 && Hcount<345 && Vcount>=260 && Vcount<385) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end 
        //V
        else if(Hcount>=370 && Hcount<395 && Vcount>=260 && Vcount<335) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=370 && Hcount<405 && Vcount>=335 && Vcount<345) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=380 && Hcount<415 && Vcount>=345 && Vcount<355) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=390 && Hcount<450 && Vcount>=355 && Vcount<365) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=395 && Hcount<440 && Vcount>=365 && Vcount<375) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=405 && Hcount<430 && Vcount>=375 && Vcount<385) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=425 && Hcount<460 && Vcount>=345 && Vcount<355) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=435 && Hcount<470 && Vcount>=335 && Vcount<345) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=445 && Hcount<470 && Vcount>=260 && Vcount<335) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        //E
        else if(Hcount>=495 && Hcount<520 && Vcount>=260 && Vcount<385) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=520 && Hcount<595 && Vcount>=260 && Vcount<285) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=520 && Hcount<595 && Vcount>=310 && Vcount<335) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=520 && Hcount<595 && Vcount>=360 && Vcount<385) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        //R
        else if(Hcount>=620 && Hcount<645 && Vcount>=260 && Vcount<385) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=645 && Hcount<720 && Vcount>=260 && Vcount<285) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=695 && Hcount<720 && Vcount>=285 && Vcount<335) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=645 && Hcount<695 && Vcount>=310 && Vcount<335) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=655 && Hcount<680 && Vcount>=335 && Vcount<345) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=665 && Hcount<690 && Vcount>=345 && Vcount<355) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=675 && Hcount<700 && Vcount>=355 && Vcount<365) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=685 && Hcount<710 && Vcount>=365 && Vcount<375) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else if(Hcount>=695 && Hcount<720 && Vcount>=375 && Vcount<385) begin
            r_red<=4'hF;
            r_blue<=4'hF;
            r_green<=4'hF;
        end
        else begin
            r_red<=4'h0;
            r_blue<=4'h0;
            r_green<=4'h0;
        end
    end
    
endmodule
