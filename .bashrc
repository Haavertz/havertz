#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Terminal FastFetch

if [[ $- == *i* ]]; then
  fastfetch
fi


. "$HOME/.cargo/env"
