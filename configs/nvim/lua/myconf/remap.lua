-- remap alt is the new esc
local options = { noremap = true }
vim.keymap.set("i", "<C-c>", "<Esc>", options)
vim.keymap.set("n", "<C-s>", function()
    vim.cmd("w")
end)
vim.keymap.set("i", "<C-s>", function()
    vim.cmd("w")
end)
vim.keymap.set("v", "<C-s>", function()
    vim.cmd("w")
end)
vim.g.mapleader = ' '

-- vim.keymap.set("n", "j", "<Left>")
-- vim.keymap.set("n", "k", "<Right>")
-- vim.keymap.set("n", "l", "<Up>")
-- vim.keymap.set("n", ";", "<Down>")
-- vim.keymap.set("v", "j", "<Left>")
-- vim.keymap.set("v", "k", "<Right>")
-- vim.keymap.set("v", "l", "<Up>")
-- vim.keymap.set("v", ";", "<Down>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>f", function()
    if vim.bo.filetype == 'python' then
        vim.cmd('!black %')
        vim.cmd('!isort %')
        vim.cmd('edit')
    else
        vim.lsp.buf.format()
    end
end)

vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y")
-- dont know what it does vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set({ "n", "v" }, "<leader>p", "\"+p")
-- vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Trouble mapping
vim.keymap.set("n", "<leader>t", function()
    require("trouble").toggle()
end)
-- vim.keymap.set("n", "[d", function()
--     require("trouble").next({ skip_groups = true, jump = true })
-- end)
-- vim.keymap.set("n", "]d", function()
--     require("trouble").previous({ skip_groups = true, jump = true })
-- end)
