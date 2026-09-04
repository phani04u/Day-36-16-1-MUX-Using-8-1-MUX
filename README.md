# Day 36 – 16:1 MUX Using 8:1 MUX

## Introduction
A 16:1 MUX selects one of 16 inputs using 4 select lines.

## Design
The design uses:
- Two 8:1 MUXes
- One 2:1 MUX
- Four select lines

S2, S1, S0 control the 8:1 MUXes, while S3 selects between their outputs.

## Files
- mux_16_8.v – Design code
- mux_16_8_tb.v – Testbench

## Verification
All 16 select combinations were tested using `for` loops.

## Simulation
The design was verified using Vivado simulation, waveform, and RTL schematic.

## Conclusion
Successfully designed and simulated a 16:1 MUX using 8:1 MUXes.
