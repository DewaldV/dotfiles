export ZSH=${HOME}/.oh-my-zsh

HIST_STAMPS="yyyy-mm-dd"
ZSH_THEME="robbyrussell"
ZSH_CUSTOM=${HOME}/.zsh-custom

plugins=(git docker ruby aws)

export PATH=/usr/local/sbin:${PATH}

source $ZSH/oh-my-zsh.sh

