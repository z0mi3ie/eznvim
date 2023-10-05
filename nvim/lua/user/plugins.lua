local plugs = {
    {'folke/tokyonight.nvim'},
    {'nvim-lua/plenary.nvim'},
    {'nvim-treesitter/nvim-treesitter'},
    {'nvim-telescope/telescope.nvim'},
    {'gruvbox-community/gruvbox'},
    {'neovim/nvim-lspconfig'},
    {'nvim-lualine/lualine.nvim'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'},
    {'hrsh7th/cmp-vsnip'},
    {'hrsh7th/vim-vsnip'},
    {'tpope/vim-fugitive'},
    {'hashivim/vim-terraform'},
    {'norcalli/nvim-colorizer.lua'},
    {'ekalinin/dockerfile.vim'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
	{'Vimjas/vim-python-pep8-indent'}
    -- {'formatter.vim'},
    -- {'nvim-lint'},
    -- {'nvim-dap'},
    -- {'nvim-dap-ui'},
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

