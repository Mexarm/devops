FROM maven:3-jdk-8 as construccion
WORKDIR /app
COPY . .
RUN mvn clean package

FROM openjdk:8 as despliegue
WORKDIR /app
COPY --from=construccion /app/target target
CMD ["java", "-cp", "target/test-wsdl2java-0.0.1.jar", "com.redhat.App"]
