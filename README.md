# Term Project 
## Simple Calculator

In this project, you are asked to design a mini calculator system in FPGA. The interface is your VGA, and either a USB (PS/2) keyboard or a USART input. Please note that you may clone Intel 8051, Intel 8088, Motorola 6502, Motorola 6800 instruction set architecture. There are plenty of cross compiler tools and simulators available. Your system must support: 
- At least 320x240 display through VGA port through memory mapped display. There is no need to show 		colors. B/W is acceptable. 
- USB (PS/2) keyboard or a serial Interface 
- Reset switch 
- 4 digits of decimal operation (-9999 to 9999), no floating point 
- Support (atleast) 4 operations (plus, minus, multiplication, division) 
- Display 4 digits output to VGA screen. When the result is overflow (out of range), show the N/A, NaN. 
- Accept input from USB keyboard or USART interface