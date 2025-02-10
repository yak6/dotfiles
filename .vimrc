" https://github.com/yak6/dotfiles

" Plugins
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'

call plug#end()

let g:ale_enabled = 1
let g:ale_fix_on_save = 0
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_enter = 1
let g:ale_pattern_options = {'\v\.(md|txt|json)$': {'ale_enabled': 0}}

let g:ale_linters = {
            \   'python': ['flake8', 'pylint'],
            \   'javascript': ['eslint'],
            \   'go': ['golangci-lint'],
            \   'c': ['gcc'],
            \   'cpp': ['clang'],
            \}

" Moving selected text up/down (Shift + J/K)
vnoremap <S-J> :m '>+1<CR>gv=gv
vnoremap <S-K> :m '<-2<CR>gv=gv
" Moving selected text left/right (Shift + H/L)
vnoremap <S-H> <gv
vnoremap <S-L> >gv

" Delete word before cursor (Ctrl + W)
nnoremap <C-w> db
" Delete word after cursor (Ctrl + Q)
nnoremap <C-q> daw

" Basic
syntax enable
set number
set relativenumber
set cursorline
set title

" Status bar
set statusline=[\%F\]\%m\ [%{&fileencoding}\]\ [%{&fileformat}\]\ [\%p%%\]\
set laststatus=2

" Tab settings
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

" Apperance
hi LineNr ctermfg=236
hi StatusLine ctermfg=white ctermbg=232 cterm=bold gui=bold
hi CursorLineNr gui=bold cterm=bold ctermfg=white
hi CursorLine cterm=NONE gui=NONE

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
set fillchars=eob:\

" Cursor
" With this option, when running in terminal emulator your cursor will change depending on current editing mode.

if has('gui_running') || &term =~ 'xterm'
    let &t_SI = "\e[6 q"   " Insert mode - beam cursor '▏'
    let &t_SR = "\e[4 q"   " Replace mode – underline cursor '▁'
    let &t_EI = "\e[2 q"   " Normal mode – block cursor '█'
endif
