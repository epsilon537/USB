# Create firmware

#FORTH = /usr/local/opt/SwiftForth/bin/osx/sf
FORTH = gforth

VPATH = ../J1_WB/j1_forth

SRC = crossj1.fs \
      basewords.fs \
      nuc.fs \
      main.fs

.PHONY: sim syn

j1_mouse.mif j1_mouse.hex j1_mouse.lst: $(SRC) *.fs
	$(FORTH) main.fs

sim: j1_mouse.mif
	cp $^ ../sim

syn: j1_mouse.mif
	cp $^ ../syn
