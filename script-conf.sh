#!/bin/bash

SERVERNAME=/home/web/alleedubio.fr

chown -R www-data.ftpgroup $SERVERNAME
chmod -R 777 $SERVERNAME/log/spy.log
chmod -R 777 $SERVERNAME/admin/FileUpload/server/php/files