FROM mysql:5.7

MAINTAINER guo yukun

ENV MYSQL_USER=mysql\
MYSQL_PASSWORD=mysql \
MYSQL_ROOT_PASSWORD=root

#定义shell文件名
ENV INSTALL_DATA_SHELL install-data.sh

ENV WORK_PATH /sql/

ENV FILE_0 create_trade_history.sql
ENV FILE_1 create_trade_log.sql

RUN mkdir -p $WORK_PATH
COPY sql/*.sql /sql/

COPY /sql/*.sh*  /docker-entrypoint-initdb.d/
RUN chmod a+x  /docker-entrypoint-initdb.d/$INSTALL_DATA_SHELL

EXPOSE 3306




