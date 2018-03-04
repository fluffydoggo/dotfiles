#!/bin/bash

# Finds the relative path of the dotfiles dir from $PWD.
# e.g. if user runs ./dotfiles/install.sh, 
# then DOTFILES is ./dotfiles
DOTFILES=`dirname $0`
# Symlink root files to dotfiles
ln -f -s ${DOTFILES}/.vimrc ~/.vimrc
ln -f -s ${DOTFILES}/.tmux.conf ~/.tmux.conf

# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Brew Packages
brew install tmux
brew install git
brew cask install iterm2



