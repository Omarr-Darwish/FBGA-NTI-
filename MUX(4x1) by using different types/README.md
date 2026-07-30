# 4-to-1 Multiplexer (MUX) in Verilog

This repository contains a simple 4-to-1 Multiplexer designed using four different Verilog modeling styles. The goal is to understand how to translate logic diagrams into hardware description code.

## 1. Concept: Block Diagram & Truth Table
Before writing the code, here is the basic block diagram and truth table that define how the 4-to-1 MUX works:

*Truth Table:*

<img width="720" height="182" alt="image" src="https://github.com/user-attachments/assets/9cdf058e-146c-4a73-b030-e90a7764e013" />


*Block Diagram:*


<img width="181" height="163" alt="image" src="https://github.com/user-attachments/assets/6ea7d31e-620e-49ca-a6b8-d4125c6abc28" />


---

## 2. Verilog Modeling Styles
The MUX is implemented in four different ways to show different levels of abstraction in Verilog:

### A. Behavioral & Dataflow Modeling
* **Behavioral:** Describes *what* the circuit does using an `always` block.
* **Dataflow:** Describes the logic equations using the `assign` keyword and the conditional (`? :`) operator.

### B. Gate-Level Modeling
This style builds the circuit from scratch using basic logic primitives (AND, OR, NOT).


<img width="406" height="302" alt="image" src="https://github.com/user-attachments/assets/b7167140-c9d9-4f1d-b451-a0c8cb865b75" />


### C. Structural Modeling
This style builds the circuit hierarchically by connecting three smaller 2-to-1 MUX modules together.


<img width="590" height="488" alt="image" src="https://github.com/user-attachments/assets/09503412-b329-4976-8ee7-31920f8a3c66" />


---

## 3. Simulation Waveform
Finally, here is the simulation waveform to verify that all four designs work correctly and produce the same expected output.


<img width="1482" height="144" alt="Screenshot 2026-07-30 131312" src="https://github.com/user-attachments/assets/0e5163b7-0a38-441c-a673-ff70ad86231f" />

