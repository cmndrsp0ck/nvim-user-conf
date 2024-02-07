return {
    {
        "github/copilot.vim",
        lazy = false,
        -- event = "InsertEnter",
        -- config = function()
        -- end
    },
    {
        "AstroNvim/astrocommunity"
    },
    { import = "astrocommunity.completion.copilot-lua" },
    { -- further customize the options set by the community
        "copilot.lua",
        opts = {
            suggestion = {
                keymap = {
                    accept = "<C-l>",
                    accept_word = false,
                    accept_line = false,
                    next = "<C-.>",
                    prev = "<C-,>",
                    dismiss = "<C/>",
                },
            },
        },
    },
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
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },
    {
        "Wansmer/treesj",
        keys = {
            {
                "<leader>m",
                "<CMD>TSJToggle<CR>",
                desc = "Toggle Treesitter Join",
            },
        },
        cmd = { "TSJToggle", "TSJSplit", "TSJJoin" },
        opts = { use_default_keymaps = false },
    },
    {
        "jackMort/ChatGPT.nvim",
        event = "VeryLazy",
        config = function()
            require("chatgpt").setup()
        end,
        dependencies = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "folke/trouble.nvim",
            "nvim-telescope/telescope.nvim"
        }
    },
    { 'michaelb/sniprun',                              run = 'bash ./install.sh', lazy = false },
    { "ellisonleao/glow.nvim",                         lazy = false },
    { "mbbill/undotree",                               lazy = false },
    -- Setting colorschemes
    { "folke/tokyonight.nvim" },
    { "lunarvim/darkplus.nvim" },
    { "EdenEast/nightfox.nvim" },
    { "ellisonleao/gruvbox.nvim" },
    { "tanvirtin/monokai.nvim" },
    { "jacoborus/tender.vim" },
}
