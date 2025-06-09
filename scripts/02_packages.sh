PACKAGES=(
	asdf-vm bashtop bat beekeeper-studio-bin brave-bin curl discord docker docker-buildx docker-compose eza fish fzf
	kitty lazygit less neofetch neovim nitrogen noto-fonts-emoji polybar python-pywal ripgrep slack-desktop
	the_silver_searcher timeshift tldr tmux ttf-firacode-nerd ttf-jetbrains-mono-nerd unzip wget xorg-xrandr xsel yq zip zoom
)

for package in "${PACKAGES[@]}"; do
	yay -S $package --needed --noconfirm
done
