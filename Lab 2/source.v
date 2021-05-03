`timescale 1ns/1ns

module mux(I1, I0, V0, V1, V2, V3, O);
    input I1, I0, V0, V1, V2, V3;
    output O;

    reg O;

    always @(I1, I0, V0, V1, V2, V3) 
    begin
        if (I1 == 0 && I0 == 0) begin
            O <= V0;
        end
        else
            if (I1 == 0 && I0  == 1) begin
            O <= V1;
            end
        else 
            if (I1 == 1 && I0 == 0) begin
            O <= V2;
            end
        else
            begin
            O <= V3;   
            end
    end
endmodule //source

module source (y, x0, x1, x2, x3);
    input x0, x1, x2, x3;
    output  y;

    wire w1, w4;

    and(w1, x0, x1);
    
    xor(w4, x0, x1);

    mux myMux(x3, x2, w1, x0, x1, w4, y);
endmodule //source