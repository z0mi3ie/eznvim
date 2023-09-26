local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not ok then
    print("treesitter not installed")
    return
end

treesitter.setup({
})
