# yak6's zsh config

autoload -U colors && colors	
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%1~%{$fg[red]%}]%{$reset_color%}%#%b "
setopt autocd	
stty stop undef		
stty -ixon # Disabling ixon for Ctrl+Q
setopt interactive_comments

# History settings
HISTSIZE=10000 # Saved in the memory
SAVEHIST=100000 # Saved on disk
HISTFILE=~/.zsh_history # History file path
setopt hist_ignore_all_dups   # Ignore duplicats
setopt share_history          # Share history between zsh sessions
setopt append_history         # Add new entries to the end of the history file
setopt inc_append_history     # Save history each new prompt 
setopt extended_history       # Add time  

# Some cursor shapes, uncomment one you like
#SHAPE='\e[3 q' # Underline
SHAPE='\e[1 q' # Block
#SHAPE='\e[5 q' # Beam 

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

bindkey '^W' backward-kill-word # Ctrl + W - delete backward word (like Ctrl + Backspace)
bindkey '^Q' kill-word # Ctrl + Q - delete word after cursor (like Ctrl + Delete)


# These keybinds can be different due to terminal emulators and the terminal types.
# To check keybinds for Ctrl+Left and Ctrl+Right run 'cat' in your shell, once you run in it use a key combination and check what the program returns.

bindkey ';5D' backward-word # Ctrl + Left Arrow - move to backward word
bindkey ';5C' forward-word  # Ctrl + Right Arrow - move to forward word

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

alias neofetch='clear; neofetch'
alias lsw='nmcli device wifi list'
alias shutdown='shutdown now'
alias suspend='systemctl suspend' 
alias reload='source ~/.zshrc' 

# Fast aliases
alias t='date +"%T"'
alias d='date +"%d.%m.%Y"'
alias i="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"

# idk
alias sl='ls --color'
