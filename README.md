# Instructions

1. Setup a ghdl on your computer ([https://github.com/ghdl/ghdl](https://github.com/ghdl/ghdl)) and something to [view your wave.vcd file](#Viewing%20the%20waveform) 

2. In the Makefile, you will have a `DEPS` variable, make it include all the files you have in your project (`*.vhdl` usually works, but you may need to add `*.vhd` if you use those files)

3. In the Makfile, there is a `E_ENTITY`, that is the entity that you want to execute, I use it with simulations mainly and simply adding your testbenches to `sim.vhdl` can be convenient

4. Simply run `make` in the folder where you have the makefile, and it'll create a `wave.vcd` which you open in your wavefile viewer

# Viewing the waveform

I personally use [https://github.com/gtkwave/gtkwave](https://github.com/gtkwave/gtkwave), however it does not work on MacOS due to shenanigans.

I know there are alternatives such as [https://surfer-project.org/](https://surfer-project.org/) which can work, your mileage may vary.
