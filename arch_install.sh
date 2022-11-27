# Install Base System
pacstrap --noconfirm /mnt base base-devel linux linux-firmware vi
# Generate FSTAB
genfstab -U /mnt >> /mnt/etc/fstab
# Change Root into installed Linux
arch-chroot /mnt /bin/bash
# Install & Configure Boot Loader
pacman --noconfirm -S grub
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
# Install & Enable Network Manager
pacman --noconfirm -S networkmanager
systemctl enable NetworkManager
# Set locale & language & keyboard layout
sed -i 's/#en_US/en_US/g' /etc/locale.gen
echo "LANG=EN-US.UTF-8" > /etc/locale.conf
echo "KEYMAP=hu" > /etc/vconsole.conf
# Set hostname
echo "archlinux" > /etc/hostname 
# Set timezone
ln -sf /usr/share/zoneinfo/Europe/Budapest /etc/localtime
# Set Root Password
passwd
# Exit Chroot & Unmount & Reboot 
Ctrl+D ( exit chroot )
umount -R /mnt
