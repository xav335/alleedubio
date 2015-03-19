#!/bin/bash

SERVERNAME=/Applications/XAMPP/xamppfiles/web/alleedubio

chown -R javiergonzalez:admin $SERVERNAME
chmod -R 777 $SERVERNAME
chmod -R 777 $SERVERNAME/log/spy.log
chmod -R 777 $SERVERNAME/admin/FileUpload/server/php/files
