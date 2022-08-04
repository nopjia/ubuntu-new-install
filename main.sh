#!/bin/bash

set -e

# setup directories
mkdir -p ~/bin
mkdir -p ~/code
mkdir -p ~/nop
mkdir -p ~/nop/personal
cp ./images/cat_by_niqole-lee_square.jpg ~/nop/personal
cp ./images/purple_wallpaper.jpg ~/nop/personal

# write bash aliases
cat >> ~/.bash_aliases <<EOF
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
EOF

# install dependencies
sudo apt update
sudo apt upgrade -y --allow-downgrades
sudo apt install -y openssh-server

# install software
sudo apt install -y terminator
sudo snap install tusk
sudo snap install vlc
sudo snap install emote
sudo snap install spotify
sudo snap install code --classic
sudo snap install sublime-text --classic
sudo snap install slack --classic
sudo snap install zoom-client

# install google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# install nvm
# https://github.com/creationix/nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install --lts

# install git
sudo apt install -y git git-lfs
git lfs install
cat >> ~/.gitconfig <<EOF
[credential]
  helper = store
[alias]
  cam = commit -am
  st = status
  df = diff
  co = checkout
  br = branch
  bra = branch -a
  lg = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative
EOF

# install peek
# https://github.com/phw/peek
sudo add-apt-repository -y ppa:peek-developers/stable
sudo apt update
sudo apt install -y peek

# link python
sudo ln -s /usr/bin/python3 /usr/bin/python

# gnome tweak tools and extensions
sudo apt install -y gnome-tweaks
sudo apt install -y gnome-shell-extensions
sudo apt install -y chrome-gnome-shell

# cleanup
sudo apt autoremove -y
