ROOT_PASSWORD=$(</run/secrets/database_mysql_root_password)
NEXTCLOUD_DATABASE=$(</run/secrets/database_mysql_nextcloud_database)
NEXTCLOUD_USER=$(</run/secrets/database_mysql_nextcloud_user)
NEXTCLOUD_PASSWORD=$(</run/secrets/database_mysql_nextcloud_password)

echo "Creating NextCloud database and user..."

mysql -u root -p${ROOT_PASSWORD} -e "CREATE DATABASE ${NEXTCLOUD_DATABASE};"
mysql -u root -p${ROOT_PASSWORD} -e "CREATE USER '${NEXTCLOUD_USER}'@'%' IDENTIFIED WITH mysql_native_password BY '${NEXTCLOUD_PASSWORD}';"
mysql -u root -p${ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON ${NEXTCLOUD_DATABASE}.* TO '${NEXTCLOUD_USER}'@'%';"
mysql -u root -p${ROOT_PASSWORD} -e "FLUSH PRIVILEGES;"