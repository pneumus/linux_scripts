#Arch Linux Installation Guide:

Set keyboard layout to hungarian

		loadkeys hu
    
Setup Wifi connection

- List your network <INTERFACE> names

		iwconfig
	
- Turn on your wifi adapter 
	
  		ip link set <INTERFACE> up
		
- Scan & List all nearby network <SSID>
	
  		iwctl station <INTERFACE> scan
		iwctl station <INTERFACE> get-networks
	
- Connect to a specific <SSID>
	
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

    
