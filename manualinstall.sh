#!/bin/bash
# for whoever read this, this is not simple installer, 
# in this script we need to build by ourselves, using golang and other,
# which result to get bigger download / quotas up to 500MB,so this method is only for emergency
#if other method fails

echo "Welcome to simple setup brainF"
echo "credit woiden group"
read -p "Press any key to start"
echo "Installing requirement"
pkg install git golang -y

echo "Building BrF"
go get -v -u -d github.com/aztecrabbit/brainfuck-psiphon-pro-go
cd ~/go/src/github.com/aztecrabbit/brainfuck-psiphon-pro-go
go build -ldflags "-s -w"

echo "Building tnnl core"
go get -v -u -d github.com/Psiphon-Labs/psiphon-tunnel-core/ConsoleClient
cd ~/go/src/github.com/Psiphon-Labs/psiphon-tunnel-core/ConsoleClient
go build -ldflags "-s -w" -o ~/go/src/github.com/aztecrabbit/brainfuck-psiphon-pro-go/psiphon-tunnel-core

cd ~/go/src/github.com/aztecrabbit/brainfuck-psiphon-pro-go
 ./brainfuck-psiphon-pro-go
