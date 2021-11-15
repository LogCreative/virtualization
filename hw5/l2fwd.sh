sudo apt-get update --fix-missing
sudo apt install pkg-config
export RTE_SDK=~/dpdk-21.08
export RTE_TARGET=x86_64-native-linuxapp-gcc
cd ~/dpdk-21.08/examples/l2fwd
make