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
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | 
add-apt-repository ppa:neovim-ppa/unstable -y
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e[39m'; # Hide all output

echo "Updating System"
( apt-get update) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e[39m'; # Hide all output

echo "Installing Git"
(
apt-get install git -y
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
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
zsh
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
exit
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e[39m'; # Hide all output
echo "'chsh -s /bin/zsh' to set zsh as your default shell"

echo "Installing NeoBundle package manager"
(
neobundle_install.sh
) &> /dev/null && echo -e '\e[32mOK\e[39m' || echo -e '\e[31mFAILED\e[39m'; # Hide all output

Procedure
notify-send "NeoVim dev" "Finished installing"
exit 0
