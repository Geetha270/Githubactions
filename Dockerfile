FROM eclipse-temurin:17-jdk-alpine

EXPOSE 8080

ENV APP_HOME /usr/src/app
WORKDIR $APP_HOME

# Copy the correct .jar file
COPY _work/Githubactions/Githubactions/app/bankapp-0.0.1-SNAPSHOT.jar $APP_HOME/app.jar

CMD ["java", "-jar", "app.jar"]
