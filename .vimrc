let mapleader=";"
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
"
" " add all your plugins here (note older versions of Vundle
" " used Bundle instead of Plugin)
"
" " ...
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
vnoremap <Leader>y "+y
nmap <Leader>p "+p
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <CR> G

au BufNewFile,BufRead *.py
			\ set tabstop=4
			\ softtabstop=4
			\ shiftwidth=4 
			\ textwidth=100
			\ expandtab
			\ autoindent
			\ fileformat=unix

au BufNewFile,BufRead *.cpp
			\ set tabstop=2
			\ softtabstop=2
			\ shiftwidth=2
			\ expandtab
			\ autoindent
			\ fileformat=unix

au BufNewFile,BufRead *.h
			\ set tabstop=2
			\ softtabstop=2
			\ shiftwidth=2
			\ expandtab
			\ autoindent
			\ fileformat=unix
set encoding=utf-8
set nu
set backspace=indent,eol,start

let python_highlight_all=1
syntax on
set splitright
set textwidth=0
"set wrap
set formatoptions-=t
