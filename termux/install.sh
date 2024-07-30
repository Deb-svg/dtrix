#!/bin/bash

# Update and upgrade packages
pkg update -y
pkg upgrade -y

# Install necessary packages
pkg install -y git python clang

# Clone the dtrix repository
git clone https://github.com/Deb-svg/dtrix-demo.git
cd dtrix-demo

# Setup the environment
chmod +x dtrix-termux.sh
echo "dtrix setup complete. Run './dtrix-termux.sh' to start the tool."
