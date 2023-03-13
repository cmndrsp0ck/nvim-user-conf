return {
    -- first key is the mode
    n = {
        -- second key is the lefthand side of the map
        -- mappings seen under group name "Buffer"
        -- ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
        -- ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
        -- ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
        -- ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
        -- quick save
        -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
        ["<leader>U"] = { "<cmd>UndotreeToggle<cr>", desc = "Toggle Undotree" },
        -- ["<leader>uP"] = { "<cmd>lua TogglePaste()<cr>", desc = "Toggle Paste" }
        L = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
        H = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },
    },
    t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
        ["<C-\\>"] = { "<cmd>ToggleTerm direction=float<cr>", desc = "Open terminal in float mode." },
        ["<C-l>"] = false,
    }
}
