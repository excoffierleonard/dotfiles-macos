#!/bin/bash

# Update Homebrew and dump the new Brewfile
brew update 
brew upgrade 
brew bundle dump --describe --force --file="$HOME/.dotfiles/setup/Brewfile"

# Update App Store packages
mas upgrade

# Update Lazy.nvim plugins
nvim --headless "+Lazy! sync" +qa
# FIXME: Mason Update sometimes does not work.
# Update Mason plugins
nvim --headless +"MasonUpdate" +qa

#TODO: Find way to simply track the crates.toml and maybe find if there is a file keeping track of installed npm packages

# Update rust binary crates
rustup update stable
cargo install-update -a
cat ~/.cargo/.crates2.json | jq -r '.installs | keys[] | split(" ")[0]' > ~/.dotfiles/setup/rust_binary_crates.txt

# Update global npm packages
npm update -g
npm list -g --depth=0 --json > "$HOME/.dotfiles/setup/npm_global_packages.json"

# Commit and push changes to the dotfiles repository
cd "$HOME/.dotfiles" || { echo "Failed to change directory to ~/.dotfiles"; exit 1; }
git add .
git commit -m "System Update."
git push

echo "System update and plugin updates completed successfully."
