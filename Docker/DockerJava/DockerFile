FROM openjdk:8
COPY HelloWorld.java /helloWorld/
WORKDIR /helloWorld/
RUN ["javac", "HelloWorld.java"]
ENTRYPOINT ["java", "HelloWorld"]