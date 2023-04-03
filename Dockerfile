FROM ubuntu:22.04

WORKDIR /project

COPY *.sh .
RUN apt-get update
RUN apt-get -y install git
RUN apt-get install maven -y
RUN apt-get install openjdk-17-jdk -y
RUN java --version
RUN mvn --version
RUN chmod +x *.sh

# EXPOSE port
# CMD [ "./run.sh" ]
