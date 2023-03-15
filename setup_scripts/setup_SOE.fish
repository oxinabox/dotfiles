sudo apt-get install tmux htop silversearcher-ag tldr
sudo apt-get install git cmake build-essential 
sudo apt-get install notepadqq
sudo apt-get install trash-cli stow

# Now we setup our dotfiles
cd ~/dotfiles
stow universal

# setup ohmyfish (or we get errors when we go to use new dot files
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish


# setup the fuck
sudo apt install python3-dev python3-pip python3-setuptools
pip3 install thefuck --user
fish_add_path ~/.local/bin
# alias --save please=fuck  # not needed if dotfiles are loaded
please
#Won't work til you start  new shell

# Setup neovim
sudo apt-get install neovim

## vimplug:
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
vim +PluginInstall +qall