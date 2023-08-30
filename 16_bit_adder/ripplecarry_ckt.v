module ripplecarry_ckt(S,C_out,C_in,A,B);
     input  [3:0]A,B;
     input  C_in;
     output [3:0]S;
     output C_out;
     wire   [2:0]t;     
    fulladder_ckt ckt1(S[0],t[0],C_in,A[0],B[0]);
    fulladder_ckt ckt2(S[1],t[1],t[0],A[1],B[1]);
    fulladder_ckt ckt3(S[2],t[2],t[1],A[2],B[2]);
    fulladder_ckt ckt4(S[3],C_out,t[2],A[3],B[3]);    
endmodule     
     
