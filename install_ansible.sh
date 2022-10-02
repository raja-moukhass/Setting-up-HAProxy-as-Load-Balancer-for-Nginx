# this script gonna check if ansible is already install if isn't it's going to install it  

# install ansible if not found debian 
sudo apt-get update
sudo apt-get upgrade

pkg=ansible
Green='\033[0;32m'
NC='\033[0m' # No Color

status="$(dpkg-query -W --showformat='${db:Status-Status}' "$pkg" 2>&1)"
if [ ! $? = 0 ] || [ ! "$status" = installed ]; then
  sudo apt install -y  $pkg
else
	echo  "${Green}already installed${NC}"
	ansible --version | head -n 1  
fi
