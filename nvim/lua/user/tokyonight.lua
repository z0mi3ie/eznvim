local ok, tokyonight = pcall(require, "tokyonight")
if not ok then
    print("tokyonight not found")
    return
end

vim.cmd.colorscheme('tokyonight')
