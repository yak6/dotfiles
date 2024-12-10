-- Packer bootstrap
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
    -- Update the packer
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
    use { "catppuccin/nvim", as = "catppuccin" }

end)

vim.cmd.colorscheme "catppuccin"

-- Basic settings
vim.opt.number = true           
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.shiftwidth = 4      
vim.opt.tabstop = 4        
vim.opt.expandtab = true    
vim.opt.autoindent = true   

vim.opt.hlsearch = true     
vim.opt.fillchars = { eob = ' ' }  
vim.opt.wildignore = '*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx'

vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'


-- Restore cursor on nvim exit
vim.api.nvim_create_autocmd('VimLeave', {
  callback = function()
    vim.opt.guicursor = 'a:ver25'
  end,
})
