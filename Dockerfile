FROM eclipse-temurin:17-jdk-alpine

EXPOSE 8080

RUN mkdir -p /usr/src/app && ls  # Ensure directory exists

ENV APP_HOME /usr/src/app

WORKDIR $APP_HOME  # Set working directory after creating it

COPY app/*.jar $APP_HOME/app.jar  # Ensure the .jar file exists

CMD ["java", "-jar", "app.jar"]
