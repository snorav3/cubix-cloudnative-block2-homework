FROM apps
COPY target/cubix-second-homework-backapp-0.0.1-SNAPSHOT.jar backapp.jar
ENTRYPOINT ["java","-jar","/backapp.jar"]