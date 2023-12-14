require("lazy").setup({
    {
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
})

vim.keymap.set('n', '<leader>gg', '<Cmd>LazyGit<CR>', {})
vim.keymap.set('n', '<leader>gc', '<Cmd>LazyGitFilterCurrentFile<CR>', {})
