#!/bin/bash

core_dir="satellite-core"
database_service_dir="database-service"
secure_dir="vault"
service_dir="service"

sudo mkdir -p /etc/$core_dir/proxy/server_blocks
sudo mkdir -p /etc/$core_dir/$database_service_dir/mysql/data
sudo mkdir -p /etc/$core_dir/$database_service_dir/mysql/config
sudo mkdir -p /etc/$core_dir/$database_service_dir/redis/data
sudo mkdir -p /etc/$core_dir/$secure_dir/logs
sudo mkdir -p /etc/$core_dir/$secure_dir/file
sudo mkdir -p /etc/$core_dir/$service_dir/wordpress/core
sudo mkdir -p /etc/$core_dir/$service_dir/owncloud/apps
sudo mkdir -p /etc/$core_dir/$service_dir/owncloud/config
sudo mkdir -p /etc/$core_dir/$service_dir/owncloud/data
sudo mkdir -p /etc/$core_dir/$service_dir/jenkins/data