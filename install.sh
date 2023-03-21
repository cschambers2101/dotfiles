clear

echo 'Installing NeoFetch and Starship'
sudo apt -y install neofetch curl
curl -sS https://starship.rs/install.sh | sh
echo 'complete'

echo
echo 'Download VimPlug'
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo 'complete'

echo
echo 'Creating local dotfiles'
# create local dotfiles
mv ~/.bashrc ~/.bashrc_old
cp bashrc ~/.bashrc
mv ~/.bash_aliases ~/.bash_aliases_old
cp bash_aliases ~/.bash_aliases
mv ~/.bash_functions ~/.bash_functions_old
cp bash_functions ~/.bash_functions
mv ~/.vimrc ~/.vimrc_old
cp vimrc ~/.vimrc
echo 'complete'

echo
echo
echo 'Your dotfiles are installed and setup'
