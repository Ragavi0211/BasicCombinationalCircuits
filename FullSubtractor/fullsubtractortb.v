`timescale 1ns / 1ps

module fullsubtractortb;


    reg a;
    reg b;
    reg Bin;


    wire D;
    wire Bout;

    fullsubtractor uut (
        .a(a), 
        .b(b), 
        .Bin(Bin), 
        .D(D), 
        .Bout(Bout)
    );

    initial begin
   
        a = 0; b = 0; Bin = 0; #10;
        a = 0; b = 0; Bin = 1; #10;
        a = 0; b = 1; Bin = 0; #10;
        a = 0; b = 1; Bin = 1; #10;
        a = 1; b = 0; Bin = 0; #10;
        a = 1; b = 0; Bin = 1; #10;
        a = 1; b = 1; Bin = 0; #10;
        a = 1; b = 1; Bin = 1; #10;
        
        $finish;
    end
      
endmodule
