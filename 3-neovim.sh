#!/bin/bash

mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/init.vim

cd ~/softwares
# set up the neovim editor
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.tar.gz
tar -xf nvim-linux64.tar.gz
mv nvim-linux64 neovim
mkdir -p neovim/plugged
sed -i '$a export PATH=$SWS/neovim/bin:$PATH' ~/.bashrc
sed -i '$a alias v="nvim"' ~/.bashrc
~/.bashrc

python3 -m pip install neovim pynvim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
~/softwares/neovim/bin/nvim +PlugInstall
~/softwares/neovim/bin/nvim -c 'CocInstall coc-pyright coc-json coc-tsserver' 
