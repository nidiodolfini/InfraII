FROM openjdk:11

WORKDIR /banana

COPY target/dockerspring-0.0.1-SNAPSHOT.jar /banana/dockerspring-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java", "-jar", "dockerspring-0.0.1-SNAPSHOT.jar"]