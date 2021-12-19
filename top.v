`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2021 07:45:33 AM
// Design Name: 
// Module Name: top
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


module top(
    input clk,
    input jumpButton,
    input duckButton,
    input start,
    output collided,
    output Hsynq,
    output Vsynq,
    output run,
    output dead,
    input resetButton,
    output [3:0] Red,
    output [3:0] Green,
    output [3:0] Blue
    );
    
    //clk div value found using (100MHz/2*required frequency)-1
    wire clk_25M;
    wire clk_animate; //animates dino's legs
    wire enable_V_Counter;
    wire [15:0] Hcount;
    wire [15:0] Vcount;
    //registers for dino
    wire [3:0] r_red;
    wire [3:0] r_green;
    wire [3:0] r_blue;
    
    //registers for obstacle
    wire [3:0] o_red;
    wire [3:0] o_green;
    wire [3:0] o_blue;
    
    //register for gameover screen
    wire [3:0] g_red;
    wire [3:0] g_green;
    wire [3:0] g_blue;
    
    // register for main menu
    wire [3:0] m_red;
    wire [3:0] m_green;
    wire [3:0] m_blue;
    
    wire [3:0] c_red;
    wire [3:0] c_green;
    wire [3:0] c_blue;
    
    wire [2:0] gameState;
    
    wire collision;
    reg reset;
    integer ox;
    wire clk_score;
    clock_divider #(.div_val(12499999)) animate(clk, clk_animate);
//    clock_divider #(.div_val(49999999)) scoreclock(clk, clk_score);
    clock_divider VGA_clock_gen(clk, clk_25M);
    Horizontal_counter VGAHoriz(clk_25M, enable_V_Counter, Hcount);
    Vertical_counter VGAVerti(clk_25M, enable_V_Counter, Vcount);
    
    assign Hsynq = (Hcount<96)? 1'b1:1'b0;
    assign Vsynq = (Vcount<2)? 1'b1:1'b0;

    dino Trexstate(clk_25M, clk_animate, jumpButton, duckButton, gameState, Hcount, Vcount, r_red, r_blue, r_green);
    obstacle cactusState(clk_25M, jumpButton, resetButton, gameState, Hcount, Vcount, collided, o_red, o_blue, o_green);
    gameFSM gamestate(clk_25M, start, collided, resetButton, gameState, run, dead);
    gameoverscreen deadstatescreen(clk_25M, Hcount, Vcount, g_red, g_blue, g_green);
    mainmenu mainscreen(clk_25M, Hcount, Vcount, m_red, m_blue, m_green);
//    clouds cloud(clk_25M, Hcount, Vcount, c_red, c_blue, c_green);
////    scoreboard score(clk_score, resetButton, Hcount, Vcount, s_red, s_blue, s_green);

    
//    (Hcount < 784 && Hcount > 143 && Vcount <515 && Vcount > 34)
    
    //assign Red = (Hcount >= 195 && Hcount < 305 && Vcount >=275 && Vcount < 385)? r_red: ((Hcount>=490 && Hcount<495 && Vcount>=300 && Vcount<350)?o_red:4'h0);
    assign Red = (Hcount < 784 && Hcount > 143 && Vcount <515 && Vcount > 34 && gameState==3'b000)?m_red
//    :(Hcount<605 && Hcount>=595 && Vcount>=160 && Vcount<185 && gameState==3'b001)?c_red
    :(Hcount < 784 && Hcount > 143 && Vcount <515 && Vcount > 34 && gameState==3'b100)? g_red
    :(Hcount>=330 && Hcount<784 && Vcount>=275 && Vcount<385 && jumpButton==1'b1 && duckButton==1'b0 && gameState==3'b001)?o_red
    :(Hcount>=305 && Hcount<784 && Vcount>=275 && Vcount<385 && jumpButton==1'b1 && duckButton==1'b1 && gameState==3'b001)?o_red
    :(Hcount>=143 && Hcount<784 && Vcount>=275 && Vcount<385 && jumpButton==1'b0 && gameState==3'b001)?o_red
    :(Hcount >= 195 && Hcount < 330 && Vcount >=275 && Vcount < 385 && gameState==3'b001)? r_red
    : ((Hcount>=145 && Hcount<784 && Vcount>=385 && Vcount<390 && gameState==3'b001)? o_red
    :(Hcount >= 195 && Hcount < 305 && Vcount >=155 && Vcount < 265 && gameState ==3'b001)?r_red
    :(Hcount < 784 && Hcount > 143 && Vcount <515 && Vcount > 34)? 4'hF:4'h0);
    
    assign Green = (Hcount < 784 && Hcount > 143 && Vcount <515 && Vcount > 34 && gameState==3'b000)?m_green
//    :(Hcount<605 && Hcount>=595 && Vcount>=160 && Vcount<185 && gameState==3'b001)?c_green
    :(Hcount < 784 && Hcount > 143 && Vcount <515 && Vcount > 34 && gameState==3'b100)? g_green
    :(Hcount>=330 && Hcount<784 && Vcount>=275 && Vcount<385 && jumpButton==1'b1 && duckButton==1'b0 && gameState==3'b001)?o_green
    :(Hcount>=305 && Hcount<784 && Vcount>=275 && Vcount<385 && jumpButton==1'b1 && duckButton==1'b1 && gameState==3'b001)?o_green
    :(Hcount>=143 && Hcount<784 && Vcount>=275 && Vcount<385 && jumpButton==1'b0 && gameState==3'b001)?o_green
    :(Hcount >= 195 && Hcount < 330 && Vcount >=275 && Vcount < 385 && gameState==3'b001)? r_green
    : ((Hcount>=145 && Hcount<784 && Vcount>=385 && Vcount<390 && gameState==3'b001)? o_green
    :(Hcount >= 195 && Hcount < 305 && Vcount >=155 && Vcount < 265 && gameState ==3'b001)?r_green
    :(Hcount < 784 && Hcount > 143 && Vcount <515 && Vcount > 34)? 4'hF:4'h0);
    
    assign Blue = (Hcount < 784 && Hcount > 143 && Vcount <515 && Vcount > 34 && gameState==3'b000)?m_blue
//    :(Hcount<605 && Hcount>=595 && Vcount>=160 && Vcount<185 && gameState==3'b001)?c_blue
    :(Hcount < 784 && Hcount > 143 && Vcount <515 && Vcount > 34 && gameState==3'b100)?g_blue //assigns the dead screen
    :(Hcount>=330 && Hcount<784 && Vcount>=275 && Vcount<385 && jumpButton==1'b1 && duckButton==1'b0 && gameState==3'b001)?o_blue //if the obstacle is near and you are required to jump but u duck instead, game is over, collided is true
    :(Hcount>=305 && Hcount<784 && Vcount>=275 && Vcount<385 && jumpButton==1'b1 && duckButton==1'b1 && gameState==3'b001)?o_blue // if the obstacle is near and u dont jump, game is over, collided is true
    :(Hcount>=143 && Hcount<784 && Vcount>=275 && Vcount<385 && jumpButton==1'b0 && gameState==3'b001)?o_blue // when obstacle is near and u jump, collided is false, game is running
    :(Hcount >= 195 && Hcount < 330 && Vcount >=275 && Vcount < 385 && gameState==3'b001)? r_blue // assigns the coordinates of duck state
    : ((Hcount>=145 && Hcount<784 && Vcount>=385 && Vcount<390 && gameState==3'b001)?o_blue // assigns the coordinates of cactus
    :(Hcount >= 195 && Hcount < 305 && Vcount >=155 && Vcount < 265 && gameState==3'b001)?r_blue // assigns the coordinates of dino's default and jump state
    :(Hcount < 784 && Hcount > 143 && Vcount <515 && Vcount > 34)? 4'hF:4'h0); // assigns the remaining white bg / main menu screen for now 
    
endmodule
