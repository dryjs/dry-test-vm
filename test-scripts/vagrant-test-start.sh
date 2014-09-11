
rm -rf ~/.npm
rm -rf ~/.npmrc
rm -rf ~/.npm-packages

mkdir ~/.npm-packages
npm config set prefix ~/.npm-packages
echo "export PATH=$HOME/.npm-packages/bin:$PATH" >> .bashrc
source ~/.bashrc

bash /vagrant/test-scripts/test-dry-test.sh


