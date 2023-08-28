module ripplecarry_ckt(S0,S1,S2,S3,C_out,C_in,a0,a1,a2,a3,b0,b1,b2,b3);
     input  a0,a1,a2,a3,b0,b1,b2,b3,C_in;
     output S0,S1,S2,S3,C_out;
     wire   t0,t1,t2;
     
    fulladder_ckt ckt1(S0,t0,C_in,a0,b0);
    fulladder_ckt ckt2(S1,t1,t0,a1,b1);
    fulladder_ckt ckt3(S2,t2,t1,a2,b2);
    fulladder_ckt ckt4(S3,C_out,t2,a3,b3);
    
endmodule     
     
