Install the bare minimum KDE

    pacman -S xorg plasma-desktop plasma-wayland-session sddm
  
Enable Display Manager & NetworkManager

    systemctl enable sddm

Install very important packages

    pacman -S plasma-nm plasma-pa konsole spectacle firefox ktorrent 

Setup Bluetooth

    pacman -S bluez bluez-utils bluedevil
    systemctl enable bluetooth.service

Disable KDE Wallet ( Optional )

    rm -rf  ~/.config/kwalletrc && printf "[Wallet]\nEnabled=false" > ~/.config/kwalletrc
