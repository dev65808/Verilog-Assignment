# DVLSI  

## Verilog Assignment  

### Q1   
![Question](Verilog_Q1/Question.jpg)  

select is a 2-bit input to choose the operation.
x and y are 8-bit inputs.
z is an 8-bit output.
A combinational always block is used with a case statement to handle different values of select:
00: z = 0
01: z = x + y
10: z = x ^ y
11: z = 0 if both x and y are odd (i.e., their least significant bits are 1), otherwise z = 1.