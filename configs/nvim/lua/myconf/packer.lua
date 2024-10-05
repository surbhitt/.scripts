-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- :so to compile the file
-- :PackerSync
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use {
        'projekt0n/github-nvim-theme',
        --[[config = function()
            vim.cmd('colorscheme github_dark_tritanopia')
        end]] --
    }
    use {
        'marko-cerovac/material.nvim',
        --[[config = function()
            vim.cmd('colorscheme material')
        end]] --
    }
    -- for transparency if ever required /plugin/colors.lua
    use {
        'bluz71/vim-moonfly-colors',
        as = 'moonfly',
        config = function()
            vim.cmd('colorscheme moonfly')
        end
    }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim', },          -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },                  -- Required
            { 'hrsh7th/cmp-nvim-lsp' },              -- Required
            { 'L3MON4D3/LuaSnip' },                  -- Required
        }
    }
    use 'ThePrimeagen/vim-be-good'
    use 'tpope/vim-commentary'
    use 'mg979/vim-visual-multi'
    -- oil
    -- use {
    --     'X3eRo0/dired.nvim',
    --     requires = 'MunifTanjim/nui.nvim',
    --     config = function()
    --         require('dired').setup {
    --             path_separator = '/',
    --             show_banner = false,
    --             show_hidden = true,
    --             show_dot_dirs = true,
    --             show_colors = true,
    --         }
    --     end
    -- }
    use {
        'folke/trouble.nvim',
        config = function()
            require('trouble').setup {
                icons = false,
            }
        end
    }
    use 'mbbill/undotree'
    -- use { "akinsho/toggleterm.nvim", tag = '*', config = function()
    --     require("toggleterm").setup()
    -- end }
    use {
        'itchyny/lightline.vim',
        config = function()
            -- no need to also show mode in cmd line when we have bar
            vim.o.showmode = false
            vim.g.lightline = {
                -- colorscheme = 'PaperColor',
                active = {
                    left = {
                        { 'mode',     'paste' },
                        { 'readonly', 'filename', 'modified' }
                    },
                    right = {
                        { 'lineinfo' },
                        { 'percent' },
                        { 'filetype' }
                    },
                },
                component_function = {
                    filename = 'LightlineFilename'
                },
            }
            function LightlineFilenameInLua(opts)
                if vim.fn.expand('%:t') == '' then
                    return '[No Name]'
                else
                    return vim.fn.getreg('%')
                end
            end

            -- https://github.com/itchyny/lightline.vim/issues/657
            vim.api.nvim_exec(
                [[
				function! g:LightlineFilename()
					return v:lua.LightlineFilenameInLua()
				endfunction
				]],
                true
            )
        end
    }
    use 'mfussenegger/nvim-dap'
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } }
    use 'mfussenegger/nvim-dap-python'
    use 'nvim-tree/nvim-web-devicons'
    use 'theHamsta/nvim-dap-virtual-text'
    use 'chentoast/marks.nvim'
end)
--  nvim-treesitter/treesitterplayground
