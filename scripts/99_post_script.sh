yay -R $(yay -Qtdq)

if [ ! -f "$HOME/.ssh/id_ed25519" ]; then
    ssh-keygen -o -a 100 -t ed25519 -f $HOME/.ssh/id_ed25519 -C "rdoois@jarvis"
fi

chsh -s $(which fish)
