#!/bin/sh
mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-resources-plugin -Dversion=2.6 && \
mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-war-plugin -Dversion=3.3.1 && \
mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-compiler-plugin -Dversion=3.1 && \
mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-surefire-plugin -Dversion=2.12.4 && \
mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-install-plugin -Dversion=2.4 && \
mvn dependency:get -DgroupId=org.codehaus.plexus -DartifactId=plexus-component-annotations -Dversion=2.0.0 && \
mvn dependency:get -DgroupId=commons-io -DartifactId=commons-io -Dversion=2.4 && \
mvn dependency:go-offline && \
mvn clean package 
