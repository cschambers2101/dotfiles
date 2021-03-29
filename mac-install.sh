clear

# Install some required packages
echo 'Doing any updates and removing unwanted software ... '
brew update
echo 'complete'
echo
echo 'installing some required software packages ... '
brew install java tmux cmake
# brew remove vim
# brew cleanup
brew install vim
echo 'complete'
echo
# echo 'Installing Powerline'
# brew install fonts-powerline powerline
# echo 'complete'

echo 'Installing NeoFetch'
brew install neofetch
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
cp vim.desktop ~/.local/share/applications/vim.desktop

# Setup Powerline
if [ ! -d "~/.config/powerline" ]; then
    mkdir -p ~/.config/powerline
fi
cp powerline ~/.config/powerline/config.json
echo 'complete'
echo
echo 'Vim text editor will now launch and install the plugins'
echo
echo 'You will need to exit from Vim twice! Hit these keys to exit Vim'
echo '[esc], :, q, [esc], :, q'
echo 'Ignore the plugin error!'
echo

read -p "Press any key to continue... " -n1 -s

vim -c "PluginInstall"

echo 'complete'
# echo 'After running PluginInstall in Vim, run the following commands'
# echo
echo 'Setting up YouCompleteMe'
cd ~/.vim/bundle/YouCompleteMe
python3 install.py
echo 'complete'

clear

# figlet 'Your dotfiles are installed and setup'
