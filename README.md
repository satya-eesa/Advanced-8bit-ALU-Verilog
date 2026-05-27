# Advanced 8-bit ALU using Verilog HDL

## Overview
This project implements an advanced 8-bit Arithmetic Logic Unit (ALU)
using Verilog HDL.

## Features
- Addition
- Subtraction
- AND
- OR
- XOR
- Left Shift
- Right Shift
- Multiplication
- Comparison

## Flags
- Carry Flag
- Zero Flag
- Overflow Flag
- Negative Flag

## Tools Used
- Verilog HDL
- Icarus Verilog
- GTKWave
- VS Code

## Simulation Commands

```bash
iverilog -o alu rtl/alu.v tb/alu_tb.v
vvp alu
gtkwave waveform.vcd
```

## Operations Table

| Selector | Operation |
|----------|------------|
| 0000 | ADD |
| 0001 | SUB |
| 0010 | AND |
| 0011 | OR |
| 0100 | XOR |
| 0101 | LEFT SHIFT |
| 0110 | RIGHT SHIFT |
| 0111 | MULTIPLY |
| 1000 | COMPARE |

## Waveform Output

![Waveform](screenshots/Screenshot%202026-05-26%20234748.png)
## VS Code

![VS Code](screenshots/Screenshot%202026-05-26%20234913.png)

## Terminal Output

![Terminal](screenshots/Screenshot%202026-05-26%20234844.png)
## Author
Satya Eesa