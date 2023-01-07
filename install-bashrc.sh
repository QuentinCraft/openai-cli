echo "Installing OPENAI-CLI for $(whoami) on your OS..."

echo -n "Installing Python & PIP..."
sudo apt-get update -y > ./install.log
sudo apt-get install python3 python3-pip -y >> ./install.log
echo " : done !"

echo -n "Installing requirements..."
sudo pip install -r ./requirements.txt --no-warn-script-location >> ./install.log
echo " : done !"

echo -n "Adding to PATH..."
echo "### OPENAI : " >> /home/$(whoami)/.bashrc
echo "alias openai='sh $(pwd)/openai.sh $1'" >> /home/$(whoami)/.bashrc
echo " : done !"

echo "OPENAI-CLI now installed !"