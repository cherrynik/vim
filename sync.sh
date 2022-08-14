# Backing up inherit data
if [ -e ~/.vim.old ]
then
  echo "You already have some back up data. Delete it first. Aborting..."
  exit -1
fi

if [ -e ~/.vim ]
then
  mv ~/.vim ~/.vim.old
fi

if [ -e ~/.vimrc.old ]
then
  echo "You already have some back up data. Delete it first. Aborting..."
  exit -1
fi

if [ -e ~/.vimrc ]
then
  mv ~/.vimrc ~/.vimrc.old
fi

# General config
echo ".vimrc installing..."
curl https://raw.githubusercontent.com/cherrynik/vim/master/.vimrc -s > ~/.vimrc

# Plugins
echo "Plugins installing..."

echo "* Vundle"
git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim -q

echo "* Status bar"
git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline -q

echo "* Gruvbox Theme"
git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/default/start/gruvbox -q

echo "Installing dependencies for Vim plugins..."
sudo apt-get update -y -qq
sudo apt-get install cmake -qq

echo "Finishing..."

vim +PluginInstall +qall

echo "Done!"
