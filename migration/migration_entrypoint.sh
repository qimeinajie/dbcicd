#!/usr/bin/env bash
username=$1
password=$2
url=$3
type=$4
countOrTag=$5
echo url=$url
if [ $type == 0 ]
then
  /migration/migration_on_baseline.sh $username $password $url && /migration/tag.sh $username $password $url
elif [ $type == 1 ]
then
  /migration/migration_all.sh $username $password $url && /migration/tag.sh $username $password $url
elif [ $type == 2 ]
then
  /migration/rollback_count.sh $username $password $url $countOrTag
elif [ $type == 3 ]
then
  /migration/rollback_tag.sh $username $password $url $countOrTag
fi

