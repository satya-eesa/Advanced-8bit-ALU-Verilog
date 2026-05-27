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

## Author
Satya Eesa