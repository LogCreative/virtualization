ifconfig ens3 down # disable the tap netcard
ifconfig ens6 down
sudo modprobe uio_pci_generic # start driver
./usertools/dpdk-devbind.py --status
./usertools/dpdk-devbind.py --bind=uio_pci_generic 00:03.0
./usertools/dpdk-devbind.py --bind=uio_pci_generic 00:06.0