module fulladder_ckt(S,C_out,C_in,a,b);
    input  C_in,a,b;
    output C_out,S;
    wire t1,t2,t3,t4,t5;
    exor_ckt ckt1 (t1,a,b);
    exor_ckt ckt2 (S,t1,C_in);
    assign C_out=a&b|b&C_in|C_in&a;
    //assign t5=t2|t3|t4;
    
endmodule    
