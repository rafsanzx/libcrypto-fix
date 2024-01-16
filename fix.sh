#!/bin/bash

cd /tmp

##for debian need to add kali repo. 

sudo echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list

sudo apt install gnupg -y

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys ED444FF07D8D0BF6

cp /etc/apt/trusted.gpg /etc/apt/trusted.gpg.d

sudo apt update

##done for debian


apt download libcrypt1

dpkg-deb -x libcrypt1*.deb ./

##for aarch64 or arm

sudo cp -av lib/aarch64-linux-gnu/* /lib/aarch64-linux-gnu/

##for x86_64

##sudo cp -av lib/x86_64-linux-gnu/* /lib/x86_64-linux-gnu/

sudo apt --fix-broken install -y

sudo apt update
