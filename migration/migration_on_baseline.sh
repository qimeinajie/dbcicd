#!/usr/bin/env bash
echo "baseline migration start."
. /migration/var.sh
username=$1
password=$2
url=$3
baselineFile=db/changelogs/baseline/baseline.yaml
migrationFile=db/changelogs/migration/migration.yaml

echo "/migration/liquibase/liquibase  --changeLogFile=$baselineFile --log-level=$logLevel --log-file=$logFile \
  --hub-mode=off --username=$username --url=$url --password=$password changelogSync"
/migration/liquibase/liquibase  --changeLogFile=$baselineFile --log-level=$logLevel --log-file=$logFile \
  --hub-mode=off --username=$username --url=$url --password=$password changelogSync

echo "/migration/liquibase/liquibase  --changeLogFile=$migrationFile --log-level=$logLevel --log-file=$logFile \
  --hub-mode=off --username=$username --url=$url --password=$password update"
/migration/liquibase/liquibase  --changeLogFile=$migrationFile --log-level=$logLevel --log-file=$logFile \
  --hub-mode=off --username=$username --url=$url --password=$password update

echo "baseline migration finish."
