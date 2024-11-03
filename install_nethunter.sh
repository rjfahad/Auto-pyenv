#!/bin/bash

# Set up Termux storage access
termux-setup-storage

# Create .hushlogin to disable the welcome message
touch ~/.hushlogin

# Update and upgrade packages
apt update && apt upgrade -y


# Install wget if not already installed
pkg install -y wget

# Download the NetHunter installation script
wget -O install-nethunter-termux https://offs.ec/2MceZWr

# Make the script executable
chmod +x install-nethunter-termux

# Run the NetHunter installation script twice as per your instructions
./install-nethunter-termux
./install-nethunter-termux

echo "NetHunter installation script executed successfully!"
