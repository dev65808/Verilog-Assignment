# 🏆 DVLSI  

## 📌 Verilog Assignment  

### 🔷 Q1  

#### 🖼 Circuit Diagram  
![Circuit Diagram](Verilog_Q1/Question.jpg)  

#### 📄 Description  
This is the circuit diagram for **Q1** in the Verilog assignment. It represents the logic implementation of the given problem statement. Below are the details:  

- **Verilog Module:** `mux_Q1.v`  
- **Testbench:** `tb_mux_Q1.v`  
- **Simulation Tool:** Icarus Verilog (`iverilog`)  
- **Execution Steps:**  
  1. Open the project in **VS Code**.  
  2. Compile using:  
     ```bash
     iverilog -o testbench.out Verilog_Q1/design.sv Verilog_Q1/testbench.sv
     vvp testbench.out
     ```
  3. Observe the output waveform using **GTKWave**.  
