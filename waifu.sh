#!/bin/bash

echo "Wifi scan (maybe you should change your network interface): "
echo "(Press q for stop the scan)"

nmcli d wifi list ifname wlan0

echo "Stopping scan..."
sleep 2

echo "Choose your network name1"
read SSID
echo "Write network password"
read passwd

nmcli d wifi connect $SSID password $passwd ifname wlan0
