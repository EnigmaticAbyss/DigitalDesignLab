module mux2_64bit (w0,w1,s,f);
 input [63:0]w0, w1;
 input s;
 output [63:0]f;

 assign f=s ? w1 : w0;
endmodule