#!/bin/bash

# Script to copy rice config files 
cp -vr $HOME/.vimrc ~/i3-rice/vimrc 
cp -vr $HOME/rofi/* ~/i3-rice/rofi
cp -vr $HOME/.tmux.conf ~/i3-rice/tmux.conf
cp -vr $HOME/.zshrc ~/i3-rice/zshrc 
cp -vr $HOME/.zshenv ~/i3-rice/zshenv  
cp -vr $HOME/.config/picom/* ~/i3-rice/picom/
cp -vr $HOME/.config/polybar/* ~/i3-rice/polybar/
cp -vr $HOME/.config/i3/* ~/i3-rice/i3/

#Check if oh-my-zsh is installed 
if ! [[ -a $HOME/.oh-my-zsh/oh-my-zsh.sh ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
wait

cp -vr $HOME/.oh-my-zsh/* ~/i3-rice/oh-my-zsh/


