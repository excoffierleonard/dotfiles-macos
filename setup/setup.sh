#!/bin/bash

# Set the setup directory to where this script is located
SETUP_DIR="$(cd "$(dirname "$0")" && pwd)"
INSTALL_PACKAGES_SCRIPT="$SETUP_DIR/install_packages.sh"
SYMLINK_SCRIPT="$SETUP_DIR/symlink_dotfiles.sh"

# Run packages install script
if [ -f "$INSTALL_PACKAGES_SCRIPT" ]; then
    bash "$INSTALL_PACKAGES_SCRIPT"
else
    echo "Homebrew install script not found: $INSTALL_PACKAGES_SCRIPT"
fi

# Run symlink script
if [ -f "$SYMLINK_SCRIPT" ]; then
    bash "$SYMLINK_SCRIPT"
else
    echo "Symlink script not found: $SYMLINK_SCRIPT"
fi

