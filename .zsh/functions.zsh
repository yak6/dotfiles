extract() {
  if [ "$1" = "all" ]; then
    for file in *.{tar.bz2,tar.gz,tar.xz,tbz2,tgz,tar,bz2,gz,zip,Z,7z,xz,rar}; do
      [ -f "$file" ] || continue
      echo "Unpacking: $file"
      extract "$file"
    done
    return
  fi

  if [ -f "$1" ]; then
    case "$1" in
      *.tar.bz2)   tar xjf "$1"    ;;
      *.tar.gz)    tar xzf "$1"    ;;
      *.tar.xz)    tar xf "$1"     ;;
      *.tbz2)      tar xjf "$1"    ;;
      *.tgz)       tar xzf "$1"    ;;
      *.tar)       tar xf "$1"     ;;
      *.bz2)       bunzip2 "$1"    ;;
      *.gz)        gunzip "$1"     ;;
      *.xz)        unxz "$1"       ;;
      *.zip)       unzip "$1"      ;;
      *.rar)       unrar x "$1"    ;;
      *.7z)        7z x "$1"       ;;
      *.Z)         uncompress "$1" ;;
      *)           echo "Unknown format: '$1'" ;;
    esac
  else
    echo "File '$1' doesn't exist or isn't a regular file."
  fi
}

cleanup() {
  find . -type f \( -name '*~' -o -name '*.bak' -o -name '#*#' -o -name '*.tmp' \) -delete
}

mkcd() {
  mkdir -p "$1" && cd "$1"
}

showpath() {
  echo "$PATH" | tr ':' '\n'
}
