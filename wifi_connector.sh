#! /bin/bash

SSID="SSID"
PASSWD="wifi_password"
WIFACE="wireless_interface"

wpa_passphrase "$SSID" "$PASSWD" > .wpa.conf
wpa_supplicant -B -i $WIFACE -c .wpa.conf
dhcpcd

