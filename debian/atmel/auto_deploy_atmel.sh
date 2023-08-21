#################################################################################
#																				                                        #
#				This is an Auto Deploy Script written by sonus				                	#
#				There is no warranty	                              										#
#				Contact: gal.mateo@gmail.com					                          				#
#				Date: 22th October 2015								                            			#
#																	                                        			#
#################################################################################
#																	                                        			#
#																	                                        			#
#	Installing necessary dependencies for AVR GCC:				                				#
#																		                                        		#
clear 																                                    			#
echo "\n\tInstalling dependencies... Please wait!\n\n"				            			#
sudo apt-get -y -qq install gcc-avr binutils-avr gdb-avr avr-libc avrdude	    	#
sudo apt-get -y -qq install flex byacc bison gcc libusb-dev				          		#
#																		                                        		#
#																			                                        	#
#################################################################################
#																			                                        	#
#																		                                         		#
clear
echo "\n\tAVRDUDE & AVR-GCC is ready to be used"
echo "\n\tFor further information, type:"
echo "\n\tavr-gcc --help\n\tavrdude --help\n"
