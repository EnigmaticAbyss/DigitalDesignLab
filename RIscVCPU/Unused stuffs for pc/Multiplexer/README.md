## Multiplexer
![Multiplexer](https://github.com/EnigmaticAbyss/DigitalDesignLab/raw/main/RIscVCPU/ShiftRegister/Multiplexer/multi4to1.png)




This is a four to one multiplexer that is being used in this architecture.
Here is a [link](https://en.wikipedia.org/wiki/Multiplexer) for more information about different types of multiplexer.


## Test bench
```bash
W = 0000 S = 0 f = 0
W = 0001 S = 1 f = 0
W = 0010 S = 2 f = 0
W = 0011 S = 3 f = 0
W = 0100 S = 0 f = 0
W = 0101 S = 1 f = 0
W = 0110 S = 2 f = 1
W = 0111 S = 3 f = 0
W = 1000 S = 0 f = 0
W = 1001 S = 1 f = 0
W = 1010 S = 2 f = 0
W = 1011 S = 3 f = 1
W = 1100 S = 0 f = 0
W = 1101 S = 1 f = 0
W = 1110 S = 2 f = 1
W = 1111 S = 3 f = 1
```