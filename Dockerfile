FROM java:8

ADD https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/4.0.3/flyway-commandline-4.0.3.zip /flyway.zip
RUN unzip /flyway.zip && rm /flyway.zip && mv /flyway-4.0.3 /flyway && ln -s /flyway/flyway /usr/local/bin/flyway

WORKDIR /flyway
ENTRYPOINT ["flyway"]
