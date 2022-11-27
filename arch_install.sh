#!/bin/bash

# After doing the partitioning with cfdisk ( see: arch_install in this repo )
# pacman -Sy git 
# clone the repo via the HTTPS URL
# chmod 2777 arch_install.sh
# chown root arch_install.sh

# Sync the clock
timedatectl set-ntp true
# Install Base System
#pacstrap /mnt base base-devel linux linux-firmware vi
# Generate FSTAB
#genfstab -U /mnt >> /mnt/etc/fstab

deploy_func () {
  # Install & Configure Boot Loader
  pacman --noconfirm -S grub
  grub-install /dev/sda
  grub-mkconfig -o /boot/grub/grub.cfg
  # Install & Enable Network Manager
  pacman --noconfirm -S networkmanager
  systemctl enable NetworkManager
  # Set Locale & Set Language & Set Keyboard Layout
  sed -i 's/#en_US/en_US/g' /etc/locale.gen
  echo "LANG=EN-US.UTF-8" > /etc/locale.conf
  echo "KEYMAP=hu" > /etc/vconsole.conf
  # Set hostname
  echo "archlinux" > /etc/hostname 
  # Set timezone
  ln -sf /usr/share/zoneinfo/Europe/Budapest /etc/localtime
  # Set Root Password
  passwd
}

#export -f deploy_func
# Change Root into installed Linux
#arch-chroot /mnt /bin/bash -c "deploy_func"

# Exit Chroot & Unmount & Reboot 
#exit
#umount -R /mnt
#reboot
