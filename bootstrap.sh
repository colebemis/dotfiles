#!/bin/bash 

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

symlink() {
  local source="${BASEDIR}/${1}"
  local target=$2

  ln -fs $source $target
}

echo_ok() {
  echo -e '\033[1;32m'"$1"'\033[0m'
}

echo_warn() {
  echo -e '\033[1;33m'"$1"'\033[0m'
}

echo_error() {
  echo -e '\033[1;31mERROR: '"$1"'\033[0m'
}
 

bootstrap_homebrew() {
  # Check if Homebrew is installed
  if [ ! $(which brew) ]; then
    echo_ok "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  else
    echo_ok "Updating Homebrew..."
    brew update
  fi

  echo_ok "Installing Homebrew packages..."
  brew install nvm
  brew install tmux
  brew install yarn

  echo_ok "Installing Homebrew Cask apps..."
  brew cask install 1password
  brew cask install alfred
  brew cask install figma
  brew cask install firefox
  brew cask install google-chrome
  brew cask install insomnia
  brew cask install iterm2
  brew cask install kap
  brew cask install slack
  brew cask install spotify
  brew cask install visual-studio-code
  brew cask install zoomus

  echo_ok "Installing fonts..."
  brew tap homebrew/cask-fonts
  brew cask install font-jetbrains-mono
}


bootstrap_zsh() {
  #echo_ok "Installing Oh My Zsh..."
  #TODO: don't exit after installing
  #sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  echo_ok "Updating zsh plugins..."
  git submodule update --init --recursive

  echo_ok "Symlinking zsh config files..."
  symlink zshrc ~/.zshrc
  symlink cole.zsh-theme ~/.oh-my-zsh/custom/themes
  symlink zsh-autosuggestions ~/.oh-my-zsh/custom/plugins
  symlink zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins
}

bootstrap_vim() {
  echo_ok "Symlinking vimrc..."
  symlink vimrc ~/.vimrc
}

bootstrap_git() {
  echo_ok "Symlinking gitconfig..."
  symlink gitconfig ~/.gitconfig
}

#bootstrap_node() {
  #TODO: install node
  #TODO: install global npm packages (dark-mode-alfred)
  #npm install --global alfred-dark-mode
#}

bootstrap_tmux() {
  echo_ok "Symlinking tmux.conf..."
  symlink tmux.conf ~/.tmux.conf
}

bootstrap_vscode() {
  #TODO: symlink settings.json

  echo_ok "Installing VS Code extensions..."
  code --install-extension dbaeumer.vscode-eslint
  code --install-extension GitHub.vscode-pull-request-github
  code --install-extension eamodio.gitlens 
  code --install-extension silvenon.mdx
  code --install-extension esbenp.prettier-vscode
  code --install-extension vscodevim.vim
  code --install-extension jpoissonnier.vscode-styled-components
  code --install-extension wix.vscode-import-cost
}

main() {
  bootstrap_homebrew
  bootstrap_zsh
  bootstrap_vim
  bootstrap_git
  bootstrap_tmux
  #bootstrap_node
  bootstrap_vscode
}

main

