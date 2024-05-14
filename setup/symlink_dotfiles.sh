#!/bin/bash

# Set the dotfiles directory to the parent directory of where this script is located
DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# Function to create symlinks
create_symlinks() {
    # Find all files and directories that start with a dot in the dotfiles directory and iterate over them
    find "$DOTFILES_DIR" -mindepth 1 -name ".*" -print0 | while IFS= read -r -d '' source; do
        # Extract the relative path from the DOTFILES_DIR
        relative_path="${source#$DOTFILES_DIR/}"

        # Define the target symlink path
        target="$HOME/$relative_path"

        # Remove existing symlink or file/directory
        if [ -L "$target" ] || [ -f "$target" ] || [ -d "$target" ]; then
            rm -rf "$target"
            echo "Removed existing $relative_path"
        fi

        # Ensure the parent directory exists
        mkdir -p "$(dirname "$target")"

        # Create the new symlink
        ln -s "$source" "$target"
        echo "Symlinked $relative_path from $DOTFILES_DIR"
    done
}

# Run the function
create_symlinks
