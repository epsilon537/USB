# Low-Speed USB HID Device Implementation for FPGA and Simulation.

This repository is a fork from [pbing/USB](https://github.com/pbing/USB). The following extensions have been implemented:

- USB keyboard has been added, include keyboard LED control.
- The project now builds in Verilator and is no longer dependent on the Quartus toolchain.

This repository is used in the [BoxLambda](https://github.com/epsilon537/boxlambda/) project to simulate a USB keyboard and mouse to test BoxLambda's USB HID Host core functionality. The BoxLambda USB HID Host core can be found [here](https://github.com/epsilon537/usb_hid_host).

# Original README from [pbing/USB](https://github.com/pbing/USB)

## FPGA USB 1.1 Low-Speed Implementation

Derived from an example [application](https://github.com/pbing/USB/tree/master/doc/Microchip) which emulates a mouse.
The cursor will move in a continual octagon.

### Status
- FPGA proven as additional mouse for Windows 10
- Does not work with macOS -- although USB continous IN packages can be observed with a logic analyzer.

### Installation
```shell
git clone https://github.com/pbing/USB.git
cd USB
git submodule update --init --recursive
```

### Used Parts
- [Cyclone V GX Starter Kit](https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=167&No=830&PartNo=1)

- The USB D+ and D- pads were [configured](https://github.com/pbing/USB/blob/master/doc/USB%20Pad%20Configuration.pdf)
  for low-speed (1.5 Mbit/s).

### Other IP
- [J1 CPU with Wishbone interface](https://github.com/pbing/J1_WB)
