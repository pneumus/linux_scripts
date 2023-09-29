# Install Drivers for Arch Linux

### NVIDIA Proprietary Driver Setup for Arch Linux

Check your Video Card(s) and Driver(s)

    lspci -k | grep -A 2 -E "(VGA|3D)"

Update your system

    sudo pacman -Syyu

Install necessary packages

    pacman -S nvidia nvidia-utils lib32-nvidia-utils nvidia-settings vulkan-icd-loader vulkan-icd-loader xorg-server-devel opencl-nvidia vulkan-tools

Reboot

    reboot

Note: To execute a specific program with the NVIDIA Card ( ie. Vulkan Support ) user [prime-run](https://wiki.archlinux.org/title/PRIME#PRIME_render_offload)
