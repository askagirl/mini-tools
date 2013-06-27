sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install vim curl git tig -y
# deploy only
sudo apt-get install python-pip python-dev -y
sudo pip install fabric fabtools
sudo apt-get install ruby1.9.3

touch funspace

users=( askagirl platform )
for user in ${users[@]}
do
  sudo useradd --create-home --password $(perl -e 'print crypt("password", "aa")') -s /bin/bash $user
  sudo usermod -G platform $user
  echo '$user ALL=(ALL) ALL' >> funspace
done
#echo 'platform ALL=(ALL) ALL' >> funspace
#echo 'askagirl ALL=(ALL) NOPASSWD: APACHE' >> funspace

sudo chmod 0440 funspace
sudo chown root.root funspace
sudo mv funspace /etc/sudoers.d/
mkdir ~/workspaces
