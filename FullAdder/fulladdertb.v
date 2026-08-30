module fulladdertb;

    reg a;
    reg b;
    reg cin;
    wire S;
    wire Cout;

    fulladder dut (
        .a(a),
        .b(b),
        .cin(cin),
        .S(S),
        .Cout(Cout)
    );

    initial begin
    

    
        a = 0; b = 0; cin = 0; #10;
        a = 0; b = 0; cin = 1; #10;
        a = 0; b = 1; cin = 0; #10;
        a = 0; b = 1; cin = 1; #10;
        a = 1; b = 0; cin = 0; #10;
        a = 1; b = 0; cin = 1; #10;
        a = 1; b = 1; cin = 0; #10;
        a = 1; b = 1; cin = 1; #10;

       
        $finish;
    end

endmodule
