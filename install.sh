clear

# Install some required packages
echo 'Doing any updates and removing unwanted software ... '
sudo apt update && sudo apt -qq upgrade -y && sudo apt -qq autoremove -y >
echo 'complete'
echo
echo 'installing some required software packages ... '
sudo apt install python3 python3-pip build-essential tmux vim-gtk3 cmake python3-dev -y
echo 'complete'
echo
echo 'Installing Powerline'
sudo apt -y install fonts-powerline powerline
echo 'complete'

echo 'Installing NeoFetch'
sudo apt -y install neofetch
echo 'complete'

echo
echo 'Installing Vundle plugin manager for Vim ... '
# Install Vundle to allow plugins to work
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo 'complete'

echo 'You must run PluginInstall from within VIM to setup your plugins'
echo
echo 'Installing local dot files ... '
# create local dotfiles
cp bashrc ~/.bashrc
cp vimrc ~/.vimrc
cp tmux ~/.tmux.conf
if [ ! -d "~/.config/powerline" ]; then
    mkdir -p ~/.config/powerline
fi
cp powerline ~/.config/powerline/config.json
echo 'complete'
echo
echo 'After running PluginInstall in Vim, run the following commands'
echo
echo 'cd ~/.vim/bundle/YouCompleteMe'
echo 'python3 install.py'

