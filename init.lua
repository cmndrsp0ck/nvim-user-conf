return {
    colorscheme = "monokai",

    lsp = {
        formatting = {
            format_on_save = {
                enabled = true,
                ignore_filetypes = {
                    "yaml",
                }
            },
        },
    },
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

        -- enable anisble-language-server for ansible files
        -- TODO: Need to determine why this isn't loading. May be due to docker_compose lsp attaching to yaml filetype
        local function yaml_ft(path, bufnr)
            -- get content of buffer as string
            local content = vim.filetype.getlines(bufnr)
            if type(content) == "table" then content = table.concat(content, "\n") end

            -- check if file is in roles, tasks, or handlers folder
            local path_regex = vim.regex "(tasks\\|roles\\|handlers)/"
            if path_regex and path_regex:match_str(path) then return "yaml.ansible" end
            -- check for known ansible playbook text and if found, return yaml.ansible
            local regex = vim.regex "hosts:\\|tasks:"
            if regex and regex:match_str(content) then return "yaml.ansible" end

            -- return yaml if nothing else
            return "yaml"
        end

        vim.filetype.add {
            extension = {
                yml = yaml_ft,
                yaml = yaml_ft,
                xsh = "python",
            },
        }
        vim.filetype.add {
            filename = {
                ["inventory"] = "ini",
            },
        }
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
