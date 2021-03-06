## Carry lookahead adder
![adder](https://github.com/EnigmaticAbyss/DigitalDesignLab/raw/main/RIscVCPU/Adder/adder.png)

A carry-lookahead adder (CLA) or fast adder is a type of electronics adder used in digital logic. A carry-lookahead adder improves speed by reducing the amount of time required to determine carry bits.
check this [link](https://en.wikipedia.org/wiki/Carry-lookahead_adder) for more information .


## Test bench
```bash
X=11 X=11 result=110
 11 + 11 = 110
X=1000 X=1000 result=2000
 1000+ 1000 = 2000
X=123 X=73 result=196
 123+ 73 = 196
X=246 X=562 result=808
 246+ 562 = 808
X=112233 X=332211 result=444444
 112233+ 332211 = 444444
X=111100 X=110010 result=1101110
 111100 + 110010 = 1101110
```