#!/bin/bash

# Define the list of packages to install
PACKAGES=("git" "vim" "curl")

# Loop through each package and check if it's installed
for PACKAGE in "${PACKAGES[@]}"; do
    if dpkg -l | grep -qw "$PACKAGE"; then
        echo "✅ $PACKAGE is already installed."
    else
        echo "⏳ Installing $PACKAGE..."
        sudo apt-get install -y "$PACKAGE" && echo "✅ $PACKAGE installed successfully." || echo "❌ Failed to install $PACKAGE."
    fi
done
