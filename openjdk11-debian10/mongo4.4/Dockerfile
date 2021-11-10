FROM adoptopenjdk/openjdk11:x86_64-debianslim-jdk-11.0.13_8

COPY mongodb-linux-x86_64-debian10-v4.4-latest.tgz mongo.tgz

RUN tar -zxvf mongo.tgz && rm mongo.tgz
RUN mv mongodb-* /etc/mongodb
RUN mkdir -p /data/db

WORKDIR /

COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

CMD [ "./entrypoint.sh" ]