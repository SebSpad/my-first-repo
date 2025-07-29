# Utilise l'image Java 17
FROM eclipse-temurin:17-jdk-alpine

# Répertoire de travail dans le conteneur
WORKDIR /app

# Copie le JAR compilé
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Port exposé
EXPOSE 8080

# Commande de lancement
ENTRYPOINT ["java", "-jar", "app.jar"]
