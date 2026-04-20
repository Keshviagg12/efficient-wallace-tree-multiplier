/*
 * Project: Wallace Tree Multiplier
 * Author: Keshvi Agarwal
 * Date: 2026-04-20
 * Description: 5x5 Bits Verilog implementation
 * GitHub: https://github.com/Keshviagg12
 */

module HalfAdder 
  (
   A,
   B,
   sum,
   carry
   );

  input  A;
  input  B;
  output sum;
  output carry;
 
  assign sum   = A ^ B;  // bitwise xor
  assign carry = A & B;  // bitwise and
 
endmodule // half_adder