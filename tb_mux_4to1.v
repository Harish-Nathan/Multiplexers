`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2025 15:22:25
// Design Name: 
// Module Name: tb_mux_4to1
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


module tb_mux_4to1;
    reg i0, i1, i2, i3;
    reg s0, s1;
    wire y;

    // Instantiate the mux_4to1
    mux_4to1 uut (
        .i0(i0), .i1(i1), .i2(i2), .i3(i3),
        .s0(s0), .s1(s1),
        .y(y)
    );

    initial begin

        i0 = 1;
        i1 = 0; 
        i2 = 1; 
        i3 = 0;

        s0 = 0; s1 = 0; #10; 
        s0 = 0; s1 = 1; #10;
        s0 = 1; s1 = 0; #10;
        s0 = 1; s1 = 1; #10; 

        $finish;
    end

    initial begin
        $display("Time\t s1 s0 | y");
        $monitor("%0t\t  %b  %b | %b", $time, s1, s0, y);
    end
endmodule
