#!/bin/bash

#-------------------------------------------------------------
#                       VIM configuration
#-------------------------------------------------------------
# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install NerdTree
if ! [[ -d ~/.vim/bundle/nerdtree ]]; then
    git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
fi

# install vim-airline
if ! [[ -d ~/.vim/bundle/vim-airline ]]; then
    git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
fi

# install vim-fugitive
if ! [[ -d ~/.vim/bundle/vim-fugitive ]]; then
    git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
fi

# link and source .vimrc
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
mv ~/.vimrc ~/.vimrc.bak
ln -s $DIR/.vimrc ~/.vimrc

# run helptags
vim -u NONE -c "Helptags" -c -q

#-------------------------------------------------------------
#                       GIT configuration
#-------------------------------------------------------------
# link and source .gitconfig
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
mv ~/.gitconfig ~/.gitconfig.bak
ln -s $DIR/.gitconfig ~/.gitconfig

#-------------------------------------------------------------
#                       BASHRC configuration
#-------------------------------------------------------------
# link and source .bash_aliases
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
if [[ -f ~/.bash_aliases ]]; then
    mv ~/.bash_aliases ~/.bash_aliases.bak
fi
ln -s $DIR/.bash_aliases ~/.bash_aliases
