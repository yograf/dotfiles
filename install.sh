#!/bin/sh

  echo "Yograf installing..."
  sudo apt-get install apt-transport-https ca-certificates -y
  sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
  echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | sudo tee -a /etc/apt/sources.list.d/docker.list
 sudo add-apt-repository ppa:martin-frost/thoughtbot-rcm -y
 sudo add-apt-repository ppa:neovim-ppa/unstable -y
 sudo apt-get update
 sudo apt-get install tmux zsh -y
 apt-get install apparmor -y
 sudo apt-get install docker-engine -y
 sudo service docker start
 sudo usermod -aG docker yog
sudo apt-get install build-essential curl git m4 python-setuptools ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev -y
 sudo apt-get install software-properties-common -y
sudo apt-get install python-dev python-pip python3-dev python3-pip -y
sudo apt-get install neovim -y
sudo pip2 install neovim
sudo pip3 install neovim

sudo apt-get install rcm -y
sudo apt-get install virtualbox-guest-additions-iso -y
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo ln -s /usr/bin/nodejs /usr/bin/node


echo "Cloning Yograf's dotfiles insto .dotfiles"
git clone https://github.com/yograf/dotfiles-1.git ~/.dotfiles

cd .dotfiles
git submodule update --init --recursive

cd $HOME
sudo rm .bashrc
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
#setopt EXTENDED_GLOB
#for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
#done
echo "running RCM's rcup command"
echo "This is symlink the rc files in .dofiles"
echo "with the rc files in $HOME"
echo "---------------------------------------------------------"

rcup

echo "---------------------------------------------------------"
echo "Installing Neovim"
nvim +NeoBundleInstall +qall
echo "Changing to zsh"
chsh -s $(which zsh)

echo "You'll need to log out for this to take effect"
echo "---------------------------------------------------------"


echo "---------------------------------------------------------"
echo 'done'
echo "---------------------------------------------------------"
echo "All done!"
echo "Cheers"
-echo "---------------------------------------------------------"

exit 0
