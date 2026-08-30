module fulladder(
    input a,      
    input b,      
    input cin,    
    output S,    
    output Cout   
);

    
    assign S    = a ^ b ^ cin;
    assign Cout = (a & b) | (b & cin) | (a & cin);

endmodule
