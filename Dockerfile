FROM openjdk
LABEL maintainer = "abc@mail.com"
EXPOSE 8761
WORKDIR /app
COPY target/eureka-server.jar /app/eureka-server.jar
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]