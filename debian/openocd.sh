#!/bin/bash

#############################################################################
#																			                                      #
#	Created by Matthew Gal													                          #
#	2015 - Oct - 8															                              #
#																			                                      #
#	This bourne shell script deploys and configures,						              # 
#	the following packages on any linux PC:									                  #
#																			                                      #
#	-	Java  																                                  #
#	-	Eclipse 															                                  #
#	-	OpenOCD																                                  #
#	-	ARM-GCC-Toolchain													                              #
#																			                                      #
#############################################################################
#                                     																			#
#																		                                      	#
########################### Setting Prior Conditions ########################
#																			                                      #
#																			                                      #
#	Clearing terminal screen												                          #
clear 																		                                  #
#																			                                      #
#	Creating directory "stm32f3" into home directory						              #
sudo rm -rf ~/stm32f3														                            #
sudo mkdir ~/stm32f3 														                            #
#																			                                      #
#	Checking if directory was successfully created							              #
if [ -d ~/stm32f3 ]; then													                          #
	echo "\nDirectory ~/stm32f3 successfully created!\n"					            #
else																		                                    #
	echo "ERROR: Could not create directory: ~/stm32f3. Are you admin?!\n"	  #
fi																			                                    #
#																			                                      #
#	Making the system ready													                          #
echo "Reading package lists...\nPlease wait!\n"								              #
#sudo apt-get update														                            #
#sudo apt-get autoremove													                          #

sudo apt-get install flex bison libgmp3-dev libmpfr-dev 
sudo apt-get install libncurses5-dev libmpc-dev autoconf texinfo  
sudo apt-get install build-essential libftdi-dev libusb-1.0-0-dev git

#																			                                      #
#																			                                      #
############################# INSTALLING DEBUGGER ###########################
#																			                                      #
#																			                                      #
#	Installing OpenOCD														                            #
sudo apt-get install openocd 												                        #
#																			                                      #
#	Modifying rules for USB port 											                        #
sudo echo "ATTRS{idVendor}=="0483", ATTRS{idProduct}=="3748", MODE="0666"" > /etc/udev/rules.d/99-stlink.rules
sudo udevadm control --reload-rules											                    #
#																			                                      #
#	Configuring for stm32f3discovery board									                  #
sudo openocd -f ~/stm32f3/stm32f3discovery.cfg								              #
#																			#
#																			#
############################ Installing Toolchain ###########################
#																			#
#																			#
sudo add-apt-repository ppa:terry.guo/gcc-arm-embedded						#
sudo apt-get update															#
sudo apt-get install gcc-arm-none-eabi										#
#																			#
#																			#
######################### Installing STM32F3 Firmware #######################
#																			#
#																			#
sudo git clone https://github.com/libopencm3/libopencm3-examples.git ~/stm32f3/examples/
#																			#
change_dir () {																#
	cd ~/stm32f3/examples/libopencm3/										#
	sudo git submodule init													#
	sudo git submodule update												#
	make																	#
}																			#
#																			#
change_dir
#																			#
#																			#
"""
Example for Blinky:

	~/stm32f3/examples/examples/stm32/f3/stm32f3-discovery/miniblink

	openocd -f /usr/share/openocd/scripts/board/stm32f3discovery.cfg

	telnet 4444

	reset halt

	flash write_image erase miniblink.elf

	reset

"""
