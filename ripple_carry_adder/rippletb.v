module rippletb;
  reg  a0,a1,a2,a3,b0,b1,b2,b3,C_in;
  wire S0,S1,S2,S3,C_Out;     
  ripplecarry_ckt  ckt(S0,S1,S2,S3,C_out,C_in,a0,a1,a2,a3,b0,b1,b2,b3);
      initial begin
       
           $dumpfile("ripplecarry_ckt.vcd");
           $dumpvars(0,rippletb);
           $monitor(S0,S1,S2,S3,C_out,C_in,a0,a1,a2,a3,b0,b1,b2,b3);
   
         #3 C_in=1;a0=0;a1=1;a2=1;a3=0;b0=1;b1=1;b2=0;b3=0;
         #5 C_in=0;a0=0;a1=1;a2=0;a3=1;b0=0;b1=0;b2=1;b3=0;
      end
   endmodule 
