# Install & Configure Windows 98 for QEMU

#### Create a folder and enter it
```console
mkdir win98se_vm
cd win98se_vm
```

#### Create QCOW2 Image
```console
qemu-img create -f qcow2 w98.qcw 1024M
```
#### Download the *.IMA file to the folder from [here](https://github.com/JHRobotics/patcher9x/releases/) and rename it to fd.ima

#### Clone the git repo
git clone git@github.com:JHRobotics/patcher9x.git

#### Setup the virtual hardware & Boot Up
```console
qemu-system-i386 -nodefaults -rtc base=localtime -display sdl \
-M pc,accel=kvm,hpet=off,usb=off -cpu host \
-device VGA -device lsi -device ac97 \
-netdev user,id=net0 -device pcnet,rombar=0,netdev=net0 \
-drive if=floppy,format=raw,file=fd.ima \
-drive id=win98,if=none,file=w98.qcw -device scsi-hd,drive=win98 \
-cdrom w98se.iso -boot a
```
