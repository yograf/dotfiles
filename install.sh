#!/bin/sh

echo "Yograf installing..."
sudo apt-get update

# docker GPG 
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | sudo tee -a /etc/apt/sources.list.d/docker.list

#rcm repo
sudo add-apt-repository ppa:martin-frost/thoughtbot-rcm -y

#nvim repo
sudo add-apt-repository ppa:neovim-ppa/unstable -y

sudo apt-get update


sudo apt-get install tmux zsh php5-cli -y

#silver searcher - http://geoff.greer.fm/ag/
echo "Installing silver searcher"
sudo apt-get install silversearcher-ag -y

ehco "Installing Docker"
sudo apt-get install apparmor -y
sudo apt-get install docker-engine -y
sudo service docker start
sudo usermod -aG docker y
sudo apt-get install build-essential curl git m4 python-setuptools ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev -y
sudo apt-get install software-properties-common -y
sudo apt-get install python-dev python-pip python3-dev python3-pip -y

# Neovim
echo "installing neovim"
sudo apt-get install neovim -y
sudo pip2 install neovim
sudo pip3 install neovim

echo "installing diff-highlight"
sudo pip install diff-highlight

echo "Installing docker compose"
sudo pip install docker-compose
sudo apt-get install rcm -y

echo "Installing Node.js"
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo ln -s /usr/bin/nodejs /usr/bin/node

echo "Installing Composer and Drush"
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
composer global require drush/drush:dev-master

echo "Cloning Yograf's dotfiles insto .dotfiles"
git clone https://github.com/yograf/dotfiles-1.git ~/.dotfiles

cd .dotfiles
git submodule update --init --recursive

cd $HOME

echo "Installing Prezto"
git clone --recursive https://github.com/yograf/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
ln -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zlogin" .zlogin 
ln -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zlogout" .zlogout
ln -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zpreztorc" .zpreztorc
ln -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zprofile" .zprofile
ln -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv" .zshenv 
ln -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" .zshrc 

echo "running RCM's rcup command"
echo "This is symlink the rc files in .dofiles"
echo "with the rc files in $HOME"
echo "---------------------------------------------------------"

rcup

echo "---------------------------------------------------------"
echo "Changing to zsh"
sudo chsh -s $(which zsh)

echo "Installing Neovim"
nvim +NeoBundleInstall +qall

echo "You'll need to log out for this to take effect"
echo "---------------------------------------------------------"

echo "---------------------------------------------------------"
echo 'done'
echo "---------------------------------------------------------"
echo "All done!"
echo "Cheers"
-echo "---------------------------------------------------------"

exit 0
