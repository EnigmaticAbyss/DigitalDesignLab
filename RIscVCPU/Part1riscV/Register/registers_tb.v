`timescale 1ns / 1ns

`include "registers.v"

module registers_tb;  
    reg [4:0] readRegister1, readRegister2, writeRegister;
    reg [63:0] writeData;
    wire [63:0] readData1, readData2;
    reg clk;
    reg regWrite;
    integer i;

  
    registers myregisters(regWrite, readRegister1, readRegister2, writeRegister, writeData, readData1, readData2, clk);
    // initial clk <= 0;
     always #5 clk <= (!clk);
    initial begin
        clk <= 0;
        $dumpfile("registers_tb.vcd");
        $dumpvars(0, registers_tb);

        i = 0;
        while(i <= 15) begin
            @(posedge clk); readRegister1 <= i;  readRegister2 <= i+1;
            i = i+1;
        end

        #15 regWrite <= 1; writeData = 32'h12345678;
        i = 0;
        while(i <= 15) begin
            @(posedge clk); writeRegister <= i;  writeData <= i+1;
            i = i+1;
        end
        #15 readRegister1<=32'hXXXXXXXX; readRegister2<=32'hXXXXXXXX; regWrite<=0;

        i = 0;
        while(i <= 15) begin
            @(posedge clk); readRegister1 <= i;  readRegister2 <= i+1;
            i = i+1;
        end
        #15 $finish;
    end
endmodule