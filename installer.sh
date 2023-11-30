#!/bin/bash
dialog --title "Thanks for download" --msgbox"Witaj w instalacji TestOS\n GLHF\n developed by: Mateusz Szymusiak\n press ok to start" 10 70;
cfdisk /dev/sda
mkfs.ext4 /dev/sda3;
mount /dev/sda3 /mnt;
mkswap /dev/sda2;
swapon /dev/sda2;
pacstrap /mnt base linux linux-firmware;
genfstab -U /mnt >> /mnt/etc/fstab;
arch-chroot /mnt;




