set nocompatible
filetype off

" Vundle Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'sjl/gundo.vim'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'pearofducks/ansible-vim'
Bundle 'vim-ruby/vim-ruby'

call vundle#end()
filetype plugin indent on
syntax on

let mapleader=","
set number
set cursorline
set wildmenu
set showmatch
set incsearch
set hlsearch
set noswapfile
set list

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

nnoremap <leader>/ :nohlsearch<CR>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>r :NERDTree<CR>
nnoremap <leader>y "*y
nnoremap <leader>Y "+y
nnoremap <leader>p "*p
nnoremap <leader>P "+p
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

nmap <leader>s :w<CR>

set laststatus=2
set t_Co=256

if executable('ag')
  let g:ackprog = 'ag --vimgrep'
end

colorscheme onedark
