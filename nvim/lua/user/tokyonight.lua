
local ok, tokyonight = pcall(require, "tokyonight")
if not ok then
    print("tokyonight not found")
    return
end

print("found tokyo night")
vim.cmd.colorscheme('tokyonight')
