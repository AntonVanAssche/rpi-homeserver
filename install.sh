#!/bin/bash

# Abort if error.
set -e

DIR="$HOME/rpi-homeserver"

DATE=$(date +"%d-%m-%Y")
TIME=$(date +"%T")

LOG_DIR="$DOTFILES/log"
LOG_FILE="$LOG_DIR/$DATE-$TIME.log"

# Create the LOG_DIR if no exists.
mkdir -p $LOG_DIR

cd $HOME

source ./install-scripts/utils.sh

OS_CHECK

function MAIN() {

message quest "Press enter to begin installation (automatically install after 10s):"
read -t10

ASK_FOR_SUDO

source ./install-scripts/packages.sh

source ./install-scripts/network.sh

source ./install-scripts/emby.sh

source ./install-scripts/grafana.sh

source ./install-scripts/transmission.sh

source ./install-scripts/pihole.sh

source ./install-scripts/pivpn.sh

}

main | tee -a "$LOG_FILE"
