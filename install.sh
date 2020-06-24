#!/bin/bash
#for whoever read this i am trying to create this script simple as possible, my target is for termux (android)
#so i'll prefer whatever available options / program that present on default termux
#thats why i dont use git, if u prefer git version, for transparancy reason maybe, please check on git bellow
#all of the program used on this script is from multiple source, i'll drop them below
#https://github.com/aztecrabbit/brainfuck-psiphon-pro-go
#https://rureka.com/brainfuck-psiphon-pro-go-version-untuk-openwrt-linux-macos-dan-windows/

#echo -e "\e[1mbold\e[0m"
echo "              Welcome to simple setup BrainF"
echo "      Requirement : Termux, Socksdroid/tun2tap/proxydroid(root)"
echo "---------------------------------------------------------------"
echo -e "   \e[1mCredit : aztecrabbit, rureka.com, Woiden.com\e[0m"
echo "---------------------------------------------------------------"
echo ""
echo -e "   \e[1mFor Sockdroid and others apps you can install it from Playstore\e[0m"
echo "  Untuk Tun2tap, Socksdroid bisa didapatkan dari playstore"
echo ""
echo -e "   \e[1mPress any key to start\e[0m"
read -n 1 -p "   Masukkan huruf y untuk memulai"
echo ""
curl -s -O http://mraa.me/start.sh
chmod +x start.sh
mkdir Brainfuck
cd Brainfuck
echo -e "\e[1mInstalling requirement\e[0m"
echo "Menginstall tools yang dibutuhkan "
pkg install wget -y -qq
echo ""
echo -e "\e[1mDownloading and extracting essential files\e[0m"
echo "Mendownload dan mengekstrak file-file inti"
#curl -# -O http://mraa.me/startGamemax.sh
wget -q http://mraa.me/config.json
wget -q http://mraa.me/config.sh
wget -q http://mraa.me/brf.zip
#curl -O 
#chmod +x 
#original server (rureka.com) delete hastag bellow
#curl -o brf.zip http://rureka.com/download/brainfuck-psiphon-pro-go/brainfuck-psiphon-pro-go-linux-amd64.zip
unzip brf.zip
chmod +x brf
chmod +x psiphon-tunnel-core
chmod +x config.sh
echo ""
echo -e "\e[1mSETUP COMPLETE\e[0m"
echo "INSTALASI SELESAI"
cd ..
echo ""
echo -e "\e[1mPlease run 'bash start' next time to start brainfuck\e[0m"
echo "Silahkan tulis "bash start" untuk menjalankan brainf seterusnya"
echo ""
echo ""
echo "Apakah anda ingin menjalankan brainfuck"
PS3='Masukkan pilihan anda: '
options=("Jalankan BrainF" "Update Config" "Keluar")
select opt in "${options[@]}"
do
    case $opt in
        "Jalankan BrainF")
            bash start.sh
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

