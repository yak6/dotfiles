# Shell settings
setopt autocd
setopt interactive_comments
autoload -U compinit && compinit

# History settings
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
setopt hist_ignore_all_dups
setopt share_history
setopt append_history
setopt inc_append_history
setopt extended_history
