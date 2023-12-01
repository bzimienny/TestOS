#!/bin/bash
clear
status = 0
dialog --title "Thanks for download" --msgbox"Witaj w instalacji TestOS\n GLHF\n developed by: Mateusz Szymusiak\n press ok to start" 10 70;
cfdisk /dev/sda;
commands=([0]="mkfs.ext4 /dev/sda3"\
       	[1]="mount /dev/sda3 /mnt"\
       	[2]="mkswap /dev/sda2"\
       	[3]="swapon /dev/sda2"\
       	[4]="pacstrap /mnt base linux linux-firmware"\
       	[5]="genfstab -U /mnt"\
       	[6]="archroot /mnt")
for ((x=0;x<10;x++));
do
dialog --title "installation" --gauge "Please wait" 7 70 $status; 
${commands[$x]};
((status+=16));
done




