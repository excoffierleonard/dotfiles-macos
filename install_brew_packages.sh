#!/bin/bash

# Set your dotfiles directory
DOTFILES_DIR="$HOME/.dotfiles"

# Function to install Homebrew packages using Brewfile
install_brew_packages() {
    if [ -f "$DOTFILES_DIR/Brewfile" ]; then
        echo "Installing Homebrew packages from Brewfile"
        brew bundle --file="$DOTFILES_DIR/Brewfile"
    else
        echo "No Brewfile found in $DOTFILES_DIR"
    fi
}

# Run the function
install_brew_packages
