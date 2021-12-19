module Vertical_counter(
input clk_25MHz,
input enable_V_Counter,
output reg [15:0] V_count_value=0
);

always @(posedge clk_25MHz) begin
if (enable_V_Counter==1'b1) begin
    if(V_count_value<524 && enable_V_Counter==1'b1) begin
        V_count_value<=V_count_value+1;
    end
    else
        V_count_value<=0;
    end
end
endmodule