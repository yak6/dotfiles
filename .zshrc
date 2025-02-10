# github.com/yak6/dotfiles

autoload -Uz colors && colors
PS1='%F{red}[%F{yellow}%n%f@%F{blue}%m%F %F{yellow}%1~%F{red}]%f$ '
setopt autocd
stty stop undef
setopt interactive_comments

# Exports
[[ -d "$HOME/.local/bin" ]] && export PATH="$HOME/.local/bin:$PATH"
[[ -d "/opt/homebrew/bin" ]] && export PATH="/opt/homebrew/bin:$PATH"
export EDITOR="vim"
export VISUAL="vim"

# History settings
HISTSIZE=100000 # Saved in the memory
SAVEHIST=100000 # Saved on disk
HISTFILE=~/.zsh_history # History file path
setopt hist_ignore_all_dups   # Ignore duplicats
setopt share_history          # Share history between zsh sessions
setopt append_history         # Add new entries to the end of the history file
setopt inc_append_history     # Save history each new prompt
setopt extended_history       # Add time

# Underline - \e[3 q
# Beam - \e[5 q
# Block - \e[1 q

echo -ne '\e[5 q' # Use cursor shape after shell starts
preexec() { echo -ne '\e[5 q';} # Use cursor shape for each new prompt

# The key combinations may be different in your case. Run 'cat' and use your key combination, after receiving the output, put the combinations under the appropriate shell actions
bindkey '^[[3;3~' kill-word # delete word after cursor
bindkey '^H' backward-kill-word # delete word before cursor
bindkey '^[[1;3D' backward-word # move to backward word
bindkey '^[[1;3C' forward-word  # move to forward word

# Colorize commands
alias \
    ls='ls --color' \
    grep='grep --color' \
    diff='diff --color' \
    ip='ip --color'

# File listing aliases
alias \
    l='ls -CF' \
    ll='ls -lh' \
    la='ls -A'

# File operations
alias \
    cp='cp -iv' \
    mv='mv -iv' \
    rm='rm -vI' \
    mkdir='mkdir -pv'

# Shortcuts
alias \
    g='git' \
    v='vim' \
    sv='sudo vim' \
    sn='sudo nano' \
    t='date +"%T"' \
    d='date +"%d.%m.%Y"' \
    i="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'" \
    q='exit' \
    c='clear -X' \
    reload='source ~/.zshrc'
