`timescale 1ns / 1ns

`include "mux.v"

module mux_tb;
    reg clk;
    reg[ 31:0] A, B;
    wire [31:0] out;
    reg selection;

    mux mux_instance (A, B, selection , out);
    always #5 clk <= (!clk);
    initial begin
      clk <= 0;
      $dumpfile("mux_tb.vcd");
      $dumpvars(0, mux_tb);

      @(posedge clk); A = 0; B = 32'h12345678; selection <= 0; display; @(posedge clk); selection <= 1; display;

      @(posedge clk); A = 0; B = 32'h87654321; selection <= 0; display; @(posedge clk); selection <= 1; display;

      @(posedge clk);  A = 32'h11112222; B=0; selection <= 0; display; @(posedge clk); selection <= 1; display;
      
      @(posedge clk);  A = 32'd122; B=0; selection <= 0;$display("A = %0d B = %0d selection = %0b out = %0d", A, B, selection, out); @(posedge clk); selection <= 1; $display("A = %0d B = %0d selection = %0b out = %0d", A, B, selection, out);

      @(posedge clk);  A = 32'b11110000; B=0; selection <= 0; $display("A = %0b B = %0b selection = %0b out = %0b", A, B, selection, out); @(posedge clk); selection <= 1; $display("A = %0b B = %0b selection = %0b out = %0b", A, B, selection, out);
      #20 $finish;
    end

    task display;
      #1 $display("A = %0h B = %0h selection = %0b out = %0h", A, B, selection, out);
    endtask
endmodule 