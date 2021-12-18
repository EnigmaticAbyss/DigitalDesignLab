## Instruction Memory
![Instruction Memory](https://github.com/EnigmaticAbyss/DigitalDesignLab/raw/main/RIscVCPU/InstructionMemory/instruction_memory.png)



The instruction memory need only provide read access because the datapath does not write instructions.

Since the instruction memory only reads, we treat it as combinational logic:

the output at any time reflects the contents of the location specified by the address input, and no read control signal is needed. (We will need to write the instruction memory when we load the program; this is not hard to add, and we ignore it for simplicity.)

For initzialising RAM we use [this file](https://github.com/EnigmaticAbyss/DigitalDesignLab/raw/main/RIscVCPU/InstructionMemory/instruction_memory_tb.dat).
## Test bench

check out the [gtkwave file](https://github.com/EnigmaticAbyss/DigitalDesignLab/raw/main/RIscVCPU/InstructionMemory/instruction_memorygtk.png) it will completely guide you.
