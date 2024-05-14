#!/bin/bash

# Set the setup directory to where this script is located
SETUP_DIR="$(cd "$(dirname "$0")" && pwd)"

# Function to install Homebrew packages using Brewfile
install_brew_packages() {
    if [ -f "$SETUP_DIR/Brewfile" ]; then
        echo "Installing Homebrew packages from Brewfile"
        brew bundle --file="$SETUP_DIR/Brewfile"
    else
        echo "No Brewfile found in $SETUP_DIR"
    fi
}

# Run the function
install_brew_packages
