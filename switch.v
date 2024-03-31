`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2024 04:46:16 PM
// Design Name: 
// Module Name: switch
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
module switch_4_by_4(
    input [7:0] in0,in1,in2,in3,
    input [3:0] sel,
    output [7:0] out0,out1,out2,out3
);
wire [7:0] sw1_out0,sw1_out1,sw2_out0,sw2_out1;
switch_2_by_2 sw1(in0,in1,sw1_out0,sw1_out1,sel[0]);
switch_2_by_2 sw2(in2,in3,sw2_out0,sw2_out1,sel[1]);
switch_2_by_2 sw3(sw1_out0,sw2_out0,out0,out1,sel[2]);
switch_2_by_2 sw4(sw1_out1,sw2_out1,out2,out3,sel[3]);
endmodule



module switch_2_by_2(
    input [7:0] in0,
    input [7:0] in1,
    output reg [7:0] out0,
    output reg [7:0] out1,
    input sel
    );
    always @(*) begin
        case(sel) 
            0: begin
                out0 = in0;
                out1 = in1;
            end
            1: begin
                out0 = in1;
                out1 = in0;
            end
        endcase
    end
endmodule
