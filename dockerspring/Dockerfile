FROM openjdk:11

WORKDIR /banana

COPY target/dockerspring-0.0.1-SNAPSHOT.jar /banana/garoupa.jar

ENTRYPOINT ["java", "-jar", "garoupa.jar"]