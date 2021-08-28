#!/bin/bash

# Abort if error.
set -e

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

MAIN 
