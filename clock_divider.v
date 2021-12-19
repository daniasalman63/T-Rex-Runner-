module clock_divider #(parameter div_val=1)(
    input clk,
    output reg clk_div = 0
    );
    integer counter_val=0;
    always @(posedge clk) 
    begin
    if (counter_val==div_val)
    counter_val<=0;
    else 
    counter_val<=counter_val+1;
    end
    always @(posedge clk) begin
    if(counter_val==div_val) 
    clk_div<=~clk_div;
    else
    clk_div=clk_div;
    end
endmodule


