FROM eclipse-temurin:17-jdk
WORKDIR /app
# Pour Gradle, le chemin par défaut est build/libs/
COPY build/libs/*.jar app.jar
CMD ["java","-jar","app.jar"]
