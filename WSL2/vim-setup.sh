#!/bin/bash


# Having a "main" shell script that takes commandline args to describe the type of install
# and then having a number of separate install scripts that add on software specific
# to itself

# This is a setup script for Vim installation and configuration
# The setup will also install the plugins that are needed as well.

# XXX add generic variable to hold package-manager install command

apt update -y

if [[ ! -f /usr/bin/vim ]]
then
    apt-get install -y vim
fi

if [[ ! -d /home/tijko/.vim ]]
then
    mkdir -p /home/tijko/.vim/bundle && mkdir -p /home/tijko/.vim/autoload
    chown -R tijko:tijko ~/.vim
fi

# Git setup - break these up into separate scripts
if [[ ! -f /usr/bin/git ]]
then
    apt-get install -y git
    # config
    git config --global user.name "Tim Konick"
    git config --global user.email "konick781@gmail.com"
    # XXX other config options dependent on OS
fi

cd /home/tijko/.vim/bundle
git clone https://github.com/tpope/vim-pathogen
git clone https://github.com/preservim/nerdtree
git clone https://github.com/preservim/tagbar

# XXX curl the ctag.tar.gz and build
cd /tmp
if [[ ! -f /usr/bin/curl ]]
then
    apt-get install -y curl
fi

curl --output ctags.tar.gz -L http://prdownloads.sourceforge.net/ctags/ctags-5.8.tar.gz
tar -zxvf ctags.tar.gz
cd ctags-5.8

if [[ ! -f /usr/bin/make ]]
then
    apt-get install -y make
fi

if [[ ! -f /usr/bin/gcc ]]
then
    apt-get install -y gcc
fi

./configure
make
make install
cd ../
rm -rf ctags*

if [[ ! -d /home/tijko/.ssh ]]
then
    apt-get install -y openssh-client
fi

cd ~/
git clone https://github.com/tijko/dotfiles

cd dotfiles
cp vimrc /etc/vimrc
cp vimrc /home/tijko/.vimrc
chown tijko:tijko /home/tijko/.vimrc
chown -R tijko:tijko /home/tijko/.vim
cp /home/tijko/.vim/bundle/vim-pathogen/autoload/pathogen.vim /home/tijko/.vim/autoload
