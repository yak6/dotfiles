######################
# yak6's zsh config  #
######################

# Prompt and cursor settings 

# In the 'PROMPT_STYLE' variable, you can choose your prompt easily. 'CURSOR_SHAPE' changes cursor shape between beam, block and underline.
PROMPT_STYLE="minimal" 
CURSOR_SHAPE="underline"

# Prompt and cursor map
typeset -A PROMPT_MAP 
typeset -A CURSOR_MAP

# Cursor shapes
CURSOR_MAP[block]='\e[1 q' 
CURSOR_MAP[beam]='\e[5 q'
CURSOR_MAP[underline]='\e[3 q'

# Prompt styles
# You can add your own prompts by following the pattern below.
PROMPT_MAP[minimal]='%F{blue}%1~%f $ '
PROMPT_MAP[default]='[%n@%m %1~]$ '
PROMPT_MAP[fancy]='%F{cyan}╭─%n@%m %F{magenta}%~%f
%F{cyan}╰─➤ %f'
PROMPT_MAP[colorful]="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Change cursor shape
set_cursor_shape() {
    local code="${CURSOR_MAP[$CURSOR_SHAPE]}"
    if [[ -z "$code" ]]; then
        code="${CURSOR_MAP[block]}"
    fi
    echo -ne "$code"
}
# Set custom prompt
set_prompt() {
    local prompt_str="${PROMPT_MAP[$PROMPT_STYLE]}"
    if [[ -z "$prompt_str" ]]; then
        prompt_str="${PROMPT_MAP[default]}"
    fi
    PS1="$prompt_str"
}

# Prompt and cursor loading
precmd() { set_cursor_shape; set_prompt } # Load cursor shape and prompt
preexec() { set_cursor_shape } # Set cursor shape before executing any command 

##########################
# General shell settings #
##########################
setopt autocd
setopt interactive_comments
stty stop undef
autoload -U compinit && compinit
autoload -Uz colors && colors

###########
# Plugins #
###########
plugins=(
    ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    ~/.fzf.zsh
)

for plugin in "${plugins[@]}"; do # Iterate every path in 'plugins' and load them
    if [[ -f "$plugin" ]]; then
        source "$plugin"
    else 
        echo "$plugin doesn't exist." >&2
    fi
done

###########
# Exports #
###########
export EDITOR="nvim"
export VISUAL="nvim"

pathdirs=(
    "$HOME/.local/bin" 
    "/opt/homebrew/bin"
    "/usr/local/bin"
)

for pathdir in "${pathdirs[@]}"; do # Export dirs to PATH
    if [[ -d "$pathdir" ]] && [[ ":$PATH:" != *":$pathdir:"* ]]; then
        export PATH="$pathdir:$PATH"
    fi
done

####################
# History settings #
####################
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
setopt hist_ignore_all_dups
setopt share_history
setopt append_history
setopt inc_append_history
setopt extended_history

###########
# Aliases #
###########

# Colors
alias \
    ls='ls --color' \
    grep='grep --color' \
    diff='diff --color' \
    ip='ip --color'

# Listing files
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
    nv="nvim" \
    s="sudo" \
    v="vim" \
    g="git" \
    sv="sudo vim" \
    reload="source ~/.zshrc"
