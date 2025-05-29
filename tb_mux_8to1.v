`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2025 15:33:08
// Design Name: 
// Module Name: tb_mux_8to1
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


module tb_mux_8to1;
    reg i0, i1, i2, i3, i4, i5, i6, i7;
    reg s0, s1, s2;
    wire y;

    mux_8to1 uut (
        .i0(i0), .i1(i1), .i2(i2), .i3(i3),
        .i4(i4), .i5(i5), .i6(i6), .i7(i7),
        .s0(s0), .s1(s1), .s2(s2),
        .y(y)
    );

    initial begin
        {i0, i1, i2, i3, i4, i5, i6, i7} = 8'b10101010;

        s2 = 0; s1 = 0; s0 = 0; #10;
        s2 = 0; s1 = 0; s0 = 1; #10;
        s2 = 0; s1 = 1; s0 = 0; #10;
        s2 = 0; s1 = 1; s0 = 1; #10;
        s2 = 1; s1 = 0; s0 = 0; #10;
        s2 = 1; s1 = 0; s0 = 1; #10;
        s2 = 1; s1 = 1; s0 = 0; #10;
        s2 = 1; s1 = 1; s0 = 1; #10;

        $finish;
    end

    
endmodule
