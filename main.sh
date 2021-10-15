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
sudo apt-get update
sudo apt-get install google-chrome-stable


# uninstall firefox
sudo apt remove firefox


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
nvm install --lts


# install peek
# https://github.com/phw/peek
sudo add-apt-repository ppa:peek-developers/stable
sudo apt update
sudo apt install peek


# gnome tweak tools and extensions
sudo apt install gnome-tweak-tool
sudo apt install gnome-shell-extensions
sudo apt install chrome-gnome-shell
