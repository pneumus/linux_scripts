# KDE and Basic Software Installation Guide

Install KDE ( Bare Minimum )

    pacman -S xorg plasma-desktop plasma-wayland-session sddm
  
Enable Display Manager & NetworkManager

    systemctl enable sddm
    systemctl enable NetworkManager

Install very important packages

    pacman -S dolphin konsole spectacle firefox plasma-nm plasma-pa ktorrent usbutils git base-devel openssh gwenview ark gedit wget

Setup Bluetooth

    pacman -S bluez bluez-utils bluedevil
    systemctl enable bluetooth

Disable KDE Wallet ( Optional )

    rm -rf  ~/.config/kwalletrc && printf "[Wallet]\nEnabled=false" > ~/.config/kwalletrc
    reboot

Install Franz for Messaging

    Download the AppImage
        https://meetfranz.com/
    sudo cp Franz.AppImage /usr/local/bin/franz
    sudo chmod +x /usr/local/bin/franz
    
