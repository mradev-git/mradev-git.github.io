#!/bin/bash
# Bash Menu Script Example
clear
echo "Pilih config yang akan digunakan"

PS3='Please enter your choice: '
options=("[Telkomsel] Gamemax" "[Indosat] Ilmupedia" "[XL] Dirumah aja 3GB" "Kembali")
select opt in "${options[@]}"
do
    case $opt in
        "[Telkomsel] Gamemax")
            ./brainfuck/brf -f 118.98.95.120:443 -w akamai.net:443
            break
            ;;
        "[Indosat] Ilmupedia")
            ./brainfuck/brf -f c.shared.global.fastly.net:443,rg-video.ruangguru.com:443 -w fastly.net:443
            break
            ;;
        "[XL] Dirumah aja 3GB")
            echo "On Progress"
            break
            ;;
        "Kembali")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done