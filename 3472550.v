`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2021 17:52:24
// Design Name: 
// Module Name: modules
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


module and_gate(
    input [0:0] A,
    input [0:0] B,
    output [0:0] C
    );
    assign C =A & B;
endmodule

module or_gate(
    input [0:0] A,
    input [0:0] B,
    output [0:0] C
    );
    assign C =A | B;
endmodule

module not_gate(
    input [0:0] A,
    output [0:0] B);
    assign B = ~A;
endmodule
