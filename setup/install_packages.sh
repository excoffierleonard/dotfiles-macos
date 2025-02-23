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

install_mas_packages() {
    if [ -f "$SETUP_DIR/rust_binary_crates.txt" ]; then
        cut -d ' ' -f1 mas_manifest.txt | xargs -I {} mas install {}
    else
        echo "No rust_binary_crates.json found in $SETUP_DIR"
    fi
}

# Function to install rust binary crates
install_rust_binary_crates() {
    if [ -f "$SETUP_DIR/rust_binary_crates.txt" ]; then
        while read crate; do
            cargo install "$crate"
        done < "$SETUP_DIR/rust_binary_crates.txt"
    else
        echo "No rust_binary_crates.json found in $SETUP_DIR"
    fi
}

# Function to install npm global packages
install_npm_global_packages(){
    for pkg in $(jq -r '.dependencies | keys[]' "$SETUP_DIR/npm_global_packages.json"); do
        npm install -g "$pkg"
    done
}

# Run the functions
install_brew_packages
install_mas_packages
install_rust_binary_crates
install_npm_global_packages

