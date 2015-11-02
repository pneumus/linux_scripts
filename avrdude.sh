#!/bin/bash
file_name=$1

sudo avrdude -v -B1 -p m128 -c jtag1slow -P /dev/ttyUSB0 -U flash:w:$file_name.hex
