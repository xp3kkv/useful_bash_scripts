#! /bin/bash

echo "Type your wireless interface name"
read WIFACE
echo "Type the wifi SSID (ex. Telecom-12*****)"
read SSID
echo "Type the wifi password"
read PASSWD 

wpa_passphrase "$SSID" "$PASSWD" > .wpa.conf
sudo wpa_supplicant -B -i $WIFACE -c .wpa.conf
sudo dhcpcd
