module testBmux16to1;
   reg [15:0]in; reg [3:0]S; output Y;
   mux16to1 m1(in,S,Y);
    initial begin
      $dumpfile("mux_16to1_strcl.vcd");
      $dumpvars(0,testBmux16to1);
      $monitor($time ,in,S,Y);
      #3 in=16'hec9a;S=4'b1001;
      #3 in=16'hec9a;S=4'b0100;
      #3 in=16'hec9a;S=4'b0101;
      #3 in=16'hec9a;S=4'b1011;
      #3 in=16'hec9a;S=4'b0001;
      #3 in=16'hec9a;S=4'b1110;
    end
endmodule      
