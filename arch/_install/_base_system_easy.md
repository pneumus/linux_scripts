![image](https://github.com/sonus89/linux_scripts/assets/10185202/ceb711b0-d548-4386-b7f5-b830d202c855)
# Arch Linux Installation Guide - Easy Way

Set keyboard layout to hungarian

		loadkeys hu
    
Setup Wifi connection

- List your network INTERFACE names

		iwconfig
	
- Turn on your wifi adapter 
	
  		ip link set <INTERFACE> up
		
- Scan & List all nearby network SSID
	
  		iwctl station <INTERFACE> scan
		iwctl station <INTERFACE> get-networks
	
- Connect to a specific SSID
	
 		iwctl station <INTERFACE> connect <SSID>
    
Erase the disk partitions
	
	 	gdisk /dev/nvme0n1
		x
		z
		y
		y

Install Arch Linux

		archinstall
###### *Note: Note: If you can't find the archinstall script you should install it by "pacman -Sy archinstall"*


![image](https://github.com/sonus89/linux_scripts/assets/10185202/bc868553-21da-4314-8dd8-11c0dd779d95)


		
    
