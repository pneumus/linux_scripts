# Install Drivers for Arch Linux

### NVIDIA Proprietary Driver Setup for Arch Linux

Check your Video Card(s) and Driver(s)

    lspci -k | grep -A 2 -E "(VGA|3D)"

Update your system

    sudo pacman -Syyu

Install necessary packages

    sudo pacman -S nvidia nvidia-utils nvidia-settings xorg-server-devel opencl-nvidia

Reboot

    reboot
