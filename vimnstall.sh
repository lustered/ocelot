# Install vim plug
cd 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# coc settings
wget 'https://raw.githubusercontent.com/lustered/ocelot/master/coc-vim.vim' -P ~/.vim/
wget 'https://raw.githubusercontent.com/lustered/ocelot/master/coc-settings.json' -P ~/.vim/

# Download node binary
wget 'https://nodejs.org/dist/v14.17.0/node-v14.17.0-linux-x64.tar.xz'
mkdir node
tar xf node-v14.17.0-linux-x64.tar.xz -C node/ --strip-components=1

# Add to path
echo "set path = ( \$HOME/node/bin \$path )" >> ~/.cshrc

# Set vim settings and install plugins
wget 'https://raw.githubusercontent.com/lustered/ocelot/master/.vimrc' -P ~/
vim -c "PlugInstall" \
    -c "so ~/.vimrc" \
    -c "CocInstall coc-clangd coc-sh coc-prettier coc-json coc-cmake" \
    -c "q" \
    -c "q"
