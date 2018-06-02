set background=dark
set nocompatible
filetype off

set path=$PWD/**
set tabstop=4
set shiftwidth=4
set number
set nowrap
set makeprg=b.py
set noswapfile

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'kien/ctrlp.vim'
Plugin 'idanarye/vim-merginal'
call vundle#end()
filetype plugin indent on

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = ''

map <F5> :execute "grep -r --exclude=tags --exclude=*.git* --exclude=*.svn* " . expand("<cword>") . " ." <Bar> copen<CR>
