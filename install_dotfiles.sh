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

#Check if oh-my-zsh is installed 
if ! [[ -a $HOME/.oh-my-zsh/oh-my-zsh.sh ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

cat zshrc > ~/.zshrc 
cat bashrc > ~/.bashrc 
cat tmux.conf > ~/.tmux.conf
cat vimrc > ~/.vimrc
cat xinitrc > ~/.xinitrc

#copy ohmyzsh config
cp -rv oh-my-zsh $HOME/.oh-my-zsh




