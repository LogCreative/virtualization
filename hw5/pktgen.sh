sudo apt install git pkg-config numactl libnuma-dev libpcap-dev
git clone git://dpdk.org/apps/pktgen-dpdk
cd pktgen-dpdk
export RTE_SDK=~/dpdk-21.08
export RTE_TARGET=x86_64-native-linuxapp-gcc
make