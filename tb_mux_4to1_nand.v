`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2025 16:10:27
// Design Name: 
// Module Name: tb_mux_4to1_nand
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


module tb_mux_4to1_nand;
    reg i0, i1, i2, i3;
    reg s0, s1;
    wire y;

    mux_4to1_nand uut (
        .i0(i0), .i1(i1), .i2(i2), .i3(i3),
        .s0(s0), .s1(s1),
        .y(y)
    );

    initial begin
        {i0, i1, i2, i3} = 4'b0101;  // example inputs

        s1 = 0; s0 = 0; #10;
        s1 = 0; s0 = 1; #10;
        s1 = 1; s0 = 0; #10;
        s1 = 1; s0 = 1; #10;

        $finish;
    end
endmodule
