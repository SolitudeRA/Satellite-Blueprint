CREATE DATABASE nextcloud;
CREATE USER 'nextcloud'@'%' IDENTIFIED WITH mysql_native_password BY 'nextcloud';
GRANT ALL PRIVILEGES ON nextcloud.* TO 'nextcloud'@'%';