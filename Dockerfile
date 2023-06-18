FROM ubuntu:22.04

WORKDIR /project

RUN apt-get update
RUN apt-get -y install git
RUN apt-get -y install curl
RUN apt-get install maven -y
RUN apt-get install openjdk-17-jdk -y
RUN java --version
RUN mvn --version
RUN apt install nodejs npm -y
COPY *.sh .

# Set the command to start the app
RUN chmod +x *.sh


EXPOSE 8080
# CMD ["npm", "start"]
# CMD [ "./run.sh" ]
