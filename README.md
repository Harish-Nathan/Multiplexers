# Multiplexers Verilog Project

This repository contains Verilog implementations of various multiplexers and their respective testbenches.

## Files Included

### 4-to-1 Multiplexer
- `mux_4to1.v` : 4-to-1 multiplexer design.
- `tb_mux_4to1.v` : Testbench for 4-to-1 multiplexer.
- `mux_4to1_nand.v` : 4-to-1 multiplexer implemented using NAND gates.
- `tb_mux_4to1_nand.v` : Testbench for NAND-based 4-to-1 multiplexer.

### 8-to-1 Multiplexer
- `mux_8to1.v` : 8-to-1 multiplexer design.
- `tb_mux_8to1.v` : Testbench for 8-to-1 multiplexer.
- `mux_8to1_using_4to1.v` : 8-to-1 multiplexer built using 4-to-1 multiplexers.
- `tb_mux_8to1_using_4to1.v` : Testbench for 8-to-1 multiplexer using 4-to-1 multiplexers.
- `mux_8to1_using_4to1_nand.v` : NAND-based implementation of 8-to-1 multiplexer using 4-to-1 multiplexers.
- `tb_mux_8to1_using_4to1_nand.v` : Testbench for NAND-based 8-to-1 multiplexer using 4-to-1 multiplexers.

## Project Description

This project demonstrates different methods of designing multiplexers in Verilog, including gate-level implementations and hierarchical designs. Each multiplexer has an associated testbench to verify correct functionality through simulation.

## Usage

1. Compile the desired multiplexer Verilog file along with its testbench.
2. Run the simulation to verify the output for various input combinations.

## Author

Harish S 
Email: harishnathan024@gmail.com
