#!/usr/bin/env bash
logLevel=INFO
logFile=/var/logs/liquibase.log
username=$1
password=$2
url=$3
changeLogFile=db/changelogs/db.changelog-all.yaml

echo "/migration/liquibase/liquibase  --changeLogFile=$changeLogFile --log-level=$logLevel --log-file=$logFile \
  --hub-mode=off --username=$username --url=$url --password=$password update"

/migration/liquibase/liquibase  --changeLogFile=$changeLogFile --log-level=$logLevel --log-file=$logFile \
  --hub-mode=off --username=$username --url=$url --password=$password update
