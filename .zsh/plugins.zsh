plugins=(
  "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
  "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
)

for plugin in "${plugins[@]}"; do
  if [[ -f "$plugin" ]]; then
    source "$plugin"
  else
    echo "Plugin not found: $plugin" >&2
  fi
done
