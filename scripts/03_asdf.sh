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
	["yarn"]="latest"
)


for plugin in "${!plugins[@]}"; do
	version=${plugins[$plugin]} 	
 	asdf plugin add $plugin
 	asdf install $plugin $version
 	asdf set -u $plugin $version
done
