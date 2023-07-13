FROM apps
COPY target/cubix-second-homework-frontapp-0.0.1-SNAPSHOT.jar frontapp.jar
ENTRYPOINT ["java","-DBACK_URL='%BACK_URL%'","-jar","/frontapp.jar"]