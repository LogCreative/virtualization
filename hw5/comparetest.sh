sudo -s

# vm 1
modprobe pktgen
lsmod | grep -i pktgen
echo "add_device ens3" > /proc/net/pktgen/kpktgend_0
cat /proc/net/pktgen/ens3
cat /proc/net/pktgen/pgctrl
echo "dst_mac 52:54:00:DE:B8:46" > /proc/net/pktgen/ens3
echo "count 10000" > /proc/net/pktgen/ens3
echo "dst_min 192.168.122.120" > /proc/net/pktgen/ens3
echo "dst_max 192.168.122.120" > /proc/net/pktgen/ens3
echo "start" > /proc/net/pktgen/pgctrl