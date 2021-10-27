#!/bin/bash

core_dir="satellite-core"
database_service_dir="database-service"
service_dir="service"

mkdir /etc/$core_dir/$database_service_dir/mysql/data
mkdir /etc/$core_dir/$database_service_dir/mysql/config
mkdir /etc/$core_dir/$database_service_dir/redis/data
mkdir /etc/$core_dir/$service_dir/wordpress/main
mkdir /etc/$core_dir/$service_dir/owncloud/apps
mkdir /etc/$core_dir/$service_dir/owncloud/config
mkdir /etc/$core_dir/$service_dir/owncloud/data
mkdir /etc/$core_dir/$service_dir/jenkins/data