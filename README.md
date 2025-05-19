# dotfiles

This repo contains my personal dotfiles. Inspired by [Managing Your Dotfiles](https://www.anishathalye.com/2014/08/03/managing-your-dotfiles/).

## Usage

```shell
# Clone dotfiles as a "bare" repo
gh repo clone colebemis/dotfiles .dotfiles -- --bare

# Load dotfiles from remote repo
alias mygit='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
mygit config --local status.showUntrackedFiles no
mygit checkout

# Install Oh My Zsh
# https://ohmyz.sh/#install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
