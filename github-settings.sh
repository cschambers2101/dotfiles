ssh-keygen -t rsa -b 4096 -C "cchambers@salisbury6c.ac.uk"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub

