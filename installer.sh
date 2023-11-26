#!/bin/bash
echo "Enter-rozpocznij instalacje";
read n;
mkfs.ext4 /dev/sda3;
mount /dev/sda3 /mnt;
mkswap /dev/sda2;
swapon /dev/sda2;
pacstrap /mnt base linux linux-firmware;
genfstab -U /mnt >> /mnt/etc/fstab;
arch-chroot /mnt;




