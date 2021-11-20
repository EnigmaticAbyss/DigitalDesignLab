module dec4_16 (W,En,Y);
 input [3:0]W;
 input En;
 output reg [0:15] Y;
always @(W,En)
case ({En,W})
   5'b10000: Y=4'b0000;
   5'b10001: Y=4'b0001; 
   5'b10010: Y=4'b0010; 
   5'b10011: Y=4'b0011; 
   5'b10100: Y=4'b0100; 
   5'b10101: Y=4'b0101; 
   5'b10110: Y=4'b0110; 
   5'b10111: Y=4'b0111; 
   5'b11000: Y=4'b1000; 
   5'b11001: Y=4'b1001; 
   5'b11010: Y=4'b1010; 
   5'b11100: Y=4'b1100; 
   5'b11101: Y=4'b1101; 
   5'b11110: Y=4'b1110; 
   5'b11111: Y=4'b1111; 
    default: Y=4'b0000;
endcase 
    

endmodule