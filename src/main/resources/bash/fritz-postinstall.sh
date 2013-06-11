sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install vim curl git tig -y
# deploy only
sudo apt-get install python-pip python-dev -y
sudo pip install fabric fabtools


sudo useradd --create-home --password $(perl -e 'print crypt("password", "aa")') askagirl
sudo useradd --create-home --password $(perl -e 'print crypt("password", "aa")') platform

sudo echo 'platform        ALL=(ALL)       ALL' >> /etc/sudoers
sudo echo 'askagirl         ALL=(ALL)       NOPASSWD: APACHE' >> /etc/sudoers

mkdir ~/workspaces
