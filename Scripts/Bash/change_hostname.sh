#!/bin/bash

# This script changes the hostname of a Linux machine by using the hostnamectl command and updating the /etc/hosts file. It takes the old and new hostname as input and prints a success message after the change is made.

# Define the old and new hostname
old_hostname="Add old hostname here"
new_hostname="Add new hostname here"

# Use the hostnamectl command to set the new hostname
sudo hostnamectl set-hostname $new_hostname

# Update the /etc/hosts file to replace the old hostname with the new one
sudo sed -i "s/$old_hostname/$new_hostname/g" /etc/hosts

# Print a success message
echo "Hostname successfully changed from $old_hostname to $new_hostname"
```

