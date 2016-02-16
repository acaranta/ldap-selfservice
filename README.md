ldap-selfservice
================

LDAP Toolbox Project - Self-Service Password Dockerized version
Forked from version 0.8 - http://ltb-project.org/wiki/documentation/self-service-password



How to use
==========
* First run :
```
docker run --rm -ti -v yourconfpath:/var/www/ldap-selfservice/conf acaranta/ldap-selfservice
# This will copy the default configuration file to yourconfpath
# Exit with [Control+C]
```
* Edit your configuration in yourconfpath/config.inc.php
* Normal run :
```
docker run -d -p <yourport>:80 -v yourconfpath:/var/www/ldap-selfservice/conf -e SMTPSRV=yoursmtp:port acaranta/ldap-selfservice
```

IMPORTANT
=========
Beware : this container is running on purpose on clear HTTP protocol, it is **NOT** to be used as is directly on the web.... use an SSL reverse proxy on only expose it to your pricate network.
