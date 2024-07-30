#!/bin/bash

# Matrix Effect Script

echo "Starting matrix effect..."
sleep 1

# Check if 'cmatrix' is installed
if ! command -v cmatrix &> /dev/null; then
    echo "cmatrix is not installed. Installing..."
    sudo apt-get update && sudo apt-get install -y cmatrix
fi

cmatrix
