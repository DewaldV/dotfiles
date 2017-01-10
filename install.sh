#! /bin/env bash

# Install Packages
sudo dnf install \
	stow \
	powerline \
	tmux \
	tmux-powerline \
	vim vim-enhanced \
	zsh \
	the_silver_searcher

# Install Vundle
if [ ! -d ~/.vim/bundle ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

