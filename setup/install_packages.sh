#!/bin/bash

# Set the setup directory to where this script is located
SETUP_DIR="$HOME/.dotfiles/setup"

# Function to install Homebrew packages using Brewfile
brew bundle --file="$SETUP_DIR/Brewfile"

# Function to install rust binary crates
for crate in $(cat "$SETUP_DIR/rust_binary_crates.txt"); do
  cargo install "$crate"
done

# Function to install npm global packages
for pkg in $(jq -r '.dependencies | keys[]' "$SETUP_DIR/npm_global_packages.json"); do
  npm install -g "$pkg"
done

