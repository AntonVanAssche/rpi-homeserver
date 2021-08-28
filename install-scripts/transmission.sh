#!/bin/bash

message info "Installing transmission-daemon..."
sudo apt install transmission-daemon -y
sudo systemctl stop transmission-daemon

message info "Configuring transmission-daemon..."
sudo cp -r ./configs/settings.json /etc/transmission-daemon/settings.json
sudo chown debian-transmission:debian-transmission /etc/transmission-daemon/settings.json
sudo systemctl start transmission-daemon -y
