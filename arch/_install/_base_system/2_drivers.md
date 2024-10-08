# Install Drivers for Arch Linux

### Missing Firmware

Check Point 5.4 on [this page](https://wiki.archlinux.org/title/Mkinitcpio#Possibly_missing_firmware_for_module_XXXX)




To automatically deploy the missing firmware for an Alienware X14 execute [this](https://github.com/user-attachments/files/16737419/install_firmware.zip) Bash Script 

### NVIDIA Proprietary Driver Setup for Arch Linux

Check your Video Card(s) and Driver(s)

    lspci -k | grep -A 2 -E "(VGA|3D)"

Update your system

    sudo pacman -Syyu

Install necessary packages

    pacman -S nvidia nvidia-utils lib32-nvidia-utils nvidia-settings nvidia-prime vulkan-icd-loader vulkan-tools vulkan-icd-loader xorg-server-devel opencl-nvidia 

Reboot

    reboot

Note: To execute a specific program with the NVIDIA Card ( ie. Vulkan Support ) user [prime-run](https://wiki.archlinux.org/title/PRIME#PRIME_render_offload)


Alternatively:

Download the driver from NVIDIA's webpage
![image](https://github.com/sonus89/linux_scripts/assets/10185202/4292c6d9-c63c-45dc-8d5f-2248aa934a0d)


# MX-Keys ( Keyboard & Mouse ) with Unifying Receiver ( dongle )

    sudo pacman -Sy solaar
