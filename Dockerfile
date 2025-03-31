FROM eclipse-temurin:17-jdk-alpine

EXPOSE 8080

ENV APP_HOME /usr/src/app
WORKDIR $APP_HOME

# Copy the .jar file from the current directory
COPY bankapp-0.0.1-SNAPSHOT.jar $APP_HOME/app.jar

CMD ["java", "-jar", "app.jar"]

