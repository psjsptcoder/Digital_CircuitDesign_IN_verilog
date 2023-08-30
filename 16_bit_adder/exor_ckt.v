module exor_ckt(S,a,b);
   input a,b;
   output S;
   wire t1,t2,t3;
   NAND n1(t1,a,b);
   NAND n2(t2,t1,a);
   NAND n3(t3,t1,b);
   NAND n4(S,t2,t3);
endmodule      
