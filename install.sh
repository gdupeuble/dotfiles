#!/bin/bash

#-------------------------------------------------------------
#                       VIM configuration
#-------------------------------------------------------------
# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install NerdTree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# install vim-airline
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

# install vim-fugitive
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive

# link and source .vimrc
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
ln -s $DIR/.vimrc ~/.vimrc

# run helptags
vim -u NONE -c "Helptags" -c -q

#-------------------------------------------------------------
#                       VIM configuration
#-------------------------------------------------------------
# link and source .gitconfig
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
ln -s $DIR/.gitconfig ~/.gitconfig
