FROM eclipse-temurin:17

WORKDIR /app

COPY target/simpleapp-1.0-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]
