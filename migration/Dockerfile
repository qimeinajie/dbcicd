FROM openjdk:8

MAINTAINER pass niu

COPY /liquibase liquibase

WORKDIR /migration

ADD db db

ADD md5 md5

COPY *.sh /migration/

RUN chmod -R 777 /migration

VOLUME /var/logs/liquibase

RUN echo 'Asia/Shanghai' > /etc/timezone

ENTRYPOINT ["/migration/migration_entrypoint.sh"]
