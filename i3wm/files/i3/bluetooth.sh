#!/usr/bin/env bash
PAIRED=$(echo "paired-devices" | bluetoothctl | awk '/^Device/{$1 = ""; gsub(/^ /, "", $0); print;}' )
CONTROLLER=$(echo "show" | bluetoothctl)
OWN_MAC=$(echo "${CONTROLLER}" | grep -Em1 "^Controller " | cut -d ' ' -f 2)
POWERED=$(echo "${CONTROLLER}" | grep Powered | cut -d ' ' -f2)
DISCOVERABLE=$(echo "${CONTROLLER}" | grep Discoverable | cut -d ' ' -f2)
echo "Controller~${OWN_MAC}"
echo "Powered~${POWERED}"
echo "Discoverable~${DISCOVERABLE}"
IFS=$'\n'
for device in $PAIRED ; do
    mac=$(echo "${device}" | cut -d ' ' -f1)
    device_connected=$(echo "info ${mac}" | bluetoothctl | awk '/Connected/{print $2;}')
    device=$(echo "${device}" | cut -d ' ' -f2)
    echo "${device}~${device_connected}"
done
