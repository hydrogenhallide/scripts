#!/bin/bash
# List connections
nmcli connection show

# Modify ipv4                        
sudo nmcli connection modify "$1" ipv4.dns "$2"
sudo nmcli connection modify "$1" ipv4.ignore-auto-dns yes

# Modify ipv4                        
sudo nmcli connection modify "$1" ipv6.dns "$3"
sudo nmcli connection modify "$1" ipv6.ignore-auto-dns yes

# Reconnect
sudo nmcli connection down "$1"
sudo nmcli connection up "$1"
