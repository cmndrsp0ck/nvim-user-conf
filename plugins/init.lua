return {
    {
        "folke/todo-comments.nvim",
        lazy = false,
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    },
    {
        "jackMort/ChatGPT.nvim",
        lazy = false,
        config = function()
            require("chatgpt").setup({
                -- optional configuration
            })
        end,
        requires = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim"
        }
    },
    { 'michaelb/sniprun', run = 'bash ./install.sh', lazy = false },
    {"ellisonleao/glow.nvim", lazy = false },
    { "tpope/vim-surround", lazy = false },
    { "mbbill/undotree", lazy = false },
    -- Setting colorschemes
    { "folke/tokyonight.nvim" },
    { "lunarvim/darkplus.nvim" },
    { "EdenEast/nightfox.nvim" },
    { "ellisonleao/gruvbox.nvim" },
    { "tanvirtin/monokai.nvim" },
    { "jacoborus/tender.vim" },
}

