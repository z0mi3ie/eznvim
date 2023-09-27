local ok, mason = pcall(require, "mason")
if not ok then
    print("mason not found")
    return
end

mason.setup()

local ok, masonlsp = pcall(require, "mason-lspconfig")
if not ok then
    print("mason-lspconfig not found")
    return
end

masonlsp.setup()

local handlers = {
    -- default handler for setting up servers
    function(server_name)
        require("lspconfig")[server_name].setup {}
    end,
    -- lua_ls handler w/ vim warning cleanup
    ["lua_ls"] = function()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = {"vim"}
                    }
                }
            }
        }
    end,
}

masonlsp.setup_handlers(handlers)
