#!/bin/bash
ROOTTP="/var/www/ldap-selfservice"
echo "Checking Teampass Files"
if [ ! -f $ROOTTP/conf/config.inc.php ] ;
then
	echo "$ROOTTP/conf/config.inc.php not found creating it from template"
	cp /app/config.inc.php.example $ROOTTP/conf/config.inc.php
	chown -Rf www-data.www-data $ROOTTP 
fi

echo -e "mailhub=$SMTPSRV\n" >>/etc/ssmtp/ssmtp.conf

/usr/sbin/apache2ctl -D FOREGROUND &

tail -f /var/log/apache2/*log
