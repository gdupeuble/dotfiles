#!/bin/bash

#-------------------------------------------------------------
#                       VIM configuration
#-------------------------------------------------------------
# link and source .vimrc and .vim
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
mv ~/.vimrc ~/.vimrc.bak
ln -s $DIR/vimrc ~/.vimrc
mv ~/.vim ~/.vim.bak
ln -sf $DIR/vim ~/.vim

# run helptags
vim -u NONE -c "Helptags" -c -q

#-------------------------------------------------------------
#                       GIT configuration
#-------------------------------------------------------------
# link and source .gitconfig
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
mv ~/.gitconfig ~/.gitconfig.bak
ln -s $DIR/gitconfig ~/.gitconfig

#-------------------------------------------------------------
#                       BASHRC configuration
#-------------------------------------------------------------
# link and source .bash_aliases
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
if [[ -f ~/.bash_aliases ]]; then
    mv ~/.bash_aliases ~/.bash_aliases.bak
fi
ln -s $DIR/bash_aliases ~/.bash_aliases
