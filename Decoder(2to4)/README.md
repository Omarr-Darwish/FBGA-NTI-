# 2-to-4 Line Decoder with Enable

This repository contains the RTL design and verification of a 2-to-4 line decoder with an active-high enable signal. This project was developed as part of the NTI Digital Design Bootcamp.

## 🛠️ Project Overview
The decoder takes a 2-bit binary input (`A` and `B`) and activates one of the 4 output lines (`F`) based on the input value, provided the Enable (`En`) pin is high (1). If the Enable pin is low (0), all outputs are forced to 0 regardless of the inputs.

The design is implemented in Verilog using **Behavioral Modeling** (`always` block and `case` statements) with proper default conditions to prevent unintended latch generation.

### 📂 File Structure:
*   `decoder.v`: The main hardware design module.
*   `decoder_tb.v`: The testbench module used for simulation and functional verification.

## 📐 Block Diagram
The following diagram illustrates the hardware architecture, showing the input signals, the enable pin, and the 4-bit output bus.



<img width="265" height="232" alt="image" src="https://github.com/user-attachments/assets/af37c764-13c8-4793-a6ea-55ab7c94c80f" />


## 📊 Truth Table
The logic follows the standard 2-to-4 decoding rules.



<img width="437" height="230" alt="image" src="https://github.com/user-attachments/assets/d64066ee-23d5-4cc6-879c-c03620b53d7a" />


## 🌊 Simulation Waveform
Functional verification was successfully performed using **QuestaSim**. The testbench (`decoder_tb.v`) systematically drives all possible input and enable combinations to verify the correctness of the output logic over time.



<img width="1545" height="248" alt="image" src="https://github.com/user-attachments/assets/f8357bb6-5e24-436e-8d83-33c3c84e1bba" />
