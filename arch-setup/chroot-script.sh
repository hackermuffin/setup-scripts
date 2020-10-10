
ln -sf /usr/share/zoneinfo/Australia/Canberra /etc/localtime

hwclock --systohc

sed -i 's/#en_AU.UTF-8 UTF-8/en_AU.UTF-8 UTF-8/' /etc/locale.gen
locale-gen
echo 'LANG=en_AU.UTF-8' > /etc/locale.confA

echo 'arch' > /etc/hosthame
echo '127.0.0.1	localhost' >> /etc/hosts
echo '::1		localhost' >> /etc/hosts
echo '127.0.1.1	arch.localdomain	arch' >> /etc/hosts

mkinitcpio -P

passwd

pacman -S grub amd-ucode intel-ucode os-prober efibootmgr

exit
