local ok, lualine = pcall(require, "lualine")
if not ok then
    print("lualine not found")
    return
end

lualine.setup({
    options = {
        theme = 'gruvbox'
    }
})
