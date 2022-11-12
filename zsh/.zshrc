export ZSH=${HOME}/.oh-my-zsh

HIST_STAMPS="yyyy-mm-dd"
ZSH_THEME="robbyrussell"
ZSH_CUSTOM=${HOME}/.zsh-custom

plugins=(git aws asdf emacs)

path+=("${HOME}/.local/bin")

source $ZSH/oh-my-zsh.sh
