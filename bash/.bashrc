#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '
#PS1='\w \n '
PS1='\[\033[0;31m\]\w\[\033[0m\] \n '

# aliases
alias r=ranger
alias q=exit
alias c=clear
alias e=nvim
alias grep='grep -n --color'
alias gerp=grep
alias python=python3
alias pip=pip3
alias :q=exit
alias g='git status'
alias bashrc='e ~/.bashrc'
alias polyconf='e ~/.config/polybar/config'
alias i3conf='e ~/.config/i3/config'
alias vimrc='e ~/.config/nvim/init.vim'
alias install='yay -S'
alias uninstall='yay -Rns'
alias remove='yay -Rns'
alias update='yay'
alias upgrade='yay'
alias clearcache='yay -Sc --noconfirm'
alias please='sudo $(history -p !!)'
alias google='googler'
alias ls='clear && ls --color=auto'
alias sl='ls'
alias l='ls'
# Start ufetch with Terminal
ufetch
#default editor
export EDITOR=nvim
PATH="/home/philipp/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/philipp/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/philipp/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/philipp/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/philipp/perl5"; export PERL_MM_OPT;

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
alias config='/usr/bin/git --git-dir=/home/philipp/.cfg/ --work-tree=/home/philipp'

eval "$(thefuck --alias)"
