# QEMU Setup for Arch Linux

>This tutorial is based on the ArchWiki of [KVM](https://wiki.archlinux.org/title/KVM) and [QEMU](https://wiki.archlinux.org/title/QEMU)

##### Check if your Hardware supports Virtualization   

```sh
LC_ALL=C lscpu | grep Virtualization
```
**Note: The correct response is VT-x for Intel and AMD-V for AMD**


##### Enable Virtualization in BIOS ( UEFI ) - if not enabled
  - Print your motherboard details
    ```sh
    cat /sys/devices/virtual/dmi/id/board_{vendor,name,version}
    ```   
  - Based on your motherboard details, google how to enable Virtualization in BIOS ( UEFI ) & Enable it

##### Install prerequisites
```sh
sudo pacman -S qemu libvirt edk2-ovmf virt-manager virt-viewer swtpm iptables-nft dnsmasq
```
