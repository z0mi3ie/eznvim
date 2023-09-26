#/bin/bash


echo "z0mi3ie's eznvim install"

echo "cleaning up for fresh install"
rm -rf /opt/nvim-linux64
rm -rf /usr/local/bin/nvim
rm -rf nvim-linux64.tar.gz

echo "downloading nvim"
curl -LJO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz

echo "installing nvim"
tar xzf nvim-linux64.tar.gz -C /opt
ln -s /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim

echo "downloading vim plug"
curl -LJO https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "installing vim plug"
mkdir -p $HOME/.local/share/nvim/site/autoload
mv plug.vim $HOME/.local/share/nvim/site/autoload/plug.vim

echo "installing plugins"
nvim -c "PlugInstall" +qall

echo "installing language servers"

# LSP
#	https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
#
# gopls
go install golang.org/x/tools/gopls@latest

# pylsp
#pip install python-lsp-server

# terraformls (remove)

# tsserver
#npm install -g typescript-language-server typescript

# lua_ls
curl -LJO https://github.com/LuaLS/lua-language-server/releases/download/3.7.0/lua-language-server-3.7.0-linux-x64.tar.gz
mkdir lua-language-server
tar xzf lua-language-server-3.7.0-linux-x64.tar.gz -C lua-language-server
echo "#!/bin/bash" >> symlink-wrapper
echo 'exec "/root/lua-language-server/bin/lua-language-server" "$@"' >> symlink-wrapper
chmod 755 symlink-wrapper
mv symlink-wrapper /usr/local/bin/lua-language-server

# dockerls
#npm install -g dockerfile-language-server-nodejs

# cssls
#npm i -g vscode-langservers-extracted

# pyright

