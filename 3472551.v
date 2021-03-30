`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2021 17:53:39
// Design Name: 
// Module Name: Simulation
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


module F1();
reg A;
reg B;
wire F1;

    wire ab;
    and_gate and_gate1(A,B,ab);
    or_gate or_gate1(A,ab,F1);


initial begin
A=0;    B=0;    #250;
A=0;    B=1;    #250;
A=1;    B=0;    #250;
A=1;    B=1;    #250;
end
endmodule

module F2( );
reg A;
reg B;
wire F2;
    wire a_b;
    wire bNot;
    wire a_bNot;
    or_gate or_gate1(A,B,a_b);
    not_gate not_gate1(B,bNot);
    or_gate or_gate2(A,bNot,a_bNot);
    and_gate and_gate(a_b,a_bNot,F2);
initial begin
A=0;    B=0;    #250;
A=0;    B=1;    #250;
A=1;    B=0;    #250;
A=1;    B=1;    #250;
end
endmodule

module F1_dual( );
    reg A;
    reg B;
    wire F1_dual;
    wire a_b;
    or_gate or1(A,B,a_b);
    and_gate and1(A,a_b,F1_dual);
initial begin
A=0;    B=0;    #250;
A=0;    B=1;    #250;
A=1;    B=0;    #250;
A=1;    B=1;    #250;
end
endmodule
module F3_prime( );
    reg A;
    reg B;
    reg C;
    wire F3_comp;
    wire aNot;
    wire bNot;
    wire aNot_bNot;
    wire cNot;
    wire a_cNot;
    not_gate not1(A,aNot);
    not_gate not2(B,bNot);
    not_gate not3(C,cNot);
    or_gate or1(aNot,bNot,aNot_bNot);
    or_gate or2(A,cNot,a_cNot);
    and_gate and1(a_cNot,aNot_bNot,F3_comp);
initial begin
        A=0;    B=0;    C=0;    #125;
        A=0;    B=0;    C=1;    #125;
        A=0;    B=1;    C=0;    #125;
        A=1;    B=0;    C=0;    #125;
        A=0;    B=1;    C=1;    #125;  
        A=1;    B=0;    C=1;    #125;
        A=1;    B=1;    C=0;    #125;
        A=1;    B=1;    C=1;    #125;
       
    end
endmodule

module F4();
reg a;
reg b;
reg c;
reg d;

wire F4;
    wire cNot;
    wire dNot;
    wire cNot_D;
    wire C_dNot;
    not_gate not1(c,cNot);
    not_gate not2(d,dNot);
    and_gate and1(c,dNot,C_dNot);
    and_gate and2(d,cNot,D_cNot);
    or_gate or1(D_cNot,C_dNot,F4);
initial begin
        a=0;    b=0;    c=0;    d=0;    #50;
        a=0;    b=0;    c=0;    d=1;    #50;
        a=0;    b=0;    c=1;    d=0;    #50;
        a=0;    b=1;    c=0;    d=0;    #50;
        a=1;    b=0;    c=0;    d=0;    #50;
        a=0;    b=0;    c=1;    d=1;    #50; 
        a=0;    b=1;    c=1;    d=0;    #50;  
        a=1;    b=0;    c=1;    d=0;    #50;
        a=1;    b=1;    c=0;    d=0;    #50;
        a=1;    b=0;    c=0;    d=1;    #50;
        a=0;    b=1;    c=0;    d=1;    #50;
        a=0;    b=1;    c=1;    d=1;    #50;
        a=1;    b=0;    c=1;    d=1;    #50;
        a=1;    b=1;    c=0;    d=1;    #50;
        a=1;    b=1;    c=1;    d=0;    #50;
        a=1;    b=1;    c=1;    d=1;    #50;
       
    end
endmodule
