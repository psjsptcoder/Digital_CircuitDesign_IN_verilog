module Sixteenbitadder(Zero,Cflag,Cin,Sign,Parity,Overflow,S,A,B);
  input [15:0]A,B;
  input Cin;
  output [15:0] S;output Cflag;
  wire [2:0] Carry;
  output Zero,Sign,Parity,Overflow;
    ripplecarry_ckt c1(S[3:0],Carry[0],Cin,A[3:0],B[3:0]);
    ripplecarry_ckt c2(S[7:4],Carry[1],Carry[0],A[7:4],B[7:4]);
    ripplecarry_ckt c3(S[11:8],Carry[2],Carry[1],A[11:8],B[11:8]);
    ripplecarry_ckt c4(S[15:12],Cflag,Carry[2],A[15:12],B[15:12]);
    assign Sign= S[15];
    assign Parity=~^S;
    assign Zero=~|S;
    assign Overflow=(A[15]&B[15]&~S[15])|(~A[15]&~B[15]&S[15]);
endmodule    
