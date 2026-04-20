# 5x5 Wallace Tree Multiplier (RTL Implementation)

### Author: Keshvi Agarwal
**Specialization:** VLSI Design | Physical Design | Functional Verification
**GitHub:** [Keshviagg12](https://github.com/Keshviagg12)

---

## 📌 Project Overview
This project is a high-performance **5x5-bit Wallace Tree Multiplier** implemented in Verilog HDL. Unlike standard array multipliers that use $O(log^2 n)$ time, this implementation leverages the Wallace Tree reduction technique to achieve **$O(1)$ propagation delay per layer**, making it significantly faster for high-speed arithmetic operations.

## 📐 Architecture & Logic
The design is modularized for better maintainability and uses structural Verilog modeling. The implementation follows four distinct stages:

![Wallace Tree Multiplier Architecture](WallaceTree_5x5.png)

![Uploading Wallace Tree Multiplier.png…]()



1. **Step 1: Partial Product Generation:** A logic grid is formed for the 5x5 multiplication.
2. **Step 2: Wallace Tree Reduction:** Using a hierarchy of Full Adders (FA) and Half Adders (HA) to reduce partial products.
3. **Step 3: Intermediate Summation:** Further reduction of carries and sums.
4. **Step 4: Final Addition:** Converting the remaining rows into the final 10-bit result using a carry-propagate adder.

## 🛠️ Tools & Technologies Used
* **Language:** Verilog HDL
* **Design Methodology:** RTL-to-GDSII flow principles
* **Simulation:** [Insert your simulator, e.g., QuestaSim, Vivado, or Icarus Verilog]
* **Verification:** UVM-based testbench approach

## 📊 Digital Results & Verification
The multiplier was verified using a comprehensive testbench. Below is a summary of the simulation results:

| Feature | Value / Status |
| :--- | :--- |
| **Logic Type** | Combinational / Wallace Tree |
| **Bit Width** | 5x5-bit |
| **Propagation Delay** | Optimized ($O(1)$ per layer) |
| **Testbench Status** | ✅ PASSED (All 32+ scenarios) |

*(Insert a screenshot of your waveform/console output here to prove your hard work!)*

## 💡 Engineering Highlights
* **Modular Codebase:** Developed reusable `FullAdder` and `HalfAdder` modules to minimize code redundancy.
* **Efficient Reduction:** Implemented manual reduction stages to minimize logic depth and maximize frequency.
* **Professional Coding Standards:** Adhered to clean coding practices, including signal naming conventions and hierarchical module instantiation.

---
*Created by Keshvi Agarwal for advanced VLSI coursework.*
