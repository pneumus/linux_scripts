# Clone the git repository
git clone https://github.com/kholia/OSX-KVM.git

# Change directory to OSX-KVM
cd OSX-KVM/

# Fetch OSX
./fetch-macOS-v2.py

# Convert the image
qemu-img convert BaseSystem.dmg -O raw BaseSystem.img

# Create virtual machine - with desired size
qemu-img create -f qcow2 mac_hdd_ng.img 30G

# Edit virtual machine preferences
vi OpenCore-Boot.sh 

# Run script
./OpenCore-Boot.sh 

