#!/bin/bash


echo "              Welcome to BrainF"
echo "      Requirement : Termux, Socksdroid/tun2tap/proxydroid(root)"
echo "---------------------------------------------------------------"
echo "   Credit : aztecrabbit, rureka.com, Woiden.com"
echo "---------------------------------------------------------------"
echo ""
echo -e "   \e[1mFor Sockdroid and others apps you can install it from Playstore\e[0m"
echo "  Untuk Tun2tap, Socksdroid bisa didapatkan dari playstore"
echo ""

echo "Pilih menu yang ada dibawah ini"

PS3='Masukkan pilihan anda: '
options=("Jalankan BrainF" "Update Config" "Kembali")
select opt in "${options[@]}"
do
    case $opt in
        "Jalankan BrainF")
            ./Brainfuck/config.sh
            ;;
        "Update Config")
            wget mraa.me/config.sh -O Brainfuck/config.sh
            ;;
        "Keluar")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done