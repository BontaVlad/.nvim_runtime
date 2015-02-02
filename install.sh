#!/bin/bash
clear

#use sudo rights for the whole script
sudo -s <<Procedure

clear

echo -----------------------------------
echo "Installing development enviroment"
echo -----------------------------------
echo "   "
sleep 2


# Add all the repositories
echo "Adding Repositories"
(
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | 
#add-apt-repository ppa:neovim-ppa/unstable -y
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e[39m'; # Hide all output

echo "Updating System"
( apt-get update) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e[39m'; # Hide all output

echo "Installing Git"
(
apt-get install git -y
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e[39m'; # Hide all output

echo "Installing python-pip"
(
apt-get install python-pip
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e[39m'; # Hide all output

echo "Installing python-dev"
(
apt-get install python-dev
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e[39m'; # Hide all output

echo "Installing liffi-dev"
(
apt-get install libffi-dev
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e[39m'; # Hide all output

echo "Installing ncurses-term"
(
apt-get install ncurses-term
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e[39m'; # Hide all output

echo "Installing NeoVim"
(
apt-get install neovim -y
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e[39m'; # Hide all output

echo "Installing The Silver Searcher"
(
apt-get install silversearcher-ag -y
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e[39m'; # Hide all output

echo "Installing Zsh"
(
apt-get install zsh -y
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e[39m'; # Hide all output

echo "Installing Prezto — Instantly Awesome Zsh"
(
#git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
#zsh
#setopt EXTENDED_GLOB
#for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
#done
#chsh -s /bin/zsh
#exit
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e[39m'; # Hide all output
echo "Skiping Prezto --> TOTO: fix bug"

echo "Installing NeoBundle package manager"
(
./neobundle_install.sh
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e[39m'; # Hide all output

echo "Installing Vimrcs"
echo 'set runtimepath+=~/.nvim_runtime

source ~/.nvim_runtime/vimrcs/nvimrc.vim
source ~/.nvim_runtime/vimrcs/filetypes.vim
source ~/.nvim_runtime/vimrcs/pluginsrc.vim'

> ~/.nvimrc
ln -s ~/.nvimrc ~/.vimrc


Procedure
notify-send "NeoVim dev" "Finished installing"
exit 0
