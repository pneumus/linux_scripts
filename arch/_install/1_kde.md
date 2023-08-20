# KDE and Basic Software Installation Guide

Install KDE ( Bare Minimum )

    pacman -S xorg plasma-desktop plasma-wayland-session sddm
  
Enable Display Manager & NetworkManager

    systemctl enable sddm
    systemctl enable NetworkManager

Install very important packages

    pacman -S dolphin konsole spectacle firefox plasma-nm plasma-pa ktorrent usbutils git base-devel openssh gwenview ark gedit

Setup Bluetooth

    pacman -S bluez bluez-utils bluedevil
    systemctl enable bluetooth

Disable KDE Wallet ( Optional )

    rm -rf  ~/.config/kwalletrc && printf "[Wallet]\nEnabled=false" > ~/.config/kwalletrc
