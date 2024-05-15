# Environment Setup

This document provides the necessary commands to recreate your environment using your dotfiles repository.

## Steps to Recreate the Environment

1. **Clone the dotfiles repository to the home directory:**

   Open a terminal and run the following command to clone your dotfiles repository:

   ```sh
   git clone https://git.jisoonet.com/el/dotfiles.git ~/.dotfiles
   ```

2. **Navigate to the `setup` directory:**

   After cloning the repository, navigate to the `setup` directory using:

   ```sh
   cd ~/.dotfiles/setup
   ```

3. **Make the setup scripts executable (if they are not already):**

   Ensure the setup scripts are executable:

   ```sh
   chmod +x symlink_dotfiles.sh
   chmod +x install_brew_packages.sh
   chmod +x setup.sh
   ```

4. **Execute the setup script:**

   Finally, run the setup script to symlink the dotfiles and install the Homebrew packages:

   ```sh
   ./setup.sh
   ```

## Additional Notes

- Regularly check that the Brewfile is up-to-date and that the changes were pushed to the repo:

  ```sh
  brew bundle dump --describe --force --file="~/.dotfiles/setup/Brewfile"
  ```

- Ensure you have Homebrew installed on your machine. If Homebrew is not installed, you can install it by running:

  ```sh
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

- The setup script (`setup.sh`) will:
  - Symlink all dotfiles and directories that start with a dot from the `.dotfiles` directory to your home directory.
  - Install Homebrew packages as specified in the `Brewfile` located in the `setup` directory.

With these steps, your environment should be set up in a way that mirrors your configured dotfiles and installed Homebrew packages.
