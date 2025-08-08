-- neovim config

-- Packer bootstrap
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' 
  use 'tpope/vim-sensible'
  use 'folke/tokyonight.nvim'
  use { "catppuccin/nvim", as = "catppuccin" } 
  use 'jiangmiao/auto-pairs'
  use 'sheerun/vim-polyglot'
  use 'nvim-tree/nvim-web-devicons'
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}
  use {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require("nvim-tree").setup()
  end}


  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = { "c", "lua", "bash", "python", "cpp" },
        highlight = { enable = true },
        indent = { enable = true }
      }
    end
  }
end)


-- Toggle term setup
require("toggleterm").setup{
  size = 20,
  open_mapping = [[<c-\>]],
  direction = 'float', -- 'horizontal' | 'vertical' | 'tab' | 'float'
  float_opts = {
    border = 'curved',
    winblend = 0,
  },
}
-- Nvim tree setup
require("nvim-tree").setup {
  view = {
    width = 30,
    side = "left",
    relativenumber = true,
  },
  filters = {
    dotfiles = false,
  },
  git = {
    enable = true,
  },
  renderer = {
    highlight_git = true,
    indent_markers = {
      enable = true,
    },
  },
  actions = {
    open_file = {
      quit_on_open = false,
    },
  },
}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local option = vim.opt

-- Keybinds
-- Manipulate selected text position
map('v', '<S-J>', ":m '>+1<CR>gv=gv", opts) -- Shift+j - one line down
map('v', '<S-K>', ":m '<-2<CR>gv=gv", opts) -- Shift+k - one line up
map('v', '<S-H>', '<gv', opts) -- Shift+h - reduce indentation
map('v', '<S-L>', '>gv', opts) -- Shift+l - increase indentation

-- Copying
map("v", "<C-y>", '"+y', { desc = "Yank to system clipboard" }) -- Ctrl+y - copy to system clipboard (in visual)
map("n", "<C-y>", '"+y', { desc = "Yank to system clipboard" }) -- Ctrl+y - copy to system clipboard (in normal)

-- Tree
map("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true }) -- Ctrl+n tree

-- Basic options 
option.syntax = 'a'
option.number = true
option.relativenumber = false
option.cursorline = true
option.laststatus = 3

-- Status line
vim.opt.laststatus = 2 -- global statusline

option.statusline = table.concat({
  "%#StatusLine#",
  "%f",                 -- file name
  "%m",                 -- modify symbol
  " [%{&fileformat}]",  -- unix/dos/mac
  "%=",                 -- separator
  "%l:%c",
  " %{&fileencoding}"
})

-- Tabulations 
option.tabstop = 4
option.shiftwidth = 4
option.expandtab = true
option.autoindent = true
option.smartindent = true

-- Appearance 
option.termguicolors = true
vim.cmd.colorscheme "catppuccin-frappe"

-- Editing 
option.backup = false
option.swapfile = false
option.mouse = 'a'
option.hlsearch = true
option.incsearch = true
option.ignorecase = true
option.smartcase = true
option.splitright = true
option.splitbelow = true
option.wildmode = { "longest", "list", "full" }
option.wrap = true
option.linebreak = true
option.formatoptions:append "t"
