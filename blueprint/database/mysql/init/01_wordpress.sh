ROOT_PASSWORD=$(</run/secrets/database_mysql_root_password)
WORDPRESS_DATABASE=$(</run/secrets/database_mysql_wordpress_database)
WORDPRESS_USER=$(</run/secrets/database_mysql_wordpress_user)
WORDPRESS_PASSWORD=$(</run/secrets/database_mysql_wordpress_password)

echo "Creating WordPress database and user..."

mysql -u root -p${ROOT_PASSWORD} -e "CREATE DATABASE ${WORDPRESS_DATABASE};"
mysql -u root -p${ROOT_PASSWORD} -e "CREATE USER '${WORDPRESS_USER}'@'%' IDENTIFIED WITH mysql_native_password BY '${WORDPRESS_PASSWORD}';"
mysql -u root -p${ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON ${WORDPRESS_DATABASE}.* TO '${WORDPRESS_USER}'@'%';"
mysql -u root -p${ROOT_PASSWORD} -e "FLUSH PRIVILEGES;"