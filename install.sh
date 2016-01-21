#!/bin/sh

  echo "Yograf installing..."
 sudo add-apt-repository ppa:martin-frost/thoughtbot-rcm -y
 sudo add-apt-repository ppa:neovim-ppa/unstable -y
 sudo apt-get update
 sudo apt-get install tmux zsh -y
sudo apt-get install build-essential curl git m4 python-setuptools ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev -y
 sudo apt-get install software-properties-common -y
sudo apt-get install python-dev python-pip python3-dev python3-pip -y
sudo apt-get install neovim -y
sudo pip2 install neovim
sudo pip3 install neovim

sudo apt-get install rcm -y
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo ln -s /usr/bin/nodejs /usr/bin/node


echo "Cloning Yograf's dotfiles insto .dotfiles"
git clone https://github.com/yograf/dotfiles-1.git ~/.dotfiles

cd .dotfiles
git submodule update --init --recursive

cd $HOME
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
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
