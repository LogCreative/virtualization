#!/bin/bash

sudo -s

wget https://fast.dpdk.org/rel/dpdk-21.08.tar.xz
tar xf dpdk-21.08.tar.xz
cd dpdk-21.08

apt install meson
apt install python3-pip python3-pyelftools
pip3 install meson

# reboot if necessary

meson build
ninja -C build

# ninja clean -C build
# if necessary

mkdir -p /dev/hugepages
mountpoint -q /dev/hugepages || mount -t hugetlbfs nodev /dev/hugepages
echo 64 > /sys/devices/system/node/node0/hugepages/hugepages-2048kB/nr_hugepages

