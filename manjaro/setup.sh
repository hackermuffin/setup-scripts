#!/bin/bash

# Set up logging
logfolder=log
mkdir $logfolder > /dev/null 2>&1
logfile="${logfolder}/$(date +%y.%m.%d.%H.%M.%S)"

./scripts/repo-installer.sh
./scripts/haskell.sh
./scripts/python.sh

