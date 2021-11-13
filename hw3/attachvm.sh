#!/bin/bash
sudo -s
# Install the vm1
virt-install --connect qemu:///system -n vm1 -r 1024 --vcpus=1 --disk path=/VMShared/virtualization/vmenv/ubuntu.img,size=10 --vnc --noautoconsole --os-variant linux --accelerate --hvm --import
# Start the virt-manager
virt-manager