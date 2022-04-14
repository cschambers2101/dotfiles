clear

echo 'Installing NeoFetch'
sudo apt -y install neofetch curl
sudo snap install starship
echo 'complete'

# create local dotfiles
cp bashrc ~/.bashrc
cp bash_aliases ~/.bash_aliases
cp bash_functions ~/.bash_functions
cp vimrc ~/.vimrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


echo 'complete'
echo
echo
echo 'Your dotfiles are installed and setup'
