`timescale 1ns / 1ns
`include "dec4_16.v"

module dec4_16_tb;

reg [3:0]W;
reg En;
output wire [0:15]Y;

dec4_16 uut(.W(W),.En(En),.Y(Y));

initial begin

  $dumpfile("dec4_16_tb.vcd");
  $dumpvars(0, dec4_16_tb);
  W = 4'b0110;
  En =1;
  #20;
  #1 $display("W = %0b En = %0b Y = %0d", W, En, Y);
  if (Y != 6)
        $display(" test failed");
  else
        $display("test completed");
  W = 4'b1110;
  En =1;
  #20;
  #1 $display("W = %0b En = %0b Y = %0d", W, En, Y);
  if (Y != 14)
        $display("test failed");
  else
        $display(" test completed");
   W = 4'b1110;
  En =0;
  #20;
  #1 $display("W = %0b En = %0b Y = %0d", W, En, Y);
  if (Y != 14)
        $display("test failed");
  else
        $display(" test completed");
  W = 4'b1111;
  En =1;
  #20;
  #1 $display("W = %0b En = %0b Y = %0d", W, En, Y);
  if (Y != 15)
        $display("test failed");
  else
        $display(" test completed");
  W = 4'b1000;
  En =1;
  #20;
  #1 $display("W = %0b En = %0b Y = %0d", W, En, Y);
  if (Y != 8)
        $display("test failed");
  else
        $display(" test completed");
  W = 4'b1100;
  En =1;
  #20;
  #1 $display("W = %0b En = %0b Y = %0d", W, En, Y);
  if (Y != 12)
        $display("test failed");
  else
        $display(" test completed");


end

 
   
endmodule