#!/bin/bash

# Download pihole installer into rpi-nas/pihole/index.html
wget https://install.pi-hole.net -P rpi-nas/pihole/

# Execute installer
source ./rpi-nas/pihole/index.html

message info "You are now able to access the Pi-hole administrative interface at http://192.168.0.100:80/admin"
