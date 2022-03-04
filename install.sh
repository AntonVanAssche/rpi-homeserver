#!/bin/bash

# Abort if error.
set -e

dir="$(pwd)"

date=$(date +"%d-%m-%Y")
time=$(date +"%T")

logDir="$dir/log"
logFile="$logDir/$date-$time.log"

# Create the LOG_DIR if no exists.
mkdir -p $logDir

cd $HOME

source $dir/install-scripts/utils.sh

osCheck

function main() {

   message quest "Press enter to begin installation (automatically install after 10s):"
   read -t10

   askForSudo

   source $dir/install-scripts/packages.sh

   source $dir/install-scripts/network.sh

   source $dir/install-scripts/emby.sh

   source $dir/install-scripts/grafana.sh

   source $dir/install-scripts/transmission.sh

   source $dir/install-scripts/pihole.sh

   source $dir/install-scripts/pivpn.sh

}

main 2>&1 | tee -a "$logFile"
