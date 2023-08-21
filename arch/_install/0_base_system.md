
# Arch Linux Installation Guide

Download the [Arch Linux ISO](https://archlinux.org/download/) and create a Bootable Pendrive 

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

- Check if you really have Internet

    		ping gnu.org
    
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

Archinstall language &ensp;-&ensp; Should be your language &nbsp;  
Mirrors &ensp;-&ensp; Should be your country &nbsp;  
Locales &ensp;-&ensp; Change Keyboard Layout and Locales &nbsp;  
Disk Configuration &ensp;-&ensp; The "best effort default partition layout" will wipe your hard disk &nbsp;  
Disk encryption &ensp;-&ensp; This is Optional &nbsp;  
Bootloader &ensp;-&ensp; Either GRUB or the Default one &nbsp;  
Swap &ensp;-&ensp; If you don't have less than 2Gb Memory and you won't use hibernation, disable it &nbsp;  
Hostname &ensp;-&ensp; The name of your Machine &nbsp;  
Root Password &ensp;-&ensp; This is important &nbsp;  
User Account &ensp;-&ensp; Add a user and put em into the sudoers group &nbsp;  
Profile &ensp;-&ensp; Select "Minimal" ( without graphical interface ) &nbsp;  
Audio &ensp;-&ensp; Pipewire is better than PulseAudio &nbsp;  
Kernels &ensp;-&ensp; Linux &nbsp;  
Additional Packages &ensp;-&ensp; None &nbsp;   
Network Configuration &ensp;-&ensp; Use NetworkManager &nbsp;  
Timezone &ensp;-&ensp; Your Time Zone &nbsp;  
Automatic time sync (NTP) &ensp;-&ensp; True &nbsp;   
&nbsp;  
And select "Install"

After a reboot update your system:

	pacman -Syu
    
