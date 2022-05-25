find migration/db/ -type f | sort
find migration/db/ -type f | sort | xargs cat > migration/combine_file.txt && md5sum migration/combine_file.txt | awk '{print $1}' > migration/md5
cat migration/md5
docker build -f migration/Dockerfile -t jasonlinqn/dbcicd:`cat migration/md5` migration/
docker push jasonlinqn/dbcicd:`cat migration/md5`
docker rm -f migration || echo "No running migration task"
echo "docker run --net=host -v /var/logs/liquibase:/var/logs/liquibase --name migration jasonlinqn/dbcicd:`cat migration/md5` $MIGRATION_USER $MIGRATION_PASSWORD $MIGRATION_URL 1"
docker run --net=host -v /var/logs/liquibase:/var/logs/liquibase --name migration jasonlinqn/dbcicd:`cat migration/md5` $MIGRATION_USER $MIGRATION_PASSWORD $MIGRATION_URL 1
