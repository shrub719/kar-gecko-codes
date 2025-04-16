### Press Y to Turn Big [shrub719]

Press Y to make P1 kirby large. Also works with Meta Knight and Dedede!

[**Source**](../asm/y_big.asm)

```
$Press Y to Turn Big [shrub719]
C2191A3C 00000007
807E03E4 5463AFFF
41A2002C 7C6C42E6
546307BC 3803FFFF
901F0000 3CA08055
60A5AA2C 80A50000
38C03FFF B0C50328
38600000 00000000
```

### Press Y to Change Size [shrub719]

Press Y to change P1 kirby's size.

**Size: XXXX**  
Big: 3FFFF  
Small: 3F00  
Tiny: 3DFF  
Huge: 4090

```
$Press Y to Change Size [shrub719]
C2191A3C 00000007
807E03E4 5463AFFF
41A2002C 7C6C42E6
546307BC 3803FFFF
901F0000 3CA08055
60A5AA2C 80A50000
38C0XXXX B0C50328   # modify here
38600000 00000000
```
