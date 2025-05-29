`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2025 09:57:28
// Design Name: 
// Module Name: tb_mux_8to1_using_4to1
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


module tb_mux_8to1_using_4to1;
    reg i0, i1, i2, i3, i4, i5, i6, i7;
    reg s0, s1, s2;
    wire y;

    mux_8to1_using_4to1 uut (
        .i0(i0), .i1(i1), .i2(i2), .i3(i3),
        .i4(i4), .i5(i5), .i6(i6), .i7(i7),
        .s0(s0), .s1(s1), .s2(s2),
        .y(y)
    );

    initial begin
        // Set input pattern to match expected y outputs:
        // i0=0, i1=1, i2=0, i3=1, i4=1, i5=0, i6=1, i7=0
        i0 = 0; i1 = 1; i2 = 0; i3 = 1;
        i4 = 1; i5 = 0; i6 = 1; i7 = 0;

        {s2, s1, s0} = 3'b000; #10;  // expect 0
        {s2, s1, s0} = 3'b001; #10;  // expect 1
        {s2, s1, s0} = 3'b010; #10;  // expect 0
        {s2, s1, s0} = 3'b011; #10;  // expect 1
        {s2, s1, s0} = 3'b100; #10;  // expect 1
        {s2, s1, s0} = 3'b101; #10;  // expect 0
        {s2, s1, s0} = 3'b110; #10;  // expect 1
        {s2, s1, s0} = 3'b111; #10;  // expect 0

        $finish;
    end

    initial begin
        $display("Time\t s2 s1 s0 | y");
        $monitor("%0t\t  %b  %b  %b | %b", $time, s2, s1, s0, y);
    end
endmodule




