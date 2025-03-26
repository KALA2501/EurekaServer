![Logo](https://github.com/FusionTech-2430/.github/blob/main/profile/Banner2.png?raw=true)

# All Connected Discovery Service

Este proyecto es un servicio de descubrimiento de servicios que se encarga de registrar y descubrir los servicios que se encuentran en la red.

## Tecnologías Utilizadas 🛠️

- **Java**
- **Spring Boot**
- **Eureka Discovery**
- **Maven**

## Ejecución del Proyecto 💻

Para ejecutar el proyecto, utiliza el siguiente comando de Maven:

```sh
mvn spring-boot:run
```

## Ejecución del Proyecto con Docker 🐳

Para ejecutar el proyecto, utiliza los siguiente comandos de Docker:

```sh
docker build -t discovery-service .
docker run --name discovery-service --network all_connected -d -p 8761:8761 discovery-service
```

## Autor 🧑🏻‍💻

- [@alejandronoss1017](https://github.com/alejandronoss1017)