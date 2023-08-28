module mux4to1(in,S,Y);
   input [3:0]in;input [1:0]S; output Y; wire [1:0]t;
     mux2to1_ckt M1(t[0],in[1:0],S[0]); 
     mux2to1_ckt M2(t[1],in[3:2],S[0]);
     mux2to1_ckt M3(Y,t,S[1]);
endmodule    
