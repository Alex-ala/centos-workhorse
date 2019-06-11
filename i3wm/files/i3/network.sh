#!/usr/bin/env bash
WIFI_SSID=$(iwgetid | awk -v FS="(\")" '{print $2}')
WIFI_ADAPTER=$(iwgetid | awk '{print $1}')
WIFI_IP=$(ip a show dev ${WIFI_ADAPTER} | grep "inet "| awk '{print $2}')

declare -A LAN_IP
LAN_ADAPTERS=$(ip link show | grep "state UP" | grep -vE "(docker|veth|lo|${WIFI_ADAPTER})" | awk '{gsub(":",""); print $2}')
for device in ${LAN_ADAPTERS} ; do
    LAN_IP["${device}"]=$(ip a show dev ${device} | grep "inet "| awk '{print $2}')
done
echo "WLAN SSID:~$WIFI_SSID"
echo "WLAN IP:~$WIFI_IP"
echo "WLAN ADAPTER:~$WIFI_ADAPTER"
for device in ${LAN_ADAPTERS} ; do
    echo "LAN IP:~${LAN_IP[$device]}"
    echo "LAN ADAPTER:~ ${device}"
done

