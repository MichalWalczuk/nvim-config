local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', function()
    builtin.find_files()
end, {})
vim.keymap.set('n', '<leader>fi', function()
    builtin.find_files({ no_ignore = false, no_ignore_parent = true, hidden = true })
end, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fa', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})

require('telescope').setup({
    defaults = {
        file_ignore_patterns = { "node_modules" },
        layout_strategy = 'horizontal',
        layout_config = {
            horizontal = {
                -- preview_width = 0.5,
                -- height = 0.8,
                -- width = 0.99,
                -- preview_cutoff = 10
            },
        },
    },
})
