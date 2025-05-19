# dotfiles

This repo contains my personal dotfiles. Inspired by [Managing Your Dotfiles](https://www.anishathalye.com/2014/08/03/managing-your-dotfiles/).

## Prerequisites

- [ ] [Install Homebrew](https://brew.sh/)

  ```shell
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

- [ ] [Install GitHub CLI](https://github.com/cli/cli#installation)

  ```shell
  brew install gh
  gh auth login
  ```

- [ ] [Install Oh My Zsh](https://ohmyz.sh/#install)

  ```shell
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```

## Install

```shell
# Clone dotfiles as a "bare" repo
gh repo clone colebemis/dotfiles .dotfiles -- --bare

# Load dotfiles from remote repo
alias mygit='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
mygit config --local status.showUntrackedFiles no
mygit checkout
```
