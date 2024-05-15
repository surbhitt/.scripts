require("myconf.remap")
require("myconf.set")
require("myconf.colors")

-- italics stuff to fix tmux issue
vim.cmd[[
    set t_ZH=^[[3m
    set t_ZR=^[[23m
]]
