## ALU
![ALU](https://github.com/EnigmaticAbyss/DigitalDesignLab/raw/main/RIscVCPU/ALU/alu.png)



In computing, an arithmetic logic unit (ALU) is a combinational digital circuit that performs arithmetic and bitwise operations on integer binary numbers, check this [link](https://en.wikipedia.org/wiki/Arithmetic_logic_unit) for more information .


## Test bench
```bash
AND unit testing
00000000ffffffff & 0000000001010101 = 0000000001010101
11110010 & 1010101 = 1010000
   6 &    3 =    2

OR unit testing
000000000000aaaa | 00000000aaaa0000 = 00000000aaaaaaaa
0000000011001100 | 0000000001010101 = 0000000011011101
11110010 | 1010101 = 11110111
   6 |    3 =    7

Addition unit testing
 123 +  321 =  444
 750 +  250 = 1000
11110010 + 1010101 = 101000111
   6 +    3 =    9

Subtraction unit testing
 128 -   64 =   64
12345 - 2345 = 10000
11110010 - 1010101 = 10011101
   6 -    3 =    3
```