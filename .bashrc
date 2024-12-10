[[ $- != *i* ]] && return

PS1="[\u@\h \W]$ "

echo -ne '\e[5 q' # load '|' cursor shape  

# aliases

alias ls='ls --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias ip='color=auto'

alias l='ls -CF'
alias ll='ls -lh'
alias la='ls -A'

alias cp="cp -iv" 
alias mv="mv -iv" 
alias rm="rm -vI" 
alias mkdir='mkdir -pv'

alias neofetch='clear; neofetch'
alias lsw='nmcli device wifi list'
alias shutdown='shutdown now'
alias suspend='systemctl suspend' 
alias reload='source ~/.bashrc' 

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias t='date +"%T"'
alias d='date +"%Y-%m-%d"'
