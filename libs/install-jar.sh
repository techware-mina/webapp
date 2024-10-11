#!/bin/sh

mvn install:install-file \
-Dfile=mariadb-java-client-3.4.1.jar \
-DgroupId=org.mariadb.jdbc \
-DartifactId=mariadb-java-client \
-Dversion=3.4.1 \
-Dpackaging=jar
