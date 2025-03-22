#!/bin/bash

# Set the setup directory to where this script is located
SETUP_DIR="$(cd "$(dirname "$0")" && pwd)"
INSTALL_PACKAGES_SCRIPT="$SETUP_DIR/install_packages.sh"
SYMLINK_SCRIPT="$SETUP_DIR/symlink_dotfiles.sh"

# Homebrew installation
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to PATH for the session, the dotfile will add it permanently
eval "$(/opt/homebrew/bin/brew shellenv)"

# Run symlink script
bash "$SYMLINK_SCRIPT"

# Run packages install script
bash "$INSTALL_PACKAGES_SCRIPT"

