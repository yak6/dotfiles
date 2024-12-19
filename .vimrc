" .vimrc yak6's config

" Basic
syntax enable
set number
set relativenumber
set cursorline

" Status bar
set statusline=%F%m\ [%{&fileencoding}]\ [%l/%L]\ [%{&fileformat}]
set laststatus=2

" Tab settings 
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

" Apperance
hi LineNr ctermfg=white guifg=#FFFFFF
hi StatusLine ctermfg=15  guifg=#ffffff ctermbg=239 guibg=#4e4e4e cterm=bold gui=bold
hi CursorLine guifg=NONE guibg=#2d3c45 ctermbg=237 gui=NONE term=NONE cterm=NONE
hi CursorLineNr guifg=NONE guibg=#2d3c45 ctermbg=237 gui=bold term=NONE cterm=bold ctermfg=blue

" Editing
set nobackup
set noswapfile
set mouse=a
set hlsearch

" Other
set incsearch
set ignorecase
set smartcase
set splitright
set splitbelow
set wildmode=longest,list,full
set wrap
set linebreak
set formatoptions+=t
autocmd FileType make setlocal noexpandtab
