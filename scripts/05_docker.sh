sudo usermod -aG docker $USER
sudo systemctl start docker.service
sudo systemctl enable docker.service
