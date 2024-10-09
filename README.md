# Dotfiles

This repository contains my configuration files (dotfiles) managed using GNU Stow. These dotfiles can be easily applied on any new machine by following the instructions below.

## Prerequisites

- **GNU Stow**: Ensure that `stow` is installed on your machine.

### Installing GNU Stow on macOS

You can install it via Homebrew:

```bash
brew install stow
```

On other platforms, refer to the respective package manager to install `stow`.

## Structure

Each directory in this repository corresponds to a specific application (e.g., `zsh`, `nvim`, etc.). Inside these directories are the respective configuration files.

## Saving a new configuration

1. **Navigate to the appropriate directory**:

   - Ensure that you are in the root of this repository.

2. **Place your configuration files** in the relevant directory. For example, if you want to save a Neovim config:

   ```bash
   mv ~/.config/nvim ./nvim/.config/
   ```

3. **Use Stow to symlink** the configuration back to the original location:

   ```bash
   stow nvim
   ```

   This will symlink the `nvim` configuration files from the repository to `~/.config/nvim`.

## Applying configurations on a new machine

1. **Clone the repository** to your new machine:

   ```bash
   git clone https://github.com/username/dotfiles.git
   cd dotfiles
   ```

2. **Install Stow** (if not already installed):

   ```bash
   brew install stow  # macOS
   sudo apt install stow  # Debian-based
   sudo pacman -S stow  # Arch-based
   ```

3. **Symlink the configurations**:

   Run the following command for each configuration you want to apply (replace `nvim` with the appropriate directory name):

   ```bash
   stow nvim
   ```

   This will automatically symlink the files to the correct locations in your home directory.

## Updating Configurations

If you modify any config files, simply push the changes to the repository:

```bash
git add .
git commit -m "Update nvim config"
git push
```
