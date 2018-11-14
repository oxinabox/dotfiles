mkdir ~/.vim
mkdir ~/.config
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

nvim +PluginInstall +qall
nvim +UpdateRemotePlugin +qall

