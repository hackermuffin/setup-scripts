#!/bin/bash

timedatectl set-ntp true

echo "Disk partitioning not handled by this script. Please manually mount partitions before use"

echo "Updating mirrorlist to AU mirrors:"
reflector --save /etc/pacman.d/mirrorlist

echo "Installing inital packages"
pacstrap /mnt base linux linux-firmware vim networkmanager

genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt

# need to copy script and run inside
