"        _               
"       (_)                   
" __   ___ _ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
" (_)_/ |_|_| |_| |_|_|  \___|
      
" https://github.com/yak6/dotfiles

" basic settings:
syntax on
set number
set shiftwidth=4
set tabstop=4
set expandtab
set hlsearch
set noshowmatch
set autoindent
set fillchars=eob:\ 
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" color settings:
set cursorline
highlight LineNr ctermfg=blue guifg=#0000FF
highlight CursorLineNr cterm=bold ctermfg=yellow guifg=#FFD700
highlight CursorLine cterm=NONE ctermbg=NONE guibg=NONE
