#    _               _              
#   | |             | |             
#   | |__   __ _ ___| |__  _ __ ___ 
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__ 
# (_)_.__/ \__,_|___/_| |_|_|  \___|
                                                                       
# https://github.com/yak6/dotfiles

[[ $- != *i* ]] && return

PS1="\e[1;31m\e[0;91m[\e[0;93m\u\e[0;92m@\e[0;96m\h \e[0;35m\W\e[0;91m]\e[0m$ "

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
alias neofetch='clear; neofetch'
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
