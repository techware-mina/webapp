- ./libs: 오프라인으로 설치할 dependency JAR 파일과 온라인에서 설치할 maven 플러그인
- ./apache-tomcat-9.0.96.tar.gz: Dockerfile에서 사용하는 톰캣 설치 파일

1. 메이븐 플러그인 설치
```sh
cd libs
./install-plugin.sh
```

2. 의존 라이브러리 설치
```sh
cd libs
./install-jar.sh
```

3. 소스 빌드
```sh
mvn -o package
```

4. 도커 빌드
```sh
sudo docker build -t tomcat .
```

5. 도커 실행
```sh
sudo docker run -d -p 8080:8080 tomcat
```
