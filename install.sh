clear

echo 'Installing NeoFetch'
sudo apt -y install neofetch
sudo snap install starship
echo 'complete'

# create local dotfiles
cp bashrc ~/.bashrc
cp bash_aliases ~/.bash_aliases
cp bash_functions ~/.bash_functions
cp vimrc ~/.vimrc
cp tmux ~/.tmux.conf

echo 'complete'
echo
echo
echo 'Your dotfiles are installed and setup'
