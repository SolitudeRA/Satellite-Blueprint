CREATE DATABASE wordpress;
CREATE USER 'wordpress'@'%' IDENTIFIED WITH mysql_native_password BY 'wordpress';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%';
