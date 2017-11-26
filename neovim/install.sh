#!/bin/bash
if command -v nvim; then
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    test -d ~/.config/nvim || mkdir -p ~/.config/nvim
    cp init.vim ~/.config/nvim/
    nvim +PluginInstall +qall
fi
