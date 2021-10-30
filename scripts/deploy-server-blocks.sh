#!/bin/bash

sudo cp ../nginx/server_blocks/reverse_proxy_wordpress /etc/satellite-core/proxy/server_blocks
sudo cp ../nginx/server_blocks/reverse_proxy_owncloud /etc/satellite-core/proxy/server_blocks
sudo cp ../nginx/server_blocks/reverse_proxy_jenkins /etc/satellite-core/proxy/server_blocks
sudo cp ../nginx/server_blocks/reverse_proxy_phpmyadmin /etc/satellite-core/proxy/server_blocks
sudo cp ../nginx/server_blocks/reverse_proxy_vault /etc/satellite-core/proxy/server_blocks
sudo cp ../nginx/server_blocks/proxy_cockpit /etc/satellite-core/proxy/server_blocks
