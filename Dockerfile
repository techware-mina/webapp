FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y wget tar openjdk-17-jdk && \
    rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH="$JAVA_HOME/bin:$PATH"

ENV TOMCAT_VERSION=9.0.96
ENV TOMCAT_DIR=/usr/local/tomcat

COPY apache-tomcat-${TOMCAT_VERSION}.tar.gz /

RUN tar xzf apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    mv apache-tomcat-${TOMCAT_VERSION} ${TOMCAT_DIR} && \
    rm apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    rm -rf ${TOMCAT_DIR}/webapps/*

EXPOSE 8080

COPY ./target/ROOT /usr/local/tomcat/webapps/ROOT

CMD ["bash", "/usr/local/tomcat/bin/catalina.sh", "run"]

