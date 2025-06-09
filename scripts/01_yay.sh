sudo pacman -Syu base-devel git --needed
git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay
makepkg -si
yay -Syu
