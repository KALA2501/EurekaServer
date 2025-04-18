# Etapa 1: Build
FROM maven:3.9.4-eclipse-temurin-21 AS build

WORKDIR /app

# Copiar el pom y código fuente
COPY pom.xml ./
RUN mvn dependency:go-offline

COPY src ./src

# Construir el jar (sin pruebas)
RUN mvn clean package -DskipTests

# Etapa 2: Run
FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

# Copiar el jar generado desde la etapa de build
COPY --from=build /app/target/*.jar app.jar

# Exponer el puerto en el contenedor
EXPOSE 8761

# Ejecutar el jar al iniciar el contenedor
ENTRYPOINT ["java", "-jar", "app.jar"]
