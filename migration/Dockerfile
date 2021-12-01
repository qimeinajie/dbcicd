FROM www.xk.docker-registry.com:5501/openjdk:8u302-jre

MAINTAINER xk

WORKDIR /migration

ADD db db

ADD md5 md5

ADD liquibase liquibase

COPY *.sh /migration/

#RUN chmod 777 /migration && chmod 755 /migration/liquibase/liquibase && chmod 755 /migration/*.sh
RUN chmod -R 777 /migration

VOLUME /var/logs

RUN echo 'Asia/Shanghai' > /etc/timezone

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# EXPOSE 9090

#ENTRYPOINT ["/migration/migration_entrypoint.sh"]
ENTRYPOINT ["/bin/bash"]
