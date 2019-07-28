

#https://nitroshare.net/
sudo apt-add-repository ppa:george-edison55/nitroshare
sudo apt-get update
sudo apt-get install nitroshare

sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/colomboem/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/home:colomboem.list"
sudo apt-get update
sudo apt-get install dukto

wget -nv https://download.opensuse.org/repositories/home:colomboem/xUbuntu_16.04/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo apt-get update
