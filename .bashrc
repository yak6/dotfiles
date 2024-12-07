#        __               __             
#       / /_  ____ ______/ /_  __________
#      / __ \/ __ `/ ___/ __ \/ ___/ ___/
#   _ / /_/ / /_/ (__  ) / / / /  / /__  
#  (_)_.___/\__,_/____/_/ /_/_/   \___/                                                             
#    https://github.com/yak6/dotfiles

[[ $- != *i* ]] && return

PS1="[\u@\h \W]$ "

# aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias l='ls -CF'
alias ll='ls -lh'
alias la='ls -A'
alias sl='ls --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mkdir='mkdir -pv'
alias neofetch='clear; neofetch'
alias lsw='nmcli device wifi list'
alias shutdown='shutdown now'
alias suspend='systemctl suspend' 
alias reload='source ~/.bashrc' 
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias sv='sudo -E vim'
alias sn='sudo nano'
alias t='date +"%T"'
alias d='date +"%Y-%m-%d"'
