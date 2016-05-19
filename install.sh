#!/bin/bash
VUNDLE_PATH=~/.vim/bundle/Vundle.vim
if [ -d "$VUNDLE_PATH" ]; then
    echo Updating Vundle...
    git -C $VUNDLE_PATH pull origin master
else
    echo Installing Vundle...
    git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_PATH 
fi

echo Copying vimrc...
cp vimrc ~/.vimrc
