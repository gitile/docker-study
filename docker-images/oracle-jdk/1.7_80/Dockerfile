FROM 19880909/centos-base

MAINTAINER tulingfeng "xtotly@aliyun.com"

ENV JAVA_VER jdk1.7.0_80
ENV JAVA_HOME /usr/lib/jvm/$JAVA_VER
ENV JRE_HOME $JAVA_HOME/jre
ENV CLASSPATH .:$JAVA_HOME/lib:$JAVA_HOME/jre/lib
ENV PATH $PATH:$JAVA_HOME/bin

ADD jdk-7u80-linux-x64.tar.gz /usr/lib/jvm/
