# yak6's zsh config

PS1='[%n@%m %1~]%# '
setopt autocd
stty stop undef
setopt interactive_comments

# Some cursor shapes:
# block - '\e[1 q'
# underline - '\e[3 q'
# beam - '\e[5 q'

SHAPE='\e[5 q'

echo -ne $SHAPE # Load specified cursor shape
preexec() { echo -ne $SHAPE ;} # use specified shape for each new prompt

# Moving throughout the text
bindkey "^[[1;5C" emacs-forward-word  # Ctrl + Right
bindkey "^[[1;5D" emacs-backward-word # Ctrl + Left
bindkey "^[[1;5A" beginning-of-line   # Ctrl + Up
bindkey "^[[1;5B" end-of-line         # Ctrl + Down

# Text deleting
bindkey "^[[3~" delete-char # Delete
bindkey "^[[3;5~" kill-line # Ctrl + Delete

# Aliases
alias grep='grep --color'
alias ls='ls --color'

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
alias reload='source ~/.zshrc'

# fast aliases
alias t='date +"%T"'
alias d='date +"%Y-%m-%d"'
alias i="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
