yay -R $(yay -Qtdq)

if [ ! -f "$HOME/.ssh/id_ed25519" ]; then
    ssh-keygen -o -a 100 -t ed25519 -f $HOME/.ssh/id_ed25519 -C "rdoois@jarvis"
fi

chsh -s $(which fish)

sudo ln -s $(which nvim) /usr/local/bin/vi
sudo ln -s $(which nvim) /usr/local/bin/vim

echo "" >> $HOME/.config/fish/config.fish
cat ./content/alias.txt >> $HOME/.config/fish/config.fish
