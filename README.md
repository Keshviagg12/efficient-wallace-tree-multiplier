# 5x5 Wallace Tree Multiplier (RTL Implementation)

### Author: Keshvi Agarwal
**GitHub:** [Keshviagg12](https://github.com/Keshviagg12)
**Specialization:** VLSI Design | Physical Design | Functional Verification

---

## 📌 Project Overview
This project is a high-performance **5x5-bit Wallace Tree Multiplier** implemented in Verilog HDL. Unlike standard array multipliers that use $O(log^2 n)$ time, this implementation leverages the Wallace Tree reduction technique to achieve **$O(1)$ propagation delay per layer**, making it significantly faster for high-speed arithmetic operations.

## 📐 Architecture & Logic
The design is modularized for better maintainability and uses structural Verilog modeling to ensure clear hierarchy. The implementation follows four distinct stages:

![Uploading Wallace Tree Multiplier.png…]()


1. **Step 1: Partial Product Generation:** A logic grid is formed for the 5x5 multiplication.
2. **Step 2: Wallace Tree Reduction:** Using a hierarchy of custom `FullAdder` and `HalfAdder` modules to reduce partial products.
3. **Step 3: Intermediate Summation:** Further reduction of carries and sums.
4. **Step 4: Final Addition:** Converting the remaining rows into the final 10-bit result using a carry-propagate adder.

## 🛠️ Tools & Technologies Used
* **Language:** Verilog HDL
* **Methodology:** RTL design and structural instantiation
* **Modules:** Reusable `FullAdder` and `HalfAdder` logic blocks
* **Design Flow:** RTL-to-GDSII principles for hardware optimization

## 📊 Digital Results & Verification
The multiplier was verified using a comprehensive testbench to ensure accuracy across all scenarios.

| Feature | Value / Status |
| :--- | :--- |
| **Logic Type** | Combinational / Wallace Tree |
| **Bit Width** | 5x5-bit |
| **Propagation Delay** | Optimized ($O(1)$ per layer) |
| **Testbench Status** | ✅ PASSED |

### Simulation Waveform
*The following image demonstrates the functional verification of the multiplier, showing inputs A, B, and the resulting output Out matching expected products.*

![Simulation Waveform](waveform.png)

## 💡 Engineering Highlights
* **Modular Codebase:** Developed reusable `FullAdder` and `HalfAdder` modules to minimize code redundancy and ensure a clean, hierarchical design.
* **Efficient Reduction:** Implemented manual reduction stages to minimize logic depth and maximize frequency.
* **Professional Coding Standards:** Adhered to clean coding practices, including signal naming conventions and module instantiation.

---
*Created by Keshvi Agarwal for advanced VLSI coursework.*
