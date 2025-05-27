# Define cursor and prompt map
typeset -A PROMPT_MAP 
typeset -A CURSOR_MAP
# load colors
autoload -Uz colors && colors

# Cusor shape map (block, beam, underline)
CURSOR_MAP[block]='\e[1 q' 
CURSOR_MAP[beam]='\e[5 q'
CURSOR_MAP[underline]='\e[3 q'

# Prompt map (you can add your own)
PROMPT_MAP[minimal]='%F{blue}%1~%f $ '
PROMPT_MAP[default]='[%n@%m %1~]$ '
PROMPT_MAP[fancy]='%F{cyan}╭─%n@%m %F{magenta}%~%f\n%F{cyan}╰─➤ %f'
PROMPT_MAP[colorful]="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

set_cursor_shape() {
    local code="${CURSOR_MAP[$CURSOR_SHAPE]}"
    if [[ -z "$code" ]]; then
        code="${CURSOR_MAP[block]}"
    fi
    echo -ne "$code"
}

set_prompt() {
    local prompt_str="${PROMPT_MAP[$PROMPT_STYLE]}"
    if [[ -z "$prompt_str" ]]; then
        prompt_str="${PROMPT_MAP[default]}"
    fi
    PS1="$prompt_str"
}

precmd() { set_cursor_shape; set_prompt }
preexec() { set_cursor_shape }
