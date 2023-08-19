
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

![image](https://github.com/sonus89/linux_scripts/assets/10185202/d0f78186-be6f-48a2-a60c-072cd518d2d4)

Archinstall language &ensp; Should be your language
Mirrors &ensp; Should be your country
Locales &ensp; Change Keyboard Layout and Locales
Disk Configuration &ensp; The "best effort default partition layout" will wipe your hard disk
Disk encryption &ensp; This is Optional
Bootloader &ensp; Either GRUB or the Default one
Swap &ensp; If you don't have less than 2Gb Memory and you won't use hibernation, disable it
Hostname &ensp; The name of your Machine
Root Password &ensp; This is important
User Account &ensp; Add a user and put em into the sudoers group
Profile &ensp; Select "Minimal" ( without graphical interface )
Audio &ensp; Pipewire is better than PulseAudio
Kernels &ensp; Linux
Additional Packages &ensp; None
Network Configuration &ensp; Use NetworkManager 
Timezone &ensp; Your Time Zone
Automatic time sync (NTP) &ensp; True 
&nbsp;
And select "Install"
    
