## Multiplexer
![Multiplexer](https://github.com/EnigmaticAbyss/DigitalDesignLab/raw/main/RIscVCPU/Mux/mux.png)



This is a two to one multiplexer that is being used in this architecture.
Here is a [link](https://en.wikipedia.org/wiki/Multiplexer) for more information about different types of multiplexer.


## Test bench
```bash
A = 0 B = 12345678 selection = 0 out = 0        
A = 0 B = 12345678 selection = 1 out = 12345678 
A = 0 B = 87654321 selection = 0 out = 0        
A = 0 B = 87654321 selection = 1 out = 87654321
A = 11112222 B = 0 selection = 0 out = 11112222
A = 11112222 B = 0 selection = 1 out = 0       
A = 122 B = 0 selection = 1 out = 0
A = 122 B = 0 selection = 0 out = 122
A = 11110000 B = 0 selection = 1 out = 0       
A = 11110000 B = 0 selection = 0 out = 11110000
```