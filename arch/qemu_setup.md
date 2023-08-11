# QEMU Setup for Arch Linux
>This tutorial is based on the ArchWiki of [KVM](https://wiki.archlinux.org/title/KVM) and [QEMU](https://wiki.archlinux.org/title/QEMU)

&nbsp;&nbsp;
##### Check if your Hardware supports Virtualization   
```sh
LC_ALL=C lscpu | grep Virtualization
```
###### *Note: The correct response is VT-x for Intel and AMD-V for AMD*

&nbsp;&nbsp;
##### Enable Virtualization in BIOS ( UEFI )
- Print your motherboard details
    ```sh
  cat /sys/devices/virtual/dmi/id/board_{vendor,name,version}
    ```   
- Based on the details, google how to enable Virtualization in BIOS ( UEFI ) and enable it

&nbsp;&nbsp;
##### Install Prerequisites
```sh
sudo pacman -S qemu libvirt edk2-ovmf virt-manager virt-viewer swtpm iptables-nft dnsmasq
```


&nbsp;&nbsp;
##### Install the polkit for your Desktop Environment
&emsp;Check the ArchWiki for [Polkit](https://wiki.archlinux.org/title/Polkit) to install the necessary package
###### *Note: The package is called polkit-kde-agent for KDE and polkit-gnome for Gnome Environment*

&nbsp;&nbsp;
##### Enable Virtualization Service
```sh
sudo systemctl enable --now libvirtd.service
```
###### *Note: The --now switch will enable and start the service immediately*

&nbsp;&nbsp;
##### Add your user to the QEMU related groups and reboot the PC
```sh
sudo usermod -a -G libvirt-qemu "$USER"
sudo usermod -a -G libvirt "$USER"
reboot
```

&nbsp;&nbsp;
##### Open the Virtual Machine Manager
```sh
virt-manager
```
###### *Note: You can also start 'Virtual Machine Manager' from your Launcher aka 'Start Menu'*

&nbsp;&nbsp;
##### Configure Connection in Virtual Machine Manager
  - Select: File -> Add Connection
  - For Hypervisor, select: "QEMU/KVM user session"
  - Tick "Autoconnect"
  - Click "Connect"

&nbsp;&nbsp;
##### Install and Setup different Operating Systems
&emsp;[Windows 10](https://github.com/sonus89/linux_scripts/blob/master/arch/qemu_windows.md)

