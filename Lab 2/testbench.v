`timescale 1ns / 1ns

module testbench ();

reg x0, x1, x2, x3;

wire y;

    source lab(y, x0, x1, x2, x3);

    initial begin
        $dumpfile("TimingDiagram.vcd");
        $dumpvars(0, y, x0, x1, x2, x3);

        x3 = 0; x2 = 0; x1 = 0; x0 = 0; #20; 
        x3 = 0; x2 = 0; x1 = 0; x0 = 1; #20; 
        x3 = 0; x2 = 0; x1 = 1; x0 = 0; #20;
        x3 = 0; x2 = 0; x1 = 1; x0 = 1; #20;
        x3 = 0; x2 = 1; x1 = 0; x0 = 0; #20;
        x3 = 0; x2 = 1; x1 = 0; x0 = 1; #20;
        x3 = 0; x2 = 1; x1 = 1; x0 = 0; #20;
        x3 = 0; x2 = 1; x1 = 1; x0 = 1; #20;
        x3 = 1; x2 = 0; x1 = 0; x0 = 0; #20;
        x3 = 1; x2 = 0; x1 = 0; x0 = 1; #20;
        x3 = 1; x2 = 0; x1 = 1; x0 = 0; #20;
        x3 = 1; x2 = 0; x1 = 1; x0 = 1; #20;
        x3 = 1; x2 = 1; x1 = 0; x0 = 0; #20;
        x3 = 1; x2 = 1; x1 = 0; x0 = 1; #20;
        x3 = 1; x2 = 1; x1 = 1; x0 = 0; #20;
        x3 = 1; x2 = 1; x1 = 1; x0 = 1; #20;
        
    end

endmodule //testbench