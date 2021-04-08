# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\033[0;33m\] \w\[\033[0m\] \n '

# aliases
alias r=ranger
alias q=exit
alias c=clear
alias e=nvim
alias python=python3
alias pip=pip3
alias :q=exit
alias clean='yay -Sc --noconfirm && sudo pacman -Rs $(pacman -Qtdq)' 
alias please='sudo $(history -p !!)'
alias ls='clear && ls -p --color=auto'
alias cd='clear && cd'

# Start ufetch with Terminal
ufetch

# set default editor
export EDITOR=nvim

# fzf 
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

