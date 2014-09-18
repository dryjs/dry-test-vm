
rm -rf ~/.npm
rm -rf ~/.npmrc
rm -rf ~/.npm-packages

mkdir ~/.npm-packages
npm config set prefix ~/.npm-packages

bash /vagrant/scripts/user-test-script.sh
