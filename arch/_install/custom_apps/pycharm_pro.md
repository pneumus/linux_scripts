# Install PyCharm Professional on Arch Linux

## Install Prerequisites

  sudo pacman -S appmenu-gtk-module

## Install PyCharm Professional

  git clone https://aur.archlinux.org/pycharm-professional.git
  cd pycharm-professional
  makepkg -si

## Make it run as root

  1. Search for PyCharm in the Start Menu
  2. Right click -> Edit Application
  3. Application Tab -> Advanced Options
  4. Tick "Run as different user" -> Type "root" as username
  5. Click OK

## Customize the Appearance

  1. Press Ctrl+Alt+S to open Settings
  2. Select Editor -> General in the left pane
  3. Tick "Change font size with Ctrl+Mouse" and select "All Editors"
  4. Select "Appearance & Behavior -> Appearance" in the left pane
  5. Choose Theme and Custom Font
