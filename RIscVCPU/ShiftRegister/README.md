## ShiftRegister
![ShiftRegister](https://github.com/EnigmaticAbyss/DigitalDesignLab/raw/main/RIscVCPU/ShiftRegister/4-Bit_SIPO_Shift_Register.png)



A shift register is a type of digital circuit using a cascade of flip-flops where the output of one flip-flop is connected to the input of the next. They share a single clock signal, which causes the data stored in the system to shift from one location to the next. By connecting the last flip-flop back to the first, the data can cycle within the shifters for extended periods, and in this form they were used as a form of computer memory. In this role they are very similar to the earlier delay-line memory systems and were widely used in the late 1960s and early 1970s to replace that form of memory. 
Here is a [link](https://en.wikipedia.org/wiki/Shift_register) for more information about ShiftRegister.


## Test bench
```bash
For testing this program do following codes in cmd:
iverilog -o shift_register_tb.vvp shift_register_tb.v
vvp shift_register_tb.vvp
gtkwave
```