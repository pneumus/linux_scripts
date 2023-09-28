# Desktop Environment - Basic Installation Guide

## Install & Customize KDE

Install the Bare Minimum for KDE

    pacman -S xorg plasma-desktop plasma-wayland-session sddm
  
Enable Display Manager & NetworkManager

    systemctl enable sddm
    systemctl enable NetworkManager
    reboot

Install very important packages

    pacman -S dolphin konsole spectacle plasma-nm plasma-pa ktorrent gwenview ark unrar p7zip gedit packagekit-qt5 discover

Disable KDE Wallet ( Optional )

    rm -rf  ~/.config/kwalletrc && printf "[Wallet]\nEnabled=false" > ~/.config/kwalletrc
    reboot
    
Setup Bluetooth

    pacman -S bluez bluez-utils bluedevil
    systemctl enable --now bluetooth

Add Hotkey to Spectacle

    1. Open Spectacle
    2. Select: Configure -> Shortcuts
    3. Add Win+Shift+S as Capture Rectangular Region

Customize Look and Feel
- General Bahavior -> Clicking Files and Folders -> Selects them
- Optionally open "Global Theme" and select "Breeze Dark"

Install Browser 

- Firefox

        pacman -S firefox
    
- Google Chrome ( or Brave )
        
        pacman -Syu yay
        yay -Syu google-chrome 
        ( yay -Syu brave )

Install Wine

1. Uncomment multilib section in /etc/pacman.conf

        [multilib]
        Include = /etc/pacman.d/mirrorlist

2. Install necessary libraries

        pacman -Sy wine wine-gecko wine-mono

- Alternatively you can install wine-wayland from [here](https://github.com/varmd/wine-wayland)
      
