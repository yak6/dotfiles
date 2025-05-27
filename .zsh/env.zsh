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
