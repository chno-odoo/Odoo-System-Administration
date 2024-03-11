#!/bin/bash

# This script is used to revert the kernel back to 6.2.x

curl -s 'https://download.odoo.com/static/misc/2024-02-07_linux_6_5_hold_kernel.patch' | sudo bash
