Arch Linux Installation Guide:

Set keyboard layout to hungarian

	loadkeys hu
    
Setup Wifi connection

 	a) List your network <INTERFACE> names
		iwconfig
	
	b) Turn on your wifi adapter 
		ip link set <INTERFACE> up
		
	c) Scan & List all nearby network <SSID>
		iwctl station <INTERFACE> scan
		iwctl station <INTERFACE> get-networks
	
	d) Connect to a specific <SSID>
		iwctl station <INTERFACE> connect <SSID>
      
Update the system
	
	pacman -Sy
    
Erase the disk partitions
	
 	gdisk /dev/nvme0n1
	x
	z
	y
	y

Install Arch Linux

    archinstall
    Note: If not present, install the script by:
    pacman -Sy archinstall

    
