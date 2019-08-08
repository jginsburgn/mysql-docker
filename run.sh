#!/usr/bin/env bash
docker container run --rm \
	-v $PWD/data:/var/lib/mysql \
	-v $PWD/shared:/root/shared \
	-v $PWD/my.cnf:/etc/mysql/my.cnf \
	-e MYSQL_ALLOW_EMPTY_PASSWORD=yes \
	--name mysql \
	--network main \
	-d \
	mysql
