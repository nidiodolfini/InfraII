FROM maven:3.8.3-openjdk

WORKDIR /app

COPY target/dockerspring-0.0.1-SNAPSHOT.jar /app/dockerspring.jar

ENTRYPOINT ["java", "-jar", "dockerspring.jar"]