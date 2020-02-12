FROM satell.sct.gob.mx:5000/sct-redhat_docker-redhat-openjdk-18_openjdk18-openshift:latest
WORKDIR /app
COPY spring-api.jar .
CMD ["java", "-jar", "/app/spring-api.jar"]
