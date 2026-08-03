# Parameterized Arithmetic Logic Unit (ALU) in Verilog

This repository contains a parameterized-width Arithmetic Logic Unit (ALU) designed using Verilog operators[cite: 1]. The goal is to understand how to implement fundamental arithmetic and logical operations controlled by an instruction opcode.

## 1. Concept: Block Diagram & Truth Table
Before writing the code, here is the basic block diagram and truth table that define how the ALU works.
The ALU performs 8 distinct operations on 8-bit inputs depending upon the operation encoded in the 3-bit instruction (opcode)[cite: 1]. It generates an 8-bit output (`alu_out`) and a single-bit output (`a_is_zero`)[cite: 1]. `a_is_zero` is a single-bit asynchronous output with a value of 1 when `in_a` equals 0; otherwise, it is 0[cite: 1].

*Truth Table / Operations:*



<img width="543" height="335" alt="image" src="https://github.com/user-attachments/assets/6dc083f9-c321-4532-8832-8b9b10633cf7" />

*Block Diagram:*



<img width="466" height="274" alt="image" src="https://github.com/user-attachments/assets/12fc6f01-d80a-4778-8a7a-814be1864c2b" />

---

## 2. Verilog Modeling Style
The ALU is implemented using **Behavioral Modeling**:
* **Behavioral:** Describes what the circuit does using an `always` block combined with a `case` statement to evaluate the `opcode`.
* **Operators:** Utilizes built-in Verilog arithmetic (`+`, `-`) and logical (`&`, `^`) operators to execute the instructions[cite: 1].
* **Parameterization:** The design uses a `WIDTH` parameter (defaulting to 8) to define the width of the input and output buses[cite: 1].

---

## 3. Simulation Waveform
Here is the simulation waveform verifying all 8 operational states based on the opcode changes.





<img width="1579" height="383" alt="image" src="https://github.com/user-attachments/assets/66b59332-67f7-4665-aaaa-2745b00721bc" />
