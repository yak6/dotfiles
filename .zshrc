# yak6's zsh config

autoload -U colors && colors	
PS1="[%n@%m %1~]%# "
setopt autocd	
stty stop undef		
setopt interactive_comments

export PATH="/opt/homebrew/bin:$PATH"

# History settings
HISTSIZE=10000 # Saved in the memory
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

SHAPE='\e[1 q' # Cursor shape variable

echo -ne $SHAPE # Load specified cursor shape
preexec() { echo -ne $SHAPE ;} # Use specified shape for each new prompt

zle -N lfcd

lfcd() {
  tmp="$(mktemp)"
  lf -last-dir-path="$tmp" "$@"
  if [ -f "$tmp" ]; then
    dir="$(cat "$tmp")"
    rm -f "$tmp"
    [ -d "$dir" ] && cd "$dir"
  fi
}

bindkey '^o' lfcd # Run lf in current working directory
bindkey -s '^f' '^ucd "$(dirname "$(fzf)")"\n' # Run fzf

bindkey '^[[3;3~' kill-word # fn+option+backspace

# These keybinds can be different due to terminal emulators and the terminal types.
# To check keybinds for Ctrl+Left and Ctrl+Right run 'cat' in your shell, once you run in it use a key combination and check what the program returns.

bindkey '^[[1;3D' backward-word # Option + Left Arrow - move to backward word
bindkey '^[[1;3C' forward-word  # Option + Right Arrow - move to forward word

# Basic aliases
alias grep='grep --color'

alias ls='ls --color'
alias l='ls -CF'
alias ll='ls -lh'
alias la='ls -A'

alias cp="cp -iv" 
alias mv="mv -iv" 
alias rm="rm -vI" 
alias mkdir='mkdir -pv'

alias shutdown='shutdown now'
alias reload='source ~/.zshrc' 

# Fast aliases
alias t='date +"%T"'
alias d='date +"%d.%m.%Y"'
alias wanip='curl api.ipify.org '
alias lanip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias e="exit"
alias c="clear"
