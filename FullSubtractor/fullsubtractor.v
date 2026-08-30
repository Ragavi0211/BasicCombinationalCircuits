module fullsubtractor(
    input a,      
    input b,      
    input Bin,    
    output D,     
    output Bout   
);
    assign D = a ^ b ^ Bin;
    assign Bout = (~a & b) | (~(a ^ b) & Bin);

endmodule
