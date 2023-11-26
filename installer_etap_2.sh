#!/bin/bash
ln -sf /usr/share/zoneinfo/Europe/Warsaw /etc/localtime;
hwclock --systohc;
locale-gen;
touch /etc/locale.conf;
echo "LANG=pl_PL.UTF-8">/etc/locale.conf;
echo "KEYMAP=pl">/etc/vconsole.conf;
echo "FONT=Lat2-terminus16">>/etc/vconsole.conf;
echo "FONT_MAP=8859-2">>/etc/vconsole.con;
touch /etc/hostname;
echo "TestOS">/etc/hostname;
pacman -S pulseaudio openldap jdk-openjdk dhcpcd git clang lxqt lightdm lightdm-gtk-greeter libreoffice ettercap kitty vim intellij-idea-community-edition ;
systemctl enable dhcpcd;
systemctl enable lightdm;
systemctl enable lightdm-gtk-greeter;
grub-install /dev/sda;
grub-mkconfig -o /boot/grub/grub.cfg;
pacman -Suy;
echo "teraz utwoz uzyktownika (useradd -m -G wheel -s /bin/bash user)";
