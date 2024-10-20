#!/bin/bash

touch init.sql
chmod 777 init.sql

echo "CREATE DATABASE IF NOT EXISTS wordpress;" >> init.sql
echo "FLUSH PRIVILEGES;" >> init.sql
echo "GRANT ALL ON *.* TO 'buakaw'@'localhost' IDENTIFIED BY 'buakaw' WITH GRANT OPTION;" >> init.sql
echo "FLUSH PRIVILEGES;" >> init.sql
echo "CREATE USER IF NOT EXISTS 'buakaw'@'%' IDENTIFIED BY 'buakaw';" >> init.sql
echo "GRANT ALL ON wordpress.* TO 'buakaw'@'%' IDENTIFIED BY 'buakaw';"  >> init.sql
echo "FLUSH PRIVILEGES;" >> init.sql

mysql -h localhost < init.sql

#exec mysqld