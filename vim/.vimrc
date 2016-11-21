set nocompatible              " be iMproved, required
filetype off                  " required

" Vundle Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'tpope/vim-fugitive'
Plugin 'wincent/command-t'
Plugin 'editorconfig/editorconfig-vim'

call vundle#end()
filetype plugin indent on    " required

let mapleader=","
