#!/usr/bin/env bash
username=$1
password=$2
url=$3

md5=`cat md5`
echo "/migration/liquibase/liquibase --username=$username --password=$password --url=$url tag $md5"
/migration/liquibase/liquibase --username=$username --password=$password --url=$url tag $md5

