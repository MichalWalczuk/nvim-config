local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fa', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})

-- vim.keymap.set('n', '<leader>ps', function()
--    builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- end)
