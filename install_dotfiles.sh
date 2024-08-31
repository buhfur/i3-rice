#!/bin/bash


if [ $SHELL == /bin/zsh ]; then

    if ! [ -a $HOME/.zshenv ]; then
        cp ../dotfiles/aliases $HOME/.zshenv
    fi

else
    if ! [ -a $HOME/.aliases ]; then
        cp ../dotfiles/aliases $HOME/.aliases
    fi
fi


cat zshrc > ~/.zshrc 
cat bashrc > ~/.bashrc 
cat tmux.conf > ~/.tmux.conf
cat vimrc > ~/.vimrc
cat xinitrc > ~/.xinitrc




