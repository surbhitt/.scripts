require("myconf.remap")
require("myconf.set")
require("myconf.colors")

-- italics stuff to fix tmux issue
vim.cmd [[
    set t_ZH=^[[3m
    set t_ZR=^[[23m
]]

-- persistent undo
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- highlight what was yanked
local autocmd = vim.api.nvim_create_autocmd
autocmd('TextYankPost', {
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 100,
        })
    end,
})

autocmd('VimLeave', {
    pattern = '*',
    callback = function()
        vim.opt.guicursor = "a:hor1-blinkon1"
    end,
})

-- :au VimLeave * set guicursor=a:hor1-blinkon1
