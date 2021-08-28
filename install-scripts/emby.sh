#!/bin/bash

EMBY_VERSION="4.6.4.0"

message info "Installing emby-server..."
wget https://github.com/MediaBrowser/Emby.Releases/releases/download/"$EMBY_VERSION"/emby-server-deb_"$EMBY_VERSION"_armhf.deb
sudo apt install ./emby-server-deb_"$EMBY_VERSION"_armhf.deb -y
