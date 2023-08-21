#!/bin/bash
file_name=$1

sudo avrdude -p t88 -c stk500v2 -P /dev/ttyUSB0 -U flash:w:$file_name.hex
