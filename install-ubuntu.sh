sudo apt-get install gnome-terminal -y
sudo apt-get install chromium-browser -y
sudo apt-get install git -y
sudo apt-get install curl -y
sudo apt-get install build-essential -y
sudo apt-get install software-properties-common -y
sudo apt-get install python-dev python-pip python3-dev python3-pip -y
#rcm repo
sudo add-apt-repository ppa:martin-frost/thoughtbot-rcm -y

#nvim repo
sudo add-apt-repository ppa:neovim-ppa/unstable -y

sudo apt-get update

#silver searcher - http://geoff.greer.fm/ag/
echo "Installing silver searcher"
sudo apt-get install silversearcher-ag -y
sudo apt-get install  m4 python-setuptools ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev -y
sudo apt-get install python-dev python-pip python3-dev python3-pip -y

# Neovim
echo "installing neovim"
sudo apt-get install neovim -y
sudo pip2 install neovim
sudo pip3 install neovim

cd $HOME

echo "Installing Prezto"
git clone --recursive https://github.com/yograf/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
sudo ln -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zlogin" .zlogin 
sudo ln -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zlogout" .zlogout
sudo ln -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zpreztorc" .zpreztorc
sudo ln -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zprofile" .zprofile
sudo ln -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv" .zshenv 
sudo ln -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" .zshrc 
git clone https://github.com/yograf/dotfiles.git ~/.dotfiles
sudo apt-get install rcm -y
sudo apt-get install gnome-do -y

sudo add-apt-repository ppa:noobslab/macbuntu -y
sudo apt-get update
sudo apt-get install macbuntu-os-icons-lts-v7 -y
sudo apt-get install macbuntu-os-ithemes-lts-v7 -y
cd && wget -O Mac.po http://drive.noobslab.com/data/Mac/change-name-on-panel/mac.po
cd /usr/share/locale/en/LC_MESSAGES; sudo msgfmt -o unity.mo ~/Mac.po;rm ~/Mac.po;cd
wget -O launcher_bfb.png http://drive.noobslab.com/data/Mac/launcher-logo/apple/launcher_bfb.png
sudo mv launcher_bfb.png /usr/share/unity/icons/
sudo apt-get install libreoffice-style-sifr -y

sudo add-apt-repository ppa:aacebedo/fasd -y
sudo apt-get update
sudo apt-get install fasd -y

curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt-get install -y nodejs -y
pip3 install thefuck

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn -y
