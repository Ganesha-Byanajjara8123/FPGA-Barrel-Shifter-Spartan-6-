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
Testbench verifies:
Left shift by 2
Right shift by 2
Left shift by 4
Right shift by 3

All simulation results matched expected outputs.

🖥️ FPGA Implementation
Target Device: Spartan-6 XC6SLX9 (TQG144)
Toolchain: Xilinx ISE 14.7

Flow: Synthesis → Translate → Map → PAR → Bitstream Generation

🧪 Example Test Case
Input:
data_in = 10110011
dir = 0 (Left Shift)
shift = 2
Output:
data_out = 11001100

🎯 Skills Demonstrated
Verilog RTL Design
Combinational Logic Design
Testbench Development
FPGA Pin Mapping (UCF)
Xilinx ISE 14.7 Tool Flow
Hardware Debugging on Spartan-6

🚀 Future Enhancements
Add Rotate Left / Rotate Right
Parameterize bit-width (N-bit shifter)
Add clocked/pipelined version
Integrate with ALU design

📌 Conclusion:
This project demonstrates a complete FPGA workflow — from RTL design and simulation to hardware implementation and validation.
The design achieved 100% functional correctness across simulation and FPGA testing.

![WhatsApp Image 2026-03-13 at 7 59 09 PM](https://github.com/user-attachments/assets/6378d635-7f63-494e-9528-30922df34be1)


![WhatsApp Image 2026-03-13 at 7 59 09 PM (1)](https://github.com/user-attachments/assets/bf19dc7a-9b83-410b-9a22-8870dbe0a512)


![WhatsApp Image 2026-03-13 at 7 59 09 PM (2)](https://github.com/user-attachments/assets/62feedc4-add6-453b-8d39-21503721abc5)


