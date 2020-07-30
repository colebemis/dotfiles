# dotfiles

This repo contains my personal dotfiles. Inspired by [Managing Your Dotfiles](https://www.anishathalye.com/2014/08/03/managing-your-dotfiles/).

## Usage

```shell
# Clone repository (including submodules) into ~/.dotfiles directory
git clone --recursive git@github.com:colebemis/dotfiles.git ~/.dotfiles

# Enter ~/.dotfiles directory
cd ~/.dotfiles

# Run bootstrap script
./bootstrap.sh
```

> **Note:** The bootstrap script is ✨ _idempotent_ ✨ meaning that it can safely be run multiple times.
