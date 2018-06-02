#!/usr/bin/env bash

if [ ! -d /home/vagrant/.vim/bundle/Vundle.vim ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

cat > /home/vagrant/.vimrc << EOF
set background=dark
set nocompatible

set tabstop=4
set shiftwidth=4

set number
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = ''
EOF
