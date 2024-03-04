# Desktop Environment - Basic Installation Guide

## Install & Customize KDE

Install the Bare Minimum for KDE

    pacman -S xorg plasma-desktop sddm
  
Enable Display Manager & NetworkManager

    systemctl enable sddm
    systemctl enable NetworkManager

Install very important packages

    pacman -S dolphin konsole plasma-nm plasma-pa packagekit-qt5 discover kscreen gwenview gedit firefox ark spectacle ktorrent
    reboot
  
Setup Bluetooth

    pacman -S bluez bluez-utils bluedevil
    systemctl enable bluetooth

Unchroot and reboot

    exit
    reboot

Configure Keyboard Layout
1. System Settings
2. Input Devices
3. Keyboard
4. Layouts
5. Tick "Configure Layouts"
6. Click +Add and Apply

Add Hotkey for Screenshot

    1. Open Spectacle
    2. Select: Configure -> Shortcuts
    3. Add Win+Shift+S as Capture Rectangular Region

Customize Look and Feel
- General Bahavior -> Clicking Files and Folders -> Selects them
- Optionally open "Global Theme" and select "Breeze Dark"
- Optionally open "Display Configuration" and enable "Night Color"

Install yay Package Manager

    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si

