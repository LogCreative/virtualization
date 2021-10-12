# !/bin/bash

sudo -s

# install vm
qemu-img create -f qcow2 ubuntu.img 10G
# cd ~/Documents/virtualization
wget https://mirror.sjtu.edu.cn/ubuntu-cd/18.04.6/ubuntu-18.04.6-desktop-amd64.iso
qemu-system-x86_64 -m 2048 -enable-kvm ubuntu.img -cdrom ./ubuntu-18.04.6-desktop-amd64.iso

##  INSIDE VM 
##  sudo dpkg-reconfigure unattended-upgrades
##  sudo apt-get install net-tools netperf
##  ifconfig

# copy vm
cp ubuntu.img ubuntu2.img