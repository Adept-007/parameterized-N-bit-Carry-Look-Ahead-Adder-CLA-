# parameterized-N-bit-Carry-Look-Ahead-Adder-CLA-
## 📌 Overview
This project implements a **parameterized N-bit Carry Lookahead Adder (CLA)** using **Verilog HDL**.  
The design improves addition speed by computing carry signals in parallel using generate and propagate logic.

---
## Features
- Parameterized bit-width ( N-bit)
- Generate and propagate based carry logic
- Faster than ripple carry adder
- Verified using a custom testbench

---

## Theory
- **Carry Generate (G)** = A . B
- **Carry Propagate (P)** = A ⊕  B
- **Carry Expression (C)**
  C(i+1) = G[i] + P[i] . C[i]
  This reduces carry propagation delay compared to ripple carry adders.
---
##  Verification
The design is verified using a Verilog testbench that:
- Tests normal and corner cases
- Applies random inputs
- Observes sum and carry outputs using simulation

Simulation was performed using **Vivado XSim**.

---
##  How to Run (Vivado )
1. Add `n_bit_cla.v` as design source
2. Add `tb.v` as simulation source
3. Set testbench as top module
4. Run behavioral simulation

---
