# There is no warranty. Nobody can guarantee that this will work.                   #
# This script downloads the user-specified *.hex file on                            #
# Atmel AVR Atmega128 with a JTAG programmer                                        #
# and creates *.elf *.o and *.hex files as output                                   #
#                                                                                   #
# Written by Matthew Gaal                                                           #
# 2015 - Nov - 1st                                                                  #
#                                                                                   #
#####################################################################################

# EXAMPLE: "sh avrdude.sh something" downloads something.hex

#!/bin/bash
file_name=$1

sudo avrdude -v -B1 -p m128 -c jtag1slow -P /dev/ttyUSB0 -U flash:w:$file_name.hex
