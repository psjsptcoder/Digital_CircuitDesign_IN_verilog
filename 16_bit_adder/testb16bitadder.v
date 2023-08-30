module testb16bitadder;
  reg [15:0]A,B;reg Cin;
  wire [15:0] Out;
  wire Carry,Sign,Parity,Overflow,Zero;
     Sixteenbitadder c1(Zero,Cflag,Cin,Sign,Parity,Overflow,Out,A,B);
     initial begin 
       $dumpfile("16bitadder.vcd");
       $dumpvars(0,testb16bitadder);
       $monitor($time , Zero,Cflag,Cin,Sign,Parity,Overflow,Out,A,B);
       #3 A=16'hA6C3;B=16'hA22E;Cin=1;
       #3 A=16'h36C3;B=16'h022E;Cin=0;
       #3 A=16'hF6C3;B=16'hA22D;Cin=1;
       #3 A=16'hA6F3;B=16'hA42E;Cin=1;
       #3 A=16'h0000;B=16'H0000;Cin=0;
       #3 A=16'h16C3;B=16'hA62E;Cin=0;
     end
endmodule       
