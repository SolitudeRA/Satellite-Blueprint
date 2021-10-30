#!/bin/bash

secret_db_mysql_root_password="test7355608"
secret_db_mysql_wordpress_password="test7355608"
secret_db_mysql_owncloud_password="test7355608"
secret_db_redis_root_password="test7355608"
secret_service_wordpress_username="test"
secret_service_wordpress_password="test7355608"
secret_service_wordpress_email="test@test.me"
secret_service_wordpress_plugins="all"
secret_service_owncloud_username="test"
secret_service_owncloud_password="test7355608"
secret_service_owncloud_email="test@test.me"
secret_service_jenkins_username="test"
secret_service_jenkins_password="test7355608"
secret_service_jenkins_email="test@test.me"

printf $secret_db_mysql_root_password | docker secret create secret_db_mysql_root_password
printf $secret_db_mysql_wordpress_password | docker secret create secret_db_mysql_root_password
printf $secret_db_mysql_owncloud_password | docker secret create secret_db_mysql_root_password
printf $secret_db_redis_root_password | docker secret create secret_db_mysql_root_password
printf $secret_service_wordpress_username | docker secret create secret_db_mysql_root_password
printf $secret_service_wordpress_password | docker secret create secret_db_mysql_root_password
printf $secret_service_wordpress_email | docker secret create secret_db_mysql_root_password
printf $secret_service_wordpress_plugins | docker secret create secret_db_mysql_root_password
printf $secret_service_owncloud_username | docker secret create secret_db_mysql_root_password
printf $secret_service_owncloud_password | docker secret create secret_db_mysql_root_password
printf $secret_service_owncloud_email | docker secret create secret_db_mysql_root_password
printf $secret_service_jenkins_username | docker secret create secret_db_mysql_root_password
printf $secret_service_jenkins_password | docker secret create secret_db_mysql_root_password
printf $secret_service_jenkins_email | docker secret create secret_db_mysql_root_password
