#!/bin/bash
$write_disc;

function disc(){
	dialog --begin 10 30 --backtitle "Instalation TestOS" --title "Formatowanie dyskow" --msgbox "Teraz wybierz i popartycjonuj dysk za pomoca cfdisk. :)" 10 30;
	lsblk;
	echo "Press enter";
	read choose;
	dialog --begin 10 30 --backtitle "Instalation TestOS" --title "Formatowanie dyskow" --inputbox "Wpisz dysk" 10 30> $write_disc;
	dialog --begin 10 30 --backtitle "Instalation TestOS" --title "UWAGA!!!" --msgbox "Teraz wejdziesz do cfdisk stworz partycje proponowane:\n1-boot(1GB)\n2-swap(2GB)\n3-ext4(reszta)";
	sudo cfdisk $write_disc;



}
dialog --begin 10 30 --backtitle "Instalation TestOS" --msgbox "Witaj w instalacji TestOS\nPostepuj wedlug wskazowek\nHave fun!\n\n\nDeveloped by Mateusz Szymusiak" 20 40;

disc;
