#!/bin/bash
set -e

# Build a configuration file from environment variables.
/buildConfig.sh > aw-bulkdevices-script/AirWatchConfig.json
# Pull latest script from GitHub
git pull https://github.com/MrTechGadget/aw-bulkdevices-script.git

pwsh -WorkingDirectory aw-bulkdevices-script
