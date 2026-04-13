# FPGA-Barrel-Shifter-Spartan-6-


This project implements an 8-bit Barrel Shifter using Verilog HDL and deploys it on a Xilinx Spartan-6 (XC6SLX9, TQG144) FPGA board.
The design supports both left shift and right shift operations controlled via hardware switches.

📌 Project Overview

The barrel shifter performs bit shifting in a single combinational step, unlike sequential shifters.

🔧 Features:
8-bit input data (data_in)
3-bit shift control (shift)
Direction control (dir)
0 → Left Shift
1 → Right Shift
Real-time output on FPGA LEDs
🧠 Design Description

The module is implemented using Verilog as a combinational circuit:

assign data_out = (dir == 1'b0) ? (data_in << shift) : (data_in >> shift);
No clock is used
Output updates instantly based on input changes
Suitable for high-speed datapath operations

🧪 Simulation
Tool: Xilinx ISim (ISE 14.7)
#Testbench verifies:
A)Left shift by 2
B)Right shift by 2
C)Left shift by 4
D)Right shift by 3

All simulation results matched expected outputs.

🖥️ FPGA Implementation
Target Device: Spartan-6 XC6SLX9 (TQG144)
Toolchain: Xilinx ISE 14.7

Flow: Synthesis → Translate → Map → PAR → Bitstream Generation

🧪 Example Test Case
#Input:
data_in = 10110011
dir = 0 (Left Shift)
shift = 2
#Output:
data_out = 11001100

🎯 Skills Demonstrated
1)Verilog RTL Design
2)Combinational Logic Design
3)Testbench Development
4)FPGA Pin Mapping (UCF)
5)Xilinx ISE 14.7 Tool Flow
6)Hardware Debugging on Spartan-6

🚀 Future Enhancements
1)Add Rotate Left / Rotate Right
2)Parameterize bit-width (N-bit shifter)
3)Add clocked/pipelined version
4)Integrate with ALU design

📌 Conclusion:
This project demonstrates a complete FPGA workflow — from RTL design and simulation to hardware implementation and validation.
The design achieved 100% functional correctness across simulation and FPGA testing.


#The FPGA spartan-6 model image
<img width="809" height="839" alt="Screenshot 2025-09-27 230112" src="https://github.com/user-attachments/assets/7570659f-569c-4ff3-aa57-9a6dd20dfbe6" />



#The checking the I/O of the FPGA(below 3 images)
![WhatsApp Image 2026-03-13 at 7 59 09 PM](https://github.com/user-attachments/assets/6378d635-7f63-494e-9528-30922df34be1)


![WhatsApp Image 2026-03-13 at 7 59 09 PM (1)](https://github.com/user-attachments/assets/bf19dc7a-9b83-410b-9a22-8870dbe0a512)


![WhatsApp Image 2026-03-13 at 7 59 09 PM (2)](https://github.com/user-attachments/assets/62feedc4-add6-453b-8d39-21503721abc5)


