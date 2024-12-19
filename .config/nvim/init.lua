-- yak6's neovim config

-- Packer bootstrap
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
    -- Update Packer
    use 'wbthomason/packer.nvim'

    -- Plugins
    use {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({
                check_ts = true,
                disable_filetype = { "TelescopePrompt", "vim" },
            })
        end
    }
    -- Themes
    use 'navarasu/onedark.nvim'
end)

require('onedark').setup {
    style = 'darker'
}
require('onedark').load()

-- Settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.fillchars = { eob = ' ' }

vim.opt.wildignore = '*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx'

vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.api.nvim_create_augroup('CursorSettings', { clear = true })

vim.api.nvim_create_autocmd('VimLeave', { -- After leaving NeoVim, change to block cursor shape
  group = 'CursorSettings',
  pattern = '*',
  command = 'echo -e "\\033[0 q"',
})
