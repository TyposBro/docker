#!/bin/bash

java --version
mvn --version
git clone https://github.com/typosbro/cse364.git
git checkout milestone3
cd cse364/
cd backend/
mvn jacoco:report
mvn package
mvn spring-boot:run 
# java -jar target/cse364-project-1.0-SNAPSHOT.jar