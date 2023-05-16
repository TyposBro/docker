FROM ubuntu:22.04

WORKDIR /project

COPY *.sh .
RUN apt-get update
RUN apt-get -y install git
RUN apt-get -y install curl
RUN apt-get install maven -y
RUN apt-get install openjdk-17-jdk -y
RUN java --version
RUN mvn --version
RUN chmod +x *.sh

EXPOSE 8080
# CMD [ "./run.sh" ]
