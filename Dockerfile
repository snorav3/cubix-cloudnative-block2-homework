FROM quay.io/drsylent/cubix/block2/homework-base:java17

LABEL cubix.homework.owner="Sterbinszky Nora"

ENV CUBIX_HOMEWORK="S. Nori" APP_DEFAULT_MESSAGE=

WORKDIR /apps

COPY ./frontapp/.mvn/ ./frontapp/.mvn
COPY ./frontapp/mvnw ./frontapp/pom.xml ./frontapp/
COPY backapp/.mvn/ backapp/.mvn
COPY backapp/mvnw backapp/pom.xml ./backapp/

RUN ./frontapp/mvnw dependency:resolve
RUN ./backapp/mvnw dependency:resolve

COPY frontapp/src ./frontapp/src
COPY backapp/src ./backapp/src

#CMD ["./mvnw", "spring-boot:run"]

