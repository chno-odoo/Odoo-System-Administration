#!/bin/bash

# Add this to your .bashrc
#Need to open up the terminal on start, adding the terminal to startup will not work.

# Replace "YourMouseNameHere" with the actual name or partial name that identifies your mouse device
mouse_id=$(xinput list | grep "YourMouseNameHere" | grep -o 'id=[0-9]*' | grep -o '[0-9]*')

#disabling the middle mouse button
if [ ! -z "$mouse_id" ]; then
    xinput set-button-map "$mouse_id" 1 0 3
fi
