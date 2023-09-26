local plugs = {
    {'folke/tokyonight.nvim'},
}

local lazy = {}

function lazy.install(path)
    if not vim.loop.fs_stat(path) then
        print('** installing lazy.nvim... **')
        vim.fn.system({
            'git',
            'clone',
            '--filter=blob:none',
            'https://github.com/folke/lazy.nvim.git',
            '--branch=stable',
            path
        })
        print("** install complete **")
    end
end

function lazy.setup(plugins)
    lazy.install(lazy.path)

    vim.opt.rtp:prepend(lazy.path)
    require('lazy').setup(plugins, lazy.opts)
end

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {}
lazy.setup(plugs)

