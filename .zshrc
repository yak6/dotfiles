# yak6's zsh config
#
# All main settings, aliases, functions, and plugins
# are kept modular in separate *.zsh files
# inside the ~/.zsh/ directory.
# You can change here cursor shape or prompt.

PROMPT_STYLE="minimal" 
CURSOR_SHAPE="beam"

# Minimal bootstrap
export ZSH_CONFIG="$HOME/.zsh"

for config in $ZSH_CONFIG/*.zsh; do
    source $config
done
