# DVLSI  

## Verilog Assignment  

### Q1   
![Question](Verilog_Q1/Question.jpg)  

- select is a 2-bit input.
- x and y are 8-bit inputs.
- z is an 8-bit output.
- Use case statement inside always block to handle multiple select conditions:
    
    00: z = 0

    01: z = x + y

    10: z = x ^ y

    11: z = 0 if both x and y are odd (i.e LSB of x and y are 1), otherwise z = 1