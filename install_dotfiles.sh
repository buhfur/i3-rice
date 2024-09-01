#!/bin/bash

#NOTE: YOU MUST BE ROOT TO RUN THIS SCRIPT 

FONT_INS_PATH=/tmp

if [ $SHELL == /bin/zsh ]; then

    if ! [ -a $HOME/.zshenv ]; then
        cp aliases $HOME/.zshenv
    fi

else
    if ! [ -a $HOME/.aliases ]; then
        cp aliases $HOME/.aliases
    fi
fi

#Check if oh-my-zsh is installed 
if ! [[ -a $HOME/.oh-my-zsh/oh-my-zsh.sh ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

#Install fonts 
echo "Would you like to install the Iosevka font ? "

if ! [[ -a /usr/share/fonts ]]; then
    mkdir /usr/share/fonts
fi

read response 
if [[ "$response" == [yY] ]]; then
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Iosevka.tar.xz -P /tmp/ && sudo tar xvf $FONT_INS_PATH/Iosevka.tar.xz -C /usr/share/fonts/ && echo "Installed Iosevka font successfully , saved to: $FONT_INS_PATH/Iosevka.tar.xz"
    echo "Iosevka font was installed"
fi


cat zshrc > ~/.zshrc && echo "Zshrc copied over sucessfully"
cat bashrc > ~/.bashrc && echo "Bashrc copied over sucessfully" 
cat tmux.conf > ~/.tmux.conf && echo "Tmux.conf copied over sucessfully"
cat vimrc > ~/.vimrc  && echo "Vimrc copied over sucessfully"

#copy ohmyzsh config
cp -r oh-my-zsh $HOME/.oh-my-zsh && echo "Oh-my-zsh configs copied over sucessfully"



