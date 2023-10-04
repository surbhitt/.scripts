-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- :so to compile the file 
-- :PackerSync
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'projekt0n/github-nvim-theme',
        --[[config = function()
            vim.cmd('colorscheme github_dark_tritanopia')
        end]]--
    } 
    use {
        'marko-cerovac/material.nvim',
        --[[config = function()
            vim.cmd('colorscheme material')
        end]]--
    } 
    -- for transparency if ever required /plugin/colors.lua
    -- function ColorMyPencils(color)
        -- 	color = color or "rose-pine"
        -- 	vim.cmd.colorscheme(color)
        -- 	vim.api.nvim_set_hl(0, "Normal", { bg="none" })
        -- 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        -- end
        -- ColorMyPencils()
    use {
        "bluz71/vim-moonfly-colors",
        as = "moonfly",
        config = function()
            vim.cmd('colorscheme moonfly')
        end
    }
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }
    use 'ThePrimeagen/vim-be-good'
    use 'tpope/vim-commentary'
    use {'mg979/vim-visual-multi'}

    use {
        "X3eRo0/dired.nvim",
        requires = "MunifTanjim/nui.nvim",
        config = function()
            require("dired").setup {
                path_separator = "/",
                show_banner = false,
                show_hidden = true,
                show_dot_dirs = true,
                show_colors = true,
            }
        end
    }
end)
--  nvim-treesitter/treesitterplayground

