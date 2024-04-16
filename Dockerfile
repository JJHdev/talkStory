FROM openjdk:17-alpine

WORKDIR /app

COPY . .

RUN chmod +x ./gradlew && ./gradlew build

EXPOSE 8080

CMD ["java", "-jar", "build/libs/myapp.jar"]