# There is no warranty. Nobody can guarantee that this will work.                   #
# This script compiles a C source file for Atmel AVR Atmega128 MCU with AVR-GCC     #
# and creates *.elf *.o and *.hex files as output                                   #
#                                                                                   #
# Written by Matthew Gaal                                                           #
# 2015 - Oct - 24                                                                   #
#                                                                                   #
#####################################################################################

#!/bin/bash
file_name=$1

avr-gcc -g -Os -mmcu=atmega128 -c $file_name.c && avr-gcc -g -mmcu=atmega128 -o $file_name.elf $file_name.o && avr-objcopy -j .text -j .data -O ihex $file_name.elf $file_name.hex
