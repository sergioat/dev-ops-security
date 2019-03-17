master:
  build: .
  environment:
    JAVA_OPTS: "-Djava.awt.headless=true"
  ports:
    - "50000:50000"
    - "8080:8080"
  volumes:
    - /var/jenkins_home