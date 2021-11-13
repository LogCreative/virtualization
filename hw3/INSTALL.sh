#!/bin/bash

sudo -s

apt-get install virt-manager

# Install Dependencies
apt-get install pkg-config libxml2-dev libgnutls28-dev libdevmapper-dev libnl-3-dev libnl-route-3-dev libpciaccess-dev libyajl-dev xsltproc

# Compile and install libvirt
wget https://libvirt.org/sources/libvirt-4.10.0.tar.xz
tar -xvf libvirt-4.10.0.tar.xz
cd libvirt-4.10.0
./autogen.sh
make -j4
make install
ldconfig   # refresh dynamic link library
ln -s /var/run/libvirt/libvirt-sock /usr/local/var/run/libvirt/libvirt-sock # manual link