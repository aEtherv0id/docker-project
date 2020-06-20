#!/usr/bin/sh
#




# main
docker run -itd --name gt-mysql8 -v /opt/tools/deploy/containers/mysql8/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=mysql8 -p 3306:3306 -d aetherv0id/gt-ubuntu-mysql8:latest



