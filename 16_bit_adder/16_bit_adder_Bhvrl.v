module bit_adder(Zero,Carry,Sign,Parity,Overflow,Out,A,B);
  output Zero,Carry,Sign,Parity,Overflow;
  output [15:0] Out;
  input [15:0] A,B;
    assign {Carry,Out}=A+B;
     assign Sign= Out[15];
     assign Parity=~^Out;
     assign Zero=~|Out;
     assign Overflow=(A[15]&B[15]&~Out[15])|(~A[15]&~B[15]&Out[15]);
endmodule     
