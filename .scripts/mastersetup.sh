#!/bin/sh

cd

git clone --bare git@github.com:adautovjr/.dotfiles.git $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout
git --git-dir=$HOME/.dotfiles --work-tree=$HOME config --local status.showUntrackedFiles no

curl -O https://raw.githubusercontent.com/rockymadden/slack-cli/master/src/slack
chmod +x slack

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle -file $HOME/.dotfiles/Brewfile

xcode-select --install