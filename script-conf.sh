#!/bin/bash

SERVERNAME=/home/web/alleedubio.fr

chown -R www-data.ftpgroup $SERVERNAME
chown -R 777 $SERVERNAME/log/spy.log
chown -R 777 $SERVERNAME/admin/FileUpload/server/php/files