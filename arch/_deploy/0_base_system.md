# Arch Linux Installation Guide

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

- Sync the Clock

		timedatectl set-ntp true        

Partitioning

- List available partitions and note target <DISK> name

          lsblk
        
- Create partitions
    	Delete all partitions 
		gdisk /dev/nvme0n1
		x z y y 
        cfdisk /dev/nvme0n1
	- Select 'GPT'
        - Create a new 512 Mb partition
        - Create another, larger partition 
        - Write changes & quit
        
    c) Format partitions  
    	mkfs.fat /dev/nvme0n1p1
	mkfs.ext4 /dev/nvme0n1p2
    
    d) Mount partitions
    	mount /dev/nvme0n1p2 /mnt
	mkdir -p /mnt/boot/efi
	mount /dev/nvmen0n1p1 /mnt/boot/efi
    
5. Install the system
	pacstrap /mnt base base-devel linux linux-firmware grub efibootmgr
	pacstrap /mnt dhcpcd iwd wireless_tools vi

6. Generate fstab
	genfstab -U /mnt >> /mnt/etc/fstab
	
7. Chroot into freshly installed Arch Distro
	arch-chroot /mnt /bin/bash	
	
8. Install & Configure Boot Loader
	grub-install /dev/nvme0n1
	grub-mkconfig -o /boot/grub/grub.cfg
	
9. Configure Wireless Tools
	systemctl enable dhcpcd.service
	systemctl enable iwd.service
	groupadd netdev
	gpasswd -a root netdev
	
10. Set password for root user
	passwd

11. Set locale & language
	vi /etc/locale.gen
	Uncomment the desired locale here.
	vi /etc/locale.conf
	LANG=EN-US.UTF-8
	vi /etc/vconsole.conf
	KEYMAP=hu
		
12. Set hostname
	vi /etc/hostname and edit it 

13. Set timezone
	ln -sf /usr/share/zoneinfo/Europe/Zurich /etc/localtime

14. Unmount & Reboot 
	Ctrl+D ( exit chroot )
	umount -R /mnt
	reboot
