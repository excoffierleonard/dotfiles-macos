#!/bin/bash
# TODO: Find way to exclude all of .config to be symlink, and find way to only symlink specific files in .config

# Set the dotfiles directory to the parent directory of where this script is located
DOTFILES_DIR="$(dirname "${BASH_SOURCE[0]}" && cd .. && pwd)"
BACKUP_DIR="$HOME/dotfiles_backup_$(date +%Y%m%d%H%M%S)"

# Function to create symlinks
create_symlinks() {
    # Find all files and directories that start with a dot in the dotfiles directory and iterate over them
    find "$DOTFILES_DIR" -mindepth 1 -name ".*" -print0 | while IFS= read -r -d '' source; do
        # Extract the relative path from the DOTFILES_DIR
        relative_path="${source#$DOTFILES_DIR/}"

        # Define the target symlink path
        target="$HOME/$relative_path"

        # If target exists, back it up
        if [ -L "$target" ] || [ -f "$target" ] || [ -d "$target" ]; then
            mkdir -p "$BACKUP_DIR"
            mv "$target" "$BACKUP_DIR"
            echo "Moved existing $relative_path to backup"
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
