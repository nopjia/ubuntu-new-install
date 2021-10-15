#!/bin/bash

set -e


# setup directories

mkdir -p ~/code
mkdir -p ~/nop
mkdir -p ~/nop/personal
mkdir -p ~/nop/work
mkdir -p ~/nop/screenshots
cp ./images/cat_by_niqole-lee_square.jpg ~/nop/personal
cp ./images/purple_wallpaper.jpg ~/nop/personal


# write bash aliases

cat >> ~/.bash_aliases <<EOF
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias open='xdg-open > /dev/null 2>&1'
EOF


# install google chrome
# https://www.ubuntuupdates.org/ppa/google_chrome

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update
sudo apt install -y google-chrome-stable


# uninstall firefox
sudo apt remove -y firefox


# install software

sudo snap install tusk
sudo snap install vlc
sudo snap install code --classic
sudo snap install sublime-text --classic
sudo snap install emote
sudo snap install slack --classic


# install nvm
# https://github.com/creationix/nvm

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install --lts


# install peek
# https://github.com/phw/peek
sudo add-apt-repository -y ppa:peek-developers/stable
sudo apt update
sudo apt install -y peek


# gnome tweak tools and extensions
sudo apt install -y gnome-tweak-tool
sudo apt install -y gnome-shell-extensions
sudo apt install -y chrome-gnome-shell
