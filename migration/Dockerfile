FROM www.xk.docker-registry.com:5501/openjdk:8u302-jre

MAINTAINER xk

WORKDIR /migration

ADD db db

ADD md5 md5

ADD liquibase liquibase

COPY *.sh /migration/

RUN chmod -R 777 /migration

VOLUME /var/logs/liquibase

RUN echo 'Asia/Shanghai' > /etc/timezone

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime


ENTRYPOINT ["/migration/migration_entrypoint.sh"]
