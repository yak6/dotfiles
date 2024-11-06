#    _               _              
#   | |             | |             
#   | |__   __ _ ___| |__  _ __ ___ 
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__ 
# (_)_.__/ \__,_|___/_| |_|_|  \___|
                                   
# Hello, this is yak'6 .bashrc configuration file                                    
# https://github.com/yak6/dotfiles

# ~/.bashrc: executed by bash(1) for non-login shells.

case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth


shopt -s histappend


HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

PS1='[\u@\h \w]\$ ' 

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
fi

# ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

# custom aliases
alias fucking='sudo' 
alias weather='curl wttr.in'
alias grep='grep --color'

# safety aliases 
alias rm='rm -i' 
alias cp='cp -i'
alias mv='mv -i'

# speed up aliases
alias nf='clear; neofetch'
alias sl='ls'
alias ..='cd ..'
alias shutdown='shutdown now' 

# risky aliases
alias sv='sudo -E vim'
alias sn='sudo nano'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
