echo "Installing from main repositories..."
sudo pacman -Syyuu deja-dup firefox code screen neofetch cmatrix htop lutris gparted keepassxc ranger rclone yay gimp inkscape vlc texlive-core

# discord virtualbox (and host modules) wireguard wine

echo
echo "Installing from AUR..."
yay -Syyuu
yay -S zotero zoom teams multimc5 --noconfirm
