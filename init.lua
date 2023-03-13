return {
    colorscheme = "monokai",

    -- This function is run last and is a good place to configuring
    -- augroups/autocommands and custom filetypes also this just pure lua so
    -- anything that doesn't fit in the normal config locations above can go here
    polish = function()
        -- set key bindings
        -- set  custom augroups
        local ws_clipper = vim.api.nvim_create_augroup("ws_clipper", { clear = true })
        -- set custom autocommands
        vim.api.nvim_create_autocmd({ "BufWritePre" }, {
            desc = "Remove trailing white space",
            group = ws_clipper,
            pattern = { "*" },
            command = [[%s/\s\+$//e]],
        })
        -- conditional import of utils which contains custom functions
        local status_ok, utils = pcall(require, "user.utils")
        if not status_ok then
            return
        end
        -- set custom fuctions
        -- Set up custom filetypes
        -- vim.filetype.add {
            --   extension = {
                --     foo = "fooscript",
                --   },
                --   filename = {
                    --     ["Foofile"] = "fooscript",
                    --   },
                    --   pattern = {
                        --     ["~/%.config/foo/.*"] = "fooscript",
                        --   },
                        -- },
    end,
}

-- TODO: need to make adjustments to status bar (filename.ext and full mode text)
-- return {
    --   plugins = {
        --     {
            --       "rebelot/heirline.nvim",
            --       opts = function(_, opts)
                --         local status = require("astronvim.utils.status")
                --         opts.statusline = { -- statusline
                --           hl = { fg = "fg", bg = "bg" },
                --           status.component.mode { mode_text = { padding = { left = 1, right = 1 } } }, -- add the mode text
                --           status.component.git_branch(),
                --           status.component.file_info { filetype = {}, filename = false, file_modified = false },
                --           status.component.git_diff(),
                --           status.component.diagnostics(),
                --           status.component.fill(),
                --           status.component.cmd_info(),
                --           status.component.fill(),
                --           status.component.lsp(),
                --           status.component.treesitter(),
                --           status.component.nav(),
                --           -- remove the 2nd mode indicator on the right
                --         }
                --         -- return the final configuration table
                --         return opts
                --       end
                --     },
                --   },
                -- }

