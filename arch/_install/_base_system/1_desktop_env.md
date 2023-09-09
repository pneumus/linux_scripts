# Desktop Environment - Basic Installation Guide

## Install KDE

Install the Bare Minimum for KDE

    pacman -S xorg plasma-desktop plasma-wayland-session sddm
  
Enable Display Manager & NetworkManager

    systemctl enable sddm
    systemctl enable NetworkManager

Install very important packages

    pacman -S dolphin konsole spectacle plasma-nm plasma-pa ktorrent gwenview ark gedit

Disable KDE Wallet ( Optional )

    rm -rf  ~/.config/kwalletrc && printf "[Wallet]\nEnabled=false" > ~/.config/kwalletrc
    reboot
    
Setup Bluetooth

    pacman -S bluez bluez-utils bluedevil
    systemctl enable bluetooth

Install Browser 

- Firefox

        pacman -S firefox
    
- Google Chrome ( or Brave )
        
        pacman -Syu yay
        yay -Syu google-chrome 
        ( yay -Syu brave )

          
