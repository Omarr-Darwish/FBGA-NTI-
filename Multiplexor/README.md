# Parameterized Multiplexor (MUX) in Verilog

This repository contains a parameterized multi-bit Multiplexer designed to route data based on selection signals. 

## 1. Concept: Block Diagram & Truth Table
The Multiplexor acts as a digital switch. It takes multiple input buses and routes exactly one of them to the output bus, depending on the value of the selector input.

*Truth Table:*
<img width="400" height="150" alt="MUX Truth Table" src="INSERT_IMAGE_URL_HERE" />

*Block Diagram:*
<img width="300" height="250" alt="MUX Block Diagram" src="INSERT_IMAGE_URL_HERE" />

---

## 2. Verilog Modeling Style
The MUX is implemented using **Dataflow Modeling**:
* **Dataflow:** Employs the `assign` keyword along with the conditional operator (`? :`) for concise and synthesizable logic.
* **Parameterization:** Features a `WIDTH` parameter to allow the MUX to scale dynamically (e.g., 8-bit, 16-bit, 32-bit buses) without changing the core logic.

---

## 3. Simulation Waveform
Here is the simulation waveform verifying the correct switching between input buses upon selector changes.



<img width="1650" height="248" alt="image" src="https://github.com/user-attachments/assets/10ef7bd9-217e-408c-89db-5312a9c9530c" />
