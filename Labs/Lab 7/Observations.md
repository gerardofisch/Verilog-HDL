This is a 4-bit divider.

- The first 4 switches (P5, P4, P3, P2) represent the dividend.
- The last 4 switches (R2, M4, N4, R1) represent the divisor.
- The first 4 LEDs above the switches (F6, G4, G3, J4) represent the quotient.
- The last 4 LEDs above the switches (H4, J3, J2, K2) represent the remainder.
- The middle point (R15) is used to perform the division.
- One LED (D9) is used to represent ERROR in case a division by 0 is tried.

Example: 
If the switches are 10010010, it will mean 9 divided by 2. 
Quotient = 4 = 1000_2
Remainder = 1 = 00001_2
Therefore the LEDs on above the switches will be 10000001.
