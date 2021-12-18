## Data Memory

The memory unit is a state element with inputs for the address and the write data, and a single output for the read result.

There are separate read and write controls, although only one of these may be asserted on any given clock.

The memory unit needs a read signal, since, unlike the register file, reading the value of an invalid address can cause problems.
![Data Memory ](https://github.com/EnigmaticAbyss/DigitalDesignLab/raw/main/RIscVCPU/DataMemory/data_memory.png)



check  [this gtk picture](https://github.com/EnigmaticAbyss/DigitalDesignLab/raw/main/RIscVCPU/DataMemory/data_memorygtk.png) for more information .

