# Tristate Data Driver in Verilog

This repository contains a parameterized-width bus driver[cite: 2]. The goal is to understand how to manage data flow on shared buses using high-impedance states.

## 1. Concept: Block Diagram 
The driver output is equal to the input value when enabled (`data_en` is true) and is high-impedance when not enabled (`data_en` is false)[cite: 2]. `data_in` and `data_out` are both parameterized widths of 8-bit[cite: 2].


*Block Diagram:*




<img width="454" height="237" alt="image" src="https://github.com/user-attachments/assets/1821d6ec-52ce-496a-a54e-cf652d62fb63" />


---

## 2. Verilog Modeling Style
The Driver is implemented using **Dataflow Modeling**:
* **Dataflow:** Describes the logic using the `assign` keyword and the conditional (ternary) operator (`? :`).
* **High-Z:** Uses the Verilog literal value `z` to represent the high-impedance state, ensuring the output bus is isolated when the driver is disabled.

---

## 3. Simulation Waveform
Here is the simulation waveform verifying the data passing and isolation states.



<img width="1570" height="158" alt="image" src="https://github.com/user-attachments/assets/e3c2c2fc-94cb-46f6-b7fe-2eee2d783dea" />
