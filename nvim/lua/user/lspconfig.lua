local ok, lspconfig = pcall(require, "lspconfig")
if not ok then
    print("nvim-lspconfig not found")
    return
end

lspconfig.pyright.setup{}
lspconfig.gopls.setup{}
lspconfig.gradle_ls.setup{}
lspconfig.pylsp.setup{}
lspconfig.terraformls.setup{}
lspconfig.tsserver.setup{}
lspconfig.lua_ls.setup{}
lspconfig.dockerls.setup{}
lspconfig.cssls.setup{}
