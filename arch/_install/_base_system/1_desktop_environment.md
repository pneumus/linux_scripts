# Desktop Environment - Basic Installation Guide

## Install & Customize KDE

Install the Bare Minimum for KDE

    pacman -S xorg plasma-desktop sddm
  
Enable Display Manager & NetworkManager

    systemctl enable sddm
    systemctl enable NetworkManager

Install very important packages

    pacman -S dolphin konsole plasma-nm plasma-pa packagekit-qt5 discover kscreen gwenview gedit firefox spectacle ktorrent ark p7zip unrar
    reboot
  
Setup Bluetooth

    pacman -S bluez bluez-utils bluedevil
    systemctl enable bluetooth

Unchroot and reboot

    exit
    reboot

Customize Look and Feel

- Firefox -> Settings -> General -> Dark
- System Settings
    - General Behavior -> Clicking Files and Folders -> Selects them
    - Appearance -> Global Theme -> Get New Global Themes -> Download a Theme ( i.e. Utterly Sweet ) -> Apply it in Global Themes
    - Appearance -> Icons -> Select Folder Icons ( i.e. BeautyFolders )
    - Display and Monitor -> Night Color
    - Workspace Behavior -> Desktop Effects -> Select the followings:
        - Magic Lamp
        - Blur
          
Add Hotkey for Screenshot

    1. Open Spectacle
    2. Select: Configure -> Shortcuts
    3. Add Win+Shift+S as Capture Rectangular Region

Install yay Package Manager

    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si

