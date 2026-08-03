# SIPO Shift Register (Serial-In, Parallel-Out) in Verilog

This repository contains a Serial-In, Parallel-Out (SIPO) Shift Register. The goal is to understand sequential logic memory and data accumulation.

## 1. Concept: Block Diagram & Truth Table
A SIPO shift register accepts data one bit at a time on a single serial input line. With each clock pulse, the stored data shifts, making room for the new bit. The accumulated bits are presented simultaneously on the parallel output bus.

*Truth Table (Sequential State):*


<img width="496" height="226" alt="image" src="https://github.com/user-attachments/assets/0090be57-9fa0-4624-a37b-6ba61f34d970" />

*Block Diagram:*




<img width="560" height="203" alt="image" src="https://github.com/user-attachments/assets/47a2b97b-8355-4719-ac40-f0404fb28ba4" />

---

## 2. Verilog Modeling Style
The SIPO Register is implemented using **Sequential Behavioral Modeling**:
* **Behavioral:** Uses an `always @(posedge clk)` block to trigger operations strictly on the rising edge of the clock.
* **Non-Blocking Assignments:** Uses the `<= ` operator to ensure all bit shifts occur simultaneously, mirroring actual hardware flip-flop behavior.
* **Concatenation:** Utilizes the `{}` operator to dynamically shift the existing bits and append the incoming serial bit.
