#!/bin/bash
# NPM Install DWIMS
cd $HOME/DWIMS
npm install
cd frontend
npm install

# NPM Install CI for DWIMS
cd $HOME/DWIMS-CI
npm install

# Setup systemd
sudo ln -s $HOME/.dotfiles/settings/services/node_env.service /etc/systemd/system/node_env.service
sudo ln -s $HOME/.dotfiles/settings/services/musiquiz-beta.service /etc/systemd/system/musiquiz-beta.service
sudo ln -s $HOME/.dotfiles/settings/services/dwims_ci.service /etc/systemd/system/dwims_ci.service
sudo rm /etc/sudoers.d/dwims-ci-restart
sudo cp $HOME/.dotfiles/install/resources/dwims-ci-restart /etc/sudoers.d/dwims-ci-restart

sudo systemctl daemon-reload
sudo systemctl enable node_env.service
sudo systemctl status node_env.service
sudo systemctl start  node_env.service

sudo systemctl enable musiquiz-beta.service
sudo systemctl status musiquiz-beta.service
sudo systemctl start  musiquiz-beta.service

sudo systemctl enable dwims_ci.service
sudo systemctl status dwims_ci.service
sudo systemctl start  dwims_ci.service