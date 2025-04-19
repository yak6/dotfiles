# yak6's dotfiles

<h4>
  In this repository you can find configuration files for programs i regularly use on Unix like operating systems.
</h4>

- Configuration files for:
  - zsh (shell)
  - vim (text editor)
  - i3wm (window manager)
  - firefox (userChrome.css)
  - alacritty (terminal emulator)
  - lf (terminal file manager)
  
## Shell scripts

If you plan to use scripts from `.local/bin`, make them executables files by running this command:
```bash
chmod +x ~/.local/bin/$(ls -1 --color=none)
```

Also don't forget to export this directory to `$PATH` in your shell rc:
```bash
export PATH="$HOME/.local/bin:$PATH"
```
# Requirements 
## *vim-plug*
To make plugins work, you need to install **[vim-plug](https://github.com/junegunn/vim-plug)**, a minimalist Vim plugin manager:
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
