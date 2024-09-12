# Environment Setup

This document provides the necessary commands to recreate the environment using the dotfiles repository.

## Steps to Recreate the Environment

1. **Clone the dotfiles repository to the home directory:**

   Open a terminal and run the following command to clone your dotfiles repository:

   ```sh
   git clone https://github.com/excoffierleonard/dotfiles-macos.git ~/.dotfiles
   ```

2. **Make the necessary scripts executable (if they are not already):**

   Ensure the necessary scripts are executable:

   ```sh
   chmod +x ~/.dotfiles/setup/symlink_dotfiles.sh
   chmod +x ~/.dotfiles/setup/install_brew_packages.sh
   chmod +x ~/.dotfiles/setup/setup.sh
   chmod +x ~/.dotfiles/.scripts/system_update.sh
   chmod +x ~/.dotfiles/.scripts/todo.sh
   ```

3. **Execute the setup script:**

   Finally, run the setup script to symlink the dotfiles and install the Homebrew packages:

   ```sh
   ~/.dotfiles/setup/setup.sh
   ```

## Additional Notes

- Regularly run the system_update command (script) to update the Homebrew packages, the Nvim Lazy plugins, the Nvim Mason plugins, and push all the changes to the repo:

  ```sh
  system_update
  ```

- Ensure you have Homebrew installed on your machine. If Homebrew is not installed, you can install it by running:

  ```sh
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

- The setup script (`setup.sh`) will:
  - Symlink all dotfiles and directories that start with a dot from the `.dotfiles` directory to your home directory.
  - Install Homebrew packages as specified in the `Brewfile` located in the `setup` directory.

With these steps, the environment should be set up in a way that mirrors the configured dotfiles and installed Homebrew packages.
