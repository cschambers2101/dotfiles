clear

echo 'Installing Starship, Vim, Rofi and vimwiki-markdown'
sudo apt update
sudo apt -y install curl vim-gtk3 python3-pip rofi i3lock
pip3 install vimwiki-markdown
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
mv ~/.tmux.conf ~/.tmux.conf.old
cp tmux.conf ~/.tmux.conf
mv ~/.config/starship.toml ~/.config/starship.toml.old
cp starship.toml ~/.config/starship.toml
mv ~/.config/qtile/config.py ~/.config/qtile/config.py.old
mkdir -p ~/.config/qtile
cp config/qtile/config.py ~/.config/qtile/config.py
echo 'complete'

echo 'Installing Tmux TPM Plugin Manager'
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo 'Complete!'

echo 'install qtile'
sudo apt install xserver-xorg xinit
sudo apt install libpangocairo-1.0-0
sudo apt install python3-pip python3-xcffib python3-cairocffi
pip install psutil --break-system-packages
pip install qtile --break-system-packages
echo "[Desktop Entry]
Name=Qtile
Comment=Qtile Session
Exec=qtile start
Type=Application
Keywords=wm;tiling" | sudo tee /usr/share/xsessions/qtile.desktop

echo 'Complete!'

source ~/.bashrc

echo
echo
echo 'Your dotfiles are installed and setup'
