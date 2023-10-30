return {
    opt = {
        -- set to true or false etc.
        relativenumber = true,  -- sets vim.opt.relativenumber
        number = true,          -- sets vim.opt.number
        spell = false,          -- sets vim.opt.spell
        signcolumn = "auto",    -- sets vim.opt.signcolumn to auto
        wrap = true,            -- sets vim.opt.wrap
        colorcolumn = "80,100", -- enable colorcolumn
        tabstop = 4,            -- set how many columns of whitespace a \t char is worth
        shiftwidth = 4,         -- set how columns of whitespace a level of indentation is worth
        softtabstop = 4,
        expandtab = true,       -- tabs keypresses will be expanded into spaces
        scrolloff = 8,          -- set how many lines from the bottom/top of the screen to keep the cursor
    },
    g = {
        mapleader = " ",                                                          -- sets vim.g.mapleader
        cmp_enabled = true,                                                       -- enable completion at start
        autopairs_enabled = true,                                                 -- enable autopairs at start
        diagnostics_enabled = true,                                               -- enable diagnostics at start
        status_diagnostics_enabled = true,                                        -- enable diagnostics in statusline
        python3_host_prog = "/home/cmndrsp0ck/.pyenv/versions/neovim/bin/python", -- set python3
    }
}
