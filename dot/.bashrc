#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Dont put duplicate lines in history
export HISTCONTROL=ignoredups

# Prompt:
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
#PS1='[\u@\h \W]\$ $(parse_git_branch)'
#PS1='`if [ $? = 0 ]; then echo Y; else echo N; fi` [\u@\h \W]\$ '
#PS1='\W > '
#PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto -a'

alias ~='cd ~;pwd'
alias ..='cd ..;pwd'
alias ...='cd ../..;pwd'
alias ....='cd ../../..;pwd'

alias c='clear'
