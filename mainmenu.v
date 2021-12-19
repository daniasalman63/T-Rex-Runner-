`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2021 01:45:09 PM
// Design Name: 
// Module Name: mainmenu
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


module mainmenu(
    input clk,
    input [15:0] Hcount,
    input [15:0] Vcount,
    output reg [3:0] r_red,
    output reg [3:0] r_blue,
    output reg [3:0] r_green
    );
    
    always @(posedge clk) begin
        if(Hcount>=310 && Hcount<620 && Vcount>=220 && Vcount<300) begin
            if(Hcount>=320 && Hcount<370 && Vcount>=235 && Vcount<245) begin
                r_red<=4'h0;
                r_blue<=4'h0;
                r_green<=4'h0;
            end
            else if(Hcount>=320 && Hcount<330 && Vcount>=245 && Vcount<265) begin
                r_red<=4'h0;
                r_blue<=4'h0;
                r_green<=4'h0;
            end
            else if(Hcount>=330 && Hcount<370 && Vcount>=255 && Vcount<265) begin
                r_red<=4'h0;
                r_blue<=4'h0;
                r_green<=4'h0;
            end
            else if(Hcount>=360 && Hcount<370 && Vcount>=265 && Vcount<285) begin
                r_red<=4'h0;
                r_blue<=4'h0;
                r_green<=4'h0;
            end
            else if(Hcount>=320 && Hcount<370 && Vcount>=275 && Vcount<285) begin
                r_red<=4'h0;
                r_blue<=4'h0;
                r_green<=4'h0;
            end
            //T
            else if(Hcount>=380 && Hcount<430 && Vcount>=235 && Vcount<245) begin
                r_red<=4'h0;
                r_blue<=4'h0;
                r_green<=4'h0;
            end
            else if(Hcount>=400 && Hcount<410 && Vcount>=245 && Vcount<285) begin
                r_red<=4'h0;
                r_blue<=4'h0;
                r_green<=4'h0;
            end
            //A
            else if(Hcount>=440 && Hcount<450 && Vcount>=235 && Vcount<285) begin
                r_red<=4'h0;
                r_blue<=4'h0;
                r_green<=4'h0;
            end
            else if(Hcount>=450 && Hcount<485 && Vcount>=235 && Vcount<245) begin
                r_red<=4'h0;
                r_blue<=4'h0;
                r_green<=4'h0;
            end
            else if(Hcount>=475 && Hcount<485 && Vcount>=245 && Vcount<285) begin
                r_red<=4'h0;
                r_blue<=4'h0;
                r_green<=4'h0;
            end
            else if(Hcount>=450 && Hcount<475 && Vcount>=255 && Vcount<265) begin
                r_red<=4'h0;
                r_blue<=4'h0;
                r_green<=4'h0;
            end
            //r
            else if(Hcount>=495 && Hcount<505 && Vcount>=235 && Vcount<285) begin
                r_red<=4'h0;
                r_blue<=4'h0;
                r_green<=4'h0;
            end
            else if(Hcount>=505 && Hcount<515 && Vcount>=245 && Vcount<255) begin
                r_red<=4'h0;
                r_blue<=4'h0;
                r_green<=4'h0;
            end
            else if(Hcount>=510 && Hcount<520 && Vcount>=240 && Vcount<250) begin
                r_red<=4'h0;
                r_blue<=4'h0;
                r_green<=4'h0;
            end
            else if(Hcount>=515 && Hcount<540 && Vcount>=235 && Vcount<245) begin
                r_red<=4'h0;
                r_blue<=4'h0;
                r_green<=4'h0;
            end
            //T
            else if(Hcount>=550 && Hcount<600 && Vcount>=235 && Vcount<245) begin
                r_red<=4'h0;
                r_blue<=4'h0;
                r_green<=4'h0;
            end
            else if(Hcount>=570 && Hcount<580 && Vcount>=245 && Vcount<285) begin
                r_red<=4'h0;
                r_blue<=4'h0;
                r_green<=4'h0;
            end
            else begin
                r_red<=4'hF;
                r_blue<=4'hF;
                r_green<=4'hF;
            end
        end
        else begin
            r_red<=4'h0;
            r_blue<=4'h0;
            r_green<=4'h0;
        end
    end
endmodule
