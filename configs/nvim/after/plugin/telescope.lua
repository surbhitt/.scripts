local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>gf', function()
--     if pcall(builtin.git_files) then builtin.git_files()
--     else builtin.find_files()
--     end
-- end, {})
vim.keymap.set('n', '<a-h>', builtin.help_tags, {})
vim.keymap.set('n', '<leader>gb', builtin.buffers, {})
vim.keymap.set('n', '<leader>gf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ggf', builtin.git_files, {})
vim.keymap.set('n', '<leader>gs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
