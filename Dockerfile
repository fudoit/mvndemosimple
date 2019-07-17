# This file is a template, and might need editing before it works on your project.
FROM cargo.caicloudprivatetest.com/qatest/java:mvn
MAINTAINER fufu@caicloud.io
COPY . /usr/src/app
WORKDIR /usr/src/app

RUN mvn clean
RUN mvn package



ENV JAR_TARGET="target/java-http-server-basic-example-1.0-SNAPSHOT.jar"
EXPOSE 8000


ENTRYPOINT ["java", "-jar", "$JAR_TARGET"]
