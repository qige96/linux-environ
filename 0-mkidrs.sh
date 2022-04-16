# !/bin/bash

# aimed to be run in a brand new linux environment to set up a programming environment

# create a directory for installing softwares
cd ~

if [ ! -d ~/codespace ]; then
    mkdir codespace
fi

if [ ! -d ~/datasets ]; then
    mkdir datasets
fi

if [ ! -d ~/softwares ]; then
    mkdir softwares
fi

if [ ! -f ~/.bashrc ]; then
    touch ~/.bashrc
fi

echo '\n\n\nexport SWS=~/softwares' >> ~/.bashrc

cd softwares

