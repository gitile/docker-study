FROM registry.cn-hangzhou.aliyuncs.com/tulingfeng/centos-base

MAINTAINER tulingfeng "xtotly@aliyun.com"

ENV JAVA_VER jdk1.8.0_161
ENV JAVA_HOME /usr/lib/jvm/$JAVA_VER
ENV JRE_HOME $JAVA_HOME/jre
ENV CLASSPATH .:$JAVA_HOME/lib:$JAVA_HOME/jre/lib
ENV PATH $PATH:$JAVA_HOME/bin

ADD jdk-8u161-linux-x64.tar.gz /usr/lib/jvm/
