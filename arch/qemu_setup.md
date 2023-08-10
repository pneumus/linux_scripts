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
##### Enable Virtualization Service
```sh
sudo systemctl enable --now libvirtd.service
```
###### *Note: The --now switch will enable and start the service immediately*

&nbsp;&nbsp;
##### Add your user to the QEMU group
```sh
sudo usermod -a -G libvirt-qemu "$USER"
```

&nbsp;&nbsp;
##### Test Virtualization Manager
```sh
virt-manager
```
###### *Alternatively you can also start Virtual Machine Manager from the Start Menu aka "Launcher"*
