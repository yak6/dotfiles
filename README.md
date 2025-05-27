# yak6's dotfiles

<h4>
  In this repository you can find configuration files for programs i regularly use on Unix like operating systems.
</h4>

- Configuration files for:
  - zsh (shell)
  - vim (text editor)
  - i3wm (window manager)
  - lf (terminal file manager)

## Zsh config

All main settings, aliases, functions, and plugins are kept modular in separate *.zsh files inside the .zsh/ directory.

In the .zshrc file, you can change prompt and cursor shape very easily. Check **[prompt.zsh](.zsh/prompt.zsh)**, there's a map where you can add your own prompts or check existing ones.
You can also choose cursor shape between beam, underline and block.

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
