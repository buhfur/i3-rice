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

#Install fonts 
echo "Would you like to install the Iosevka font ? "

read response 
if [[ "$response" == [yY] ]]; then
    curl -O --output-dir $HOME/Downloads https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Iosevka.tar.xz
    sudo tar xvf $HOME/Downloads/Iosevka.tar.xz -C / usr/share/fonts/
    echo "Iosevka font was installed"
fi



cat zshrc > ~/.zshrc 
cat bashrc > ~/.bashrc 
cat tmux.conf > ~/.tmux.conf
cat vimrc > ~/.vimrc
cat xinitrc > ~/.xinitrc

#copy ohmyzsh config
cp -rv oh-my-zsh $HOME/.oh-my-zsh




