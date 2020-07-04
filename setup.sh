#!/bin/bash

xcode-select --install

# install home brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# make sure Brew file is in this dir
cd ~/setupOSX
brew bundle

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
nvm install node
nvm use node

npm i -g browser-sync

cd ~/setupOSX
cp .aliases .gitconfig .gitexcludes ~
