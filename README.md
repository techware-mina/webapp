- ./libs: pom.xml의 dependency JAR
- ./apache-tomcat-9.0.96.tar.gz: Dockerfile에서 사용하는 톰캣 설치 파일

1. 소스 빌드
```sh
mvn package
```

3. 도커 빌드
```sh
sudo docker build -t tomcat .
```

5. 도커 실행
```sh
sudo docker run -d -p 8080:8080 tomcat
```
