declare -A plugins=(
	["awscli"]="latest"
	["golang"]="latest"
	["helm"]="latest"
	["java"]="openjdk-24.0.1"
	["k6"]="latest"
	["kops"]="latest"
	["kubectl"]="latest"
	["maven"]="latest"
	["minikube"]="latest"
	["nodejs"]="latest"
	["python"]="latest"
	["terraform"]="latest"
)


for plugin in "${!plugins[@]}"; do
	version=${plugins[$plugin]} 	
 	asdf plugin add $plugin
 	asdf install $plugin $version
 	asdf set -u $plugin $version
done

cat ./content/asdf.txt >> ~/.config/fish/config.fish

asdf completion fish > ~/.config/fish/completions/asdf.fish
