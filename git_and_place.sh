#!/bin/bash

ssh-agent bash -c 'ssh-add /home/daniel/.ssh/id_ed25519; git pull origin main'
sudo cp index.html /var/www/lmf/public_html/.
sudo cp -R static/ /var/www/lmf/public_html/.
sudo chown -R www-data:www-data /var/www/lmf/public_html
sudo chmod -R 770 /var/www/lmf/public_html
ssh-agent bash -c 'ssh-add /home/daniel/.ssh/id_ed25519_live; git push -u live'
