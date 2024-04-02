#!/bin/bash

# This script will be used to disble wifi powersaver permanately.

# Check if the script is looking is running as root.
if [ "$(id -u)" -ne "0"]; then
    echo "This script must be run as root." >&2
    exit 1
fi

# Create the configuration file to disable Wi-Fi power saving.
cat << EOF > /etc/NetworkManager/conf.d/wifi-powersave.conf
[connection]
wifi.powersaver = 2
EOF

echo "Wi-Fi power saving has been disabled."

# Restart network manager.
systemctl restart NetworkManager
echo "Network Manager restarted." 

