module mux2to1_ckt(Y,I,S0);
     input [1:0]I;input S0;output Y ;
     wire t1,t2,t3;
     NAND N1(t1,S0,S0);
     NAND N2(t2,t1,I[0]);
     NAND N3(t3,S0,I[1]);
     NAND N4(Y,t2,t3);
endmodule
     
     
