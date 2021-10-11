# build bridge
apt install bridge-utils uml-utilities
brctl addbr br0
ifconfig br0 up
brctl addif br0 ens33
ifconfig ens33 0.0.0.0
dhclient br0
# tap1
tunctl -b -t tap1
ifconfig tap1 up
brctl addif br0 tap1
# tap2
tunctl -b -t tap2
ifconfig tap2 up
brctl addif br0 tap2

# start vm
qemu-system-x86_64 -m 2048 -enable-kvm -net nic,model=e1000 -net tap,ifname=tap1,script=no,downscript=no ubuntu.img &
qemu-system-x86_64 -m 2048 -enable-kvm -net nic,model=virtio -net tap,ifname=tap2,script=no,downscript=no ubuntu2.img