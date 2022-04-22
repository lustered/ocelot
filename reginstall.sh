# Install vim plug
cd 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# coc settings
wget 'https://raw.githubusercontent.com/lustered/ocelot/master/coc-vim.vim' -P ~/.vim/
wget 'https://raw.githubusercontent.com/lustered/ocelot/master/coc-settings.json' -P ~/.vim/

# Install node
curl -sL install-node.vercel.app/lts | bash

# Set vim settings and install plugins
wget 'https://raw.githubusercontent.com/lustered/ocelot/master/.vimrc' -P ~/

vim -c "PlugInstall" \
    -c "so ~/.vimrc" \
    -c "CocInstall coc-sh coc-prettier coc-json coc-cmake coc-marketplace coc-snippets coc-clangd coc-python" \
    -c "CocCommand clangd.install" \
    -c "q" \
    -c "q"
