### Huge Kirbies [shrub719]

Makes all players huge! You might need to zoom out with the C stick to see.

[**Source**](../asm/huge_kirbies.asm)

```
$Huge Kirbies [shrub719]
C2191A3C 00000002
38C04090 B0D80328
38600000 00000000
```

### Kirby Sizer [shrub719]

Change the size of all players.

**Size: XXXX**   
Big: 3FFFF  
Small: 3F00  
Tiny: 3DFF  
Huge: 4090

```
$Kirby Sizer [shrub719]
C2191A3C 00000002
38C0XXXX B0D80328   # modify here
38600000 00000000
```
