module fulladdertb;
   reg a,b,Cin;
   wire F,Cy;
   fulladder_ckt ckt(F,Cy,Cin,a,b);
     initial begin 
           $dumpfile("fulladder_ckt.vcd");
           $dumpvars(0,fulladdertb);
           $monitor(F,Cy,Cin,a,b,);
         #3 Cin=0;a=1;b=1;
         #3 Cin=0;a=1;b=0;        
         #3 Cin=0;a=0;b=0;
         #3 Cin=1;a=1;b=1;
         #3 Cin=1;a=0;b=1;
     end
endmodule          
