## Immediate Generation
![ImmGen](https://github.com/EnigmaticAbyss/DigitalDesignLab/raw/main/RIscVCPU/ImmGen/imm_gen.png)



The immediate generation unit (ImmGen) has a 32-bit instruction as input that selects a 12-bit field for load, store, and branch if equal that is sign-extended into a 64-bit result appearing on the output.


## Test bench
```bash
immOut = 0000000000000000000000000000000000000000000000000000000011110000
immOut = 0000000000000000000000000000000000000000000000000000000011110000
immOut = 0000000000000000000000000000000000000000000000000000011111010000
```