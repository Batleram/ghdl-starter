Instructions:
1. Setup a ghdl on your computer (https://github.com/ghdl/ghdl) and something to view your wave.vcd file (I use https://github.com/gtkwave/gtkwave)
2. In the zip there is a Makefile and some test files, you will want the makefile in your project folder
3. In the Makefile, y will have a `DEPS` variable, make it include all the files you have in your project (`*.vhdl` usually works)
4. In the Makfile, there is a `E_ENTITY`, that is the entity that you want to execute, I use it with simulations mainly
5. Simply run `make` in the folder where you have the makefile, and it'll create a `wave.vcd` which you open in your wavefile viewer
