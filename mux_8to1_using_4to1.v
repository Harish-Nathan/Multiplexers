`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2025 09:44:16
// Design Name: 
// Module Name: mux_8to1_using_4to1
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

module mux_2to1(
    input i0, i1, s,
    output reg y
);
    always @(*) begin
        case (s)
            1'b0: y = i0;
            1'b1: y = i1;
            default: y = 0;
        endcase
    end
endmodule



module mux_8to1_using_4to1(
    input i0, i1, i2, i3, i4, i5, i6, i7,
    input s0, s1, s2,
    output y
);
    wire y_low, y_high;

    mux_4to1 mux_lower(
        .i0(i0), .i1(i1), .i2(i2), .i3(i3),
        .s0(s0), .s1(s1),
        .y(y_low)
    );


    mux_4to1 mux_upper(
        .i0(i4), .i1(i5), .i2(i6), .i3(i7),
        .s0(s0), .s1(s1),
        .y(y_high)
    );


    mux_2to1 mux_final(
        .i0(y_low), .i1(y_high),
        .s(s2),
        .y(y)
    );
endmodule




