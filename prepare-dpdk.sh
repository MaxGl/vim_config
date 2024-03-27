#!/bin/bash

set -x

sudo dpdk-hugepages.py -p 1G --setup 2G
sudo modprobe uio_pci_generic
sudo dpdk-devbind.py --bind=uio_pci_generic 0000:00:03.0
sudo dpdk-devbind.py --bind=uio_pci_generic 0000:00:04.0
