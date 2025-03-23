#!/bin/bash

# Set the setup directory to where this script is located
SETUP_DIR="$HOME/.dotfiles/setup"

# Function to install Homebrew packages using Brewfile
brew bundle --file="$SETUP_DIR/Brewfile"

# Function to install rust binary crates
while read crate; do
  cargo install "$crate"
done < "$SETUP_DIR/cargo_binary_crates.txt"

# Function to install npm global packages
for pkg in $(jq -r '.dependencies | keys[]' "$SETUP_DIR/npm_global_packages.json"); do
  npm install -g "$pkg"
done

