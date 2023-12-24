local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    {
        "mfussenegger/nvim-dap"
    },
    {
        'Raimondi/delimitMate',
    },
    {
        "kylechui/nvim-surround", -- for surrounding tags, functions
        version = "*",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
            })
        end
    }, {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = true
},
    { 'tpope/vim-vinegar' },       -- for file explorer netrw
    { 'lewis6991/gitsigns.nvim' }, -- for git stuff
    {
        'kevinhwang91/nvim-ufo',   -- for folding
        dependencies = 'kevinhwang91/promise-async'
    },
    {
        'lukas-reineke/indent-blankline.nvim' -- for visual indent lines
    },
    {
        'nmac427/guess-indent.nvim' -- to set specific tabwidth for file
    },
    {
        'numToStr/Comment.nvim', -- for comment shortcuts
        opts = {},
        lazy = false
    },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
        'mbbill/undotree' -- visual representation of local changes (tree)
    },
    {
        'nvim-treesitter/playground'
    },
    {
        'nvim-treesitter/nvim-treesitter'
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    {
        'folke/which-key.nvim',
        event = 'VeryLazy',
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
    },
    {
        'kdheepak/lazygit.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
        },
    }
})
