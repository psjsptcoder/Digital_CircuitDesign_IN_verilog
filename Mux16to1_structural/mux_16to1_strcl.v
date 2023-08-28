module mux16to1(in,S,Y);
   wire [3:0] w;input [15:0]in;input [3:0]S;output Y;
   mux4to1 m1(in[3:0],S[1:0],w[0]); //in[MSB:LSB] is very important.
   mux4to1 m2(in[7:4],S[1:0],w[1]);  
   mux4to1 m3(in[11:8],S[1:0],w[2]); 
   mux4to1 m4(in[15:12],S[1:0],w[3]);
   mux4to1 m5(w,S[3:2],Y);
endmodule   
