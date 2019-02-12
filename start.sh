#!/bin/bash
set -e

# Build a configuration file from environment variables.
/buildConfig.sh > aw-bulkdevices-script/AirWatchConfig.json
# Pull latest script from GitHub
cd aw-bulkdevices-script && git pull
pwsh
