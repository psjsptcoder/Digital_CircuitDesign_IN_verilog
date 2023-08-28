module NAND(z,x,y);
  input x,y;
  wire t;
  output z;
  assign t=x&y;
  assign z=~t;
endmodule
