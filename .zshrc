# Shell settings
setopt autocd
setopt interactive_comments
autoload -U compinit && compinit
autoload -Uz colors && colors

PS1="%F{green}%B[%n%f@%F{green}%m %f%1~%F{green}]%f$%b "

# History settings
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
setopt hist_ignore_all_dups
setopt share_history
setopt append_history
setopt inc_append_history
setopt extended_history

# Exports
export EDITOR="nvim"
export VISUAL="nvim"

export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

# Cursor shapes vars
export BLOCK_C='\e[1 q'
export BEAM_C='\e[5 q'
export UNDERLINE_C='\e[3 q'

# Colorful output
alias ls='ls --color' 
alias grep='grep --color' 
alias diff='diff --color' 
alias ip='ip --color'

# Listing files
alias l='ls -CF' 
alias ll='ls -lrph'
alias la='ls -A'

# File operations
alias cp='cp -iv' 
alias mv='mv -iv' 
alias rm='rm -vI' 
alias mkdir='mkdir -pv'

# Shortcuts
alias reload="source ~/.zshrc"

# Execute when shell starts
precmd() {
    echo -ne $BEAM_C
}

# Execute before each command
preexec() {
    echo -ne $BEAM_C
}
