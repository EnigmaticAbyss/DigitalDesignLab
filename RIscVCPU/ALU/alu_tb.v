`timescale 1ns/1ns
`include "alu.v"

module alu_tb;
    reg [63:0] X, Y; 
    reg [3:0] aluControl;
    wire [63:0] aluResult;
    wire zero;
    reg clk;
   
    alu alu_instance(X, Y, aluControl, aluResult, zero);
   always #5 clk <= (!clk);
    initial begin
        clk <= 0;
        $dumpfile("alu_tb.vcd");
        $dumpvars(0, alu_tb);

        $display("AND unit testing");
        aluControl <= 4'b0000;
        @(posedge clk); X = 64'h0000AAAA; Y = 64'h00000110; #1 $display("%4h & %4h = %4h", X, Y, aluResult);
        @(posedge clk); X = 64'hFFFFFFFF; Y = 64'h01010101; #1 $display("%4h & %4h = %4h", X, Y, aluResult);
        @(posedge clk); X = 64'b11110010; Y = 64'b01010101; #1 $display("%0b & %0b = %0b", X, Y, aluResult);
        @(posedge clk); X = 64'd6; Y = 64'd3; #1 $display("%4d & %4d = %4d", X, Y, aluResult);
        #10

        $display("\nOR unit testing");
        aluControl <= 4'b0001;
        @(posedge clk); X = 64'h0000AAAA; Y = 64'hAAAA0000; #1 $display("%4h | %4h = %4h", X, Y, aluResult);
        @(posedge clk); X = 64'h11001100; Y = 64'h01010101; #1 $display("%4h | %4h = %4h", X, Y, aluResult);
        @(posedge clk); X = 64'b11110010; Y = 64'b01010101; #1 $display("%0b | %0b = %0b", X, Y, aluResult);
        @(posedge clk); X = 64'd6; Y = 64'd3; #1 $display("%4d | %4d = %4d", X, Y, aluResult);
        #10

        $display("\nAddition unit testing");
        aluControl <= 4'b0010;
        @(posedge clk); X = 64'd123; Y = 64'd321; #1 $display("%4d + %4d = %4d", X, Y, aluResult);
        @(posedge clk); X = 64'd750; Y = 64'd250; #1 $display("%4d + %4d = %4d", X, Y, aluResult);
        @(posedge clk); X = 64'b11110010; Y = 64'b01010101; #1 $display("%0b + %0b = %0b", X, Y, aluResult);
        @(posedge clk); X = 64'd6; Y = 64'd3; #1 $display("%4d + %4d = %4d", X, Y, aluResult);
        #10

        $display("\nSubtraction unit testing");
        aluControl <= 4'b0110;
        @(posedge clk); X = 64'd128; Y = 64'd64; #1 $display("%4d - %4d = %4d", X, Y, aluResult);
        @(posedge clk); X = 64'd12345; Y = 64'd2345; #1 $display("%4d - %4d = %4d", X, Y, aluResult);
        @(posedge clk); X = 64'b11110010; Y = 64'b01010101; #1 $display("%0b - %0b = %0b", X, Y, aluResult);
        @(posedge clk); X = 64'd6; Y = 64'd3; #1 $display("%4d - %4d = %4d", X, Y, aluResult);

        #20 $finish;
    end
endmodule