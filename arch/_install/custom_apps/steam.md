# Steam for Arch Linux

1. Enable multilib support \
    sudo vi /etc/pacman.conf \
    Uncomment the [multilib] mirrorlist
3. Refresh package base
    pacman -Sy
4. Install Steam
    pacman -S steam
