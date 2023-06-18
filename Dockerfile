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

# Copy the package.json and package-lock.json files to the working directory
COPY package.json ./
COPY package-lock.json ./

# Install the app dependencies
RUN npm install

# Copy the app files to the working directory
COPY . ./

# Build the React app
RUN npm run build

# Set the command to start the app
RUN chmod +x *.sh


EXPOSE 8080
# CMD ["npm", "start"]
# CMD [ "./run.sh" ]
