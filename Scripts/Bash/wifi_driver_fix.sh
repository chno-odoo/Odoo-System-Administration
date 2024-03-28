#!/bin/bash

# A set of commands that can be a potential fix for wifi driver issues on newer laptops.

sudo apt update
sudo apt install git dkms
git clone https://github.com/HRex39/rtl8852be.git
cd rtl8852be
make
sudo make install
sudo modprobe 8852be