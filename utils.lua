-- set custom fuctions
function TogglePaste()
    if vim.o.paste == false then
        vim.o.paste = true
    else
        vim.o.paste = false
    end
end
