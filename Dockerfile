# This file is a template, and might need editing before it works on your project.
FROM cargo.caicloudprivatetest.com/qatest/java
MAINTAINER fufu@caicloud.io
MVN clean
COPY . /usr/src/app
RUN mvn --batch-mode -f /usr/src/app/pom.xml clean package


ENV PORT 8000
EXPOSE 8000
COPY --from=BUILD /usr/src/app/target /opt/target
WORKDIR /opt/target

CMD ["/bin/bash", "-c", "find -type f -name '*-with-dependencies.jar' | xargs java -jar"]
