# How to install KFTVGA-DEMO on DE0-CV

![DEMO](img/TVGA_DEMO_1.JPG)

## 1. Install Quartus Prime

## 2. Create project
"File" -> "New Project Wizerd" -> Follow the wizerd...

## 3. Create PLL
"IP Catalog" -> "PLL Intel FPGA IO"

![Figure3-1](img/Figure3-1.png)

- Reference Clock Frequency : 50MHz
- Enable locked output port : disable
- Desired Frequency : 25MHz

![Figure3-2](img/Figure3-2.png)

-> "Finish"

![Figure3-2](img/Figure3-3.png)

-> "Exit"

## 4. Create VRAM
"IP Catalog" -> "RAM: 2-PORT"

![Figure4-1](img/Figure4-1.png)

- Select "With two read/write ports"

![Figure4-2](img/Figure4-2.png)

-> "Next"

- 8-bit words of memory = 9600
- Enable "Use different data widths on different ports"
- 'q_a' output bus wide = 8
- 'q_b' output bus wide = 16

![Figure4-3](img/Figure4-3.png)

-> "Next"

- Select "Dual clock: use separate clocks for A and B ports"

![Figure4-4](img/Figure4-4.png)

-> "Next"

- Disable "Read output port(s)"

![Figure4-5](img/Figure4-5.png)

-> "Finish"

## 5. Add files
"Project" -> "Add/Remove Files to Project"

Add following files.
- top.sv
- KFTVGA.sv
- KFTVGA_Bus_Control_Logic.sv
- KFTVGA_VRAM_Use_Intel_IP.sv
- KFTVGA_Character_ROM.sv
- KFTVGA_Video_Control.sv
- KFTVGA.sdc

![Figure5](img/Figure5.png)

## 6. Compile
"Compile Design"

![Figure6](img/Figure6.png)

## 7. Pin assignments
"Assignments" -> "Pin Planner"

![Figure7](img/Figure7.png)

|Name    |I/O   |Pin     |
|:-------|------|--------|
|CLK     |Input |PIN_M9  |
|VGA_HS  |Output|PIN_H8  |
|VGA_VS  |Output|PIN_G8  |
|VGA_R[0]|Output|PIN_A9  |
|VGA_R[1]|Output|PIN_A10 |
|VGA_R[2]|Output|PIN_C9  |
|VGA_R[3]|Output|PIN_A5  |
|VGA_G[0]|Output|PIN_L7  |
|VGA_G[1]|Output|PIN_K7  |
|VGA_G[2]|Output|PIN_J7  |
|VGA_G[3]|Output|PIN_J8  |
|VGA_B[0]|Output|PIN_B6  |
|VGA_B[1]|Output|PIN_B7  |
|VGA_B[2]|Output|PIN_A8  |
|VGA_B[3]|Output|PIN_A7  |

"Processing" -> "Start I/O Assignment Analysis"

## 8. Compile

![Figure3](img/Figure3-3.png)

## 9. Configuration (sof file)
"Tool" -> "Programmer"

![Figure9](img/Figure9.png)

"Hardware Setup" -> "Start"

## 10. Run

![DEMO](img/TVGA_DEMO_1.JPG)
