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
  - Google how to enable Virtualization in BIOS ( UEFI ) based on the printed details and enable it

&nbsp;&nbsp;
##### Install Prerequisites
```sh
sudo pacman -S qemu libvirt edk2-ovmf virt-manager virt-viewer swtpm iptables-nft dnsmasq
```

&nbsp;&nbsp;
##### Enable Virtualization Daemon
```sh
sudo systemctl enable --now libvirtd.service
```
###### *Note: The --now switch will enable and start immediately*
