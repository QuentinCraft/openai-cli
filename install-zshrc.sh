echo "Installing OPENAI-CLI for $(whoami) on your OS..."

echo "Go to https://beta.openai.com/account/api-keys to get your API Token"
read -p "Enter OpenAI Token: " token

echo "OPENAI_API_TOKEN=$token" > .env

echo -n "Installing Python & PIP..."
sudo apt-get update -y > ./install.log
sudo apt-get install python3 python3-pip -y >> ./install.log
echo " : done !"

echo -n "Installing requirements..."
sudo pip install -r ./requirements.txt --no-warn-script-location >> ./install.log
echo " : done !"

echo -n "Adding to PATH..."
echo "### OPENAI :" >> /home/$(whoami)/.zshrc
echo "alias openai='python3 $(pwd)/openai-cli.py $1'" >> /home/$(whoami)/.zshrc
echo " : done !"

echo "OPENAI-CLI now installed !"