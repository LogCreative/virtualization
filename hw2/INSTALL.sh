#!/bin/bash

cd /home/
curl -O https://download.qemu.org/qemu-5.2.0.tar.xz
tar -xvf qemu-5.2.0.tar.xz
cd qemu-5.2.0
mkdir build
cd build
sudo apt-get install glib2.0-dev libglib2.0-dev libfdt-dev libpixman-1-dev zlib1g-dev
sudo apt-get install git-email
sudo apt-get install libaio-dev libbluetooth-dev libbrlapi-dev libbz2-dev
sudo apt-get install libcap-dev libcap-ng-dev libcurl4-gnutls-dev libgtk-3-dev
sudo apt-get install libibverbs-dev libjpeg8-dev libncurses5-dev libnuma-dev
sudo apt-get install librbd-dev librdmacm-dev
sudo apt-get install libsasl2-dev libsdl1.2-dev libseccomp-dev libsnappy-dev libssh2-1-dev
sudo apt-get install libvde-dev libvdeplug-dev libxen-dev liblzo2-dev
sudo apt-get install valgrind xfslibs-dev
sudo apt-get install libnfs-dev libiscsi-dev
sudo apt-get install ninja-build
sudo apt-get install libsdl1.2-dev
../configure --enable-kvm --enable-debug --enable-vnc --enable-werror --target-list="x86_64-softmmu"
make -j8
make install
