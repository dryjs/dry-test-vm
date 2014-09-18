# sudo yum -y update 
# sudo yum -y install git

sudo yum -y install man

curl https://raw.githubusercontent.com/creationix/nvm/v0.15.0/install.sh | bash
source ~/.bash_profile
nvm install 0.10
nvm alias default 0.10
source ~/.bash_profile
node -v

mkdir ~/.npm-packages
npm config set prefix ~/.npm-packages
echo "export PATH=$HOME/.npm-packages/bin:$PATH" >> .bashrc
source ~/.bashrc
