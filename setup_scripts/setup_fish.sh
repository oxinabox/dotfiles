sudo apt-get install fish
which fish | sudo tee -a /etc/shells
chsh -s $(which fish)
echo "now log-out and log back in"
