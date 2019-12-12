clear

# Install some required packages
echo 'Doing any updates and removing unwanted software ... '
sudo apt -qq update && sudo apt -qq upgrade -y && sudo apt -qq autoremove -y > /dev/null
echo 'complete'
echo
echo 'installing some required software packages ... '
sudo apt -qq install python3 python3-pip build-essential tmux vim-gtk3 gnome-tweaks cmake python3-dev -y > /dev/null
echo 'complete'
echo
echo 'Installing Powerline'
sudo apt -qq -y install fonts-powerline powerline > /dev/null
echo 'complete'

echo 'Installing NeoFetch'
sudo apt -qq -y install neofetch > /dev/null
echo 'complete'

echo
echo 'Installing Vundle plugin manager for Vim ... '
# Install Vundle to allow plugins to work
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim > /dev/null
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

