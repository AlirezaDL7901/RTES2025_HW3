#!/bin/bash


# Configuration
SSID="motorola edge 30_6251"
WIFI_PASSWORD="alireza..79"
INTERFACE="wlan0"
LOGFILE="/var/log/auto-connect.log"  # Absolute path for cron
TIME=$(date "+%Y-%m-%d %H:%M:%S")
{
    echo "[$TIME]"
    echo "Scanning for WiFi"
    nmcli device wifi list

    echo -n "Connected to: "
    CURRENT=$(nmcli -t -f active,ssid device wifi | grep '^yes' | cut -d: -f2)
    echo "${CURRENT:-None}"

    if [[ "$CURRENT" != "$SSID" ]]; then
        echo "Not connected to $SSID. Trying to connect..."
        nmcli device wifi connect "$SSID" password "$WIFI_PASSWORD" >> /dev/null 2>&1
        if [[ $? -eq 0 ]]; then
            echo "Connected to $SSID."
        else
            echo "Failed to connect to $SSID."
        fi
    else
        echo "Connected already"
    fi

    echo "-----------------------------"
} >> "$LOGFILE" 2>&1
