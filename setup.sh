#!/bin/bash

# Path to the scripts
SYMLINK_SCRIPT="$HOME/.dotfiles/symlink_dotfiles.sh"
BREW_SCRIPT="$HOME/.dotfiles/install_brew_packages.sh"

# Run symlink script
if [ -f "$SYMLINK_SCRIPT" ]; then
    bash "$SYMLINK_SCRIPT"
else
    echo "Symlink script not found: $SYMLINK_SCRIPT"
fi

# Run Homebrew install script
if [ -f "$BREW_SCRIPT" ]; then
    bash "$BREW_SCRIPT"
else
    echo "Homebrew install script not found: $BREW_SCRIPT"
fi
