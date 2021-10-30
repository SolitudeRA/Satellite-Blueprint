#!/bin/bash

core_dir="satellite-core"
database_service_dir="database-service"
secure_dir="vault"
service_dir="service"

mkdir -p /etc/$core_dir/proxy/server_blocks
mkdir -p /etc/$core_dir/$database_service_dir/mysql/data
mkdir -p /etc/$core_dir/$database_service_dir/mysql/config
mkdir -p /etc/$core_dir/$database_service_dir/redis/data
mkdir -p /etc/$core_dir/$secure_dir/logs
mkdir -p /etc/$core_dir/$secure_dir/file
mkdir -p /etc/$core_dir/$service_dir/wordpress/core
mkdir -p /etc/$core_dir/$service_dir/owncloud/apps
mkdir -p /etc/$core_dir/$service_dir/owncloud/config
mkdir -p /etc/$core_dir/$service_dir/owncloud/data
mkdir -p /etc/$core_dir/$service_dir/jenkins/data