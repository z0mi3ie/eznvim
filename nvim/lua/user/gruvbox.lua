local ok, gruvbox = pcall(require, "gruvbox")
if not ok then
    print("gruvbox not installed")
    return
end

vim.cmd.colorscheme('gruvbox')
