# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\033[0;31m\] \w\[\033[0m\] \n '

# aliases
alias r=ranger
alias q=exit
alias c=clear
alias e=nvim
alias python=python3
alias pip=pip3
alias :q=exit
alias g='git status'
alias bashrc='e ~/.bashrc'
alias polyconf='e ~/.config/polybar/config'
alias i3conf='e ~/.config/i3/config'
alias vimrc='e ~/.config/nvim/init.vim'
alias remove='pacman -Rncs'
alias clearcache='yay -Sc --noconfirm'
alias cleanpackages='sudo pacman -Rs $(pacman -Qtdq)'
alias please='sudo $(history -p !!)'
alias google='googler'
alias ls='clear && ls --color=auto'
alias cd='clear && cd'

# Start ufetch with Terminal
ufetch

# set default editor
export EDITOR=nvim

# fzf 
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

