FROM ubuntu:22.04

WORKDIR /project

COPY *.sh .
RUN apt-get update
RUN apt-get -y install git
RUN apt-get install -y default-jdk
RUN apt-get install maven -y
RUN java --version
RUN mvn --version
