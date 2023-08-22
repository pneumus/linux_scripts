#!/bin/sh

# Auto-Deploy Arch Linux Base System on an Alienware X14 Laptop

# Load the Hungarian Keyboard Layout
loadkeys hu

# Request Wifi SSID and Password
echo "Wifi SSID:"
read wifi_ssid
echo "Wifi Password:"
read wifi_password
iwctl --passphrase $wifi_password station wlan0 connect $ssid


