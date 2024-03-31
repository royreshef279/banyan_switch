`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2024 04:56:53 PM
// Design Name: 
// Module Name: switch_tb
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


module switch_tb();
reg [3:0] SEL;
reg [7:0] IN0,IN1,IN2,IN3;
wire [7:0] OUT0,OUT1,OUT2,OUT3;

switch_4_by_4 dut(
    .sel(SEL),
    .in0(IN0),
    .in1(IN1),
    .in2(IN2),
    .in3(IN3),
    .out0(OUT0),
    .out1(OUT1),
    .out2(OUT2),
    .out3(OUT3)
 );
initial begin
    SEL = 4'b0000;
    IN0 = 8'b10010001; 
    IN1 = 8'b01010100;
    IN2 = 8'b10000000; 
    IN3 = 8'b01010101;
    while (SEL < 4'b1111) begin
        #10; 
        SEL = SEL + 1; 
    end

    #10;
    $stop; 
end
endmodule