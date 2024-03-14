#!/bin/bash

# This script reverts the Linux Firmware back to base Ububtu firmware.

sudo sed -i '/GRUB_CMDLINE_LINUX="/s/pcie_aspm=off"/"/' /etc/default/grub
sudo apt reinstall linux-firmware firmware-sof-signed
sudo update-grub
sudo apt update
sudo apt upgrade -y
sudo reboot

