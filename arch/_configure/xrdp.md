git clone https://aur.archlinux.org/xrdp.git \
cd xrdp \
makepkg -si \
 \
git clone https://aur.archlinux.org/xorgxrdp.git \
cd xorgxrdp \
makepkg -si --skippgpcheck \
 \
systemctl start xrdp

