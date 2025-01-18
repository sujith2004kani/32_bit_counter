`timescale 1ns/1ps
module counter_tb();
localparam CLK_PERIOD=10;   //10ns
reg clk=1'b0;
reg rst=1'b1;
wire [31:0] count;
counter counter_inst(.clk(clk), .rst(rst), .count(count));
initial
begin
    clk=1'b0;
    rst=1'b1;
    rst=#(CLK_PERIOD*10)1'b0;
end
always 
begin
    clk=#(CLK_PERIOD/2)~clk; 
end
endmodule