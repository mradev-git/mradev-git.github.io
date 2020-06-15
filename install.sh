#!/bin/bash
#for whoever read this i create as simple as possible, my target is for termux
#so i'll prefer whatever available options / program that present on default termux
#thats why i dont use git, if u prefer git version, for transparancy reason maybe, please check on git bellow
#all of the program used on this script is from multiple source, i'll drop them below
#https://github.com/aztecrabbit/brainfuck-psiphon-pro-go
#https://rureka.com/brainfuck-psiphon-pro-go-version-untuk-openwrt-linux-macos-dan-windows/


echo "              Welcome to simple setup BrainF"
echo "      Requirement : Termux, Socksdroid/tun2tap/proxydroid(root)"
echo "---------------------------------------------------------------"
echo "  Credit : aztecrabbit, rureka.com, Woiden group"
echo "---------------------------------------------------------------"
echo ""
echo "  For Sockdroid and others apps you can install it from Playstore"
echo ""
read -p "   Press any key to start"
mkdir Brainfuck
cd Brainfuck
echo "Downloading and extracting essential files"
curl -O -s -# http://mraa.me/brf.zip
#curl -O 
#chmod +x 
#original server (rureka.com) delete hastag bellow
#curl -o brf.zip http://rureka.com/download/brainfuck-psiphon-pro-go/brainfuck-psiphon-pro-go-linux-amd64.zip
unzip -j -n brf.zip
echo "SETUP COMPLETE"
echo "Please run './startGamemax' next time to start brainfuck"
read -p "Press any key to exit," 
chmod +x brainfuck-psiphon-pro-go
chmod +x psiphon-tunnel-core
./brainfuck-psiphon-pro-go

