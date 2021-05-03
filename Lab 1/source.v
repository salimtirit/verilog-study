`timescale 1ns / 1ns

module lab1 (o,x,y,z);
    input x,y,z;
    output o;

    wire x_not, y_not, z_not;
    
    not(x_not,x);
    not(y_not,y);
    not(z_not,z);

    wire xy_not, x_noty, x_notyz_not;
    
    and(xy_not,x,y_not);
    and(x_noty,x_not,y);
    and(x_notyz_not,x_noty,z_not);

    or(o,x_notyz_not,xy_not);

endmodule //lab1