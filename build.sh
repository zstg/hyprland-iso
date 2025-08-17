#!/usr/bin/env bash
echo "Cleaning up..."
sudo rm -rf output.bak
sudo mv -f output output.bak
echo "Initializing ISO"
sudo mkarchiso -v \
     -D stratos \
     -L "STRATOS" \
     -P "StratOS ISO Team" \
     -w output \
     -o output \
     ./
echo output/*.iso | awk -F/ '{print $NF}'
