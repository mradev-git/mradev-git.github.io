#!/bin/bash
# Bash Menu Script Example

echo "Pilih config yang akan digunakan"

PS3='Please enter your choice: '
options=("[Telkomsel] Gamemax" "[Axis] Videobooster" "[XL] Dirumah aja 3GB" "Kembali")
select opt in "${options[@]}"
do
    case $opt in
        "[Telkomsel] Gamemax")
            ./brf -f 118.98.95.120:443 -w akamai.net:443
            ;;
        "[Indosat] Ilmupedia")
            ./brf -f c.shared.global.fastly.net:443,rg-video.ruangguru.com:443 -w fastly.net:443
            ;;
        "[XL] Dirumah aja 3GB")
            echo "On Progress"
            ;;
        "Kembali")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done