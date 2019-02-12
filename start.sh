#!/bin/bash
set -e

# Build a configuration file from environment variables.
/buildConfig.sh > aw-bulkdevices-script/AirWatchConfig.json

pwsh -WorkingDirectory aw-bulkdevices-script
