FROM satell.sct.gob.mx:5000/sct-redhat_docker-redhat-openjdk-18_openjdk18-openshift:latest
WORKDIR /app
COPY test-wsdl2java-0.0.1.jar .
CMD ["java", "-cp", "test-wsdl2java-0.0.1.jar", "com.redhat.App"]