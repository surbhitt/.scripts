vim.g.mapleader = ' '
vim.keymap.set("n", "<leader>'", vim.cmd.Ex)

vim.keymap.set("n", "j", "<Left>")
vim.keymap.set("n", "k", "<Right>")
vim.keymap.set("n", "l", "<Up>")
vim.keymap.set("n", ";", "<Down>")
vim.keymap.set("v", "j", "<Left>")
vim.keymap.set("v", "k", "<Right>")
vim.keymap.set("v", "l", "<Up>")
vim.keymap.set("v", ";", "<Down>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
-- dont know what it does vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("v", "<leader>p", "\"+p")
-- vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
vim.keymap.set("n", "<leader>f", function()
    vim.cmd("Dired")
end)
