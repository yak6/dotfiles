#    _               _              
#   | |             | |             
#   | |__   __ _ ___| |__  _ __ ___ 
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__ 
# (_)_.__/ \__,_|___/_| |_|_|  \___|
                                   
# Hello, this is yak'6 .bashrc configuration file                                    
# https://github.com/yak6/dotfiles

[[ $- != *i* ]] && return

# Aliases - listing, 
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias l='ls -CF'
alias ll='ls -lh'
alias la='ls -A'
alias sl='ls --color=auto'

# safety,
alias rm='rm -i'
alias cp='cp -i'
alias mkdir='mkdir -pv'

# custom, 
alias neo='clear; neofetch'
alias wifis='nmcli device wifi list'  
alias shutdown='shutdown now' 
alias suspend='systemctl suspend' 
alias now='date +"%T"'
alias today='date +"%Y-%m-%d"'
alias reload='source ~/.bashrc' 

# faster directory browsing, 
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# root aliases,
alias sv='sudo -E vim'
alias sn='sudo nano'
alias fucking='sudo'

PS1='[\u@\h \W]$ '
