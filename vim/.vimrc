set nocompatible
filetype off

" Vundle Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'tpope/vim-fugitive'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'sjl/gundo.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()
filetype plugin indent on

let mapleader=","
set number
set cursorline
set wildmenu
set showmatch
set incsearch
set hlsearch

nnoremap <leader>/ :nohlsearch<CR>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

set laststatus=2
set t_Co=256

