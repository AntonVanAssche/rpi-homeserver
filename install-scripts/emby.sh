#!/bin/bash

embyVersion="4.6.7.0"

message info "Installing emby-server..."
wget https://github.com/MediaBrowser/Emby.Releases/releases/download/"$embyVersion"/emby-server-deb_"$embyVersion"_armhf.deb
sudo apt install ./emby-server-deb_"$embyVersion"_armhf.deb -y
rm -rf ./emby-server-deb_"$embyVersion"_armhf.deb
