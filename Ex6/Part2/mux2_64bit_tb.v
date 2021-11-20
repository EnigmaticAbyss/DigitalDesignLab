`timescale 1ns / 1ns
`include "mux2_64bit.v"

module mux2_64bit_tb;

reg [63:0]w0, w1;
reg s;
wire [63:0]f;

mux2_64bit uut(.w0(w0),.w1(w1),.s(s),.f(f));

initial begin

  $dumpfile("mux2_64bit_tb.vcd");
  $dumpvars(0, mux2_64bit_tb);
  w0=64'b110100;
  w1=64'b101010;
  s = 1;
  #20;
  #1 $display("w0 = %0b w1 = %0b s = %0b f = %0b", w0, w1, s, f);
  if (f != w1 )
        $display(" test failed");
  else
        $display("test completed");

  w0=64'b110100;
  w1=64'b101010;
  s = 0;
  #20;
  #1 $display("w0 = %0b w1 = %0b s = %0b f = %0b", w0, w1, s, f);
  if (f != w0)
        $display("test failed");
  else
        $display(" test completed");
 


end

 
   
endmodule