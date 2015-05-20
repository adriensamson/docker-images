#!/usr/bin/env sh

if [ -z "$(ls /var/lib/mysql)" ]
then
    mysql_install_db
fi
/etc/init.d/mysql start
echo "GRANT ALL ON *.* TO root@'%';" | mysql
MAINT_PASSWORD=$(grep -m 1 password /etc/mysql/debian.cnf | awk '{print $3;}')
echo "GRANT ALL ON *.* TO 'debian-sys-maint'@'localhost' IDENTIFIED BY '$MAINT_PASSWORD';" | mysql
/etc/init.d/mysql stop
