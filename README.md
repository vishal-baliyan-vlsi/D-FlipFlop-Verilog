# D Flip-Flop (Verilog)

# Overview
This project implements a **positive-edge triggered D Flip-Flop** using Verilog HDL.  
The flip-flop captures input data ("D") on every rising edge of the clock and supports an **asynchronous active-high reset**.

# Design Details
- **Language:** Verilog HDL  
- **Type:** Positive Edge Triggered D Flip-Flop  
- **Reset Type:** Asynchronous Active-High Reset  
- **Triggering Edge:** Rising Edge of Clock  
- **Output Behavior:** Q follows D on positive clock edge  

# Functional Description
- When **rst = 1**, output 'Q' is immediately reset to '0'
- When **rst = 0**, output 'Q' updates only on **posedge clk**
- Uses **non-blocking assignment ('<=')** for proper sequential logic implementation

# Testbench Features
- **Clock generation** (10ns period using forever loop)
- **Reset initialization** at the beginning of simulation
- **Input stimulus application** for different D values
- **Console monitoring** using '$monitor'
- **Simulation termination** using '$finish'

# Simulation Behavior
- When reset is high:  
  'Q = 0'

- After reset is released:  
  'Q follows D on every positive clock edge'

- If reset is asserted during operation:  
  'Q immediately becomes 0'

# Project Structure
- 'design.v' → RTL implementation  
- 'testbench.v' → Verification environment  
- 'README.md' → Project documentation  

# Learning Outcome
- Understanding of **sequential logic design**
- Proper use of **non-blocking assignment**
- Implementation of **asynchronous reset**
- Clock-driven behavior analysis
- Testbench development and verification methodology
- Basic RTL design practices used in VLSI industry
