sudo -s
qemu-img create -f qcow2 ubuntu.img 10G
qemu-system-x86_64 -m 2048 -enable-kvm ubuntu.img -cdrom ./ubuntu-18.04.5-desktop-amd64.iso
