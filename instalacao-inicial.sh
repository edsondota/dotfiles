#/bin/bash

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install vim git git-core git-flow

# após copiar a chave ~/.ssh

sudo chmod 700 ~/.ssh
sudo chmod 600 ~/.ssh/id_rsa
ssh-add

# necessário para instalar o google chrome
sudo apt-get install libgconf2-dev

# python pip
sudo apt-get install python-dev python-pip


# mysql
sudo apt-get install mysql-server mysql-client mysql-workbench

# pacotes essenciais para desenvolvimento
sudo apt-get install python-dev libxml2-dev libxslt1-dev zlib1g-dev

