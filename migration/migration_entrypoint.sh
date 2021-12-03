#!/usr/bin/env bash
username=$1
password=$2
url=$3
type=$4
countOrTag=$5
echo url=$url
if [ $4 == 0 ]
then
  /migration/migration_on_baseline.sh $1 $2 $3 && /migration/tag.sh $1 $2 $3
elif [ $4 == 1 ]
then
  /migration/migration_all.sh $1 $2 $3 && /migration/tag.sh $1 $2 $3
elif [ $4 == 2 ]
then
  /migration/rollback_count.sh $1 $2 $3 $countOrTag
elif [ $4 == 3 ]
then
  /migration/rollback_tag.sh $1 $2 $3 $countOrTag
fi

