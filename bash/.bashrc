#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\w \n '


# aliases
alias r=ranger
alias q=exit
alias c=clear
alias e=nvim
alias gerp=grep
alias python=python3
alias pip=pip3
alias :q=exit
alias g='git status'
alias bashrc='e ~/.bashrc'
alias polyconf='e ~/.config/polybar/config'
alias i3conf='e ~/.config/i3/config'
alias install='yay -S'
alias uninstall='yay -Rns'
alias remove='yay -Rns'
alias update='yay'
alias upgrade='yay'
alias clearcache='yay -Sc --noconfirm'
alias please='sudo $(history -p !!)'
alias google='googler'
alias ls='clear && ls'
alias sl='ls'
# ufetch
ufetch
#color in grep
export GREP_OPTIONS=' — color=auto'
#default editor
export EDITOR=nvim
PATH="/home/philipp/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/philipp/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/philipp/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/philipp/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/philipp/perl5"; export PERL_MM_OPT;

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
alias config='/usr/bin/git --git-dir=/home/philipp/.cfg/ --work-tree=/home/philipp'
