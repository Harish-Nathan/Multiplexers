`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2025 16:04:21
// Design Name: 
// Module Name: mux_4to1_nand
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


module mux_4to1_nand(
    input i0, i1, i2, i3,
    input s0, s1,
    output y
);
    wire ns0, ns1;
    wire n0, n1, n2, n3;
    wire o1, o2;

    nand(ns0, s0, s0);
    nand(ns1, s1, s1);

    nand(n0, i0, ns1, ns0);
    nand(n1, i1, ns1, s0);
    nand(n2, i2, s1, ns0);
    nand(n3, i3, s1, s0);

   // nand(o1, n0 , n1);
    //nand(o2, n2, n3);

    nand(y, n0,n1,n2,n3);
endmodule   

