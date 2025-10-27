#!/usr/bin/bash

# System update
sudo apt-get -y update && sudo apt-get -y upgrade

# Essential build tools
sudo apt -y install software-properties-common gcc g++ make curl wget vim

# Git
sudo apt -y install git
git --version

# Docker installation
sudo apt-get remove docker docker-engine docker.io
sudo apt-get -y install ca-certificates curl gnupg lsb-release
sudo apt -y install docker.io
sudo docker --version

# PostgreSQL 18 (latest)
sudo apt -y install postgresql postgresql-contrib
sudo systemctl start postgresql.service
sudo systemctl status postgresql.service

# pgAdmin 4 (latest snapshot)
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/snapshots/2025-09-22/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
sudo apt -y install pgadmin4

# Brave Browser
sudo apt -y install apt-transport-https curl
curl -fsS https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo gpg --dearmor -o /usr/share/keyrings/brave-browser-archive-keyring.gpg
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/stable/apt/ stable main" > /etc/apt/sources.list.d/brave-browser-release.list'
sudo apt -y update
sudo apt -y install brave-browser
brave-browser --version

# Node Version Manager (NVM) and Node.js 18
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.bashrc
nvm install 18

# Python 3.11 (latest for Ubuntu 22.04)
sudo apt -y install python3.11 python3.11-pip python3.11-venv libpq-dev python3.11-dev
python3.11 --version

# Redis
sudo snap install redis
sudo snap install another-redis-desktop-manager

# Postman
sudo snap install postman

# VS Code
sudo snap install --classic code
code --version

# PyCharm Community Edition
sudo snap install pycharm-community --classic

# pgAdmin 4 (latest snapshot)
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/snapshots/2025-09-22/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
sudo apt -y install pgadmin4

# Ngrok
sudo snap install ngrok

# Putty
sudo apt -y install putty-tools

# Redis Desktop Manager
sudo snap install another-redis-desktop-manager

# Stacer (system optimizer)
sudo add-apt-repository ppa:oguzhaninan/stacer
sudo apt -y update
sudo apt -y install stacer
