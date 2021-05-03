`timescale 1ns / 1ns

module lab1_1 ();

reg x,y,z;

wire o;

    lab1 lab(o,x,y,z);

initial begin
    $dumpfile("TimingDiagram.vcd");
	$dumpvars(0, o, x, y, z);

x = 0;  y = 0; z = 0; #20;
x = 0;  y = 0; z = 1; #20;
x = 0;  y = 1; z = 0; #20;
x = 0;  y = 1; z = 1; #20;
x = 1;  y = 0; z = 0; #20;
x = 1;  y = 0; z = 1; #20;
x = 1;  y = 1; z = 0; #20;
x = 1;  y = 1; z = 1; #20;
end

endmodule //lab1_1