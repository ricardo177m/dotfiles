#!/bin/bash

# /usr/lib/systemd/system-sleep/post-suspension.sh

if [ $1 == "post" ]; then
    logger -t post-sleep Turning off bluetooth
    sleep 2
    bluetoothctl power off
fi

