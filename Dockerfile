FROM adoptopenjdk/openjdk11:alpine-jre

ENV PORT=8080

LABEL maintainer="Rafael Felipe <20100748@ce.pucmm.edu.do>"

VOLUME /tmp

EXPOSE ${PORT}

COPY /build/libs/crud-0.0.1-SNAPSHOT.jar docker-simple.jar

ENTRYPOINT ["java", "-jar", "docker-simple.jar"]