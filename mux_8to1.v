`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2025 15:30:06
// Design Name: 
// Module Name: mux_8to1
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


    module mux_8to1(
    input i0, i1, i2, i3, i4, i5, i6, i7,
    input s0, s1, s2,
    output y
);
    wire n0, n1, n2;
    wire w0, w1, w2, w3, w4, w5, w6, w7;

    not (n0, s0);
    not (n1, s1);
    not (n2, s2);

    and (w0, i0, n2, n1, n0);
    and (w1, i1, n2, n1, s0);
    and (w2, i2, n2, s1, n0);
    and (w3, i3, n2, s1, s0);
    and (w4, i4, s2, n1, n0);
    and (w5, i5, s2, n1, s0);
    and (w6, i6, s2, s1, n0);
    and (w7, i7, s2, s1, s0);

    or (y, w0, w1, w2, w3, w4, w5, w6, w7);
endmodule

