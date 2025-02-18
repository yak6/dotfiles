# yak6's dotfiles

<h4>
  In this repository you can find configuration files for programs i regularly use on GNU/Linux systems and MacOS.

  You can also find some useful scripts in `.local/bin/`
</h4>

- Configuration files for:
  - zsh (shell)
  - vim (text editor)
  - i3wm (window manager)

## Scripts

If you plan to use scripts from `.local/bin`, make them executables files by running on each script:
```bash
chmod +x <script>
```

Also don't forget to export this directory to `$PATH` in your shell rc:
```bash
export PATH="$HOME/.local/bin:$PATH"
```
If you have <b>[my zshrc](https://github.com/yak6/dotfiles/blob/main/.zshrc)</b>, you don't need to do it.
