#!/bin/bash

# Update Homebrew and dump the new Brewfile
brew update 
brew upgrade 
brew bundle dump --describe --force --file="$HOME/.dotfiles/setup/Brewfile"

# Update Lazy.nvim plugins
nvim --headless "+Lazy! sync" +qa

# FIXME: Mason Update sometimes does not work.
# Update Mason plugins
nvim --headless +"MasonUpdate" +qa

# Commit and push changes to the dotfiles repository
cd "$HOME/.dotfiles" || { echo "Failed to change directory to ~/.dotfiles"; exit 1; }
git add .
git commit -m "System Update."
git push

echo "System update and plugin updates completed successfully."
