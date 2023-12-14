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
        'nmac427/guess-indent.nvim'
    },
    {
        'neoclide/coc.nvim', branch = 'release'
    },
    {
        'numToStr/Comment.nvim',
        opts = {},
        lazy = false
    },
    {
        'ellisonleao/gruvbox.nvim',
        priority = 1000,
        config = true,
    },
    {
        'mbbill/undotree'
    },
    {
        'nvim-treesitter/playground'
    },
    {
        'nvim-treesitter/nvim-treesitter'
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
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
