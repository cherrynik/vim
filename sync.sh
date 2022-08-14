# General config
echo ".vimrc cloning..."
curl https://raw.githubusercontent.com/cherrynik/vim/master/.vimrc > ~/.vimrc

# Plugins
echo "Plugins cloning..."

echo "* Status bar"
git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline

echo "* Gruvbox Theme"
git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/default/start/gruvbox

# cp -r ./.vim/ ~/

# Clean up
# rm -rf /tmp/cherrynik-vim-config
