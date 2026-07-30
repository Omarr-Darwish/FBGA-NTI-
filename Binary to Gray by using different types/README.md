# 4-Bit Binary to Gray Converter (B2G)

This repository contains the implementation of a 4-bit Binary to Gray code converter, developed as part of the NTI Digital Design Bootcamp. 

## 💡 Why Gray Code?
Unlike standard Binary, Gray code has a unique and powerful property: **only one bit changes between any two consecutive values**. This feature makes it incredibly useful in digital hardware design, particularly for preventing glitches and safely passing data across different clock domains (such as in Asynchronous FIFOs).

## 🛠️ Project Overview
To demonstrate a solid understanding of Verilog hardware abstractions, this converter was implemented using three different modeling styles:
1. **Behavioral Modeling**
(`B2G_Behav`): Uses `always` blocks and `case` statements to describe the logic directly from the truth table.
2. **Dataflow Modeling**
(`B2G_DF`): Uses continuous `assign` statements and logical XOR operations.
3. **Gate-Level Modeling** 
(`B2G_GL`): Built from the ground up using fundamental logic gate primitives (`buf` and `xor`).

## 📐 Block Diagram
The hardware architecture relies on XOR gates to generate the Gray code output from the Binary input, while the MSB (Most Significant Bit) passes through unchanged.



<img width="356" height="483" alt="image" src="https://github.com/user-attachments/assets/b4bec49a-df6a-4244-9fa9-de37e47c9917" />


## 📊 Truth Table
The conversion logic follows the standard rule: `G[3] = B[3]`, and `G[n] = B[n+1] ^ B[n]` for the remaining bits.



<img width="1385" height="194" alt="image" src="https://github.com/user-attachments/assets/d735315e-3bbd-49c0-bf60-d8640626b4fc" />


## 🌊 Simulation Waveform
The design was successfully verified using **QuestaSim**. The testbench drives all 16 possible 4-bit input combinations (0000 to 1111) to ensure the outputs match the expected Gray code values simultaneously across all three modeling styles.



<img width="1355" height="240" alt="image" src="https://github.com/user-attachments/assets/76d44e18-2e86-4b40-bea6-c1d3a0ab4ee5" />
